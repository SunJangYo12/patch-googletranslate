# patch-googletranslate
add feature android google translate like translate from telnet, file and disable translate online mode<br><br>

# install
<ul>
	for root android user
	<li>1). install original app</li>
	<li>2). Replace base.apk to /data/app/com.google.android.apps.translate-1/here</li>
	<li>3). open app</li>
	<li>4). for disable online translate, open settings > klik option alert > Patch settings > Enable network disable, hardclose the app and open again.</li>
	<li>5). for translate from telnet, open settings > klik option alert > Patch settings > Disable file translate > Enable Telnet translate, hard close the app and open again now telnet server started in toast message.</li>
	<li>6). for translate from file, open settings > klik option alert > Patch settings > Enable file translate > Disable Telnet translate, input text translate in /sdcard/patch_translete_in.txt and output in /sdcard/patch_translate_out.txt jangan lupa hard close the app to effect.</li>
</ul><br><br>

# problem
<u>
	<li>This app icon lost after reboot the phone.</li>
	<li>And this to fix it, rename original to base.apk and replace to /data/app/com.google.android.apps.translate-1/here</li>
	<li>reboot android</li>
	<li>replace again base.apk(patched) to /data/app/com.google.android.apps.translate-1/here</li>
	<li>reboot again</li>
	<li>now icon app not lose and patched app</li>
</u>
