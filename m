X-GM-THRID: 8179991707648
X-Received: by 10.194.201.10 with SMTP id jw10mr7596369wjc.3.1426280352049;
        Fri, 13 Mar 2015 13:59:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.228.136 with SMTP id si8ls474646lac.11.gmail; Fri, 13 Mar
 2015 13:59:11 -0700 (PDT)
X-Received: by 10.152.21.9 with SMTP id r9mr7585417lae.0.1426280351553;
        Fri, 13 Mar 2015 13:59:11 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id i8si210523wif.1.2015.03.13.13.59.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 13:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id bs8so9032991wib.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 13:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9+hKajTY0yPil5XAI5DLa62ptj7ArMG6AxrT/2iwg9Y=;
        b=pqmociW6lw3XgxmUxYIG2OJrCv/ti8dKK2ntAooSvxMqPQhfWk24qZovASZmhwNHU2
         d5cEAMiWzGfmVQRd+vcQzNqy7rou8rE1Fi1FpwNVr4yJ2ntIR5O6LHpwFAF8lMm+mXgT
         veHoBM10psmsvk2w8IfGsWCcz+Lovhshhh49XayTicBYqDG5m4GztzSy5zens+rY9DC/
         atdZOfd+XIK+UFh+xVLll/2ZWIWyoDqivoK7qRQiPIhTTXlKotbNxgKdyAIuyC+Fj25n
         qxchMFkBm0LED8vaIwyBoDhCF6noxSVzd9qPioPMo/1d4rOvGjr462yuBtaLj6KQ6ujf
         1r6A==
X-Received: by 10.180.198.13 with SMTP id iy13mr69790029wic.7.1426280351445;
        Fri, 13 Mar 2015 13:59:11 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.220])
        by mx.google.com with ESMTPSA id kr5sm4364152wjc.1.2015.03.13.13.59.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 13:59:10 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 50DF8C1F52; Fri, 13 Mar 2015 20:46:58 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 4/8] Staging: media: Remove parentheses around right side an assignment
Date: Fri, 13 Mar 2015 20:46:57 +0300
Message-Id: <1426268817-7841-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426268725-7786-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426268725-7786-1-git-send-email-hamohammed.sa@gmail.com>

Parentheses are not needed around the right hand side of an assignment.
This patch remove parenthese of such occurenses. Issue was detected and
solved using the following coccinelle script:

@rule1@
identifier x, y, z;
expression E1, E2;
@@

(
x = (y == z);
|
x = (E1 == E2);
|
 x =
-(
...
-)
 ;
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 8 ++++----
 drivers/staging/media/lirc/lirc_parallel.c    | 4 ++--
 drivers/staging/media/lirc/lirc_serial.c      | 2 +-
 drivers/staging/media/mn88472/mn88472.c       | 2 +-
 drivers/staging/media/mn88473/mn88473.c       | 2 +-
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 116251b..e941c33 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1448,8 +1448,8 @@ static void bcm2048_parse_rds_pi(struct bcm2048_device *bdev)
 		/* Block A match, only data without crc errors taken */
 		if (bdev->rds_info.radio_text[i] == BCM2048_RDS_BLOCK_A) {
 
-			pi = ((bdev->rds_info.radio_text[i+1] << 8) +
-				bdev->rds_info.radio_text[i+2]);
+			pi = (bdev->rds_info.radio_text[i+1] << 8) +
+				bdev->rds_info.radio_text[i+2];
 
 			if (!bdev->rds_info.rds_pi) {
 				bdev->rds_info.rds_pi = pi;
@@ -1503,8 +1503,8 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
 		BCM2048_RDS_BLOCK_B) {
 
-		rt_id = (bdev->rds_info.radio_text[i+1] &
-			BCM2048_RDS_BLOCK_MASK);
+		rt_id = bdev->rds_info.radio_text[i+1] &
+			BCM2048_RDS_BLOCK_MASK;
 		rt_group_b = bdev->rds_info.radio_text[i+1] &
 			BCM2048_RDS_GROUP_AB_MASK;
 		rt_ab = bdev->rds_info.radio_text[i+2] &
diff --git a/drivers/staging/media/lirc/lirc_parallel.c b/drivers/staging/media/lirc/lirc_parallel.c
index 19c5c21..99ff7c7 100644
--- a/drivers/staging/media/lirc/lirc_parallel.c
+++ b/drivers/staging/media/lirc/lirc_parallel.c
@@ -161,8 +161,8 @@ static unsigned int init_lirc_timer(void)
 			     || (now.tv_sec == tv.tv_sec
 				 && now.tv_usec < tv.tv_usec)));
 
-	timeelapsed = ((now.tv_sec + 1 - tv.tv_sec)*1000000
-		     + (now.tv_usec - tv.tv_usec));
+	timeelapsed = (now.tv_sec + 1 - tv.tv_sec)*1000000
+		     + (now.tv_usec - tv.tv_usec);
 	if (count >= 1000 && timeelapsed > 0) {
 		if (default_timer == 0) {
 			/* autodetect timer */
diff --git a/drivers/staging/media/lirc/lirc_serial.c b/drivers/staging/media/lirc/lirc_serial.c
index 9f55a83..9eae23b 100644
--- a/drivers/staging/media/lirc/lirc_serial.c
+++ b/drivers/staging/media/lirc/lirc_serial.c
@@ -838,7 +838,7 @@ static int lirc_serial_probe(struct platform_device *dev)
 				nhigh++;
 			msleep(40);
 		}
-		sense = (nlow >= nhigh ? 1 : 0);
+		sense = nlow >= nhigh ? 1 : 0;
 		dev_info(&dev->dev, "auto-detected active %s receiver\n",
 			 sense ? "low" : "high");
 	} else
diff --git a/drivers/staging/media/mn88472/mn88472.c b/drivers/staging/media/mn88472/mn88472.c
index 6eebe56..2a68582 100644
--- a/drivers/staging/media/mn88472/mn88472.c
+++ b/drivers/staging/media/mn88472/mn88472.c
@@ -276,7 +276,7 @@ static int mn88472_init(struct dvb_frontend *fe)
 			remaining -= (dev->i2c_wr_max - 1)) {
 		len = remaining;
 		if (len > (dev->i2c_wr_max - 1))
-			len = (dev->i2c_wr_max - 1);
+			len = dev->i2c_wr_max - 1;
 
 		ret = regmap_bulk_write(dev->regmap[0], 0xf6,
 				&fw->data[fw->size - remaining], len);
diff --git a/drivers/staging/media/mn88473/mn88473.c b/drivers/staging/media/mn88473/mn88473.c
index 197e2d0..5baeb03 100644
--- a/drivers/staging/media/mn88473/mn88473.c
+++ b/drivers/staging/media/mn88473/mn88473.c
@@ -243,7 +243,7 @@ static int mn88473_init(struct dvb_frontend *fe)
 			remaining -= (dev->i2c_wr_max - 1)) {
 		len = remaining;
 		if (len > (dev->i2c_wr_max - 1))
-			len = (dev->i2c_wr_max - 1);
+			len = dev->i2c_wr_max - 1;
 
 		ret = regmap_bulk_write(dev->regmap[0], 0xf6,
 					&fw->data[fw->size - remaining], len);
-- 
1.9.1


