---
layout: post
title: "TensorFlow vs SciKit Learn"
date: 2017-09-07 14:55:28 +0800
comments: true
categories: [TensorFlow, SciKit-Learn, technical-review]
---


* TensorFlow is more low-level; 
* Scikit-learn offers you off-the-shelf algorithms, e.g., algorithms for classification such as SVMs, Random Forests, Logistic Regression
* Scikit-learn does not support GPU at this time. http://scikit-learn.org/stable/faq.html#will-you-add-gpu-support
* Skflow: Simplified interface for TensorFlow (mimicking Scikit Learn) for Deep Learning. SkFlow has been moved to Tensorflow. https://github.com/tensorflow/tensorflow/tree/master/tensorflow/contrib/learn/python/learn



ref:
https://www.quora.com/What-are-the-main-differences-between-TensorFlow-and-SciKit-Learn