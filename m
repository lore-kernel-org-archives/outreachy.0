X-GM-THRID: 8179991707648
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5417eb996bb2acbb
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.150.115 with SMTP id uh19mr4496623wib.7.1426280421858;
        Fri, 13 Mar 2015 14:00:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.164 with SMTP id an4ls465508lac.19.gmail; Fri, 13 Mar
 2015 14:00:21 -0700 (PDT)
X-Received: by 10.112.199.69 with SMTP id ji5mr7489542lbc.0.1426280421225;
        Fri, 13 Mar 2015 14:00:21 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id i8si210797wif.1.2015.03.13.14.00.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 14:00:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx13 with SMTP id x13so25749736wgg.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 14:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Xi62Evc7u+1fJ2RNgZiyT3uadz9Hqhy4uzFjVyViRl0=;
        b=ReDTwalO9310croKycrzW7/xJs2HoPXu6jICTW+ipuYk9yGlu0PUjB3gZOJekSZgKW
         agaHTnsAsLrGQ/to/4//1zBgT90ibWpxYa43B3dwvpLpfGDfgRxGkGUJBQaJiBR2v4OV
         V5wZeOCF5x39B2JQazlE03NbcoE22HZQGIzB0BCWkwoVhmJoCabuUNY8v+p/3g+nCHHe
         eJBCmi7lbSBwZbRVfD+8rjupJJVrWTC44pRretxnUe5QTVLUaBNlQkYpBrGgBNLCrsUg
         yN+f6duYiafcyQPqO4I7HVK3xFlAczZFFJaeI9WOJv8nhEVE6lW80Br+nmHVktrMSwyE
         15zA==
X-Received: by 10.180.104.66 with SMTP id gc2mr143244696wib.34.1426280421111;
        Fri, 13 Mar 2015 14:00:21 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.220])
        by mx.google.com with ESMTPSA id hl8sm4326656wjb.38.2015.03.13.14.00.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 14:00:19 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id BEA08C1F52; Fri, 13 Mar 2015 20:48:10 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 5/8] Staging: iio: Remove parentheses around right side an assignment
Date: Fri, 13 Mar 2015 20:47:22 +0300
Message-Id: <1426268842-7889-1-git-send-email-hamohammed.sa@gmail.com>
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
 drivers/staging/iio/accel/adis16240_core.c | 2 +-
 drivers/staging/iio/light/tsl2x7x_core.c   | 4 ++--
 drivers/staging/iio/meter/ade7753.c        | 2 +-
 drivers/staging/iio/meter/ade7754.c        | 2 +-
 drivers/staging/iio/meter/ade7759.c        | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16240_core.c b/drivers/staging/iio/accel/adis16240_core.c
index 3f46086..e2f8aff 100644
--- a/drivers/staging/iio/accel/adis16240_core.c
+++ b/drivers/staging/iio/accel/adis16240_core.c
@@ -46,7 +46,7 @@ static ssize_t adis16240_spi_read_signed(struct device *dev,
 	if (val & ADIS16240_ERROR_ACTIVE)
 		adis_check_status(st);
 
-	val = ((s16)(val << shift) >> shift);
+	val = (s16)(val << shift) >> shift;
 	return sprintf(buf, "%d\n", val);
 }
 
diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 52f4e65..010e607 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -613,8 +613,8 @@ static int tsl2x7x_als_calibrate(struct iio_dev *indio_dev)
 		return lux_val;
 	}
 
-	gain_trim_val =  (((chip->tsl2x7x_settings.als_cal_target)
-			* chip->tsl2x7x_settings.als_gain_trim) / lux_val);
+	gain_trim_val =  ((chip->tsl2x7x_settings.als_cal_target)
+			* chip->tsl2x7x_settings.als_gain_trim) / lux_val;
 	if ((gain_trim_val < 250) || (gain_trim_val > 4000))
 		return -ERANGE;
 
diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index 78e8f56..f828f5f 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -411,7 +411,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
 
 	mutex_lock(&indio_dev->mlock);
 
-	t = (27900 / val);
+	t = 27900 / val;
 	if (t > 0)
 		t--;
 
diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index 81f6731..e7171b5 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -432,7 +432,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
 
 	mutex_lock(&indio_dev->mlock);
 
-	t = (26000 / val);
+	t = 26000 / val;
 	if (t > 0)
 		t--;
 
diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index 694e0ce..2d5f038 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -371,7 +371,7 @@ static ssize_t ade7759_write_frequency(struct device *dev,
 
 	mutex_lock(&indio_dev->mlock);
 
-	t = (27900 / val);
+	t = 27900 / val;
 	if (t > 0)
 		t--;
 
-- 
1.9.1


