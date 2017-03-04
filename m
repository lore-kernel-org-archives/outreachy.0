X-GM-THRID: 6393707457242202112
X-Received: by 10.25.29.11 with SMTP id d11mr1212118lfd.14.1488656598538;
        Sat, 04 Mar 2017 11:43:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.158.134 with SMTP id h128ls65234lfe.8.gmail; Sat, 04 Mar
 2017 11:43:17 -0800 (PST)
X-Received: by 10.46.22.68 with SMTP id 4mr1405070ljw.14.1488656597665;
        Sat, 04 Mar 2017 11:43:17 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id h198si592886wmg.1.2017.03.04.11.43.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 11:43:17 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id u48so17105091wrc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 11:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=AZwEIVsiuW5MKzIzaVKHBFOx3+Mu/DNfmGOTgWQIyzs=;
        b=qDhFdd7mBc3GkKiewSQk3AYkJQnzL5Av5hxnFdjrLBNnReXOFI4b24slT1gnojmteD
         +d/+RCvDtOdWuQ9OeR+G/XzccTN8CX+a83Y9liSlsF6voU/cOY+JMpRjiCPcHd2vQurl
         ZnFYbcny+qs0BnBl3m3vIAMoEitYc5unropXGWxXAvKbLlYO9tLcYVABWW1ALsmlVTqd
         b87+a2j3wy8Q0U4QB9831L2v3IDMD1+cGXc3TJuxij66TWPphxpqtEkSkdMc5HkEQbGV
         3tgnBBJQNWE0PNoFSblFHN4x4/dVfdU0Q4kRgSxtJ/kNfrIbT6mb3PEoPcigfKVnWD4U
         TGaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=AZwEIVsiuW5MKzIzaVKHBFOx3+Mu/DNfmGOTgWQIyzs=;
        b=RsbWrfYF80gOO4HlO40Ye5pk4kKKBJV2vybRae+p/8CxXORqTFkyylCTV3eRGYc4Ie
         u2iz7J+uhblUajG3TIxqQeFf5gmO4y0kfnXemBJ7FPO+UzvGiMjXJ5MojP4hPje8UMU6
         eElHEUnfPzazjN2xK+92hxGSMbUFRKIRBrpUU4grqQy46dUYI4TzeONH4vdYwmPxNuY+
         d3oTtbsli6IKcKunzK/GfXGalIV6tfzyhUXAy1XPh3Z2cnJmWq2vGh3PfYheVHfX5H5h
         bgX5aSDqZVHpJoKexEzXnjsqNZJN6U/JvgmS1bt17Q04lXeSPqcUqGlQevoidr0Kc2K2
         ZQ4Q==
X-Gm-Message-State: AMke39n82ZrNkLiB7AN7ag2/l7elX68ZSK05xrogIBMxkPUyzlSb9XMN29Ng01ra//fgoQ==
X-Received: by 10.223.144.65 with SMTP id h59mr9057085wrh.30.1488656597482;
        Sat, 04 Mar 2017 11:43:17 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([89.165.243.139])
        by smtp.gmail.com with ESMTPSA id 63sm8079809wmp.9.2017.03.04.11.43.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 11:43:16 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2] staging: iio: accel: Rename source files and update Makefile
Date: Sat,  4 Mar 2017 21:43:12 +0200
Message-Id: <1488656592-15251-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1488651002-18415-1-git-send-email-narcisaanamaria12@gmail.com>
References: <1488651002-18415-1-git-send-email-narcisaanamaria12@gmail.com>

Rename adis162xx_core.c files to adis162xx.c because
these are the only source files for these drivers.

Update Makefile to correspond to the new file names.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>

 rename drivers/staging/iio/accel/{adis16201_core.c => adis16201.c} (100%)
 rename drivers/staging/iio/accel/{adis16203_core.c => adis16203.c} (100%)
 rename drivers/staging/iio/accel/{adis16209_core.c => adis16209.c} (100%)
 rename drivers/staging/iio/accel/{adis16240_core.c => adis16240.c} (100%)

diff --git a/drivers/staging/iio/accel/Makefile b/drivers/staging/iio/accel/Makefile
index febb137..5d8ad21 100644
--- a/drivers/staging/iio/accel/Makefile
+++ b/drivers/staging/iio/accel/Makefile
@@ -2,14 +2,7 @@
 # Makefile for industrial I/O accelerometer drivers
 #
 
-adis16201-y             := adis16201_core.o
 obj-$(CONFIG_ADIS16201) += adis16201.o
-
-adis16203-y             := adis16203_core.o
 obj-$(CONFIG_ADIS16203) += adis16203.o
-
-adis16209-y             := adis16209_core.o
 obj-$(CONFIG_ADIS16209) += adis16209.o
-
-adis16240-y             := adis16240_core.o
 obj-$(CONFIG_ADIS16240) += adis16240.o
diff --git a/drivers/staging/iio/accel/adis16201_core.c b/drivers/staging/iio/accel/adis16201.c
similarity index 100%
rename from drivers/staging/iio/accel/adis16201_core.c
rename to drivers/staging/iio/accel/adis16201.c
diff --git a/drivers/staging/iio/accel/adis16203_core.c b/drivers/staging/iio/accel/adis16203.c
similarity index 100%
rename from drivers/staging/iio/accel/adis16203_core.c
rename to drivers/staging/iio/accel/adis16203.c
diff --git a/drivers/staging/iio/accel/adis16209_core.c b/drivers/staging/iio/accel/adis16209.c
similarity index 100%
rename from drivers/staging/iio/accel/adis16209_core.c
rename to drivers/staging/iio/accel/adis16209.c
diff --git a/drivers/staging/iio/accel/adis16240_core.c b/drivers/staging/iio/accel/adis16240.c
similarity index 100%
rename from drivers/staging/iio/accel/adis16240_core.c
rename to drivers/staging/iio/accel/adis16240.c
-- 
1.9.1


