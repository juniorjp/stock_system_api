# Product API

## Search product by a specific term

### POST /v2/products/search
### Request

#### Headers

<pre>Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>POST /v2/products/search</pre>

#### Body

<pre>{"search_term":"che"}</pre>

#### cURL

<pre class="request">curl &quot;http://localhost:3000/v2/products/search&quot; -d &#39;{&quot;search_term&quot;:&quot;che&quot;}&#39; -X POST \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;20348fa1550982d108aed5cb99d46091&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: a50f4390-8472-4804-b859-64e8219eb81e
X-Runtime: 0.064114
Vary: Origin
Content-Length: 67</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>[
  {
    "id": 3,
    "name": "Gold Chess",
    "code": "1",
    "price": 25.7,
    "quantity": 1
  }
]</pre>
