X-GM-THRID: 6202526188194234368
X-Received: by 10.68.231.66 with SMTP id te2mr3216386pbc.5.1444138164171;
        Tue, 06 Oct 2015 06:29:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.7.68 with SMTP id h4ls1501172iga.19.canary; Tue, 06 Oct
 2015 06:29:23 -0700 (PDT)
X-Received: by 10.107.131.73 with SMTP id f70mr31775085iod.18.1444138163583;
        Tue, 06 Oct 2015 06:29:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id el2si4364957pbb.0.2015.10.06.06.29.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 06:29:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hy16so70622239pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 06:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=kIkjoPJl93v7UAFOY36BnlbaWYJgRpUdO6ps4R+rA94=;
        b=N9gx17kJyLF7x+6XsZSn8Z1YqmlEIqzdzy9C27KDEkcoCCNzrnmu2e/4LzvPG9igvM
         TEuaZx/I4LRS9HAbaIrhoHVjT6ybgJXEs15UD+bdv06Y/k0XeOnyQ6ol6ITvi4TACD5T
         TGC0BzIIoQ4ngacicMk4NEOArW4PYxZHS5Cpn2igaFvUx4VjLrHASxA0Dam6pJFyO5Fv
         f8UCUAs/+0Kcivy8pmWbeSRsUXNKIfnk20XmgS1XgNAKEUWYbqFAK92CJWavPo8d0ANV
         EINtYTB7nWBcFfKXZTVnRCqwzoT6jpzwwZmXbmcsz+8f8tEWp8mgs3ZTWI0wFGAmk/jT
         i+7A==
X-Received: by 10.66.141.42 with SMTP id rl10mr47216929pab.18.1444138163452;
        Tue, 06 Oct 2015 06:29:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id pk2sm33623645pbb.21.2015.10.06.06.29.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 06:29:22 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: Jonathan Cameron <jic23@kernel.org>
Subject: [PATCH] Staging: iio: meter: Use direct return instead of gotos
Date: Tue,  6 Oct 2015 18:59:00 +0530
Message-Id: <1444138140-13818-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5613CCB2.0024,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Use direct return instead of gotos. Thus remove the unnecessary
label error_ret.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
Suggested-by: Jonathan Cameron <jic23@kernel.org>
---
 drivers/staging/iio/meter/ade7758_trigger.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_trigger.c b/drivers/staging/iio/meter/ade7758_trigger.c
index 5b35a7f..80522b1 100644
--- a/drivers/staging/iio/meter/ade7758_trigger.c
+++ b/drivers/staging/iio/meter/ade7758_trigger.c
@@ -68,7 +68,7 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
 					indio_dev->id);
 	if (!st->trig) {
 		ret = -ENOMEM;
-		goto error_ret;
+		return ret;
 	}
 
 	ret = request_irq(st->us->irq,
@@ -89,14 +89,11 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
 	if (ret)
 		goto error_free_irq;
 
-	return 0;
-
 error_free_irq:
 	free_irq(st->us->irq, st->trig);
 error_free_trig:
 	iio_trigger_free(st->trig);
-error_ret:
-	return ret;
+	return 0;
 }
 
 void ade7758_remove_trigger(struct iio_dev *indio_dev)
-- 
2.1.4


