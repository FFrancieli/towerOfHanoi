module TowerOfHanoi where

type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi 0 _ _ _ = []
hanoi numberOfDiscs origin destiny temp = hanoi (numberOfDiscs-1) origin temp destiny ++
                                          [(origin,destiny)] ++
                                          hanoi (numberOfDiscs-1) temp destiny origin
