import Test.Hspec
import TowerOfHanoi

main :: IO ()
main = hspec $ do
  describe "tower of hanoi" $ do
    it "does not make a move when disc number is 0" $ do
      hanoi 0 "a" "b" "c" `shouldBe` []

    it "moves disc from origin peg to destiny peg when there is only one disc" $ do
      hanoi 1 "origin" "destiny" "temp" `shouldBe` [("origin", "destiny")]

    it "moves 3 discs" $ do
      let origin = "origin"
          destiny = "destiny"
          temp = "temp" in
          hanoi 3 origin destiny temp `shouldBe`
          [(origin, destiny),(origin, temp),(destiny, temp),(origin, destiny),
          (temp, origin),(temp, destiny),(origin, destiny)]

    it "makes 3 moves when there is 2 discs" $ do
      let moves = hanoi 2 "a" "b" "c"
          numberOfMoves = length(moves) in
          numberOfMoves `shouldBe` 3

    it "makes 7 moves for 3 discs" $ do
      let moves = hanoi 3 "a" "b" "c"
          numberOfMoves = length(moves) in
         numberOfMoves `shouldBe` 7
