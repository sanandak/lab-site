+++
date = "2017-01-25T20:09:23-05:00"
tags = []
author = ""
description = "We create and evaluate a novel approach to leveraging situated language, gesture, and context in order to be able to understand a diverse set of gestures which may be unfamiliar to a robot."
title = "Unfamiliar Gestures"

+++

Human communication is highly multimodal, including speech, gesture, gaze, facial
expressions, and body language. Robots serving as human teammates must act on such
multimodal communicative inputs from humans, even when the message may not be
clear from any single modality. In this paper, we explore a method for achieving increased
understanding of complex, situated communications by leveraging coordinated
natural language, gesture, and context.

Our work departs from the traditional model of gesture recognition in that the set of gestures it 
can recognize is not limited to the gestural lexicon used for its training. Even in simplified
domains, naive classifiers can fail to recognize instances of trained gestures due to human
gestural variability. Humans resort to gesture when speech is insufficient, such as due to
inability to recall a word, inability to be heard, or inadequate time to formulate speech.
For these reasons, gesture is prevalent in human discourse. Yet gestures defy attempts
at canonical classification both due to variations within and among individuals and due
to their subjective interpretations. We define the unfamiliar gesture understanding
problem: given an observation of a previously unseen gesture (i.e. a gesture of a class
not present in any training data given to the system), we wish to output a contextually
reasonable description in natural language of the gesture’s intended meaning.

This problem is an instance of the machine learning problem of zero-shot learning,
a burgeoning area of machine learning that seeks to classify data without having seen
examples of its class in the training stage. Most prior work in the area makes
use of a multimodal dataset to perform the zero-shot task. However, the zero-shot task
has not yet been demonstrated for gestural data. In the related one-shot learning task,
gesture understanding has been shown from only one example of a given class in the
training stage. The primary drawback of such approaches is their reliance on
a fixed lexicon of gestures. We remove this drawback by creating a novel multimodal
embedding space using techniques from convolutional neural nets to handle variable
length gestures and allow for the description of arbitrary unfamiliar gestural data.
