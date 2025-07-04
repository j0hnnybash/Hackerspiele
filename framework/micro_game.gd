class_name MicroGame
extends Node

enum Result { Loss, Win }

## The default time for this microgame.
@export var time := 5.0
## If this is enabled, the time gets longer instead of shorter.
@export var survival := false

## Local storage that is persistent per run.
var storage: Dictionary

## The timer for this microgame. This can be used to pause the timer for e.g. animations.
var timer: Timer

## The signal to send when the microgame is won or lost.
## Only the first emitted signal will be considered.
@warning_ignore("unused_signal")
signal finished(result: Result)

## This function is called, when the timer expires.
func on_timeout() -> Result:
	return Result.Loss
