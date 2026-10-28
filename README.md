# 🌐 Servidor HTTP IPv6 em C (Sockets POSIX)

Implementação modular de um servidor web **HTTP/1.1** com suporte a **IPv6** utilizando **Sockets POSIX** puros e a linguagem **C**.

Desenvolvido para a disciplina de **Redes de Computadores** na **Universidade Federal do ABC (UFABC)**.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)

---

## 🚀 Funcionalidades

- **Suporte IPv6 Nativo:** Inicialização de socket `AF_INET6` com escuta em `in6addr_any`.
- **Parser HTTP Modular:** Módulo `httpParser` para parsing de cabeçalhos de requisição e determinação de métodos.
- **Suporte a Métodos HTTP:**
  - `GET`: Entrega de arquivos estáticos (`index.html`, etc.) com cabeçalhos apropriados.
  - `POST`: Leitura de corpo de requisição e processamento de submissão de formulários.
- **Filosofia Unix / POSIX:** Chamadas diretas de sistema (`socket`, `bind`, `listen`, `accept`, `send`, `recv`, `close`).

---

## 📂 Estrutura do Repositório

```text
ProjetoRedes/
├── servidor.c         # Ponto de entrada do servidor, loop de conexões e roteamento
├── httpParser.c       # Implementação do parser de requisições HTTP/1.1
├── httpParser.h       # Definições de estruturas de requisição e assinaturas
├── index.html         # Página estática principal
├── testePOST.html     # Formulário de teste para requisições POST
├── Makefile           # Script de automação de compilação
└── LICENSE            # Licença MIT
```

---

## 🛠️ Como Compilar e Rodar

### Compilação
```bash
make
```

### Execução
```bash
./servidor
```

O servidor iniciará na porta `8080`. Para testar:
* Via navegador: `http://localhost:8080` ou `http://[::1]:8080`
* Via cURL:
  ```bash
  curl -i http://localhost:8080/
  ```

---

## 👤 Autor

* **Felipe Junqueira Leite**  
  * GitHub: [@felipejunqueira](https://github.com/felipejunqueira)
