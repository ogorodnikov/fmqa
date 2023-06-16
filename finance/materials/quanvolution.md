# Quanvolution


## Description:

**Convolutional Neural Network (CNN)** is a type of classical Machine Learning models commonly used for image processing.

The model is based on applying local convolution instead of processing the full input data with a global function.

If the input is an image, small local regions are sequentially processed with the same kernel. 
The results obtained for each region are usually associated to different channels of a single output pixel. 
The union of all the output pixels produces a new image-like object, which can be further processed by additional layers.

CNNs have applications in:

* Image recognition, classification, segmentation
* Natural language processing
* Time series data analysis

**Quanvolution** is an expansion of CNN principle on quantum variational circuits.

Full Quanvolution description and implementation example can be found in below Pennylane Tutorial:

https://pennylane.ai/qml/demos/tutorial_quanvolution


## Task:

Classify images from CIFAR-10 dataset using CNN and Quanvolution.

You could use PyTorch CNN implementation:

https://pytorch.org/tutorials/beginner/blitz/cifar10_tutorial.html

And Pennylane PyTorch quantum layers:

https://pennylane.ai/qml/demos/tutorial_qnn_module_torch


## Bonus Task:

DeepPCB dataset contains 1,500 Printed Circuit Board image pairs - each of which consists of a defect-free template image and an aligned tested image with annotations including positions of 6 most common types of PCB defects: open, short, mousebite, spur, pin hole and spurious copper.

https://github.com/tangsanli5201/DeepPCB

Try to use CNN and Quanvolution to binary classify image as containing defect or not.


## Bonus Bonus Task:

Try to classify PCB image defect types.


## References:

1) Pennylane Tutorial:

    https://pennylane.ai/qml/demos/tutorial_quanvolution

2) Qiskit Tutorial:

    https://qiskit.org/ecosystem/machine-learning/tutorials/11_quantum_convolutional_neural_networks.html

3) Paper:

    Quanvolutional Neural Networks: Powering Image Recognition with Quantum Circuits

    https://arxiv.org/abs/1904.04767


