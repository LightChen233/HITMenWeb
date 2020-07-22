package org.account.entity;

public class PatternData {
	int result;
	float confidence;
	public PatternData(int result, float confidence) {
		super();
		this.result = result;
		this.confidence = confidence;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public float getConfidence() {
		return confidence;
	}
	public void setConfidence(float confidence) {
		this.confidence = confidence;
	}
	
}
