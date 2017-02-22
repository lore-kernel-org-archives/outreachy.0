X-GM-THRID: 6389640527251243008
X-Received: by 10.157.14.7 with SMTP id c7mr7164853otc.149.1487778036483;
        Wed, 22 Feb 2017 07:40:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.97 with SMTP id 88ls1098013otr.34.gmail; Wed, 22 Feb
 2017 07:40:36 -0800 (PST)
X-Received: by 10.157.44.245 with SMTP id e50mr10890787otd.117.1487778036112;
        Wed, 22 Feb 2017 07:40:36 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h130si322788pfe.1.2017.02.22.07.40.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 07:40:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so915288pgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 07:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QyFbvg5wWcHkqKQrQvfTQIM94m3euL1Ilq8D6/x1rtU=;
        b=ji++dfjSmmD+t/WyvFO50zr3obe6eBhQpV98qIsNx9aC2h16HBL2JAqaV2KXjsThGj
         gg3vudufRi47na0AHKzn0IBVT71vIj9pBwIblY9X/qwBA5WCTE/whnQs+hlhmk3AZTIR
         7Lxaw2nb6HVSSe7PhZ5/5YHQ4iqewrTcQPNEOywJKT5g/vRs9y6T1s7vJWepaRb5y2N2
         rzwW9/GCmoIaSh/AKvgS3bYQAEhkp3IUd9V+BUnIoMwlz0SNNy9nWZ3uwBVOBSzLR62t
         6xw3yeBf5bdGJ6KKbrVLaRSmQgc/baiAPe79xIkwn+MqCVPsICtqNaU0qNGYqcFXH7sT
         1yFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QyFbvg5wWcHkqKQrQvfTQIM94m3euL1Ilq8D6/x1rtU=;
        b=jW8Mzva7FTnU5X28+MhGGqHPtvIOIxYimb0iP4UrkHOsimEZm2Hu+V9hqa9oTzVJpl
         Xjt9XatC9TRrqXae+wmFhEQMBvTHyX52kj8u2xJp9AD531rPmOe1u9icIY7dYbsL6aq4
         PmhmvtDKqq0tMaTKBCwX1cuGK2YVvFGYC7B7kamS/1UcnpPy7DIUYcKFKaYQESXcW84N
         CrStCs93nam0PpiPm4pV/QNalKGGuRhO6UDaTKSX/3Gc06CXc3h+a+HkjgC19yaHuO0/
         McZFB5nZMiL+RhFpa9tiENLln/EYo6IAS5NOXWyPj67cw9JmXW9XuN+iv2QfJtUJs5GZ
         6NNg==
X-Gm-Message-State: AMke39l2J/objBu/fMAX7O4zdUoOl2ckmxdNC9d+N7W8WisqSprRxgGOCox+AxpyqAXsRw==
X-Received: by 10.99.108.74 with SMTP id h71mr41873294pgc.99.1487778035747;
        Wed, 22 Feb 2017 07:40:35 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id f188sm4506992pfa.35.2017.02.22.07.40.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 07:40:35 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	johan@kernel.org,
	elder@kernel.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v4] staging: greybus: loopback_test: fix device-name leak
Date: Wed, 22 Feb 2017 21:08:21 +0530
Message-Id: <1487777901-8577-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

All the device names were being always leaked. Also,
illegal free was being called upon namelist[n] which
was coincidentally NULL. The pointer to dirent structures
must be individually freed before freeing the pointer array.

Coccinelle Script:
@@
expression arr,ex1,ex2;
@@

for(ex1 = 0; ex1 < ex2; ex1++) { <...
  arr[
- ex2
+ ex1
  ]
  ...> }

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
Reviewed by: Johan Hovold <johan@kernel.org>
---
Changes in v4:
	-Fixed subject line, added reviewed by tag.
Changes in v3:
	-Edited the commit message.
Changes in v2:
	-Made the commit message clearer.
---
 drivers/staging/greybus/tools/loopback_test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index 18d7a3d..1c01833 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
 	ret = 0;
 done:
 	for (i = 0; i < n; i++)
-		free(namelist[n]);
+		free(namelist[i]);
 	free(namelist);
 baddir:
 	return ret;
-- 
2.7.4


