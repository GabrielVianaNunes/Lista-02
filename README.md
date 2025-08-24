Atividades Básicas (Dart Console)

Aplicação de console em Dart com um menu interativo que reúne 10 exercícios introdutórios (cálculo, if/else, while e for). Feito para rodar no VS Code ou no terminal (Windows/Linux/macOS).

✅ Pré-requisitos

Dart SDK >=3.3.0 <4.0.0

Terminal/VS Code com a extensão Dart (recomendado)

Para conferir:
dart --version

▶️ Como executar

Na raiz do projeto:

dart pub get
dart run bin/atividades_basicas.dart


Você verá um menu com as opções 1 a 10 (e 0 para sair).

Rodar com F5 (VS Code)

Opcional: crie .vscode/launch.json com:

{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Dart Console: Atividades",
      "type": "dart",
      "request": "launch",
      "program": "bin/atividades_basicas.dart"
    }
  ]
}


Depois, abra o projeto no VS Code e aperte F5.

## 🗂️ Estrutura do projeto

```text
atividades_basicas/
├─ bin/
│  └─ atividades_basicas.dart      # Ponto de entrada (menu interativo)
├─ lib/
│  ├─ exercises.dart               # Lógica dos 10 exercícios
│  └─ utils/
│     └─ io.dart                   # Leitura/validação de input (helpers)
├─ test/
│  └─ atividades_basicas_test.dart # (gerado pelo template; opcional)
├─ pubspec.yaml                    # Metadados do pacote e dependências
└─ README.md
```

📚 Exercícios implementados

Cálculo

Ler dois números e mostrar soma, subtração, multiplicação e divisão (com proteção a divisão por zero).

Média de três notas e status (Aprovado se média ≥ 7).

Conversão Celsius → Fahrenheit.

If/Else
4. Dizer se o número é positivo, negativo ou zero.
5. Informar se é menor ou maior de idade.

While
6. Verificar se um ano é bissexto.
7. Ler números e somar até digitar 0.
8. Contador de 1 a 10 usando while.

For
9. Tabuada (1 a 10) de um número escolhido.
10. Fatorial de um número (usando for e BigInt).

🧪 Comandos úteis
dart analyze      # análise estática
dart format .     # formatação do código


(Se adicionar testes depois: dart test)

💡 Dicas e solução de problemas

Erro: package_config.json did not contain its own root package
Solução (na raiz do projeto):

# PowerShell
Remove-Item -Recurse -Force .dart_tool
Remove-Item -Force pubspec.lock -ErrorAction SilentlyContinue
dart pub get


Depois rode: dart run bin/atividades_basicas.dart.

OneDrive / caminhos com acento (Área de Trabalho) podem causar travas/sincronia.
Soluções:

Marcar a pasta como Sempre manter neste dispositivo no OneDrive; ou

Usar um caminho simples fora do OneDrive, ex.: C:\dev\atividades_basicas

Garanta que o name: no pubspec.yaml é atividades_basicas, pois os imports usam package:atividades_basicas/....

🧱 Gerar executável (Windows)
dart compile exe bin/atividades_basicas.dart -o build/atividades.exe
.\build\atividades.exe

➕ Como adicionar um novo exercício (ex.: 11)

Em lib/exercises.dart: crie a função void exercicio11() { ... }.

Em bin/atividades_basicas.dart:

Adicione a linha do menu (ex.: stdout.writeln(' 11) ...');)

Ajuste o readInt(... max: 11)

Acrescente case 11: exercicio11(); break;

Autor: Gabriel Nunes
Linguagem: Dart
Objetivo: Praticar fundamentos de lógica e fluxos de controle em aplicações de console.