#!/usr/bin/env scala

import scala.collection.mutable.ArrayBuffer

def debug = true

def test(cond: Boolean,message: String) = {
	if (debug) assert(cond,message)
}

class Neuron(val in: ArrayBuffer[Int], val weight: Int){
	def this() = this(new ArrayBuffer[Int](), 1)
	
	def getIn(): Int = {
		val res = 1
		for(i <- in) {
			println(""+i)
		}
		return res
	}
	
	def compute() = getIn * weight
	
	def isEmpty() = true

	override def toString = "A neuron"
}

def computeIn(neurons: ArrayBuffer[Neuron]): ArrayBuffer[Int] = {
	val res = new ArrayBuffer[Int]()
	for(n <- neurons){
		res += neurons(n).compute
	}
	
}

class NeuralNetwork(){
	val input = new ArrayBuffer[Int]
	input += 1
	
	val in = new ArrayBuffer[Neuron]
	val middle = new ArrayBuffer[Neuron]
	val out = new ArrayBuffer[Neuron]
	
	in += new Neuron(input,1)
	in += new Neuron(input,1)
	in += new Neuron(input,1)
	
	
	for( a <- 1 to 3){
		in += new Neuron(input,1)
	}
	
	
	
	val out1 = new Neuron()
	val out2 = new Neuron()
	val out3 = new Neuron()
	
	out += new Neuron()
	out += new Neuron()
	out += new Neuron()
}

new NeuralNetwork()

test((true),"Doh")
println("GVNG")