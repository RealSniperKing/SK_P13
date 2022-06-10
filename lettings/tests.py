import pytest
from django.urls import reverse
from django.test import Client
from bs4 import BeautifulSoup
from .models import Address, Letting


@pytest.mark.django_db(transaction=True)
def test_lettings_index():
    url = reverse('lettings:index')

    response = Client().get(url)
    assert response.status_code == 200

    content = response.content
    soup = BeautifulSoup(content, "html.parser")
    assert soup.title.text == "Lettings"


@pytest.mark.django_db(transaction=True)
def test_lettings_letting():
    # user_ob = User.objects.create_user(username="test", password="123456")
    adress_ob = Address.objects.create(number="7217",
                                       street="Bedford Street",
                                       city="Brunswick",
                                       state="GA",
                                       zip_code="31525",
                                       country_iso_code="USA")

    letting_title = "Letting_test"
    letting = Letting.objects.create(title=letting_title, address_id=adress_ob.pk)

    url = reverse('lettings:letting', kwargs={"letting_id": letting.pk})
    response = Client().get(url)
    assert response.status_code == 200

    content = response.content
    soup = BeautifulSoup(content, "html.parser")

    assert soup.title.text == letting_title
