using UnityEngine;
using UnityEngine.UI;

public class CanvasImageMaker : MonoBehaviour {
    private Canvas canvas;
    private GameObject newObject;
    private RawImage rawImage;
    private float width;
    private float height;

    private void Start () 
    {
        SetParams();
        MakeAndAssignImage(); 
        MakeAndAssignTexture(); 
    }

    private void SetParams()
    {
        canvas = GetComponent<Canvas>();
        width = Screen.width;
        height = Screen.height;
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
        Texture2D texture = new Texture2D(Mathf.RoundToInt(width), Mathf.RoundToInt(height));
        rawImage.texture = texture;
    }
};