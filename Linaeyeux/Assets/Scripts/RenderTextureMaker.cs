using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class RenderTextureMaker : MonoBehaviour
{
    public RenderTexture rt;
    public Camera mainCam;
    public RawImage rawIm;

    private void Start()
    {
        rt = new RenderTexture(Screen.width, Screen.height, 24);
        mainCam.targetTexture = rt;
        rawIm = GetComponent<RawImage>();
        rawIm.texture = rt;
    }
}
