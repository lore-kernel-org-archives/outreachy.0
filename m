X-GM-THRID: 6394051769917243392
X-Received: by 10.46.20.27 with SMTP id u27mr1913875ljd.4.1488731209666;
        Sun, 05 Mar 2017 08:26:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.83 with SMTP id h80ls274062lfi.13.gmail; Sun, 05 Mar
 2017 08:26:49 -0800 (PST)
X-Received: by 10.46.76.17 with SMTP id z17mr1756025lja.13.1488731208982;
        Sun, 05 Mar 2017 08:26:48 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id i76si781297wmh.1.2017.03.05.08.26.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 08:26:48 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so10203009wma.0
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 08:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NlrvBgPHCIWjh5/AEQ3+Be0mpREYtIkR9YBAUmfQx/A=;
        b=IovkFHCs9crifbgf6K6B+2vPYOt7amxFS1M8UFgtMPxnke/2rmBoDrBcXnaTw6j1Xv
         xT2PofY7BWb0aqzNoqW5/AkFJEk9fkg1beXHVSgKzlqx1L/jb2cxSXeZ1mFzuNmlSpKo
         MR+yMF/iAIEJuLhCIK1UdA8KVOi08YCavGsf0v9ME93yW+v6aQovpnrxV9Q8QfapHd9p
         P26vfbMBTx2C8LvyGl36wkU1Zm/5IYBsovFQb4pHrvrlHr+FgSqXsnMEWaYg1BKsN00I
         73dXMz3D4YB3uzajlw3M40re8JPR4zQ/+cQh9/UZhkTxil/VQ/vC5gy6iSdsFMeK8yaV
         uvLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NlrvBgPHCIWjh5/AEQ3+Be0mpREYtIkR9YBAUmfQx/A=;
        b=kCEVZfXN7Ep7q2A5TLu8+gRvb2B1j5uLT6CiHD8U6MNcMMK+3O/cJBGlvZeRqsKg09
         ZX/h+0IIssD8S3m4F8FrfB97wWvSrRb683rjTpCXjJGoKoOPFVUBjeG+6457AI2oRG0T
         xPgVCBvcNGXENhqYZF3pFJNC8enibzrtYhshIbrLlr5oQ43eLLawAqp/M0sN2vAKiWuk
         A4KwYWU2iTovI6T2h/GUhc286m887eWURzJGybwtyJ9Np3XjvOOOnMaHMFy6kvuAn1UK
         kNUAMxm0fFMjDloQK86dyrS06+eyo9WGM99C6HvwAIoNZbtxN4EOEAir/3sxiGJEUqd1
         GmIQ==
X-Gm-Message-State: AMke39l3SSLgEh6AmHUqj9sy/q42zgnwG9Y1NDfGtR5TeYuanY8TTtDgK077E/844/TL9g==
X-Received: by 10.28.107.13 with SMTP id g13mr10035924wmc.105.1488731208780;
        Sun, 05 Mar 2017 08:26:48 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id c58sm23604313wrc.9.2017.03.05.08.26.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 08:26:48 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 1/2] staging: iio: adis16209: Group similar macros into enums
Date: Sun,  5 Mar 2017 18:26:41 +0200
Message-Id: <50dc46612578fa9cf84d1b8243c86dbf0aace3a4.1488730643.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488730643.git.narcisaanamaria12@gmail.com>
References: <cover.1488730643.git.narcisaanamaria12@gmail.com>

Group the scan indexes into an enum.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/iio/accel/adis16209.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16209.c b/drivers/staging/iio/accel/adis16209.c
index 8ff537f..c28a099 100644
--- a/drivers/staging/iio/accel/adis16209.c
+++ b/drivers/staging/iio/accel/adis16209.c
@@ -152,14 +152,16 @@
 
 #define ADIS16209_ERROR_ACTIVE          BIT(14)
 
-#define ADIS16209_SCAN_SUPPLY	0
-#define ADIS16209_SCAN_ACC_X	1
-#define ADIS16209_SCAN_ACC_Y	2
-#define ADIS16209_SCAN_AUX_ADC	3
-#define ADIS16209_SCAN_TEMP	4
-#define ADIS16209_SCAN_INCLI_X	5
-#define ADIS16209_SCAN_INCLI_Y	6
-#define ADIS16209_SCAN_ROT	7
+enum adis16209_scan {
+	ADIS16209_SCAN_SUPPLY,
+	ADIS16209_SCAN_ACC_X,
+	ADIS16209_SCAN_ACC_Y,
+	ADIS16209_SCAN_AUX_ADC,
+	ADIS16209_SCAN_TEMP,
+	ADIS16209_SCAN_INCLI_X,
+	ADIS16209_SCAN_INCLI_Y,
+	ADIS16209_SCAN_ROT,
+};
 
 static const u8 adis16209_addresses[8][1] = {
 	[ADIS16209_SCAN_SUPPLY] = { },
-- 
1.9.1


