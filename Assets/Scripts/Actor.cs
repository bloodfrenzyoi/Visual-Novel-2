using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Actor : MonoBehaviour {

    //4 sprites
    public Sprite[] emotionSprite;
    SpriteRenderer spriteRenderer;
    public int ID; // 0 = left, 1 = right

    public enum CharacterEmotion
    {
        neutral, happy, sad, angry, scared
    }

    [SerializeField]
    CharacterEmotion myState; 

    // Use this for initialization
    void Awake () {
        myState = CharacterEmotion.neutral;
        spriteRenderer = GetComponent<SpriteRenderer>(); 
	}

    public void ChangeEmotion(string emotionName)
    {
        StartCoroutine(emotionName + "State");
    }

    IEnumerator NeutralState()
    {
        spriteRenderer.sprite = emotionSprite[0];
        myState = CharacterEmotion.neutral;
        return null; 
    }

    IEnumerator SadState()
    {
        spriteRenderer.sprite = emotionSprite[1];
        myState = CharacterEmotion.sad;
        return null;
    }

    IEnumerator HappyState()
    {
        spriteRenderer.sprite = emotionSprite[2];
        myState = CharacterEmotion.happy;
        return null;
    }


    IEnumerator AngryState()
    {
        spriteRenderer.sprite = emotionSprite[3];
        myState = CharacterEmotion.angry;
        return null;
    }

    IEnumerator ScaredState()
    {
        spriteRenderer.sprite = emotionSprite[4];
        myState = CharacterEmotion.scared;
        return null; 
    }
}
