# Endpoints da API (Provisório)
Este arquivo mostra uma prévia dos endpoints atuais. A documentação final será gerada automaticamente pelo backend, este
arquivo serve como um "contrato" entre o frondend e o backend para possibilitar o desenvolvimento em paralelo.

# Endpoints de autenticação
## /signin - POST
Rota para realizar o login. Retorna um [JWT](https://jwt.io/introduction) que será usado durante o acesso à plataforma.
### Request body
```ts
{
	"email": string
	"password": string
}
```
### Response body
```ts
{
	"token": string
}
```

## /signup - POST
Rota para realizar o cadastro de usuário.
### Request body
```ts
{
	"username": string
	"email": string
	"password": string
}
```
## /signout - PUT
Rota para o logout do usuário. Ao acessar o endpoint, o token passado pelo header se torna inválido.
### Headers
```http
Authorization: Bearer <token>
```

# Endpoints opcionais (Talvez não entrem pro escopo)
## /resetpassword - POST
### Request body
```ts
{
	"email": string
}
```
### Headers
```http
```
### Response body
```ts
```

## /resetpassword - POST
### Request body
```ts
{
	"newPassword": string
}
```
### Headers
```http
Authorization: Bearer <token>
```
### Response body
```ts
```