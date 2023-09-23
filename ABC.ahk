#include Encrypt.ahk
  
CNSetPassword(){
  InputBox, sPassword, Password, Enter Password, Hide, 200, 125
  If ErrorLevel
	  return
	
  Random, RKey , 0, 2147483647
  sKey := Encrypt(sPassword,RKey)
  RegWrite, REG_SZ, HKEY_CURRENT_USER\Software\PowerTools, Password, %sKey%
  RegWrite, REG_SZ, HKEY_CURRENT_USER\Software\PowerTools, Key, %RKey%
  return sPassword
}
CNGetPassword(){
  RegRead, sPassword, HKEY_CURRENT_USER\Software\PowerTools, Password
  RegRead, pKey, HKEY_CURRENT_USER\Software\PowerTools, Key
  return Decrypt(sPassword, pKey)
}
;CNSetPassword()
;x := CNGetPassword()
;MsgBox, %x%

