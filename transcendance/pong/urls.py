from django.urls import path
from . import views

urlpatterns = [
    # url model, view function, name define an id
    path('', views.index, name='index'),
]