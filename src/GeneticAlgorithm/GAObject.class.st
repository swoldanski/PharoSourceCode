Class {
	#name : #GAObject,
	#superclass : #Object,
	#instVars : [
		'random'
	],
	#category : #'GeneticAlgorithm-Core'
}

{ #category : #accessing }
GAObject >> checkForRandomNumber [
    self
        assert: [ random notNil ]
        description: 'Need to provide a random number generator'
]

{ #category : #accessing }
GAObject >> random [
    "Return the random number generator associated to the object"
    ^ random
]

{ #category : #accessing }
GAObject >> random: aRandomNumberGenerator [
    "Set the random number generator associated to the object. The argument must be an instance of Random."
    random := aRandomNumberGenerator
]

{ #category : #accessing }
GAObject >> randomNumber [
    "Return a number between 0.0 and 1.0"
    ^ random next
]
