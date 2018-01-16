using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PhotonNetworkManager : Photon.MonoBehaviour {

    [SerializeField]
    private Text connectText;

    [SerializeField]
    private Canvas canvas; 

	// Use this for initialization
	void Start () {
        PhotonNetwork.ConnectUsingSettings("0.1");
        connectText.transform.parent = canvas.transform; 
        
	}
	
	// Update is called once per frame
	void Update () {
        //for testing only!!!!!!!! Delete later!!!!!
        connectText.text = PhotonNetwork.connectionStateDetailed.ToString();
	}
}
