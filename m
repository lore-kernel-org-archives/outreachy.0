X-GM-THRID: 6399861794390671360
X-Received: by 10.99.119.200 with SMTP id s191mr10805801pgc.97.1490083945044;
        Tue, 21 Mar 2017 01:12:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.1 with SMTP id a1ls9713716otd.37.gmail; Tue, 21 Mar
 2017 01:12:24 -0700 (PDT)
X-Received: by 10.129.119.84 with SMTP id s81mr17408498ywc.6.1490083944610;
        Tue, 21 Mar 2017 01:12:24 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si3203241pfb.7.2017.03.21.01.12.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:12:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so15984716pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6KlFFnooldTahkaqdMTEFxD1+IDnrjmm2Oubb7KNTns=;
        b=uRCeDIfjlOe1mCg/UusGYLHBcPsOVh3knKono1NKu5IjIjMM1pGw4Aj5t/SbdBPBG8
         Oclo75z+Ti4UVz/UpBTuS+HVECkUmjf0HlWksLTa3/6EcXfD8jd+tO6a0RyNG0M3lRbU
         M2A9ffxmIDW0erOv5maxH3xzqLWPK4t0IM3fTCRlBDZK+8ldRT6ZGYwMqW+xpOIKOXSA
         VRz4eo/wB/n7/9wkfazr//XYF8EYD4s1nCks4NnUOvBUHhhri4GsHTJhtYhzlDtJVOI2
         tETxGyHrlWHXUdNAPfDosSAlAclT3YJZg75DX3xwX7+l4QPk4+0Gr1qLsiNZW0b/nOY1
         1LNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6KlFFnooldTahkaqdMTEFxD1+IDnrjmm2Oubb7KNTns=;
        b=cUuwrrw5UJhzq0E7Q4mz/gVITIi9HtBMgHps4KGaym1IthYD6kPjFDu4HYKJx7TWKy
         P3oWeiHKAgoqHPaOnnm9G9HnQi6LrTwHuV1A9pkKPa4FRKwm7MldXO8ferEbLMOG/hNj
         1cLQJ3y/wgYF+GOXaQPbHA4JcypXK6/eaHHlYyiZtPt2/jHB4HjsMmqBtnrCndSSzCvI
         9o/CpYzRGC0mHZZIgxSL1q01JtcChG4OeZHVj0AqXMFjy+DyKmouFSxy58Hl+u+eBQyX
         nF7ux+xsXROBOWlKXznaVAZeDEDBSe+L6fO1iFn7uWBej4zxjadrbOj0iAQ2/FwJ5QaW
         ohsw==
X-Gm-Message-State: AFeK/H2bkOejpFY7ZJOaeYQBJo1CuhFt9V3jkFquQB/XbivsqcBdvSjVMHX8R9DiGF6QHQ==
X-Received: by 10.98.56.2 with SMTP id f2mr38957704pfa.130.1490083944344;
        Tue, 21 Mar 2017 01:12:24 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t187sm20856960pfb.116.2017.03.21.01.12.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:12:23 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/7] staging: speakup: Moved logical to previous line.
Date: Tue, 21 Mar 2017 13:42:08 +0530
Message-Id: <20170321081214.25231-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321081214.25231-1-arushisinghal19971997@gmail.com>
References: <20170321081214.25231-1-arushisinghal19971997@gmail.com>

Moved logical AND operators to previous line to fix the following
checkpatch issue:

CHECK: Logical continuations should be on the previous line.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index f280e22d7e15..f71206878363 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -905,8 +905,8 @@ static int get_sentence_buf(struct vc_data *vc, int read_punc)
 	while (start < end) {
 		sentbuf[bn][i] = get_char(vc, (u_short *)start, &tmp);
 		if (i > 0) {
-			if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1] == '.'
-			    && numsentences[bn] < 9) {
+			if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1] == '.' &&
+			    numsentences[bn] < 9) {
 				/* Sentence Marker */
 				numsentences[bn]++;
 				sentmarks[bn][numsentences[bn]] =
@@ -1292,8 +1292,8 @@ void spk_reset_default_chars(void)
 
 	/* First, free any non-default */
 	for (i = 0; i < 256; i++) {
-		if ((spk_characters[i] != NULL)
-		    && (spk_characters[i] != spk_default_chars[i]))
+		if (spk_characters[i] &&
+		    (spk_characters[i] != spk_default_chars[i]))
 			kfree(spk_characters[i]);
 	}
 
@@ -2088,8 +2088,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 	tty = vc->port.tty;
 	if (type >= 0xf0)
 		type -= 0xf0;
-	if (type == KT_PAD
-		&& (vt_get_leds(fg_console, VC_NUMLOCK))) {
+	if (type == KT_PAD &&
+	    (vt_get_leds(fg_console, VC_NUMLOCK))) {
 		if (up_flag) {
 			spk_keydown = 0;
 			goto out;
-- 
2.11.0


