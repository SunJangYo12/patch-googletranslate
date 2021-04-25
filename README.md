# patch-googletranslate
add feature android google translate like translate from telnet, file and disable translate online mode<br><br>

# install
<ul>
	for root android user
	<li>install original app</li>
	<li>Replace base.apk to /data/app/com.google.android.apps.translate-1/here</li>
	<li>open app</li>
	<li>for disable online translate, open settings > klik option alert > Patch settings > Enable network disable, hardclose the app and open again.</li>
	<li>for translate from telnet, open settings > klik option alert > Patch settings > Disable file translate > Enable Telnet translate, hard close the app and open again now telnet server started in toast message.</li>
	<li>for translate from file, open settings > klik option alert > Patch settings > Enable file translate > Disable Telnet translate, input text translate in /sdcard/patch_translete_in.txt and output in /sdcard/patch_translate_out.txt jangan lupa hard close the app to effect.</li>
</ul><br>


<img src="screen.png"/>

<br>

# problem
<u>
	<li>This app icon lost after reboot the phone.</li>
	<li>And this to fix it, rename original to base.apk and replace to /data/app/com.google.android.apps.translate-1/here</li>
	<li>reboot android</li>
	<li>replace again base.apk(patched) to /data/app/com.google.android.apps.translate-1/here</li>
	<li>reboot again</li>
	<li>now icon app not lose and patched app</li>
</u><br>

# Smali Fuzzing Editing
<p>build and compile using apkeditor android, you can find to my repository</p><br>
<h3>Network disable</h3><br>
>> hdu.smali
<ul>
	<li>rename d(context)Z to orid(context)Z line:418(apkeditor)</li>
	<li>add d(context)Z:</li>
	<bold>
		.method public static d(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 35
    const-string v0, "shunNetwork"

    invoke-static {p0, v0}, Lcom/shun/hack/memori/SharedMemori;->getStaticSharedMemori(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lhdu;->orid(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method
	</bold>
</ul>
