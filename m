X-GM-THRID: 6398937623266590720
X-Received: by 10.129.85.205 with SMTP id j196mr9953008ywb.48.1489868772505;
        Sat, 18 Mar 2017 13:26:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.133 with SMTP id 127ls1294206ith.16.canary-gmail; Sat,
 18 Mar 2017 13:26:11 -0700 (PDT)
X-Received: by 10.99.233.69 with SMTP id q5mr11378092pgj.139.1489868771673;
        Sat, 18 Mar 2017 13:26:11 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si2010521pfx.8.2017.03.18.13.26.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 13:26:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so5619008pgf.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 13:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fGxIqmy+BywkTLlqsR+wGxnTp2y8facNRKIMIbAW9gk=;
        b=NXMeJ0T+gKH1+fvLAMltj6jsFyKRjl3FulBs4w+q7LWGZSblrO6AXgTTN2Yh+pYFRK
         4IEbuLrr84JIGNYlfvxqYj7Msf/JqF07T0iMg2bf1MKKeufiuXiEGvDAm/lv8heWrHEH
         x3GVlw3+f9a1+9C4F5rT8GvbWrwrnHXy4AYZ5RG98nioEdA2lHfbrc2Sb7rHT0JaZUdy
         eWOfX8YwjKErY8RAd/19qHl5VaGaSNLfOnVHLzQAw230LHQ35r78FxrP/F7RZ3lakSYs
         ouxY7mym1pVGcA5r+KqkFzZfj8aKW+i6RuifebqtGve83A9rtr5BA32+WxFV8k32Oq7a
         pgaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fGxIqmy+BywkTLlqsR+wGxnTp2y8facNRKIMIbAW9gk=;
        b=sbj7EGPFhy+rqYqkuHaDea+OINkiVyPtiRbHORu8RHIK79y6wo4CA6Jes599JJxHyI
         PJeeonUgvLkmW8ime2klGlwQgWk3R9DZLh3v/hjLmKPeGaYYa2SCN9pTIl7RzzeyFLj1
         QLbTyxRFi+jFUmAy202RkfH2NGWr8uc5MCInPhQIw8/E+jS+lVrxyYGEGFTTrBCk0koh
         YIVWXSKZQuqdnIFBUesa23hGHZhBTqxRSyR5fW2tAgkwWeL3MzIoREC/yEnMJFPp+SLp
         4BetgWqZoozqdn5WV50Xtn/z3uErsJ4VERDdAqXCT7MEqi0J23k/xjs2oOQ0lo32u0l8
         MUXg==
X-Gm-Message-State: AFeK/H295VUl6qYDBsctdCtUSySQBJJ6rXuMdc/3B6mcO2PtOBFTe+hBU+wJjf2pqRRv8g==
X-Received: by 10.99.47.199 with SMTP id v190mr22645109pgv.26.1489868771476;
        Sat, 18 Mar 2017 13:26:11 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l1sm5140061pfk.8.2017.03.18.13.26.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 13:26:10 -0700 (PDT)
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
Subject: [PATCH 1/3] staging: speakup: Moved logical to previous line.
Date: Sun, 19 Mar 2017 01:55:57 +0530
Message-Id: <20170318202559.10886-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170318202559.10886-1-arushisinghal19971997@gmail.com>
References: <20170318202559.10886-1-arushisinghal19971997@gmail.com>

Moved logical OR operator to previous line to fix the following
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


