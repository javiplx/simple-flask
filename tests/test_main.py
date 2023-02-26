
def test_root(client):
    """Root page"""

    resp = client.get('/')
    assert resp.data == b'Hello world!'

def test_page(client):
    """Subpage"""

    resp = client.get('/path/to')
    assert resp.data == b'Hello world!<BR />(from path/to)'

