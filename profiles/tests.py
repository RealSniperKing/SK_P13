from django.contrib.auth.models import User
import pytest
from django.urls import reverse
from django.test import Client
from bs4 import BeautifulSoup
from .models import Profile


@pytest.mark.django_db(transaction=True)
def test_profiles_index():
    url = reverse('profiles:index')

    response = Client().get(url)
    assert response.status_code == 200

    content = response.content
    soup = BeautifulSoup(content, "html.parser")
    assert soup.title.text == "Profiles"


@pytest.mark.django_db(transaction=True)
def test_profiles_profile():
    username = "User_test"
    user_ob = User.objects.create_user(username=username, password="123456")

    profile = Profile.objects.create(user=user_ob, favorite_city="Rome")
    print("profile = ", profile)

    url = reverse('profiles:profile', kwargs={"username": user_ob.username})
    response = Client().get(url)
    assert response.status_code == 200

    content = response.content
    soup = BeautifulSoup(content, "html.parser")

    assert soup.title.text == username
