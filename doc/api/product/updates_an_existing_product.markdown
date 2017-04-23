# Product API

## Updates an existing product

### PUT /v2/products/:id

First, updates chosen product fields, then returns a response with the product updated data

### Parameters

| Name | Description | Required | Scope |
|------|-------------|----------|-------|
| id | Product Id | true |  |
| name | Product Name | true | product |
| quantity | Quantity | true | product |
| price | Price | true | product |

### Request

#### Headers

<pre>Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>PUT /v2/products/1</pre>

#### Body

<pre>{"product":{"code":"A1-2099","name":"Ventilador Fujitsu","quantity":23,"price":59.1}}</pre>

#### cURL

<pre class="request">curl &quot;http://localhost:3000/v2/products/1&quot; -d &#39;{&quot;product&quot;:{&quot;code&quot;:&quot;A1-2099&quot;,&quot;name&quot;:&quot;Ventilador Fujitsu&quot;,&quot;quantity&quot;:23,&quot;price&quot;:59.1}}&#39; -X PUT \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;45cd0a095e891977104ae9fe759a2ae6&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 190109f9-4703-4aeb-9b23-9e777f924eb3
X-Runtime: 0.016548
Vary: Origin
Content-Length: 82</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>[
  {
    "id": 1,
    "name": "Ventilador Fujitsu",
    "code": "A1-2099",
    "price": 59.1,
    "quantity": 23
  }
]</pre>
