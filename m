X-GM-THRID: 6399916000486096896
X-Received: by 10.107.16.170 with SMTP id 42mr8096633ioq.91.1490096566086;
        Tue, 21 Mar 2017 04:42:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls16479979otj.6.gmail; Tue, 21 Mar
 2017 04:42:45 -0700 (PDT)
X-Received: by 10.13.202.133 with SMTP id m127mr18295437ywd.37.1490096565736;
        Tue, 21 Mar 2017 04:42:45 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s67si1117003pfs.4.2017.03.21.04.42.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:42:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id b5so24848592pgg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jnUiveLX+S9u7gjzpJxOm9Ja/4fd3G5vZCSbpkWNIVY=;
        b=fIPY+VNkdXW2zA1u9/sGsQFSU/WlHr1eMd6cWj3qlaBTOa+iyc9Hfm048BX/bDctyO
         9s7scSd72JrIIf0R+M3RUFPq5yWYMhnnZ17ekgvk731/Usm/wQAG/rebHep9PTeCslb0
         HR041pjW3vGEYH3/MMS9Pdtb2ezATYj2GiXLpfD64hiqELcMCnN4xx81Ph1+yFaGIo4e
         T9qcQkWOqKS2YwHm8IBlW+8W7UvAkCQAAlLpPoDfJIapT685onpHqWrBu50RT0EXXORC
         IEPO8Bj+OTXZtMZzJL7GpXSkcWNm7Hnkhs/WOnOZEIeMNo1q1/5ytAH0LuYkrbdH50O1
         kfBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=jnUiveLX+S9u7gjzpJxOm9Ja/4fd3G5vZCSbpkWNIVY=;
        b=V7y7rZEAACFerDKegGKSbdKzjYULL3IWQup8Rxo1I0SuGuHIrGex6hin1femByXSjM
         DsGULVRbwol6MDN64Wo/pyv0wThLiPfMKiW/CMvOgOIgUEt/zLfRyQjdWrx2g0FXeqce
         Gk54evmyBWMQckyTWe5J9AyqBDp5ah2Gn4z3rX0MOQVKBWEp4w24Lefo9Dakroxt8agQ
         aSmud/61Esy4RuvLC5XvAxvAE9Nj/qFz8bvlHOgNhjiPsmFopl/fWaj/n6+oHRabh1zN
         fh4Tz+cQxzM0+NhmrRaxG9dxIfTT4wCV2RodBAlPYo6yZXi1elysGU6jUng35wtAEZTu
         SZ6Q==
X-Gm-Message-State: AFeK/H0NcnC55GVK7Nu2RONCsLitEKVjDObovDf2dBWAE1tsYUr9FVaNvysYhlOk7UwxFQ==
X-Received: by 10.84.137.1 with SMTP id 1mr44022391plm.68.1490096565458;
        Tue, 21 Mar 2017 04:42:45 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u29sm33103687pfa.123.2017.03.21.04.42.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:42:44 -0700 (PDT)
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
Subject: [PATCH 01/11] staging: speakup: Moved logical to previous line.
Date: Tue, 21 Mar 2017 17:12:25 +0530
Message-Id: <20170321114235.1638-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>

Moved logical operator to previous line to fix the following
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


