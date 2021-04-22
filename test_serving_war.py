import urllib.request
import pytest
import docker

@pytest.fixture
def docker_client():
    return docker.from_env()

@pytest.fixture
def tomcat_container(docker_client):
    return docker_client.containers.get("tomcat")

@pytest.fixture
def url():
    ''' Returns a url with default address '''
    return "http://localhost:8080/sample/"

def test_url_up(url):
    assert 200 == urllib.request.urlopen(url).getcode(), "Url cannot be retrieved"
    return 0
    
def test_container_is_running(tomcat_container):
    assert "running" == tomcat_container.status, "tomcat container is not running"
    return 0