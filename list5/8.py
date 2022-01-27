class FormulaError(Exception):
    pass    

class Calculator:
    def calculate(self, formula: str) -> float:
        splitted = formula.split(" ")
        if len(splitted) != 3:
            raise FormulaError("A entrada não consiste de 3 elementos")
        try:
            a, b = float(splitted[0]), float(splitted[2])
        except ValueError:
            raise FormulaError("O primeiro e o terceiro valor de entrada devem ser números")
        operator = splitted[1]
        if operator not in ["+", "-", "*", "/"]:
            raise FormulaError(f"{operator} não é um operador válido")
        
        return self.evaluate(a, b, operator)
        
    def evaluate(self, a: float, b: float, operator: str) -> float:
        if operator == "+":
            return a + b
        elif operator == "-":
            return a - b
        elif operator == "*":
            return a * b
        else:
            return a / b

def main():
    calculator = Calculator()
    while True:
        formula = input()
        answer = calculator.calculate(formula)
        print(answer)

if __name__ == "__main__":
    main()
