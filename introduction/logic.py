colours = ["red", "green", "blue"]

for colour in colours:
    print(colour)
    
random_string = "Hello World"

for char in random_string:
    print(char)


a = 0
while a < 10:
    print("Hello World")
    a += 1


if a > 0:
    print("Positive")
elif a < 0:
    print("Negative")
else:
    print("Zero or error")



distance = 1500
cost = 0
if distance >= 2000:
    luggage = 0
else:
    luggage = 100

cost = distance * 2 + luggage
print(cost)
