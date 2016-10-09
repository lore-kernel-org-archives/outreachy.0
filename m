X-GM-THRID: 6339549036813484032
X-Received: by 10.200.44.134 with SMTP id 6mr2881774qtw.31.1476041282039;
        Sun, 09 Oct 2016 12:28:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.80 with SMTP id f16ls7755603otd.28.gmail; Sun, 09 Oct
 2016 12:28:01 -0700 (PDT)
X-Received: by 10.13.222.70 with SMTP id h67mr7415037ywe.158.1476041281727;
        Sun, 09 Oct 2016 12:28:01 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id x14si2095713vkd.3.2016.10.09.12.28.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 12:28:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id b75so6543234lfg.3
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 12:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=3HMrtuL+Ry5UO69NXupLt36aBo5xv9AIonaJa+uBpq8=;
        b=XTMWxQvKL2iJl4kVcle7DoQEClmoRw0C7ldF8aPu3iSNxhWwpMKGRZ9Yl6bM0FL41p
         TIHSp2sb0Z63NiZiuMYZTRuIF15oc/RkrbnrIITzrAn/NB/FS+avwJMx+qAR60efERYT
         cD3Bphj3cPW9OlEdoJzyxQzUkp3YUFM/buOGre0yEDxG5isOVQRxMSigiK5sfg2u3kKV
         pVTm6zUE2olrSdK7fyK4otp1FGp+ElljD0P4zpRFuBfLLp4KtX3MN6Jn35B4osNWHcxi
         5kVEl/ryKI+vBpSCVp85S9lm16PfXrXrXwy9arjuo+lX5QC3A80WqkwsWPmB7HspSP+F
         QJCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3HMrtuL+Ry5UO69NXupLt36aBo5xv9AIonaJa+uBpq8=;
        b=mSEB9mrP4TPUkbSvG+kIddV+E5Pkx/LNBHt4paOMUQBZrp4hbA8flGYkPwz9J06jL/
         fqUYBE8AWFMauPeMbtHDRtMtIm5S/oTNlUnKMjbWDZk+yaM/40Si7fkZ0K6JnPCBVO8l
         8buUEAzK3PcEHRtDESaaKZRXlHzcH0ByEQI24c9WomUPntL0KIZ1XzljK5wzZrTsBbYy
         4bdN8RFTb1zjmTgUxXOh3cQHswqeBlXOCd3sZr87V6PVCdMZ3lzU/mHh3OyRFyKgggpy
         hpd97bTTNoYWeBKnpQTISGfXjfki3qmUKezjayGO0gl4gDqm1is1LDSFZurnKiq3zwPx
         h+HQ==
X-Gm-Message-State: AA6/9Rkb8jj3ncjMpKMHH52HqYR9MParoqQvgrH9dsSc0VNGF8O6qHP26iqk4Y6VGf9xuQ==
X-Received: by 10.194.63.145 with SMTP id g17mr6989651wjs.166.1476041281154;
        Sun, 09 Oct 2016 12:28:01 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.251.249])
        by smtp.gmail.com with ESMTPSA id jn7sm33030196wjb.5.2016.10.09.12.27.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 09 Oct 2016 12:28:00 -0700 (PDT)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: wilc1000: Remove unnecessary 'out of memory' message.
Date: Sun,  9 Oct 2016 22:27:53 +0300
Message-Id: <1476041273-3050-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning in file host_interface.c
WARNING: Possible unnecessary 'out of memory' message

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 78f5613..0d16e49 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -2322,10 +2322,8 @@ static u32 Handle_ListenStateExpired(struct wilc_vif *vif,
 		wid.size = 2;
 		wid.val = kmalloc(wid.size, GFP_KERNEL);
 
-		if (!wid.val) {
-			netdev_err(vif->ndev, "Failed to allocate memory\n");
+		if (!wid.val)
 			return -ENOMEM;
-		}
 
 		wid.val[0] = u8remain_on_chan_flag;
 		wid.val[1] = FALSE_FRMWR_CHANNEL;
-- 
1.9.1


