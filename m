X-GM-THRID: 6746442134706978816
X-Received: by 2002:a05:6808:1d4:: with SMTP id x20mr11113077oic.36.1570778464904;
        Fri, 11 Oct 2019 00:21:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5886:: with SMTP id m128ls1250210oib.14.gmail; Fri, 11
 Oct 2019 00:21:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwuOFebhp6W3Zg/jdbNEH1ELzYBAwxqmW1cD6fZt1wTR7dMEAjcotlmb4WVxokZaacsu1O8
X-Received: by 2002:a05:6808:4c3:: with SMTP id a3mr11220515oie.63.1570778464087;
        Fri, 11 Oct 2019 00:21:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570778464; cv=none;
        d=google.com; s=arc-20160816;
        b=PaihWJtxE9ZyX2h+2RJ4Cn8t7igy/7+3ngk0bh61dSBu2V+kkInTvNkhS04bfAJEZt
         bHcSZO2MZn+T2UZeQv5JfuAusktGkZTIgfrVIUqMuBUL9dZI4Q3R5+CrxtwObN3Sg/Of
         rr/TmQlQchH66hQQapm3gal0/UM/PaWWL/G8gfmTuL+8u3WECAV5O5n9aobxTISzO2Qe
         K1Wh7SefvzxyQSpOm9eRuvAtWR0n8lPtH4qzhtSh/YtE86uQnYiyDb4vHb8UYHvZNtCI
         yiHfXFGdtfxuIe/A9y6Y9RyoZXjlRtw4VK+b1jk54K4p3DRQskV8lIT8gyFHywFLrK66
         GHQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZEe+doT9RkH0Sc3++Qlx3Z67qWPEyfcCZdqfrOnL/uU=;
        b=q6P9DRkYcNX2Xshd8qhjmKt1AiRywA12IvsltwIFyZdAhgsAOeDiWA3Cwl8J8CNevM
         hGa13x8Y2guR3PMRIgyJBrWzEgVYJdO6FuLUO0MBs8MVUcx0vFrphjWF4mYt02Sg25ez
         7fOrFRbCDTt8oWY6/AD5Smb2uF9QUTAeDEfXJ4Fif7hKr0Vx+5+XeSpCMwD6gnrAWFLA
         5B+hR4tTYTmFu16HXiOGK6EyRVcRuxkloULg3wYeKY+lZAkW+iajvOA3AM5CZgGAQa37
         8hOOQsXE2K+WE3Lo/MrAR6O7+FTOLSCKTf2Q3zQKKQr0Nn0bN3p3DCeystL38+mjLvna
         2nWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M5bg+vUF;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id c67si40724oig.1.2019.10.11.00.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 00:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M5bg+vUF;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id k7so4057007pll.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 00:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZEe+doT9RkH0Sc3++Qlx3Z67qWPEyfcCZdqfrOnL/uU=;
        b=M5bg+vUFq7KUP5I736VPJC9Xc3g0O3vNA2PuVRZyC6JfxYuarQxjrgin6pccPPweZr
         d9C5bLFcgxo5iGWEIW7Hj5fM9IjSlMumoeq0u+ZluO1FlSQ1u+Vqk6UHD1K5jHGVwCYv
         uBo12VZe5Pp+Z9FHAEwlR1aRwGrt/Dr/z9hkRS4PpZ2dm5cuAgp42WmG7y8GYEVO8r2w
         pxJrWixePtbialIzXsNAOLQksBymPngWaCEHMZL6ayrshZInguLi5SHKHgiRPzHoAxZv
         o7E/YihhTxsFQcUPYpDDnFMbAB5qWOth/Yxtt5L2pwq870tgfD05BlTmxajRz5IMcrOL
         bq2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZEe+doT9RkH0Sc3++Qlx3Z67qWPEyfcCZdqfrOnL/uU=;
        b=RYYARXPDZJ5DScJa4/Rw9PByVurxBuJNtP5T2Gcwe1hv5lwNsEKbIMttLQFcMWC25C
         FFBM4Vhke9dm8tuwUWFcZ7XHqul0jS5+FhINM9M3VfoTrC0fj4LRvm9pdM2lFyk3Zcym
         /aeFQt5VPnvmuaU3wWIEVyEMQ9Fm8r/GniJgjJeI3r9DGbKLGpM9iyL4IdLZUBVpiaID
         JwEGrJGzw4kP/68qu0kbq22EELLKjBhmU028RsoDsEV7OrHabXsgFWlKlMxTJbPIt0oQ
         n/VWVxjbKjSKXMC/kExbGDqEBuWywN9/uYleX4eruxLKoycEC/fahAnaw2XrPFnwdrpi
         XB3A==
X-Gm-Message-State: APjAAAUDE2u1tGSEVAVVt2ylB2XsqRWaukuJd0d/lC5eR8b2LiaPrk2d
	p+9TMOymNe8Hv0irqLn3PylVtZZEqapX7A==
X-Received: by 2002:a17:902:bb92:: with SMTP id m18mr13060501pls.297.1570778462901;
        Fri, 11 Oct 2019 00:21:02 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id 20sm8359126pfp.153.2019.10.11.00.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 00:21:02 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	isdn@linux-pingi.de,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH] staging: isdn: remove assignment in if conditionals
Date: Fri, 11 Oct 2019 10:20:44 +0300
Message-Id: <20191011072044.7022-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove variable assignment in if statements in
drivers/staging/isdn/avm/b1.c.
Issues reported by checkpatch.pl as:
ERROR: do not use assignment in if condition

Also refactor code around some if statements to remove comparisons
to NULL and unnecessary braces in single statement blocks.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/isdn/avm/b1.c | 41 ++++++++++++++++++++++++-----------
 1 file changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/isdn/avm/b1.c b/drivers/staging/isdn/avm/b1.c
index 40ca1e8fa09f..32ec8cf31fd0 100644
--- a/drivers/staging/isdn/avm/b1.c
+++ b/drivers/staging/isdn/avm/b1.c
@@ -261,9 +261,10 @@ int b1_loaded(avmcard *card)
 	b1_put_byte(base, SEND_POLL);
 	for (stop = jiffies + tout * HZ; time_before(jiffies, stop);) {
 		if (b1_rx_full(base)) {
-			if ((ans = b1_get_byte(base)) == RECEIVE_POLL) {
+			ans = b1_get_byte(base);
+			if (ans == RECEIVE_POLL)
 				return 1;
-			}
+
 			printk(KERN_ERR "%s: b1_loaded: got 0x%x, firmware not running\n",
 			       card->name, ans);
 			return 0;
@@ -284,8 +285,9 @@ int b1_load_firmware(struct capi_ctr *ctrl, capiloaddata *data)
 	int retval;
 
 	b1_reset(port);
+	retval = b1_load_t4file(card, &data->firmware);
 
-	if ((retval = b1_load_t4file(card, &data->firmware))) {
+	if (retval) {
 		b1_reset(port);
 		printk(KERN_ERR "%s: failed to load t4file!!\n",
 		       card->name);
@@ -295,7 +297,8 @@ int b1_load_firmware(struct capi_ctr *ctrl, capiloaddata *data)
 	b1_disable_irq(port);
 
 	if (data->configuration.len > 0 && data->configuration.data) {
-		if ((retval = b1_load_config(card, &data->configuration))) {
+		retval = b1_load_config(card, &data->configuration);
+		if (retval) {
 			b1_reset(port);
 			printk(KERN_ERR "%s: failed to load config!!\n",
 			       card->name);
@@ -525,7 +528,9 @@ irqreturn_t b1_interrupt(int interrupt, void *devptr)
 			MsgLen = 30;
 			CAPIMSG_SETLEN(card->msgbuf, 30);
 		}
-		if (!(skb = alloc_skb(DataB3Len + MsgLen, GFP_ATOMIC))) {
+
+		skb = alloc_skb(DataB3Len + MsgLen, GFP_ATOMIC);
+		if (!skb) {
 			printk(KERN_ERR "%s: incoming packet dropped\n",
 			       card->name);
 		} else {
@@ -539,7 +544,9 @@ irqreturn_t b1_interrupt(int interrupt, void *devptr)
 
 		ApplId = (unsigned) b1_get_word(card->port);
 		MsgLen = b1_get_slice(card->port, card->msgbuf);
-		if (!(skb = alloc_skb(MsgLen, GFP_ATOMIC))) {
+		skb = alloc_skb(MsgLen, GFP_ATOMIC);
+
+		if (!skb) {
 			printk(KERN_ERR "%s: incoming packet dropped\n",
 			       card->name);
 			spin_unlock_irqrestore(&card->lock, flags);
@@ -663,11 +670,17 @@ int b1_proc_show(struct seq_file *m, void *v)
 	seq_printf(m, "%-16s %s\n", "type", s);
 	if (card->cardtype == avm_t1isa)
 		seq_printf(m, "%-16s %d\n", "cardnr", card->cardnr);
-	if ((s = cinfo->version[VER_DRIVER]) != NULL)
+
+	s = cinfo->version[VER_DRIVER];
+	if (s)
 		seq_printf(m, "%-16s %s\n", "ver_driver", s);
-	if ((s = cinfo->version[VER_CARDTYPE]) != NULL)
+
+	s = cinfo->version[VER_CARDTYPE];
+	if (s)
 		seq_printf(m, "%-16s %s\n", "ver_cardtype", s);
-	if ((s = cinfo->version[VER_SERIAL]) != NULL)
+
+	s = cinfo->version[VER_SERIAL];
+	if (s)
 		seq_printf(m, "%-16s %s\n", "ver_serial", s);
 
 	if (card->cardtype != avm_m1) {
@@ -784,13 +797,15 @@ static int __init b1_init(void)
 	char *p;
 	char rev[32];
 
-	if ((p = strchr(revision, ':')) != NULL && p[1]) {
+	p = strchr(revision, ':');
+	if (p && p[1]) {
 		strlcpy(rev, p + 2, 32);
-		if ((p = strchr(rev, '$')) != NULL && p > rev)
+		p = strchr(rev, '$');
+		if (p && p > rev)
 			*(p - 1) = 0;
-	} else
+	} else {
 		strcpy(rev, "1.0");
-
+	}
 	printk(KERN_INFO "b1: revision %s\n", rev);
 
 	return 0;
-- 
2.23.0


