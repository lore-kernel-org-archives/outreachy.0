X-GM-THRID: 8920338792448
X-Received: by 10.112.180.74 with SMTP id dm10mr3247642lbc.11.1426673534797;
        Wed, 18 Mar 2015 03:12:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.228.169 with SMTP id sj9ls139817lac.35.gmail; Wed, 18 Mar
 2015 03:12:14 -0700 (PDT)
X-Received: by 10.112.198.34 with SMTP id iz2mr10877557lbc.22.1426673534344;
        Wed, 18 Mar 2015 03:12:14 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id el6si114055wib.0.2015.03.18.03.12.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:12:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x235.google.com with SMTP id m6so30651430wgd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 03:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+ejrhJwUtaX/3FFEer5EYiIKSbKP5/s73XMmvwilOeA=;
        b=g/Q2nsUmvABqb85cLvjdlX0sZc8CE6l4uoVbyNfXtvDuabbxUApqTxM5VnAAbnxWoh
         29SBSMsnDBz8LhXfkPMbzqfrdUgdVOhAY6eBxuSw54noTISm9hmraCxiSVCYzzePhLZE
         CTo/7qcAWOwt7f+KjFkn+9QzzuWkCykt6NWi01MsBdGOvc0e6MbGjhE5wwDjpxM70fFS
         bFSF3QpUIVVH9oT/+Ek7DZjJ/Nv9yKb959hSW/CUQhKcFcqUcbDbFsdd0/rsrOSw1XBr
         5LaxDei5j0UDONBIXzIyK2c3m3bZpOCHEgi1GgCJY4QrOCCSW+sjoDTICW7vdIoyreU2
         Bm9Q==
X-Received: by 10.194.76.69 with SMTP id i5mr312433wjw.3.1426673534056;
        Wed, 18 Mar 2015 03:12:14 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([5.41.223.113])
        by mx.google.com with ESMTPSA id hl15sm2504268wib.3.2015.03.18.03.12.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:12:12 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 6187EC1F4B; Wed, 18 Mar 2015 13:12:09 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 3/3] Staging: iio: replace pr_* with dev_*
Date: Wed, 18 Mar 2015 13:12:07 +0300
Message-Id: <1426673527-14462-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426668021-13846-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426668021-13846-1-git-send-email-hamohammed.sa@gmail.com>

dev_* is prefered over pr_* when appropriate device stuct is present.
This patch replace pr_err and pr_warn with its dev_ counterpart.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 1d8c5c0..5b1daea 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -151,7 +151,7 @@ int ad2s1210_update_frequency_control_word(struct ad2s1210_state *st)
 
 	fcw = (unsigned char)(st->fexcit * (1 << 15) / st->fclkin);
 	if (fcw < AD2S1210_MIN_FCW || fcw > AD2S1210_MAX_FCW) {
-		pr_err("ad2s1210: FCW out of range\n");
+		dev_err(&st->sdev->dev, "ad2s1210: FCW out of range\n");
 		return -ERANGE;
 	}
 
@@ -317,7 +317,7 @@ static ssize_t ad2s1210_store_control(struct device *dev,
 	if (st->pdata->gpioin) {
 		data = ad2s1210_read_resolution_pin(st);
 		if (data != st->resolution)
-			pr_warn("ad2s1210: resolution settings not match\n");
+			dev_warn(dev, "ad2s1210: resolution settings not match\n");
 	} else
 		ad2s1210_set_resolution_pin(st);
 
@@ -378,7 +378,7 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
 	if (st->pdata->gpioin) {
 		data = ad2s1210_read_resolution_pin(st);
 		if (data != st->resolution)
-			pr_warn("ad2s1210: resolution settings not match\n");
+			dev_warn(dev, "ad2s1210: resolution settings not match\n");
 	} else
 		ad2s1210_set_resolution_pin(st);
 	ret = len;
-- 
1.9.1


