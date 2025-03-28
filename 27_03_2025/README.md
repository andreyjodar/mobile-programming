## Variáveis  
- **Variável de referência** 
    - recebe um endereço  
- **Variável de valor**  
    - recebe um valor

## Classes
- **late**: atribuição tardia
    - Precisa forçar atribuição não nula (operador !)
- **Construtor**
    - Parâmetro Posicional Não Obrigatório (Ex: )
    - Parâmetro Posicional Obrigatório (Ex: *Pessoa(this.nome, this.peso);*)
        - Sem considerar nulo (operador ?) e atribuição tardia (late)
    - Parâmetro Nomeado Não Obrigatório (Ex: *Pessoa({this.nome, this.peso});*)
        - Parâmetro não é obrigatório
    - Parâmetro Nomeado Obrigatório (Ex: *Pessoa({required this.nome, required this.peso});*)
- **Visibilidade**
    - Atributos Privados (Ex: String _peso);
    - Atributos Públicos (Dart Não Usa);

- **Getter e Setter**
    - Em Dart, só faz sentido em caso de validação
    - **Getter** 
        - (Ex 1: *String nome => _nome;*)
    - **Setter** 
        - (Ex 2: *set nome (String nome) => _nome = nome;*)

-**Recursos**
    - Arrow Function (operador =>)

-**Funções**
    - *Função Nomeada*
        - Ex: double calcularIMC(double peso, double altura) {
            return peso / (altura * altura);
        }
    - *Função Anônima*
        - Ex: (double altura, double peso) {
            return peso / (altura * altura);
        }

## Parâmetro do Tipo Função
    - Exemplos:
        - Function imc;
        - double Function imc;
        - double Function() imc;
