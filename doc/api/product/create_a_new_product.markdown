# Product API

## Create a new product

### POST /v2/products

First, it creates a product, then it returns a response with the product registered data

### Parameters

| Name | Description | Required | Scope |
|------|-------------|----------|-------|
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

<pre>POST /v2/products</pre>

#### Body

<pre>{"product":{"code":"A1-2017","name":"Ventilador Arno","quantity":25,"price":70.1}}</pre>

#### cURL

<pre class="request">curl &quot;http://localhost:3000/v2/products&quot; -d &#39;{&quot;product&quot;:{&quot;code&quot;:&quot;A1-2017&quot;,&quot;name&quot;:&quot;Ventilador Arno&quot;,&quot;quantity&quot;:25,&quot;price&quot;:70.1}}&#39; -X POST \
	-H &quot;Accept: application/json&quot; \
	-H &quot;Content-Type: application/json&quot;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b37361f97441dfcf6b5a23840c58a9ae&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 2becb10d-1b2f-4d15-82cb-0dc78b129c0d
X-Runtime: 0.134941
Vary: Origin
Content-Length: 79</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>[
  {
    "id": 7,
    "name": "Ventilador Arno",
    "code": "A1-2017",
    "price": 70.1,
    "quantity": 25
  }
]</pre>
