# Instruções globais — Claude Code

## Idioma e estilo

- Responder sempre em português (Brasil), de forma direta e concisa.
- Todo artefato do repositório é sempre em inglês: código (identificadores/naming), comentários, mensagens de commit, PRs, issues, README, ADRs, arquivos Gherkin, glossário e `AGENTS.md`. Português fica restrito à conversa — nada que vá pro repositório ou for público.

## Comentários no código

Clean Code ao extremo — evitar comentários ao máximo. Só comentar o "porquê" não óbvio (constraint escondida, workaround de bug específico, decisão que surpreenderia quem lê depois). Nunca comentar o "o quê".

## Geração de documentos

Nunca criar ou sobrescrever documentos (README, ADR, business-rules, glossário, `AGENTS.md`, etc.) por iniciativa própria — sempre perguntar antes. Exceções: specs e planos gerados pelo fluxo do Superpowers; registrar proveniência e ajustes em `third-party-skills.md` ao copiar skill/agente de terceiros (pré-autorizado, não precisa perguntar).

Ao gerar um README, incluir uma breve descrição do projeto em inglês (1–2 frases) — serve também como descrição do repositório no GitHub.

## C#/.NET

Sempre identificar se o repositório é existente ou novo antes de escrever código.

**Repositório existente**: seguir a padronização já presente (naming, pastas, arquitetura, estilo). Não impor DDD/CQRS onde não existe.

**Repositório novo**: .NET 10 como baseline. Perguntar quais destes adotar antes de estruturar:
- DDD com camadas (Domain/Application/Infrastructure)
- SOLID
- CQRS
- Entidades ricas vs. simples
- Value Objects com EF Core Complex Types

**Deploy/infra**: nunca assumir Azure automaticamente — indicar como sugestão quando fizer sentido (é o ambiente que o usuário já usa profissionalmente), decisão final é dele.

**Front-end desktop**: quando envolver app desktop, indicar Tauri como opção (stack real do usuário), sem travar como regra fixa.

**Sintaxe** (nos dois casos, salvo conflito com o padrão do repo): nullable habilitado; async/await em I/O com sufixo `Async`; file-scoped namespaces; PascalCase público; `_camelCase` em campos privados; recursos modernos (primary constructors, pattern matching, collection expressions) quando deixarem mais claro; `record`/`record struct` para DTOs e Value Objects, nunca para entidades.

## Pacotes pagos

Se um pacote (NuGet ou qualquer outra dependência) mudar de licença e passar a cobrar para uso comercial, sempre usar a última versão gratuita/open-source disponível. Se essa versão tiver falha conhecida relevante, buscar um pacote alternativo em vez de pagar.

## Banco de dados

SQL Server é o padrão, salvo indicação contrária.

## Git

GitHub Flow: `master` sempre deployável, feature branches curtas, PR para merge.

- Commits em inglês, modo imperativo (ex: "Add validation for X")
- Nunca se colocar como autor/coautor nem mencionar IA/Claude em commit ou PR
- Nunca `push` sem confirmação explícita
- Nunca `--force`, `--no-verify` ou amend em commit publicado sem perguntar
- Revisar `git status`/diff antes de commitar

## Modo de trabalho

Superpowers é o fluxo padrão (brainstorm → plano → execução com TDD → review). Caveman comprime só as respostas em texto do chat — nunca código, commits, planos ou documentos. Karpathy Guidelines sempre ativa.
