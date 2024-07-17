
# Terraform Examples

Este repositório contém exemplos de uso do Terraform para provisionar recursos em AWS, Azure e configuração de state local.

## Índice

- [Pré-requisitos](#pré-requisitos)
- [Instalação do Terraform](#instalação-do-terraform)
- [Estrutura do Repositório](#estrutura-do-repositório)
- [AWS S3 Bucket](#aws-s3-bucket)
- [Azure Storage Account](#azure-storage-account)
- [Bloco Terraform](#bloco-terraform)
- [Local State](#local-state)

## Pré-requisitos

- [Terraform](https://www.terraform.io/)
- Credenciais válidas para AWS e Azure

## Instalação do Terraform

### Linux

1. Baixe o binário do Terraform:
    ```sh
    wget https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip
    ```
2. Extraia o binário:
    ```sh
    unzip terraform_1.0.11_linux_amd64.zip
    ```
3. Mova o binário para um diretório incluído no seu `PATH`:
    ```sh
    sudo mv terraform /usr/local/bin/
    ```

### macOS

1. Baixe o binário do Terraform:
    ```sh
    curl -LO https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_darwin_amd64.zip
    ```
2. Extraia o binário:
    ```sh
    unzip terraform_1.0.11_darwin_amd64.zip
    ```
3. Mova o binário para um diretório incluído no seu `PATH`:
    ```sh
    sudo mv terraform /usr/local/bin/
    ```

### Windows

1. Baixe o binário do Terraform:
    ```sh
    Invoke-WebRequest -Uri "https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_windows_amd64.zip" -OutFile "terraform_1.0.11_windows_amd64.zip"
    ```
2. Extraia o binário:
    ```sh
    Expand-Archive -Path terraform_1.0.11_windows_amd64.zip -DestinationPath C:\terraform
    ```
3. Adicione o caminho `C:\terraform` ao seu `PATH` nas variáveis de ambiente do Windows.

Verifique a instalação:
```sh
terraform -v
```

## Estrutura do Repositório

```sh
.
├── aws-bucket
│   ├── bucket.tf
│   ├── main.tf
│   ├── plan.out
│   ├── README.md
│   ├── terraform.tfstate
│   └── terraform.tfstate.backup
├── azure-storage-account
│   ├── locals.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── plan.out
│   ├── storage_account.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   └── variables.tf
├── bloco-terraform
│   └── main.tf
└── local-state
    ├── bucket.tf
    ├── main.tf
    ├── outputs.tf
    ├── plan.out
    ├── terraform.tfstate
    └── terraform.tfstate.backup
```

## AWS S3 Bucket

### Descrição

Exemplo de como criar um bucket S3 na AWS usando Terraform.

### Arquivos

- `main.tf`: Define o provedor AWS e configurações principais.
- `bucket.tf`: Configura o recurso do bucket S3.

### Uso

1. Navegue até o diretório `aws-bucket`.
2. Inicialize o Terraform:
    ```sh
    terraform init
    ```
3. Valide a configuração:
    ```sh
    terraform validate
    ```
4. Crie o plano de execução:
    ```sh
    terraform plan -out=plan.out
    ```
5. Aplique o plano:
    ```sh
    terraform apply "plan.out"
    ```

## Azure Storage Account

### Descrição

Exemplo de como criar uma conta de armazenamento no Azure usando Terraform.

### Arquivos

- `main.tf`: Define o provedor Azure e configurações principais.
- `storage_account.tf`: Configura o recurso da conta de armazenamento.
- `variables.tf`: Declaração de variáveis.
- `outputs.tf`: Define as saídas.

### Uso

1. Navegue até o diretório `azure-storage-account`.
2. Inicialize o Terraform:
    ```sh
    terraform init
    ```
3. Valide a configuração:
    ```sh
    terraform validate
    ```
4. Crie o plano de execução:
    ```sh
    terraform plan -out=plan.out
    ```
5. Aplique o plano:
    ```sh
    terraform apply "plan.out"
    ```

## Bloco Terraform

### Descrição

Exemplo básico de um bloco de configuração Terraform.

### Arquivos

- `main.tf`: Bloco de configuração simples.

### Uso

1. Navegue até o diretório `bloco-terraform`.
2. Inicialize o Terraform:
    ```sh
    terraform init
    ```
3. Valide a configuração:
    ```sh
    terraform validate
    ```
4. Crie o plano de execução:
    ```sh
    terraform plan -out=plan.out
    ```
5. Aplique o plano:
    ```sh
    terraform apply "plan.out"
    ```

## Local State

### Descrição

Exemplo de configuração de estado local no Terraform.

### Arquivos

- `main.tf`: Define a configuração principal.
- `bucket.tf`: Configura o bucket local para armazenar o estado.
- `outputs.tf`: Define as saídas.

### Uso

1. Navegue até o diretório `local-state`.
2. Inicialize o Terraform:
    ```sh
    terraform init
    ```
3. Valide a configuração:
    ```sh
    terraform validate
    ```
4. Crie o plano de execução:
    ```sh
    terraform plan -out=plan.out
    ```
5. Aplique o plano:
    ```sh
    terraform apply "plan.out"
    ```

## Licença

Este projeto está licenciado sob os termos da licença MIT.