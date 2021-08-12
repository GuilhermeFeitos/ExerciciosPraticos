// Exercicios Funcionários

 /* Definir uma classe Funcionário com nome, salário e cpf, depois defina as classes Programador que tem plataforma de trabalho (Ex. Android, Web, IOS), e uma classe Designer
 que tem ferramenta preferida (ex. Photoshop, Skectch, Gimp.). Ambos tem um bonus anual baseado no salário, Programador recebe 20% e Designer recebe 15%, faça um método que calcule
 o bonus anual e mostr o valor do bonus na tela. Use polimorfismo para resolver este problema */

class Funcionario {

    var nome: String
    var salario: Double
    var cpf: String

    init (nome: String, salario: Double, cpf: String){

        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    func bonusAnual() -> Double{

        let bonus: Double
        bonus = salario + salario
        return bonus
    }
}


class Programador: Funcionario{

    var plataformaDeTrabalho: String

    init(nome: String, salario: Double, cpf: String, plataformaDeTrabalho: String) {

        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }

    override func bonusAnual()-> Double {

        let bonus: Double
        bonus = (salario * 0.20) * 12
        print("\(nome) o seu salário é de R$ \(salario) e o bonus é de R$ \(bonus) anual. Curta seu bônus!")
        return bonus
    }
}

class Designer: Funcionario{

    var ferramentaPreferida: String

    init(nome: String, salario: Double, cpf: String, ferramentaPreferida: String) {

        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }

    override func bonusAnual() -> Double {
        let bonus: Double
        bonus = (salario * 0.15) * 12
        print("\(nome) o seu salário é de R$ \(salario) e o bonus é de R$ \(bonus) anual. Curta seu bônus!")
        return bonus
    }
}

var func1: Funcionario = Programador(nome: "Gui", salario: 12000, cpf: "123456789", plataformaDeTrabalho: "IOS")

let bonusAnual1 = func1.bonusAnual()

var func2: Funcionario = Designer(nome: "Gabi", salario: 8500, cpf: "789456123", ferramentaPreferida: "Photoshop")

let bonusAnual2 = func2.bonusAnual()

print(bonusAnual1)
print(bonusAnual2)
