setwd("~/sas-py-r/src")

answer = 42
word = "Hello"

# ---------------------
# Conditional Execution
# ---------------------
if (answer==42) then {
  print("Correct")
}
else if (answer<42) then {
  print("Too small")
}
else {
  print("Too big")
}

if (word %in% c("Hello", "Goodbye")) {
  print("Found")
}

# -------
# Looping
# -------
for (i in seq(10)) {
  print(i)
}

for (i in seq(3, 7, 2)) {
  print(i)
}

for (w in c("Hello", "World")) {
  print(w)
}
