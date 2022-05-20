from django.urls import reverse
from django.test import Client
from bs4 import BeautifulSoup


def test_dummy():
    assert 1


def test_admin():
    url = reverse('admin:index')
    print("url =", url)
    response = Client().get(url)
    assert response.status_code == 302

    login_url = response.url
    print("login_url = ", login_url)

    response = Client().get(login_url)
    assert response.status_code == 200

    content = response.content
    soup = BeautifulSoup(content, "html.parser")
    title = soup.find('h1')
    assert title.text == "Django administration"
