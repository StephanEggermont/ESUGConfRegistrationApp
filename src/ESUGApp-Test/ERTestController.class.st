Class {
	#name : #ERTestController,
	#superclass : #ERTestControllers,
	#instVars : [
		'controller'
	],
	#category : #'ESUGApp-Test'
}

{ #category : #initialization }
ERTestController >> setUp [
	super setUp.
	controller := ERController new
]

{ #category : #initialization }
ERTestController >> testConferenceIsOpenRegistration [
	controller conference configuration openRegistration: true.
	self assert: controller conferenceIsOpenRegistration . 
	
	controller conference configuration openRegistration: false.
	self deny: controller conferenceIsOpenRegistration .
]