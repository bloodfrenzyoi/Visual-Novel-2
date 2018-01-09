using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelManager : MonoBehaviour {

    public void ChooseLevel(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }

    public void LoadNextLevel()
    {
        int index = SceneManager.GetActiveScene().buildIndex;
        SceneManager.LoadScene(index + 1);
    }

    public void ExitGame()
    {
        Application.Quit();
    }

}
