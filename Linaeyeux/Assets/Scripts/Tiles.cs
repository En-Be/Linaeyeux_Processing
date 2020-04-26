using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Tiles : MonoBehaviour
{
    private RawImage rawImage;
    private Texture2D texture;
    private int tileHeight;
    private int tileWidth;

    public void Setup()
    {
        rawImage = GetComponentInChildren<RawImage>();
        texture = rawImage.texture as Texture2D;
        SplitIntoTiles();
    }

    public void MakeTiles()
    {
        for (int ty = 0; ty < 4; ty++)
        {
            for (int tx = 0; tx < 4; tx++)
            {
                Color32 colour = new Color32(
                    (byte)Random.Range(0, 255), 
                    (byte)Random.Range(0, 255), 
                    (byte)Random.Range(0, 255), 
                    (byte)Random.Range(0, 255));

                for (int y = ty * tileHeight; y < (ty + 1) * tileHeight; y++)
                {
                    for (int x = tx * tileWidth; x < (tx + 1) * tileWidth; x++)
                    {
                        texture.SetPixel(x, y, colour);
                    }
                }
                texture.Apply(false);
            }
        }
    }

    private void SplitIntoTiles()
    {
        tileHeight = texture.height / 4;
        tileWidth = texture.width / 4;
        Debug.Log($"tile height = {tileHeight}, tile width = {tileWidth}");
    }
}
