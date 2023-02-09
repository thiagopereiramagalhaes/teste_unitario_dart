# Testes de unidades

Teste unitário é um tipo de teste de software no qual cada unidade ou componente de um programa é testado isoladamente das demais unidades. O objetivo é garantir que cada unidade do código funcione corretamente e esteja livre de erros antes de integrá-las e testá-las em conjunto. Testes unitários são geralmente escritos pelos desenvolvedores e executados automaticamente cada vez que o código é alterado. Eles são considerados uma boa prática de desenvolvimento de software, pois ajudam a garantir a qualidade do código e facilitam a manutenção e atualização do software.

## Unidade

Na programação, uma unidade é geralmente considerada como uma pequena parte isolada de código que realiza uma tarefa específica. Isso pode ser uma função, um método, uma classe ou até mesmo um conjunto de linhas de código dentro de uma função. A ideia é que cada unidade seja testada individualmente para garantir que ela funcione corretamente antes de ser integrada ao sistema inteiro. Isso permite que os desenvolvedores encontrem e corrijam problemas de forma rápida e eficiente, sem precisar testar o sistema inteiro toda vez que uma alteração é feita.

## Ambiente

### Setup e Teardown

Em Dart (e em outras linguagens de programação), o setup e teardown são técnicas usadas para preparar e limpar o ambiente antes e depois de cada teste unitário.

- Setup: é a técnica usada para preparar o ambiente antes de cada teste. Isso pode incluir a configuração de objetos, variáveis ou outros recursos que são necessários para executar o teste. O objetivo do setup é garantir que cada teste tenha as condições corretas para ser executado de forma independente e consistente.
- Teardown: é a técnica usada para limpar o ambiente depois de cada teste. Isso pode incluir a liberação de recursos alocados durante o setup, a restauração de configurações de sistema ou a remoção de objetos criados durante o teste. O objetivo do teardown é garantir que cada teste não interaja com outros testes ou com o ambiente de forma indesejada.

Em resumo, o setup e teardown são técnicas importantes que ajudam a garantir a qualidade e a consistência dos testes unitários. Eles são usados para preparar e limpar o ambiente antes e depois de cada teste, respectivamente, e são considerados uma boa prática de desenvolvimento de software.

### SetUpAll e TearDownAll

Em Dart (e em outras linguagens de programação), setUpAll e tearDownAll são duas técnicas similares ao setup e teardown, mas com algumas diferenças importantes.

- setUpAll: é uma técnica usada para preparar o ambiente antes de todos os testes. É executado apenas uma vez antes da execução de todos os testes, e é usado para configurar recursos que são compartilhados por todos os testes. O objetivo do setUpAll é garantir que os recursos compartilhados estejam disponíveis e configurados corretamente para todos os testes.
- tearDownAll: é uma técnica usada para limpar o ambiente depois de todos os testes. É executado apenas uma vez depois da execução de todos os testes, e é usado para liberar recursos alocados durante o setUpAll. O objetivo do tearDownAll é garantir que os recursos compartilhados sejam liberados e que o ambiente seja restaurado ao estado original depois de todos os testes terem sido executados.

Em resumo, setUpAll e tearDownAll são técnicas similares ao setup e teardown, mas são executados apenas uma vez antes e depois de todos os testes, respectivamente, em vez de antes e depois de cada teste. Eles são usados para preparar e limpar o ambiente antes e depois de todos os testes, e são considerados uma boa prática de desenvolvimento de software quando recursos compartilhados precisam ser configurados ou liberados.

## Expect

Em Dart (e em outras linguagens de programação), "expect" é uma função usada para esperar que uma expressão seja verdadeira. É usada como parte de um teste unitário para verificar se o código produz o resultado esperado.

A sintaxe para usar a função "expect" é a seguinte:

```dart
expect(valor, matcher);
```

Nesta sintaxe, "valor" é o valor a ser testado e "matcher" é o critério pelo qual o "valor" será avaliado. Se o "valor" satisfizer o "matcher", o teste será considerado bem-sucedido. Se o "valor" não satisfizer o "matcher", o teste será considerado como falho.

A função "expect" é uma das principais ferramentas de teste unitário e é usada para garantir que o código produza o resultado esperado. Ela é usada com matchers para verificar se um valor atende aos critérios específicos, e é uma boa prática para desenvolvimento de software confiável e de alta qualidade.

Em resumo, "expect" é uma função usada para esperar que uma expressão seja verdadeira em testes unitários, combinando um valor a ser testado com um critério (matcher) para avaliar se o valor satisfaz os critérios esperados.

## Matcher

Em testes unitários, um "matcher" é uma função ou biblioteca que verifica se um valor atende a certos critérios específicos. É usado com a função "expect" para esperar que uma expressão seja verdadeira.

Por exemplo, o matcher "equals" verifica se um valor é igual a um determinado valor esperado. A sintaxe para usar o matcher "equals" é a seguinte:

```dart
expect(valor, equals(valorEsperado));
```

Nesta sintaxe, "valor" é o valor a ser testado e "valorEsperado" é o valor esperado. Se "valor" for igual a "valorEsperado", o teste será considerado bem-sucedido. Se "valor" não for igual a "valorEsperado", o teste será considerado como falho.

Existem muitos outros matchers disponíveis, como "isTrue", "isFalse", "greaterThan", "lessThan", etc. Cada matcher verifica um critério específico para determinar se o valor atende aos critérios esperados.

Em resumo, um "matcher" é uma função ou biblioteca usada em testes unitários para verificar se um valor atende a certos critérios específicos, usando a função "expect".

### AllOff

Em Dart, o allOf é uma função do pacote "matcher" que é usada para combinar múltiplos matchers em um único matcher. Ela é usada com a função "expect" para esperar que uma expressão seja verdadeira.

A sintaxe para usar o allOf é a seguinte:

```dart
expect(valor, allOf(matcher1, matcher2, ..., matcherN));
```

Nesta sintaxe, "valor" é o valor a ser testado e "matcher1", "matcher2", etc., são os matchers que serão combinados pelo allOf. Se todos os matchers forem verdadeiros, o teste será considerado bem-sucedido. Se qualquer um dos matchers for falso, o teste será considerado como falho.

O allOf é útil quando você precisa verificar múltiplas condições em uma única expressão. Ele permite que você combine vários matchers em um único teste, o que pode tornar o código de teste mais conciso e legível.

Em resumo, o allOf é uma função do pacote "matcher" que é usada com a função "expect" para esperar que uma expressão seja verdadeira, combinando múltiplos matchers em um único matcher.

```dart 
import 'package:teste_unitario_dart/sum.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() {
    print('Starting all unit test groups');
  });
  group('This is a unit test on sum of integers\n', () {
    test(
        'This is 10?\n',
        () =>
            expect(sum(5, 5), allOf([10, isNotNull, isPositive, isA<int>()])));

    test(
        'This is 11?\n',
        () =>
            expect(sum(6, 5), allOf([11, isNotNull, isPositive, isA<int>()])));
  });

  group('This is a unit test on sum of floating\n', () {
    test(
        'This is 10.50?\n',
        () => expect(sum(5.25, 5.25),
            allOf([10.50, isNotNull, isPositive, isA<double>()])));

    test(
        'This is 100.25?\n',
        () => expect(sum(50, 50.25),
            allOf([100.25, isNotNull, isPositive, isA<double>()])));
  });

  group('This is a unit test on sum of negative integers\n', () {
    test(
        'This is -10\n',
        () => expect(
            sum(-5, -5), allOf([-10, isNotNull, isNegative, isA<int>()])));

    test(
        'This is -11\n',
        () => expect(
            sum(-5, -6), allOf([-11, isNotNull, isNegative, isA<int>()])));
  });

  group('This is a unit test on sum of negative floating\n', () {
    test(
        'This is -10.50\n',
        () => expect(sum(-5.25, -5.25),
            allOf([-10.50, isNotNull, isNegative, isA<double>()])));

    test(
        'This is -100.25\n',
        () => expect(sum(-50, -50.25),
            allOf([-100.25, isNotNull, isNegative, isA<double>()])));
  });
}

```