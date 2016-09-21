X-GM-THRID: 6332647684090888192
X-Received: by 10.66.158.98 with SMTP id wt2mr5562551pab.84.1474434436153;
        Tue, 20 Sep 2016 22:07:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.87 with SMTP id t81ls3755372ota.36.gmail; Tue, 20 Sep
 2016 22:07:15 -0700 (PDT)
X-Received: by 10.157.39.233 with SMTP id c96mr2173460otb.88.1474434435701;
        Tue, 20 Sep 2016 22:07:15 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si6995919pab.2.2016.09.20.22.07.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 22:07:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id s3so401827pay.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 22:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dUI9qV4AA6iIKlobrlsBEjybxS4NAUOsignjg7X4yeM=;
        b=wKSxPIOQzt3o/kfTSBeT4rw9Sd43fXHOYQAkmKNdU0OKEhYXZ+OoyXomtw0Z2XlDUs
         YM1stzkR1rrRfC0F7bwHV4LQ9zUNrjXHC9c/iCa6WfHTkqaUKdHWJ5E8OLudA5Sq+KSG
         WnS07AQWgDRkwr/WULb8FViPPo5/SCHdULKFTEFDuG+V80MtewCQ64CsnoWPg8i/K83H
         6SqyBgFVC9k/ChtcxIeLwgp3VhM98pD5vZuhp5hnrAgcDb6gZ2wbrvcloNt7zzN3U1QG
         oh4XAeL5mItFuTxAJB4ah4H+v/M/+sCylX1mpcoXPUtBiTyg9bDYTGe1Ji55EgGUHIL+
         SSbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dUI9qV4AA6iIKlobrlsBEjybxS4NAUOsignjg7X4yeM=;
        b=NjkwcQSc7bq3VkB/AKbZC8B7bgybqMY5ohttCa5M1CfSb5gzxh6e8kabpe8TlYuApC
         1qmahgxT4OBDnk/m0VQPnA73t9/WGMuAtU5Ydn2v8EGlLM9bvapel23p6wJzb+j2fjA/
         XhirCJ7GtcIN1IqN0dzB81lEYp5LtxYdnDBYzRKwCDOKNTZNufgJPhQbnzd8Oz17vuou
         YETUYz5ruZNCKyRlRvVtg8SNmN/jgNJD031O1yoJf/jtkDwYNUoN8adlqN9gKx2Jpnc0
         3yebwRz3VcPRd4gicDCXEMd9+haEDnUuH32XR0ZpHndHUgK3V7GeGYjvQN1g2dsYn1S5
         EzxA==
X-Gm-Message-State: AE9vXwONxKfkHdBB3UpPmLxjCTOqXkl+cyoo2PEEpugSImpnXc/pll0qPvVPjRcSyYICSA==
X-Received: by 10.66.161.195 with SMTP id xu3mr61687546pab.68.1474434435524;
        Tue, 20 Sep 2016 22:07:15 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.62])
        by smtp.gmail.com with ESMTPSA id nc13sm42748193pab.43.2016.09.20.22.07.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 22:07:15 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: greybus: arche-platform: compress return logic into one line
Date: Wed, 21 Sep 2016 13:07:04 +0800
Message-Id: <1474434424-7341-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Modify return statement to use the value being returned directly instead of
assigning it first to 'ret' and returning this variable. Coccinelle semantic
patch used:

@@
expression e;
local idexpression ret;
@@

-ret =
+return
	e;
-return ret;

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/greybus/arche-platform.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index 9d9048e..d6b3609 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -634,8 +634,7 @@ static int arche_platform_probe(struct platform_device *pdev)
 	arche_pdata->wake_detect_gpio = of_get_named_gpio(np, "svc,wake-detect-gpio", 0);
 	if (arche_pdata->wake_detect_gpio < 0) {
 		dev_err(dev, "failed to get wake detect gpio\n");
-		ret = arche_pdata->wake_detect_gpio;
-		return ret;
+		return arche_pdata->wake_detect_gpio;
 	}
 
 	ret = devm_gpio_request(dev, arche_pdata->wake_detect_gpio, "wake detect");
-- 
2.7.4


