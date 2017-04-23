# Product API

## List products

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

<pre>{"page":1,"per_page":1}</pre>

#### cURL

<pre class="request">curl &quot;http://localhost:3000/v2/products/search&quot; -d &#39;{&quot;page&quot;:1,&quot;per_page&quot;:1}&#39; -X POST \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;eb01505169535344fd0413e14b5323dc&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 37f1ea9e-52be-40bb-8f31-f35f44204c31
X-Runtime: 0.005042
Vary: Origin
Content-Length: 66</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>[
  {
    "id": 2,
    "name": "Herbalife",
    "code": "1",
    "price": 25.7,
    "quantity": 1
  }
]</pre>
