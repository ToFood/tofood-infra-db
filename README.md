# Tofood Infra DB

Este repositório contém a infraestrutura necessária para configurar o banco de dados do projeto Tofood utilizando **Amazon DocumentDB** com Terraform. O DocumentDB é um banco de dados gerenciado compatível com MongoDB, permitindo armazenamento seguro e escalável para o aplicativo Tofood.

## 📂 Estrutura do Repositório

```bash
/tofood-infra-db
├── main.tf               # Arquivo principal do Terraform
├── variables.tf          # Definição das variáveis utilizadas no projeto
├── outputs.tf            # Saídas do Terraform (outputs)
├── provider.tf           # Configuração do provider AWS
├── documentdb.tf         # Configuração do cluster DocumentDB
├── security-groups.tf    # Configuração dos grupos de segurança para acesso ao banco
└── README.md             # Documentação do projeto
```

# Documentação detalhada do projeto

markdown

## 🚀 Recursos Utilizados

- **Amazon DocumentDB**: Banco de dados compatível com MongoDB, gerenciado pela AWS, utilizado para armazenamento seguro e escalável.
- **Terraform**: Ferramenta de IaC (Infrastructure as Code) utilizada para definir toda a infraestrutura.

## 📄 Descrição dos Arquivos

### 1. `provider.tf`
Define o provider AWS que será utilizado pelo Terraform para criar os recursos na região especificada.

### 2. `variables.tf`
Define as variáveis reutilizáveis no projeto, como:
- **Region**: Região da AWS.
- **VPC e Subnets**: IDs da VPC e Subnets onde o DocumentDB será implantado.
- **Credenciais do Banco de Dados**: Nome de usuário e senha.

### 3. `security-groups.tf`
Define o grupo de segurança necessário para acessar o cluster DocumentDB.
- **Porta**: Libera a porta `27017` (MongoDB) para permitir acesso ao banco de dados.

### 4. `documentdb.tf`
Define o cluster DocumentDB e suas instâncias.
- **Cluster**: Configura o cluster DocumentDB, incluindo criptografia de armazenamento.
- **Subnets**: Cria um **subnet group** para distribuir o DocumentDB entre diferentes subnets para alta disponibilidade.

### 5. `outputs.tf`
Define as saídas do Terraform para fácil consulta dos recursos criados, como o **endpoint** do DocumentDB.

## ⚙️ Como Utilizar

### Pré-requisitos

- **Terraform** instalado (>= 0.14).
- Credenciais configuradas para acessar a AWS.

### Passos para Execução

1. **Clone o Repositório**:
   ```sh
   git clone https://github.com/ToFood/tofood-infra-db.git
   cd tofood-infra-db
Inicialize o Terraform:

sh
Copiar código
terraform init
Revise as Configurações e Ajuste as Variáveis: No arquivo variables.tf, ajuste as variáveis conforme suas necessidades, como vpc_id e subnet_ids.

Planeje a Infraestrutura: Gere um plano para visualizar os recursos que serão criados:

sh
Copiar código
terraform plan
Crie a Infraestrutura: Aplique as configurações para criar os recursos:

sh
Copiar código
terraform apply
Verifique as Saídas: Após a execução, o endpoint do DocumentDB estará disponível nas saídas (outputs).

📝 Boas Práticas Seguidas
Segurança: Credenciais armazenadas como secrets no Terraform, marcadas como sensíveis.
Alta Disponibilidade: O cluster é configurado em múltiplas subnets.
Infraestrutura como Código: Todo o ambiente DocumentDB está descrito no Terraform para fácil replicação e controle de versões.
📊 Visualização dos Componentes
Cluster DocumentDB:
Grupo de Segurança:
