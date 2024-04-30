from django.urls import path,include
from userapp import views 
# from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns=[ 
    path("book/", views.CreateBook, name='book'),
    path("author/", views.AuthorCreation, name='author'),
    # path('', views.createBook),


    # path('user/listBook/', views.listBook,name='listBook'),
      path('', views.listBook,name='listBook'),

    # path('listview', views.listBook,),
    path('detailsview/<int:book_id>/', views.detailsview, name='details'),
    path('update/<int:book_id>/', views.updateBook, name='update'),
    path('deleteview/<int:book_id>/', views.deleteview, name='delete'),
    path('index/', views.index),
    path('add_to_cart/<int:book_id>/', views.add_to_cart, name="add_to_cart"),

    path('view_cart/',views.view_cart,name='viewcart'),
    path('increase/<int:item_id>/',views.increase_quantity,name='increase_quantity'),
    path('decrease/<int:item_id>/',views.decrease_quantity,name='decrease_quantity'),
    path('removee_from_cart/<int:item_id>/',views.remove_from_cart,name='remove_cart'),

    path('create_checkout_session/',views.create_checkout_session,name='create_checkout_session'),
    path('success/',views.success,name='success'),
    path('cancel/',views.cancel,name='cancel'),


]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)