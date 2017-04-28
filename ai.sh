#!/usr/bin/env scala

import scala.collection.mutable.ArrayBuffer

//Inizializza i Weight
val w_in1 = 1
val w_in2 = 1
val w_in3 = 1

val w_mid1 = 0.5
val w_mid2 = 1

val w_out1 = 1
val w_out2 = 0.5
val w_out3 = 1

println("started...")

class Neuron(val in: ArrayBuffer[Double], val weight: Double){
	def this() = this(new ArrayBuffer[Double](), 1)
	
	//ritorna la media dei valori di In
	def getIn(): Double = {
		var res = 0.0
		for(i <- 0 until in.length) {
			res += in(i)
		}
		return res / in.length
	}
	
	def compute() = getIn * weight
		
	def isEmpty() = true

	override def toString = "A neuron"
}

//restituisce l'array di in data un array di neuron
def computeIn(neurons: ArrayBuffer[Neuron]): ArrayBuffer[Double] = {
	val res = new ArrayBuffer[Double]()
	for(i <- 0 until neurons.length) {
		res += neurons(i).compute
	}
	return res
}

class NeuralNetwork(){
	val input = new ArrayBuffer[Double]
	input += 1
	
	val in = new ArrayBuffer[Neuron]
	val mid = new ArrayBuffer[Neuron]
	val out = new ArrayBuffer[Neuron]
	
	in += new Neuron(input,w_in1)
	in += new Neuron(input,w_in2)
	in += new Neuron(input,w_in3)
	
	mid += new Neuron(computeIn(in),w_mid1)
	mid += new Neuron(computeIn(in),w_mid2)
	
	out += new Neuron(computeIn(mid),w_out1)
	out += new Neuron(computeIn(mid),w_out2)
	out += new Neuron(computeIn(mid),w_out3) 	

	println("Computed result :: " + computeIn(out))
}

new NeuralNetwork()

//============================  TESTS  ===============================

def debug = true

def test(cond: Boolean,message: String) = {
	if (debug) assert(cond,message)
}

def testComputeIn() = {
	val expects = new ArrayBuffer[Double]
	val input = new ArrayBuffer[Double]
	input += (1,0,2)
	expects += (1,1,1)
	val in = new ArrayBuffer[Neuron]
	
	for( a <- 1 to 3){
		in += new Neuron(input,1)
	}
	
	assert(computeIn(in)==expects)	
}

testComputeIn()
test((true),"Doh")


println("GVNG")
