using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Tiles : MonoBehaviour
{
    private RawImage rawImage;
    private Texture2D texture;

    public void Setup()
    {
        rawImage = GetComponentInChildren<RawImage>();
        texture = rawImage.texture as Texture2D;
    }

    public void MakeTiles()
    {
        // var data = texture.GetRawTextureData<Color32>();

        // int index = 0;
        Color32 colour = new Color32(
            (byte)Random.Range(0, 255), 
            (byte)Random.Range(0, 255), 
            (byte)Random.Range(0, 255), 
            (byte)Random.Range(0, 255));

        for (int y = 0; y < texture.height; y++)
        {
            for (int x = 0; x < texture.width; x++)
            {


                // data[index++] = colour;
                texture.SetPixel(x, y, colour);
            }
        }
        texture.Apply(false);
    }
}
