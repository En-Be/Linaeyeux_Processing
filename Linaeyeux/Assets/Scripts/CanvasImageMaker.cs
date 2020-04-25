using UnityEngine;
using UnityEngine.UI;

public class CanvasImageMaker : MonoBehaviour {
    private Canvas canvas;
    private float width;
    private float height;

    private void Start () 
    {
        SetParams();
        MakeAndAssignImage();  
    }

    private void SetParams()
    {
        canvas = GetComponent<Canvas>();
        width = Screen.width;
        height = Screen.height;
    }

    private void MakeAndAssignImage()
    {
        GameObject newObject = new GameObject("ObjectName");
        RectTransform rectTransform = newObject.AddComponent<RectTransform>();
        rectTransform.sizeDelta = new Vector2(width, height);
        Image image = newObject.AddComponent<Image>();
        newObject.transform.SetParent(canvas.transform, false);
    }
};