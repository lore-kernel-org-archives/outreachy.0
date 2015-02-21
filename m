X-GM-THRID: 1767451394048
X-Received: by 10.112.35.135 with SMTP id h7mr270046lbj.23.1424521925727;
        Sat, 21 Feb 2015 04:32:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.135 with SMTP id p7ls267280wic.45.canary; Sat, 21 Feb
 2015 04:32:05 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr242901wiv.0.1424521925387;
        Sat, 21 Feb 2015 04:32:05 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id el6si298216wib.2.2015.02.21.04.32.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 04:32:05 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f174.google.com with SMTP id em10so8076343wid.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 04:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yKg1vOM17+BIVREVeI3jd3uRY39WwzmrzJE2A48yg+A=;
        b=fVI/Ii/5i2RkP7i9Hr04hRmnHI1HJZk9RVFhQd6YRPIWSANZ4OXkPLdinHwrH8vWtA
         pZsT4LfJCfKysgekja9JP8r3yIcbw+J3UNo4OkpQrjhM7DvaNQ+8SdGN6q15W5vgXelb
         62ELSLkUcv8OoSVQeN7az1SDvx3EH5ICuhBr4ydm/TrFawX/MGOI0k6s5S7VLE1s4s17
         +hHlDQSwpzq135Nolt/jnnPbfFPt2I2lLpPlsYGTD+GQHXcJqaPjTbed7pb9i7uTl2fH
         /mExOo6vC0z6eMvC8SI/LKkMieguiiqtI7KKbDdSmZY+x4XjqO6cD2ENqksnK6K1ot20
         D3/Q==
X-Received: by 10.194.110.137 with SMTP id ia9mr4222967wjb.153.1424521925278;
        Sat, 21 Feb 2015 04:32:05 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.150])
        by mx.google.com with ESMTPSA id a1sm6778732wiy.10.2015.02.21.04.32.04
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 04:32:04 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: removed trailing whitespace in speakup
Date: Sat, 21 Feb 2015 14:32:08 +0200
Message-Id: <1424521928-8299-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Removed all trailing whitespace in
"drivers/staging/speakup/spkguide.txt"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/speakup/spkguide.txt | 36 ++++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/speakup/spkguide.txt b/drivers/staging/speakup/spkguide.txt
index f321057..b699de3 100644
--- a/drivers/staging/speakup/spkguide.txt
+++ b/drivers/staging/speakup/spkguide.txt
@@ -88,7 +88,7 @@ NOT * support the internal Tripletalk!
 
 Speakup does support two other synthesizers, but because they work in
 conjunction with other software, they must be loaded as modules after
-their related software is loaded, and so are not available at boot up. 
+their related software is loaded, and so are not available at boot up.
 These are as follows:
 
 decpc -- DecTalk PC (not available at boot up)
@@ -106,7 +106,7 @@ the bootup messages.
 
 Once you have booted the system, and if necessary, have supplied the
 proper bootup parameter for your synthesizer, Speakup will begin
-talking as soon as the kernel is loaded.  In fact, it will talk a lot! 
+talking as soon as the kernel is loaded.  In fact, it will talk a lot!
 It will speak all the boot up messages that the kernel prints on the
 screen during the boot process.  This is because Speakup is not a
 separate screen reader, but is actually built into the operating
@@ -115,7 +115,7 @@ screen using the kernel, and must get their keyboard input through the
 kernel, they are automatically handled properly by Speakup.  There are a
 few exceptions, but we'll come to those later.
 
-Note:  In this guide I will refer to the numeric keypad as the keypad. 
+Note:  In this guide I will refer to the numeric keypad as the keypad.
 This is done because the speakupmap.map file referred to later in this
 manual uses the term keypad instead of numeric keypad.  Also I'm lazy
 and would rather only type one word.  So keypad it is.  Got it?  Good.
@@ -143,7 +143,7 @@ that way, until you press another key.
 You can check to see if the boot process has completed by pressing the 8
 key on the keypad, which reads the current line.  This also has the
 effect of starting Speakup talking again, so you can press keypad enter
-to silence it again if the boot process has not completed.  
+to silence it again if the boot process has not completed.
 
 When the boot process is complete, you will arrive at a "login" prompt.
 At this point, you'll need to type in your user id and password, as
@@ -159,7 +159,7 @@ which require root privileges.
 
 When you are running a program or command, Speakup will automatically
 speak new text as it arrives on the screen.  You can at any time silence
-the speech with keypad enter, or use any of the Speakup review keys. 
+the speech with keypad enter, or use any of the Speakup review keys.
 
 Here are some basic Speakup review keys, and a short description of what
 they do.
@@ -215,12 +215,12 @@ example, if you press the keypad 8 key, you will hear:
 
 "Keypad 8 is line, say current."
 
-You'll notice that some commands do not have keys assigned to them. 
+You'll notice that some commands do not have keys assigned to them.
 This is because they are very infrequently used commands, and are also
 accessible through the sys system.  We'll discuss the sys system later
 in this manual.
 
-You'll also notice that some commands have two keys assigned to them. 
+You'll also notice that some commands have two keys assigned to them.
 This is because Speakup has a built in set of alternative key bindings
 for laptop users.  The alternate speakup key is the caps lock key.  You
 can press and hold the caps lock key, while pressing an alternate
@@ -292,12 +292,12 @@ spk key_kp5 = spell_phonetic
 spk key_kp6 = say_to_right
  key_kpplus = say_screen
 spk key_kpplus = say_win
- key_kp1 = say_prev_char 
+ key_kp1 = say_prev_char
 spk key_kp1 = right_edge
  key_kp2 = say_char
 spk key_kp2 = say_to_bottom
 double key_kp2 = say_phonetic_char
- key_kp3 = say_next_char  
+ key_kp3 = say_next_char
 spk  key_kp3 = bottom_edge
  key_kp0 = spk_key
  key_kpdot = say_position
@@ -354,7 +354,7 @@ As a convenience, run as root
 
 ln -s /sys/accessibility/speakup /speakup
 
-to directly access speakup parameters from /speakup. 
+to directly access speakup parameters from /speakup.
 You can see these entries by typing the command:
 
 ls -1 /speakup/*
@@ -497,7 +497,7 @@ only, is owned by root, and belongs to the root group.  Doing a cat of
 this:
 
 cat /speakup/version
-Speakup v-2.00 CVS: Thu Oct 21 10:38:21 EDT 2004 
+Speakup v-2.00 CVS: Thu Oct 21 10:38:21 EDT 2004
 synth dtlk version 1.1
 
 The display shows the Speakup version number, along with the version
@@ -517,7 +517,7 @@ volume is set at.
 All the entries in the Speakup sys system are readable, some are
 writable by root only, and some are writable by everyone.  Unless you
 know what you are doing, you should probably leave the ones that are
-writable by root only alone.  Most of the names are self explanatory. 
+writable by root only alone.  Most of the names are self explanatory.
 Vol for controlling volume, pitch for pitch, rate for controlling speaking
 rate, etc.  If you find one you aren't sure about, you can post a query
 on the Speakup list.
@@ -527,7 +527,7 @@ on the Speakup list.
 It is possible to change to a different synthesizer while speakup is
 running.  In other words, it is not necessary to reboot the system
 in order to use a different synthesizer.  You can simply echo the
-synthesizer keyword to the /speakup/synth sys entry. 
+synthesizer keyword to the /speakup/synth sys entry.
 Depending on your situation, you may wish to echo none to the synth
 sys entry, to disable speech while one synthesizer is disconnected and
 a second one is connected in its place.  Then echo the keyword for the
@@ -632,7 +632,7 @@ Espeakup is a connector between Speakup and the eSpeak software synthesizer.
 Espeakup may already be available as a package for your distribution
 of Linux.  If it is not packaged, you need to install it manually.
 You can find it in the contrib/ subdirectory of the Speakup sources.
-The filename is espeakup-$VERSION.tar.bz2, where $VERSION 
+The filename is espeakup-$VERSION.tar.bz2, where $VERSION
 depends on the current release of Espeakup.  The Speakup 3.1.2 source
 ships with version 0.71 of Espeakup.
 The README file included with the Espeakup sources describes the process
@@ -660,7 +660,7 @@ daemons are started by the bootup scripts.
 These procedures are not described in this document.
 
 If you built Espeakup manually, the "make install" step placed the binary
-under /usr/bin.  
+under /usr/bin.
 Run the following command as root:
 /usr/bin/espeakup
 Espeakup should start speaking.
@@ -684,7 +684,7 @@ distribution may also have a precompiled Speech Dispatcher package.
 
 Once you've installed, configured, and tested Speech Dispatcher with your
 chosen software synthesizer, you still need one more piece of software
-in order to make things work.  You need a package called speechd-up. 
+in order to make things work.  You need a package called speechd-up.
 You get it from the free(b)soft web site mentioned above.  After you've
 compiled and installed speechd-up, you are almost ready to begin using
 your software synthesizer.
@@ -813,7 +813,7 @@ press the keypad slash key once.  Speakup will say, "mark".  Next,
 position the reading cursor on the rightmost character of the above
 url. Press the keypad slash key once again to actually cut the text
 from the screen.  Speakup will say, "cut".  Although we call this
-cutting, Speakup does not actually delete the cut text from the screen. 
+cutting, Speakup does not actually delete the cut text from the screen.
 It makes a copy of the text in a special buffer for later pasting.
 
 Now that you have the url cut from the screen, you can paste it into
@@ -960,7 +960,7 @@ you reboot, or until you load another keymap.
 
 One final warning.  If you try to load a partial map, you will quickly
 find that all the mappings you didn't include in your file got deleted
-from the working map.  Be extremely careful, and always make a backup! 
+from the working map.  Be extremely careful, and always make a backup!
 You have been warned!
 
 14.  Internationalizing Speakup
-- 
1.8.3.2


