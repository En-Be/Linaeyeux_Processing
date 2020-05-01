
void SetObjetTarget(PVector target)
{
    //print("target x:y = " + target.x + ":" + target.y);

    for(Objet o : objets)
    {
      o.target = target;
      //print("o.target = " + o.target);
    }
}

void ObjetTargetRandom(boolean b)
{
    for(Objet o : objets)
    {
      o.randomTarget = b;
    }
}
