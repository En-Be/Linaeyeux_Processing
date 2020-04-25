using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CanvasImageMaker : MonoBehaviour {
    private Canvas canvas;
    private GameObject newObject;
    private RawImage rawImage;
    private float width;
    private float height;

    private Noise noise;
    private Tiles tiles;

    private void Start () 
    {
        SetParams();
        MakeAndAssignImage(); 
        MakeAndAssignTexture();
        // noise.Setup();
        tiles.Setup();
        tiles.MakeTiles();
    }

    private void SetParams()
    {
        canvas = GetComponent<Canvas>();
        width = Screen.width;
        height = Screen.height;
        noise = GetComponent<Noise>();
        tiles = GetComponent<Tiles>();
    }

    private void MakeAndAssignImage()
    {
        newObject = new GameObject("BlankImage");
        RectTransform rectTransform = newObject.AddComponent<RectTransform>();
        rectTransform.sizeDelta = new Vector2(width, height);
        rawImage = newObject.AddComponent<RawImage>();
        rawImage.transform.SetParent(canvas.transform, false);
    }

    private void MakeAndAssignTexture()
    {
        Texture2D texture = new Texture2D(Mathf.RoundToInt(width), Mathf.RoundToInt(height), TextureFormat.RGBA32, false);
        rawImage.texture = texture;
    }

    private void Update()
    {
        // noise.MakeNoise();
        tiles.MakeTiles();
    }
};