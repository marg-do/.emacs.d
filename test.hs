main = do
    print $ plus 1 2
    print $ plus3 4
    where
        plus = \a b -> a + b
        plus3 = \x -> plus 3 x
