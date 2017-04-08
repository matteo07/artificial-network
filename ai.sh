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

class NeuralNetwork(){
	val input = new ArrayBuffer[Int]
	input += 1
	input += 1
	input += 1
	
	val in1 = new Neuron(input,1)
	val in2 = new Neuron(input,1)
	val in3 = new Neuron(input,1)
	
	val out1 = new Neuron()
	val out2 = new Neuron()
	val out3 = new Neuron()
	
	val middle1 = new Neuron()
	val middle2 = new Neuron()
	
	val in = new ArrayBuffer[Neuron]
	in += new Neuron()
	in += new Neuron()
	in += new Neuron()
	
	val out = new ArrayBuffer[Neuron]
	out += new Neuron()
	out += new Neuron()
	out += new Neuron()
	
	val middle = new ArrayBuffer[Neuron]
	middle += new Neuron()
	middle += new Neuron()
	
	
}

test((true),"Doh")

val a = new ArrayBuffer[Int]()
val x = new Neuron()
println("Weight: " + x.weight)