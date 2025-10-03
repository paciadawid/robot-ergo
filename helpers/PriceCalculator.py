


class PriceCalculator:
    
    def calculate_total_price(self, total_price):
        total_price = total_price.split()[1]
        return int(total_price)

    def calculate_items_sum_price(self, items_prices):
        sum = 0
        for element_price in items_prices:
            price = element_price.text
            price = price.split()[1]
            
            
            sum += int(price)
            # ${VAL}=    Convert To Integer    ${VAL}
            # ${SUM}=    Evaluate    ${SUM} + ${VAL}

        return sum
    
