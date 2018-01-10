using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BackgroundManager : MonoBehaviour {

    public Sprite[] background;
    //backgrounds listed by IDs
    SpriteRenderer sR;

	// Use this for initialization
	void Awake () {
        sR = GetComponent<SpriteRenderer>();
        SetBackground(0);
	}
	
	public void SetBackground(int backgroundID)
    {
        sR.sprite = background[backgroundID];
    }
}
