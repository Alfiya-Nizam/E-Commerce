from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns=[
    path('register/',views.UserRegistration,name='register'),
    path('',views.loginPages,name='login'),
    # path('login/',views.loginPages,name='login'),
    path('logout/',views.logOut,name='logout'),
    path('userHome/',views.userHome,name='userHome'),
    path('adminHome/',views.adminHome,name='adminHome'),
    

]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) 