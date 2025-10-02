var_int = 1
var_double = 1.0
print(1/2)

var_str = 'Random text'
var_str2 = "Random text"
print(var_str, var_str2)

var_list = [1, 2, 3, 0, 'abc', 0] # list: mutable, ordered, can repeat (not unique)
var_list.append(5)
var_list[1] = "new value"
print(var_list[1])
print(var_list[-1])
print(var_list[1:4])

var_tuple = (1, 2, 3, 0, 'abc', 0) # tuple: immutable, ordered, can repeat (not unique)
# var_tuple[1] = 10 -> not allowed
print(var_tuple[1])

var_dict = {
    'b': 2, 
    'a': 1, 
    'c': [1,2,3]
    } # dictionary: mutable, unordered, unique keys
var_dict['d'] = 4
print(var_dict['a'])
print(var_dict['c'][1])
print(var_dict)

var_set = {1, 2, 3, 0, 'abc', 0} # set: mutable, unordered, not unique
var_set.add(5)
print(var_set)

var_bool = True # boolean: True or False
print(var_bool)

print(bool({0}))  # False if 0, "", [], {}, ()


pajton = {
    "name": "Pajton",
    "age": 3,
    "is_cute": True,
    "friends": ["Dawid", "Kamil", "Krzysztof"],
    "colours": ("red", "blue", "green"),
    "hobbies": {"running", "jumping", "playing"},
    "weight": 10.5
}

print(pajton)