X-GM-THRID: 3789968900096
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b08172f5cab7dbb5,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.37.200 with SMTP id a8mr1396879lak.5.1424965158377;
        Thu, 26 Feb 2015 07:39:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.201 with SMTP id m9ls53074lah.6.gmail; Thu, 26 Feb 2015
 07:39:17 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr1397746lam.9.1424965157834;
        Thu, 26 Feb 2015 07:39:17 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id ev8si1372748wib.3.2015.02.26.07.39.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 07:39:17 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22b.google.com with SMTP id x3so11946594wes.7
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 07:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=t1fCALD2oC6+Jugm9dEHQ+Gfbv3OoavLCopGcQaLLfo=;
        b=Dd56BNHuE836ZgT2bIgXtiWIVbbU6gx5EoDr2RvT2KgRhiHQ8bEGqPrfUnDMuRgbaC
         3Iq5HP/Lew2B1TCd31+ddU/oVwdN3K5nVgqk67R5cPfGPbgIPxQ8Y9jTy3SMnbn7mSwi
         23FqcZ74FSMsLQnd4WvxFAoB3aWk5qNRMIZFuRUPi1B8nvZzGA17Ok9TBQYwO/vmd9jd
         s+3TW5JRAZGd/pq6C+dqq3ibr1Aw2QjOvFUq8mOyYMZfcI6uvR/UToYaBxvLEZYvc/Ur
         6dgQN+8KuVnIMO+ARQf9cxsdwsKfLDn0v0W45ZzXFPBgScTPfrEyuUsaiU8m6a6+8Kdu
         +kJA==
X-Received: by 10.180.91.43 with SMTP id cb11mr51016633wib.16.1424965157693;
        Thu, 26 Feb 2015 07:39:17 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.248])
        by mx.google.com with ESMTPSA id a1sm1887022wjs.40.2015.02.26.07.39.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 07:39:17 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 9375A6337A; Thu, 26 Feb 2015 18:39:14 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/2] Staging: iio: Remove space before tabs
Date: Thu, 26 Feb 2015 18:39:13 +0300
Message-Id: <1424965153-8759-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes space before tabs addressing checkpatch.pl warning.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/iio/accel/mma8452.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/accel/mma8452.c b/drivers/iio/accel/mma8452.c
index 221c9d2..fcfa0a6 100644
--- a/drivers/iio/accel/mma8452.c
+++ b/drivers/iio/accel/mma8452.c
@@ -116,7 +116,7 @@ static const int mma8452_samp_freq[8][2] = {
  * Hardware has fullscale of -2G, -4G, -8G corresponding to raw value -2048
  * The userspace interface uses m/s^2 and we declare micro units
  * So scale factor is given by:
- * 	g * N * 1000000 / 2048 for N = 2, 4, 8 and g=9.80665
+ * g * N * 1000000 / 2048 for N = 2, 4, 8 and g=9.80665
  */
 static const int mma8452_scales[3][2] = {
 	{0, 9577}, {0, 19154}, {0, 38307}
-- 
1.9.1


