from django.test import TestCase
from django.urls import reverse
from django.test import Client
from bs4 import BeautifulSoup


def test_home():
    url = reverse('home:index')

    response = Client().get(url)
    assert response.status_code == 200

    print(response.headers)
    content = response.content
    soup = BeautifulSoup(content, "html.parser")

    # Todo titre de la page
    assert soup.title.text == "Holiday Homes"

