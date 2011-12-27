module FunctionalGraph
       (
         Graph(..)
         , addNode
       ) where

-- Node Labels have type a, and edge labels have type b         

type Node = Int
type Adj b = [(b,Node)]
type Context a b = (Adj b, Node, a, Adj b)

