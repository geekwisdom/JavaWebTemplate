package common;

public class ResourceFile 
{

private String DeptName = "Header1";
private String AppName = "Header2";
private String AppLongName = "Loong Name";
public String DBConnString="";
 
public boolean LogState = false;
public boolean DebugMode = false;

public String getAppLongName()
{
return AppLongName;
}

public String getAppName()
{
return AppName;
}

}
