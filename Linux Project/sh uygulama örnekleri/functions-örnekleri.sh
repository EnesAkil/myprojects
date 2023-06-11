******* Bir değişkene fonksiyon atama *******

#!/bin/bash

Welcome () {
    echo "Welcome to Linux Lessons"
}

Welcome

-------------

** fonksiyon içine parametreler atama **

#!/bin/bash

Welcome () {
    echo "Welcome to Linux Lessons $1 $2 $3"
}

Welcome Joe Matt Timothy

------------------

***** Nested Functions İçiçe fonksiyonlar *****

#!/bin/bash

function_one () {
   echo "This is from the first function"
   function_two
}

function_two () {
   echo "This is from the second function"
}

function_one

***** variables Scope *****

#!/bin/bash

var1='global 1'
var2='global 2'

var_scope () {
  local var1='function 1'
  var2='function 2'
  echo -e "Inside function:\nvar1: $var1\nvar2: $var2"
}

echo -e "Before calling function:\nvar1: $var1\nvar2: $var2"

var_scope

echo -e "After calling function:\nvar1: $var1\nvar2: $var2"

