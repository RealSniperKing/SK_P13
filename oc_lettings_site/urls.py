from django.contrib import admin
from django.urls import path, include

from . import views

urlpatterns = [
    path('', include("home.urls")),
    path('', include("lettings.urls")),
    path('', include("profiles.urls"))
]
