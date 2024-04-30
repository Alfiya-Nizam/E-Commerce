from django.shortcuts import render,redirect
from .models import Book,Author,Cart,CartItem
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.contrib import messages
import stripe
from django.conf import settings
from django.urls import reverse
from django.shortcuts import get_object_or_404, render


# Create your views here.

def CreateBook(request):
    if request.method == 'POST':
        title = request.POST.get('title')
        price = request.POST.get('price')
        quantity=request.POST.get('quantity')
        author_id = request.POST.get('author')
        author = Author.objects.get(pk=author_id)
        book = Book.objects.create(title=title, price=price, author=author, quantity=quantity)

        # Fetch the newly created book with all its details
        books = {
            'title': book.title,
            'price': book.price,
            'author': book.author.name, 
             'quantity':book.quantity, # Assuming Author model has a 'name' field
            # Add other book details as needed
        }
        return render(request, 'user/listBook.html', {'book': books})
    else:
        authors = Author.objects.all()
        return render(request, 'user/book.html', {'authors': authors})

def AuthorCreation(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        author = Author(name=name)
        author.save()
        return redirect('book')  # Redirect back to book creation page after author creation
    return render(request, 'user/author.html')

def listBook(request):
    books = Book.objects.all()
    return render(request, 'user/listBook.html', {'books': books}) 
# def listBook(request):
#     books=Book.objects.all()
#     return render(request,'user/listBook.html',{'books':books})   
def detailsview(request,book_id):
    books=Book.objects.get(id=book_id)
    return render(request,'user/detailsview.html',{'books':books})
def updateBook(request,book_id):
    books=Book.objects.get(id=book_id)
    if request.method=='POST':
        title=request.POST.get('title')
        price=request.POST.get('price')
        books.title=title
        books.price=price
        books.save()
        return redirect('listBook')
    return render(request,'user/update.html',{'books':books})
def deleteview(request,book_id):
    books=Book.objects.get(id=book_id)
    if request.method=='POST':
        books.delete()
        return redirect('listBook')
    return render(request,'user/deleteview.html',{'books':books})
def index(request):
    return render(request,'user/index.html')


def add_to_cart(request, book_id):
    book = get_object_or_404(Book, id=book_id)


    if book.quantity > 0:
            cart, created = Cart.objects.get_or_create(user=request.user)
            cart_item, item_created = CartItem.objects.get_or_create(cart=cart, book=book)

            if not item_created:
                # Check if adding one more quantity exceeds the available quantity of the book
                if cart_item.quantity + 1 > book.quantity:
                    messages.error(request, "Cannot add more quantity. Limited stock available.")
                else:
                    cart_item.quantity += 1
                    cart_item.save()
            else:
                # New item added to cart
                messages.success(request, f"{book.title} added to cart.")
    else:
            messages.warning(request, f"{book.title} is out of stock.")


    return redirect('viewcart')


@login_required
def view_cart(request):
    cart = get_object_or_404(Cart, user=request.user)
    cart_items = cart.cartitem_set.all()
    total_price = sum(item.book.price * item.quantity for item in cart_items)
    total_items = cart_items.count()
    context = {
        'cart_items': cart_items,
        'total_price': total_price,
        'total_items': total_items
    }
    return render(request, 'user/cart.html', context)

def increase_quantity(request,item_id):
    cart_item=CartItem.objects.get(id=item_id)
    if cart_item.quantity<cart_item.book.quantity:
        cart_item.quantity+=1
        cart_item.save()
    return  redirect('viewcart') 

def decrease_quantity(request,item_id):
    cart_item=CartItem.objects.get(id=item_id)
    if cart_item.quantity>1:
        cart_item.quantity-=1
        cart_item.save()
    return  redirect('viewcart')

def remove_from_cart(request,item_id):
    try:
        cart_item=CartItem.objects.get(id=item_id)
        cart_item.delete()
    except cart_item.DoesNotExist:
        pass
    return redirect('viewcart')   

def create_checkout_session(request):
    cart_items = CartItem.objects.all()
    if cart_items:
        stripe.api_key = settings.STRIPE_SECRET_KEY
        if request.method == 'POST':
            line_items=[]
            for cart_item in cart_items:
                if cart_item.book:
                    line_item={
                        'price_data':{
                            'currency':'INR',
                            'unit_amount':int(cart_item.book.price * 100),
                            'product_data':{
                                'name':cart_item.book.title
                            },
                        },
                        'quantity':cart_item.quantity
                    }
                    line_items.append(line_item)
            if line_items:
                checkout_session=stripe.checkout.Session.create(
                payment_method_types=['card'],
                line_items=line_items,
                mode='payment',
                success_url = request.build_absolute_uri(reverse('success')),
                cancel_url=request.build_absolute_uri(reverse('cancel'))
                )
                return redirect(checkout_session.url,code=303)
            
def success(request):
    cart_item=CartItem.objects.all()
    for cart_item in cart_item:
        product =cart_item.book
        if product.quantity >= cart_item.quantity:
            product.quantity -= cart_item.quantity
            product.save()
    cart_item.delete()
    return render(request, 'user/success.html')

def cancel(request):
    return render(request,'user/cancel.html')

                                                                
                                                                
                







    



