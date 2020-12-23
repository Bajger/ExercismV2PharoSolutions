Class {
	#name : #BaselineOfExercismV2PharoSolutions,
	#superclass : #BaselineOf,
	#category : #BaselineOfExercismV2PharoSolutions
}

{ #category : #baselines }
BaselineOfExercismV2PharoSolutions >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ "dependencies"
			self exercismBaseline: spec.
			spec
				package: 'ExercismV2PharoSolutions'
				with: [ spec requires: #('Exercism') ] ]
]

{ #category : #dependencies }
BaselineOfExercismV2PharoSolutions >> exercismBaseline: spec [
	spec
		baseline: 'Exercism'
		with:
			[ spec repository: 'github://exercism/pharo-smalltalk/releases/latest' ]
]
