# Product API

## Removes a product from the api using the product id.

### DELETE /v2/products/:id

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

<pre>DELETE /v2/products/5</pre>

#### cURL

<pre class="request">curl &quot;http://localhost:3000/v2/products/5&quot; -d &#39;&#39; -X DELETE \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;15b3f84cf56ab687a3f8907a7af63841&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d7375230-e6cf-451d-9a55-4078e1a30c13
X-Runtime: 0.004228
Vary: Origin
Content-Length: 66</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>[
  {
    "id": 5,
    "name": "Herbalife",
    "code": "1",
    "price": 25.7,
    "quantity": 1
  }
]</pre>
