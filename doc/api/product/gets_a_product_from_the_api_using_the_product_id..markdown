# Product API

## Gets a product from the api using the product id.

### GET /v2/products/:id

### Parameters

| Name | Description | Required | Scope |
|------|-------------|----------|-------|
| id | Product Id | true |  |

### Request

#### Headers

<pre>Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /v2/products/4</pre>

#### cURL

<pre class="request">curl &quot;http://localhost:3000/v2/products/4&quot; -X GET \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;218e738a76f4bbaa23562f4b66bb1978&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: a857de24-7990-4773-ad81-b598a0dd39aa
X-Runtime: 0.002539
Vary: Origin
Content-Length: 66</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>[
  {
    "id": 4,
    "name": "Herbalife",
    "code": "1",
    "price": 25.7,
    "quantity": 1
  }
]</pre>
