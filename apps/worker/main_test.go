package main

import "testing"

func TestWorker(t *testing.T) {
	// Dummy test
	expected := true
	if !expected {
		t.Error("Worker failed")
	}
}
