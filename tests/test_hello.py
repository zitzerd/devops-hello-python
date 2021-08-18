import pytest

def test_main_page(client):
    response = client.get('/')
    assert response.data == b'Hello, World'

#Create a test that will fail so i can test githubactions
def test_hostname_page(client):
    response = client.get('/host')
    assert response.status_code == 200