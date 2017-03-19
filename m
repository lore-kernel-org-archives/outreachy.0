X-GM-THRID: 6398937623266590720
X-Received: by 10.99.116.2 with SMTP id p2mr3947446pgc.29.1489900805342;
        Sat, 18 Mar 2017 22:20:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.74 with SMTP id b71ls3053800iod.32.gmail; Sat, 18 Mar
 2017 22:20:04 -0700 (PDT)
X-Received: by 10.99.55.71 with SMTP id g7mr12159127pgn.157.1489900804894;
        Sat, 18 Mar 2017 22:20:04 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si2118301pfx.8.2017.03.18.22.20.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 22:20:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so7123211pgh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 22:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=AEzlN959JyyVDVuO6X3vDUlQG3RrEAvujnpJVNVSxO0=;
        b=eh96U56fgst6aH59BrMlPBV4dShOioKI1TA78G8fNoFoXc9I5XRjHpX9wxGJte1iEy
         Rm7u7rO+7qDZ2qtmevgrLFj4dFtRf1QboOz5CIoDrqhRTLBn5+Y4KlUcBfPn78vY7glZ
         2Lw/kqMMbq7nEwO5+ekgdRQjAFtkt50JuQmemH1TEoDZBBmHN73lrXAw2SH4CvYrISUD
         V25xMNEWKKum2j58LimyNfG9j0vWa6M5fmY3fa1qbdc11PXV62zfqNPxmphUGbKiLTWm
         m50Rz+lYjMyfBqg6pbCf/i6IJT3tX6QBVgieJ8SRdEJJM6ksKAm39Cb5GWfAcQ9aUijy
         JKdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=AEzlN959JyyVDVuO6X3vDUlQG3RrEAvujnpJVNVSxO0=;
        b=PHo6QLJrLJ02GkUrfc4PXsgYGmBV1ALkXL41i4uIAL2aTtc4txAQnwRtwXtmiUzZ4m
         OvmCwETuiZpAGBfm+HHzCWF1v/xaSpVbjoTTQ6Kdwgx1iAO+8hS9l+ue17EALS9Vma0s
         Jn6UH88vh0RHfmjZ5XfLKr7KU6zng5uH55k3CdbQoX6LDS0hl99KdBcZ0t2GTKsyrxD4
         rxBsHskoiRMzLVKI4wrOM6bhyAn72qKKlhGxDVCwkW4DMtB6NNdsFumdh6yAD8yQ04tJ
         oBuKK1q6LBksIdYvxhHBvilUxZYIPlI9+zvsRyeM4sa1IjGxceAkPoqOZ5tYFlhOM+g2
         K9qQ==
X-Gm-Message-State: AFeK/H3sKog1hKqvSpzT/M3gPT7OdcQoarHAKWV+Ye7XI3oyvq4v9zyh/8AUw07gX5psBQ==
X-Received: by 10.84.178.101 with SMTP id y92mr3926265plb.171.1489900804628;
        Sat, 18 Mar 2017 22:20:04 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v143sm25576100pgb.47.2017.03.18.22.20.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 22:20:03 -0700 (PDT)
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
Subject: [PATCH v2 1/3] staging: speakup: Moved logical to previous line.
Date: Sun, 19 Mar 2017 10:49:48 +0530
Message-Id: <20170319051950.14650-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170319051950.14650-1-arushisinghal19971997@gmail.com>
References: <20170319051950.14650-1-arushisinghal19971997@gmail.com>

Moved logical AND operator to previous line to fix the following
checkpatch issue:

CHECK: Logical continuations should be on the previous line.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 - Change the commit message.

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


