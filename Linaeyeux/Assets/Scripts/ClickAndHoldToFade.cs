using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClickAndHoldToFade : MonoBehaviour
{
    public Color color1;
    public float trailTime;
    public SpriteRenderer spriteRend;

    void Start()
    {
        spriteRend = GetComponent<SpriteRenderer>();
        color1 = new Color(1, 1, 1, 0);
        trailTime = 1;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButton(0))
        {
            trailTime -= 0.005f;
        }
        else
        {
            trailTime += 0.005f;
        }

        trailTime = Mathf.Clamp(trailTime, 0, 1);
        color1 = new Color(1,1,1,trailTime);
        spriteRend.color = color1;
    }
}
