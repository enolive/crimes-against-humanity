{-# OPTIONS_GHC -Wno-unused-top-binds #-}

module DemoSpec
  ( spec
  ) where

import           Data.Char
import           Test.Hspec

palindrome :: String -> Bool
palindrome = (toLower <$>) >>= return <$> (reverse >>= (==))

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "Performing serious crimes against humanity" $
  context "Be warned, doing something in production makes killing you totally legit" $ do
    it "is a palindrome" $ palindrome "Anna" `shouldBe` True
    it "is not a palindrome" $ palindrome "Hello" `shouldBe` False
