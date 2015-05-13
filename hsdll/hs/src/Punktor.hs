module Punktor where

import Debug.Trace
import Data.Word
import Data.ByteString.Lazy (ByteString, empty, pack, unpack)
import Foreign.ForeignPtr (ForeignPtr, mallocForeignPtrBytes)
import Foreign.Ptr (Ptr)

import Foreign.Marshal.Array (peekArray, newArray)
-- import Data.ByteString.Internal as BSI

data Point = Point { x::Int, y::Int}

adjust :: [Point] -> [Point]
adjust a = []

main = putStrLn "Foo"

foo a  = a + 2

adjust' :: ByteString -> ByteString
adjust' a = empty

adjust'' :: Int -> Ptr Word8 -> IO ()
adjust'' inputSize inputPtr = do
	return ()

foreign export ccall foo :: Int -> Int

bar :: Int -> Ptr Word8 -> IO (Ptr Word8)
bar inSize inPtr = do
	inputBytes <- peekArray inSize inPtr
	traceIO "Loaded"
	let inputBytestring = pack inputBytes
	let outputBytestring = adjust' inputBytestring
	let outputBytes = unpack outputBytestring
	outPtr <- newArray outputBytes
	return outPtr

foreign export ccall bar :: Int -> Ptr Word8 -> IO (Ptr Word8)

-- foreign export ccall adjust :: [Point] -> [Point]
