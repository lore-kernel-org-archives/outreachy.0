X-GM-THRID: 6394051769917243392
X-Received: by 10.25.203.151 with SMTP id b145mr1460853lfg.17.1488731224668;
        Sun, 05 Mar 2017 08:27:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.66 with SMTP id s63ls1279704lja.0.gmail; Sun, 05 Mar
 2017 08:27:04 -0800 (PST)
X-Received: by 10.25.202.67 with SMTP id h3mr369395lfj.30.1488731224074;
        Sun, 05 Mar 2017 08:27:04 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id h198si793901wmg.1.2017.03.05.08.27.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 08:27:04 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id u132so2167905wmg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 08:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=S0riGBn26hftIXu0TIhAs31mvgnIJ/38dBMFJkpj2qg=;
        b=eZN7bmJLk7jCGqmsSbIxrCPAkTkpz2Y6zKZcF9u1mlNyHOlwqnPvYosRZHyqDuY60d
         T6AJ9z3djTp0zOhiIOmugu0abecAPcaj9UDUswOXzl5TDGkHodvFEZNQRMhIXZCVNol7
         G0Qy535/q+47ZSTVGLTnteMblTOrvVSp6HMLJXnshJCb3DOoZSdflZXDREYwdbkOV0qF
         8uVCR6rQlL8q+aSwV0pMoa8ajGv8SYJwAup7Uu83RQlKmeM36NZwJ+uDeibvtuarXj6y
         NftIb51YAJxuHC6oE913aYaIfj21gqvHbAhUx/9M0SMXjgjIWZCRWw4/2rSBovuO568l
         X0vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=S0riGBn26hftIXu0TIhAs31mvgnIJ/38dBMFJkpj2qg=;
        b=rN0L5QpJ6UidDzABxIdACERVYKUBkuFvkwPVk6AIGG4mswL4Y/3gaGJgVTqePEVp0C
         /i6guvbU6S0ycXy4TVwxIQq+HgkF6fRgyr0fvoJkaa8wl1MdUGJMQitgjTsVkNrzxUVL
         1QFGYRI4Ugm7bo33rGdy2RId6vB5MLPv1bS1PVFeqrxr/+qf1cYFYpjgDx+K1jk1Y2b/
         9+VxffDRCCzylNjzXAWGIVYV1j52mgEutD9qfI1VKpnXCpbQuXTbgE3Y8toQ3oADmjO2
         P6n5KVAUDcaZSk71T4v9YOxsdej5hsFfTIBrOhTBDMzEnjftnUtb1qnArUxgk9Gw8iBa
         WHNA==
X-Gm-Message-State: AMke39moO/SLC2U6OIMCPxr7fykI6iy12eRSDBF531OX0XGmbFQjdE3xJNsDZZzLONo9Ug==
X-Received: by 10.28.216.208 with SMTP id p199mr4351025wmg.44.1488731223887;
        Sun, 05 Mar 2017 08:27:03 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id k10sm11409502wmg.10.2017.03.05.08.27.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 08:27:03 -0800 (PST)
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
Subject: [PATCH 2/2] staging: iio: adis16240: Group similar macros into enums
Date: Sun,  5 Mar 2017 18:26:54 +0200
Message-Id: <0124358fa11efba9989ed7a7158e5fbcb63df835.1488730643.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488730643.git.narcisaanamaria12@gmail.com>
References: <cover.1488730643.git.narcisaanamaria12@gmail.com>

Group the scan indexes into an enum.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/iio/accel/adis16240.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 9690e46..4d8ee37 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -192,12 +192,14 @@
  * filling. This may change!
  */
 
-#define ADIS16240_SCAN_ACC_X	0
-#define ADIS16240_SCAN_ACC_Y	1
-#define ADIS16240_SCAN_ACC_Z	2
-#define ADIS16240_SCAN_SUPPLY	3
-#define ADIS16240_SCAN_AUX_ADC	4
-#define ADIS16240_SCAN_TEMP	5
+enum adis16240_scan {
+	ADIS16240_SCAN_ACC_X,
+	ADIS16240_SCAN_ACC_Y,
+	ADIS16240_SCAN_ACC_Z,
+	ADIS16240_SCAN_SUPPLY,
+	ADIS16240_SCAN_AUX_ADC,
+	ADIS16240_SCAN_TEMP,
+};
 
 static ssize_t adis16240_spi_read_signed(struct device *dev,
 					 struct device_attribute *attr,
-- 
1.9.1


