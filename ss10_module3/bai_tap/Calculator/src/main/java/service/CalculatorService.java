package service;

public class CalculatorService {
    public static double calculator(double firstOperand, double secondOperand, String operator) {
        switch (operator) {
            case "+":
                return firstOperand + secondOperand;
            case "-":
                return firstOperand - secondOperand;
            case "*":
                return firstOperand * secondOperand;
            case "/":
                if (secondOperand != 0)
                    return firstOperand / secondOperand;
                else
                    throw new RuntimeException("không thể chia hết cho không");
            default:
                throw new RuntimeException("không hợp lệ");
        }
    }
}
