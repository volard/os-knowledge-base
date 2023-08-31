---
sources: https://devdecks.io/2021-understanding-preflight-requests
---
> Before certain HTTP requests are made to a server a preflight HTTP request is first sent to that server using the `OPTIONS` method to make sure the request that follows is safe. 

A request will be pre flighted if
- Any custom request headers are included. Custom request headers are any outside of the following: Accept, `Accept-Language`, `Content-Language`, `Content-Type`, `DPR`, `Width`, `Downloadlink`, `Save-Data`, `Viewport-Width`. 
- If any values are set for the Content-Type header that are not: `application/x-www-form-urlencoded`, `multipart/form-data`, `text/plain` 
- Preflight is automatically issued when using the following HTTP methods: `PUT`, `PATCH`, `DELETE`, `CONNECT`, TRACE`.`