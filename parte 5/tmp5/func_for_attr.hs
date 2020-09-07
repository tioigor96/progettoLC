checkBothBool firstType secondType 
                                  | firstType == BasicType_Bool = if secondType == BasicType_Bool 
                                                                     then ""
                                                                  else
                                                                     "Second argument must be a bolean, " ++ secondType ++"received insted."
                                  | otherwise = if secondType == BasicType_Bool
                                                   then  "First argument must be a bolean, " ++ firstType ++"received insted."
                                                else
                                                   "Arguments must be boolean, "++ firstType ++" and " ++ secondType ++ " received instead."


checkIsBool typeArg = if typeArg == BasicType_Bool 
                        then ""
                      else 
                        "The argument must be a boolean, "++ typeArg++ " received instead."
checkSingleNumeric typeArg = if typeArg == BasicType_Int || typeArg == BasicType_Float
                        then ""
                      else 
                        "The argument must be an integer or a float, "++ typeArg++ " received instead."
checkNumeric firstType secondType 
                                |firstType == BasicType_Int || firstType == BasicType_Float = 
                                            if secondType == BasicType_Float || secondType == BasicType_Int
                                                then ""
                                            else "Second argument must be integer or float, "++secondType++" received instead."
                                |otherwise =
                                            if secondType == BasicType_Float || secondType == BasicType_Int
                                                then "First argument must be integer or float, "++firstType++" received instead."
                                            else  "Arguments must be integer or float, "++ firstType ++" and " ++ secondType ++ " received instead."
checkNotZero value = if value == 0
                       then "Value zero is not permitted for this operation"
                     else ""

checkBothZero value1 value2 
                           |value1 == 0 = 
                                if value2 == 0
                                    then "Value zero is not permitted for both arguments in this operation"
                                else "First argument cannot have value zero"
                           |otherwise =
                                if value2 == 0
                                    then "Second argument cannot have value zero"
                                else "Value zero is not permitted for both arguments in this operation"
checkInt  firstType secondType 
                              | firstType == BasicType_Int = if secondType == BasicType_Int
                                                                then  ""
                                                             else
                                                                "Second argument must be an integer, " ++ firstType ++" received insted."
                              | otherwise = if secondType == BasicType_Int    
                                              then "First argument must be an integer, " ++ firstType ++" received insted."
                                            else "Arguments must be integers, "++ firstType ++" and " ++ secondType ++ " received instead."

supType firstType secondType 
                          | firstType == BasicType_Int && secondType == BasicType_Int       = BasicType_Int
                          | firstType == BasicType_Int && secondType == BasicType_Float     = BasicType_Float
                          | firstType == BasicType_Float && secondType == BasicType_Int     = BasicType_Float
                          | firstType == BasicType_Float && secondType == BasicType_Float   = BasicType_Float