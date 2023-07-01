def calculate_total_amount(N, M, X):
    total_amount = 0
    current_price = X

    for floor in range(1, N + 1):
        total_amount += current_price
        if floor % M == 0:
            current_price += 1000

    return total_amount

N = 25  # Количество этажей
M = 3   # Количество этажей для увеличения стоимости
X = 1000  # Стоимость квартиры на первом этаже

total_amount = calculate_total_amount(N, M, X)
print("Выручка от продажи всех квартир:", total_amount)
