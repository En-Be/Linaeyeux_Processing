using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Noise : MonoBehaviour
{
    public RawImage rawImage;

    public void MakeNoise()
    {
        rawImage = GetComponentInChildren<RawImage>();
        var texture = rawImage.texture as Texture2D;
        var data = texture.GetRawTextureData<Color32>();

        int index = 0;
        for (int y = 0; y < texture.height; y++)
        {
            for (int x = 0; x < texture.width; x++)
            {
                Color32 colour = new Color32(
                    (byte)Random.Range(0, 255), 
                    (byte)Random.Range(0, 255), 
                    (byte)Random.Range(0, 255), 
                    (byte)Random.Range(0, 255));
                data[index++] = colour;
            }
        }
        // upload to the GPU
        texture.Apply();
    }
}
