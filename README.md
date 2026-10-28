# 🌐 Servidor HTTP IPv6 em C (Sockets POSIX)

Implementação modular de um servidor web **HTTP/1.1** com suporte a **IPv6** utilizando **Sockets POSIX** puros e a linguagem **C**.

Desenvolvido para a disciplina de **Redes de Computadores** na **Universidade Federal do ABC (UFABC)**.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)

---

## 🚀 Funcionalidades

- **Suporte IPv6 Nativo:** Inicialização de socket `AF_INET6` com escuta em `in6addr_any` (dual-stack IPv4/IPv6).
- **Parser HTTP Modular:** Módulo `httpParser` para parsing de cabeçalhos de requisição e determinação de métodos.
- **Suporte a Métodos HTTP:**
  - `GET`: Entrega de arquivos estáticos (`index.html`, etc.) com cabeçalhos apropriados.
  - `POST`: Leitura de corpo de requisição e processamento de submissão de formulários com retorno em JSON.
- **Filosofia Unix / POSIX:** Chamadas diretas de sistema (`socket`, `bind`, `listen`, `accept`, `send`, `recv`, `close`).

---

## 📂 Estrutura do Repositório

```text
ProjetoRedes/
├── servidor.c         # Ponto de entrada do servidor, loop de conexões e sockets
├── httpParser.c       # Implementação do parser e tratamento de GET/POST
├── httpParser.h       # Declarações de assinaturas das funções de parsing
├── index.html         # Página estática principal
├── testePOST.html     # Formulário web para teste interativo de submissão POST
├── Makefile           # Automação de compilação modular (make / make run)
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
# Ou diretamente via make:
make run
```

O servidor escuta na porta `8080`.

### Testes

#### 1. Requisição GET
* **Via Navegador:** `http://localhost:8080` ou `http://[::1]:8080`
* **Via cURL:**
  ```bash
  curl -i http://localhost:8080/
  ```

#### 2. Requisição POST
* **Via Navegador:** Abra `http://localhost:8080/testePOST.html` e envie o formulário.
* **Via cURL:**
  ```bash
  curl -i -X POST -d "mensagem=OlaServidor" http://localhost:8080/enviar-dados
  ```

---

## 👤 Autor

* **Felipe Junqueira Leite**  
  * GitHub: [@felipejunqueira](https://github.com/felipejunqueira)
