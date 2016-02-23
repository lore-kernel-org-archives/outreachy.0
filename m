X-GM-THRID: 6254525955140747264
X-Received: by 10.129.78.66 with SMTP id c63mr31213212ywb.8.1456245303942;
        Tue, 23 Feb 2016 08:35:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.196 with SMTP id l187ls1231489iol.30.gmail; Tue, 23 Feb
 2016 08:35:03 -0800 (PST)
X-Received: by 10.50.61.132 with SMTP id p4mr17067316igr.0.1456245303509;
        Tue, 23 Feb 2016 08:35:03 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id 79si3878202pft.0.2016.02.23.08.35.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 08:35:03 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id yy13so112799785pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 08:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+eXPZKKgyRbF8s6wsoKGzsE9wT9kWFuP+f72lEi1W20=;
        b=bKF9dxis52upUMYXDjDQ2vrKU5c+1thlG1sK020dd4RMtyGenP6/sTfIKsTDJzRMW3
         aTVJJcj7fa9tAj/Nj50+jVDv8N4/aYYWmAUPkCRrzFbtby1zjeu7p04h2wlAgjhsfdkz
         z88dtO+g4+38X1traWTvrBXiGVheI+9MJTlp3FL3pAYTBYQ2Z4kCumkCGwJXlNr4PMoy
         tGX5eYD8OUu30HO9xKgouCMuRRKnJ7ZEPy6eMZjiirrMyVophO/1/iVoavlaJFN1QMU1
         rhSsm2LY8jYIh5DKDTyP9LyoW71JLb4Do5kiPWTnS5MDjaoArES3Q2VB+3KHjHilB0Ep
         8fBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+eXPZKKgyRbF8s6wsoKGzsE9wT9kWFuP+f72lEi1W20=;
        b=MpQpT6kpGuzsnGzD1TI9kaFqFCZoSoMLAeswfxUcXRkoRe3c0MRNaLAAxo+sOEVHCJ
         nROKm24SHbj478/RRXdTc8xpueo4tIzAAmosoteOsuwTacDlc5X4jh7T7p1x16d/QqQt
         hRIhEby84isdfKv4F6lwCDgye2ucZtJzevL24xqs2gJJ/yES8cgoCLqTI8N5TENGLwt3
         5EXbfTC1ixh3dyfPhA6wVlDpU+Ctql/K30tI+IcFXu2DqEeYSSCkjzdYnRvilFONhmqD
         fX9m3osBnjRwSAnc7EhvYTE7/3/xcQ24nHosj0pxhk9q0cNJICQZU7y/3yMJaOjf18vG
         xw5g==
X-Gm-Message-State: AG10YOQdNZsqsgKzovOoDPfZoTSpSpnJOyFlUX9fGzcTYII/86DiGssCSuLp0uW7TkWLtw==
X-Received: by 10.66.100.228 with SMTP id fb4mr46757469pab.84.1456245303314;
        Tue, 23 Feb 2016 08:35:03 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.4])
        by smtp.gmail.com with ESMTPSA id r87sm45313065pfa.61.2016.02.23.08.35.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 08:35:02 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: dgnc: delete parentheses around right hand side of assignment
Date: Wed, 24 Feb 2016 00:34:56 +0800
Message-Id: <1456245296-24786-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Eliminate unneeded parentheses around the right hand side of an
assignment. Coccinelle semantic patch used:
@@
expression e1, e2;
identifier v;
@@

(
 v = (e1 == e2)
|
 v = (e1 != e2)
|
 v = (e1 <= e2)
|
 v = (e1 >= e2)
|
 v =
- (
	e1
- )
)

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c  | 2 +-
 drivers/staging/dgnc/dgnc_mgmt.c | 2 +-
 drivers/staging/dgnc/dgnc_neo.c  | 2 +-
 drivers/staging/dgnc/dgnc_tty.c  | 6 +++---
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 72f0aaa..0ff3139 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -823,7 +823,7 @@ static void cls_copy_data_from_uart_to_queue(struct channel_t *ch)
 	tail = ch->ch_r_tail;
 
 	/* Store how much space we have left in the queue */
-	qleft = (tail - head - 1);
+	qleft = tail - head - 1;
 	if (qleft < 0)
 		qleft += RQUEUEMASK + 1;
 
diff --git a/drivers/staging/dgnc/dgnc_mgmt.c b/drivers/staging/dgnc/dgnc_mgmt.c
index 518fbd5..ba29a8d 100644
--- a/drivers/staging/dgnc/dgnc_mgmt.c
+++ b/drivers/staging/dgnc/dgnc_mgmt.c
@@ -192,7 +192,7 @@ long dgnc_mgmt_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 		spin_lock_irqsave(&ch->ch_lock, flags);
 
-		mstat = (ch->ch_mostat | ch->ch_mistat);
+		mstat = ch->ch_mostat | ch->ch_mistat;
 
 		if (mstat & UART_MCR_DTR) {
 			ni.mstat |= TIOCM_DTR;
diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index ee3155b..31ac437 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -1735,7 +1735,7 @@ static unsigned int neo_read_eeprom(unsigned char __iomem *base, unsigned int ad
 	/* enable chip select */
 	writeb(NEO_EECS, base + NEO_EEREG);
 	/* READ */
-	enable = (address | 0x180);
+	enable = address | 0x180;
 
 	for (bits = 9; bits--; ) {
 		databit = (enable & (1 << bits)) ? NEO_EEDI : 0;
diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index b79eab0..f4dfc13 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -796,7 +796,7 @@ static void dgnc_set_custom_speed(struct channel_t *ch, uint newrate)
 	 *  And of course, rates above the dividend won't fly.
 	 */
 	if (newrate && newrate < ((ch->ch_bd->bd_dividend / 0xFFFF) + 1))
-		newrate = ((ch->ch_bd->bd_dividend / 0xFFFF) + 1);
+		newrate = (ch->ch_bd->bd_dividend / 0xFFFF) + 1;
 
 	if (newrate && newrate > ch->ch_bd->bd_dividend)
 		newrate = ch->ch_bd->bd_dividend;
@@ -1848,7 +1848,7 @@ static int dgnc_tty_tiocmget(struct tty_struct *tty)
 
 	spin_lock_irqsave(&ch->ch_lock, flags);
 
-	mstat = (ch->ch_mostat | ch->ch_mistat);
+	mstat = ch->ch_mostat | ch->ch_mistat;
 
 	spin_unlock_irqrestore(&ch->ch_lock, flags);
 
@@ -2048,7 +2048,7 @@ static inline int dgnc_get_mstat(struct channel_t *ch)
 
 	spin_lock_irqsave(&ch->ch_lock, flags);
 
-	mstat = (ch->ch_mostat | ch->ch_mistat);
+	mstat = ch->ch_mostat | ch->ch_mistat;
 
 	spin_unlock_irqrestore(&ch->ch_lock, flags);
 
-- 
1.9.1


