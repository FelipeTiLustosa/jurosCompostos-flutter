# COMPARADOR DE INVESTIMENTOS <img src="https://skillicons.dev/icons?i=dart,flutter" alt="Flutter Icon" style="vertical-align: middle; height: 35px;"/>

## 1. Visão Geral

O projeto **Comparador de Investimentos** é uma aplicação desenvolvida em Flutter que permite a simulação e comparação de dois investimentos distintos ao longo de um período. A ferramenta possibilita o cálculo de rendimentos mensais utilizando juros compostos, destacando a evolução e o saldo final de cada investimento.

Este projeto é ideal para quem deseja compreender a dinâmica dos juros compostos, planejar suas finanças ou explorar o potencial de investimentos de forma prática e intuitiva.

---

## 2. Funcionalidades

| Funcionalidade                          | Descrição                                                                                     |
|-----------------------------------------|-----------------------------------------------------------------------------------------------|
| **Entrada de Dados Personalizada**      | Permite inserir os valores iniciais, aplicações mensais, taxas de juros e período de tempo.   |
| **Cálculo de Juros Compostos**          | Realiza o cálculo de rendimentos mensais para ambos os investimentos.                         |
| **Comparação Gráfica**                  | Mostra a evolução mensal e os resultados finais de cada investimento.                         |
| **Interface Responsiva e Intuitiva**    | Interface moderna e adaptável para diferentes tamanhos de tela.                               |
| **Validação de Dados**                  | Garante que todos os campos sejam preenchidos corretamente antes de realizar os cálculos.     |
| **Visualização de Resultados**          | Exibe os detalhes mensais e o saldo final de cada investimento lado a lado.                   |

---

## 3. Tecnologias Utilizadas

- **Linguagem de Programação**: [Dart](https://dart.dev/)
- **Framework**: [Flutter](https://flutter.dev/)
- **IDE**: [Visual Studio Code](https://code.visualstudio.com/) ou [Android Studio](https://developer.android.com/studio)
- **Gerenciamento de Estado**: Não aplicável (uso básico de StatefulWidgets e controllers)
- **Ambiente Multiplataforma**: Compatível com Android, iOS, e Web.

---

## 4. Links para Recursos Adicionais

- **Flutter Oficial**: [Documentação Flutter](https://flutter.dev/docs)
- **Introdução aos Juros Compostos**: [Wikipedia - Juros Compostos](https://pt.wikipedia.org/wiki/Juros_compostos)
- **Design Responsivo**: [Flutter Responsiveness Guide](https://flutter.dev/docs/development/ui/layout/responsive)

---

## 5. Configuração e Execução

### 5.1. Pré-requisitos

- Instale o [Flutter](https://flutter.dev/docs/get-started/install) em sua máquina.
- Tenha um editor de código como [VS Code](https://code.visualstudio.com/) ou [Android Studio](https://developer.android.com/studio) configurado.
- Certifique-se de ter um emulador ou dispositivo físico para testar o aplicativo.

### 5.2. Clonar o Repositório

```bash
git clone https://github.com/seu-repositorio/comparador-de-investimentos.git
cd comparador-de-investimentos
```
### 5.3. Executar o Projeto

Para executar o projeto, siga os passos abaixo no terminal:

```bash
flutter pub get  # Instala as dependências do projeto
flutter run      # Executa o projeto no emulador ou dispositivo conectado
```
## 6. Contribuição

Contribuições são bem-vindas! Para contribuir com este projeto, siga as etapas abaixo:

1. Faça um **fork** do repositório clicando no botão `Fork` no canto superior direito da página do repositório.
2. Clone o repositório para sua máquina local:
   ```bash
   git clone https://github.com/SEU_USUARIO/SEU_FORK.git
   cd SEU_FORK

## 7. Estrutura de Pastas

Abaixo está a organização das pastas do projeto, com uma breve descrição do conteúdo de cada uma:

```bash
comparador-de-investimentos/
│
├── lib/
│   ├── main.dart                      # Arquivo principal que inicia o aplicativo
│   ├── telas/
│   │   ├── tela_comparacao.dart       # Tela principal para entrada de dados e comparação
│   │   ├── tela_resultados.dart       # Tela que exibe os resultados e gráficos
│   └── widgets/
│       ├── campo_texto_customizado.dart # Widget personalizado para campos de entrada
│       └── botao_customizado.dart      # Widget estilizado para botões
│
├── assets/
│   └── images/                        # Pasta para armazenar imagens e ícones utilizados
│
├── pubspec.yaml                       # Arquivo de configuração do Flutter
├── README.md                          # Arquivo de documentação do projeto
└── .gitignore                         # Arquivo para ignorar arquivos desnecessários no Git
```
## 8. Link do Vídeo Explicativo
Acompanhe uma demonstração completa do funcionamento do projeto no link abaixo:
