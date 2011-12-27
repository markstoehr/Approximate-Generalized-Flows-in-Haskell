module FunctionalGraph
       (
         Graph(..)
         , graphPrettyPrint
       ) where

-- Node Labels have type a, and edge labels have type b         

type Node = Int
type Adj b = [(b,Node)]
type Context a b = (Adj b, Node, a, Adj b)

-- | Inefficient Version, simply used for understanding code
data Graph a b = Empty 
               | Context a b `GraphAnd` Graph a b
                 deriving (Show, Eq)

-- simple flow graph
{-
   1 
  / \
0 ---2
  
-}  

g = ([],0,1.0,[(10.0,1),(5.0,2)]) `GraphAnd`
     (([(10.0,0)],1,3.0,[(7.0,2)]) `GraphAnd`
     (([(5.0,0),(7.0,1)],2,1.0,[]) `GraphAnd` Empty))
    
-- | Takes a graph and outputs a pretty printed version     
-- Should look like:
--              ([],0,1.0,[(10.0,1),
--                         (5.0,2)])   &
--       (([(10.0,0)],1,3.0,[(7.0,2)]) &
--       (([(5.0,0),
--          (7.0,1)], 2,1.0,[])        & Empty))
graphPrettyPrint :: Graph a b -> String
graphPrettyPrint = undefined
