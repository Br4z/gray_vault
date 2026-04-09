---
reviewed_on: 2026-03-17
---

# SOAP

It is a protocol for exchanging structured information in a decentralized, distributed environment. It uses XML to define an extensible messaging framework and the exchanged messages can be bound to different underlying protocols.

In SOAP, communication is centered on XML messages with a defined structure. Instead of being organized mainly around resource URLs, the interaction is described through messages, processing rules, and service contracts.

## Message structure

A SOAP message is organized as an envelope. The envelope provides the overall structure of the message and contains a header and a body.

The header is used for metadata and processing instructions, such as security or routing information. The body contains the main application data being exchanged. When an error must be reported, a fault can be returned inside the body.

## Protocol bindings

SOAP is not limited to a single transport. The specification defines a binding framework so that SOAP messages can be exchanged over different underlying protocols. In practice, HTTP is a common binding.

## WSDL

SOAP services are often described with WSDL, an XML language for describing web services. A WSDL description can define the abstract functionality of a service and the concrete details needed to access it, such as operations, bindings and endpoints.

## Example

### Request

```
<env:Envelope xmlns:env="http://www.w3.org/2003/05/soap-envelope"
			xmlns:m="http://example.com/products">
	<env:Header>
		<m:authToken>abc123</m:authToken>
	</env:Header>
	<env:Body>
		<m:getProductRequest>
			<m:id>42</m:id>
		</m:getProductRequest>
	</env:Body>
</env:Envelope>
```

### Response

```
<env:Envelope xmlns:env="http://www.w3.org/2003/05/soap-envelope"
			xmlns:m="http://example.com/products">
<env:Body>
	<m:getProductResponse>
		<m:id>42</m:id>
		<m:name>keyboard</m:name>
		<m:price>49.99</m:price>
	</m:getProductResponse>
</env:Body>
</env:Envelope>
```

The `Envelope` identifies the SOAP message. The `Header` contains optional metadata, such as authentication or routing information. The `Body` contains the actual operation and the exchanged data.

> In SOAP 1.2, the name SOAP is no longer treated as an acronym.
