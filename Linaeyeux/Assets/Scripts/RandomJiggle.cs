using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomJiggle : MonoBehaviour
{
    public Camera cam;

    // Update is called once per frame
    void Update()
    {
        transform.Translate(Vector3.up * Time.deltaTime * 2);
        transform.Rotate(0f, 0f, Random.Range(-45, 45), Space.Self);
        Vector3 screenPos = cam.WorldToScreenPoint(transform.position);
        Debug.Log("screen width is " + Screen.width);
        Debug.Log("screen height is " + Screen.height);
        Debug.Log("target is " + screenPos.x + " pixels from the left");
        Debug.Log("target is " + screenPos.y + " pixels from the bottom");
        
        if(screenPos.x >= Screen.width)
        {
            var pos = new Vector3(Screen.width, screenPos.y, screenPos.z);
            transform.position = Camera.main.ScreenToWorldPoint(pos);
        }

        if(screenPos.y >= Screen.height)
        {
            var pos = new Vector3(screenPos.x, Screen.height, screenPos.z);
            transform.position = Camera.main.ScreenToWorldPoint(pos);
        }

        if(screenPos.x <= 0)
        {
            var pos = new Vector3(0, screenPos.y, screenPos.z);
            transform.position = Camera.main.ScreenToWorldPoint(pos);
        }

        if(screenPos.y <= 0)
        {
            var pos = new Vector3(screenPos.x, 0, screenPos.z);
            transform.position = Camera.main.ScreenToWorldPoint(pos);
        }
    }
}
