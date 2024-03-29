# Perceptron implemented with the sigmoid function
import numpy as np

class Perceptron():
    def __init__(self):        
        np.random.seed(1)
        self.synaptic_weights = 2 * np.random.random((3, 1)) - 1

    def sigmoid(self, x):
        return 1 / (1 + np.exp(-x))

    def sigmoid_derivative(self, x):
        return x * (1 - x)

    def train(self, training_inputs, training_outputs, training_iter):
        for iter in range(training_iter):
            output = self.think(training_inputs)
            error = training_outputs - output            
            adjustments = np.dot(training_inputs.T, error * self.sigmoid_derivative(output))
            self.synaptic_weights += adjustments

    def think(self, inputs):        
        inputs = inputs.astype(float)
        output = self.sigmoid(np.dot(inputs, self.synaptic_weights))
        return output


#if __name__ == "__main__":

    
  