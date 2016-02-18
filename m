X-GM-THRID: 6252584121027002368
X-Received: by 10.182.118.169 with SMTP id kn9mr6345359obb.11.1455793191161;
        Thu, 18 Feb 2016 02:59:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.52 with SMTP id v49ls5351386qge.71.gmail; Thu, 18 Feb
 2016 02:59:50 -0800 (PST)
X-Received: by 10.129.85.68 with SMTP id j65mr6555862ywb.57.1455793190776;
        Thu, 18 Feb 2016 02:59:50 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ff2si897051pad.2.2016.02.18.02.59.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 02:59:50 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e127so1936068pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 02:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=svUWerQG82ypdmdtA7i00kIvN3fWZeB7Ar/X3WBT6cw=;
        b=X6bDsL/L47xegODxhKaQ0mBd+/ec0pu1hA7CHDHJkbLIUOqcqIRZ2u7hasUu6vYKCy
         ih3wNxCgdLhij+AZ/dPdsodtutfNoT4iOGWzkYsC0fWCoTTiKH2uMcp+asc7L0lRSHVc
         K0VrloAg4nUW3uJBWptnb9cVg7SwG7lwTsZt7w89+5zRJZSyGJ4Yyq6QdzvMsBnCE6NV
         Yz/hCkfwumOP713I0ZUByBgoExHo1PUt6qx0ctr6BEGpnQG5LZuxNYK+vCMu19ma9WUi
         FBgzdl1zSJrQYUK7/GlsvjOBlcJPlxwN0XEuw8BCqhmIff3h2t+RWTj10Ci4PFheQ95F
         pcqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=svUWerQG82ypdmdtA7i00kIvN3fWZeB7Ar/X3WBT6cw=;
        b=TBmszZXousiifxVekurd5EWO7o21TXG18E5MpZPHc1Z9fiKbyjh2WTby4xfB5oaU6v
         AUDY1BAu1afKsjxdBbn5kDa+K5o20yPR/y3ya2Q0Zgjs+LIKXdWtoJqjf3EdoDRYZGmy
         h/cTahhvy342o5eNBa3xzfjHdlI59UTtOxtvuVVOCDD9U2puUga3Hzh9JGPcpqdYT7X3
         QYoyR+y+Rk53RPyIGaLoV/f9XH8K8ZfjgFEE85Iw8XJ24oEVwWozHyu3EDtx16YqdH4v
         8U6vuwyOU6NMfJJmvQpb6spc0NqWuCmvGHX4Wg6vHWVVRoBOkP1ZAa6K+L17VklWflib
         MinA==
X-Gm-Message-State: AG10YOSpqfhJow61NPyTkIqDryOwiAfQGjrXSvHRzjjY2awnPETQDyGoronw74Ha8dOR1w==
X-Received: by 10.98.16.85 with SMTP id y82mr9031894pfi.90.1455793190652;
        Thu, 18 Feb 2016 02:59:50 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id v75sm9389643pfa.39.2016.02.18.02.59.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 02:59:50 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 2/7] staging: iio: resolver: add spaces around operators
Date: Thu, 18 Feb 2016 18:59:34 +0800
Message-Id: <1455793179-2674-3-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>
References: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>

Add spaces around operators to improve readability and to address the
checkpatch issue:

CHECK: spaces preferred around that '/' (ctx:VxV)

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/resolver/ad2s1200.c | 2 +-
 drivers/staging/iio/resolver/ad2s1210.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1200.c b/drivers/staging/iio/resolver/ad2s1200.c
index 77fa7911..82b2d88 100644
--- a/drivers/staging/iio/resolver/ad2s1200.c
+++ b/drivers/staging/iio/resolver/ad2s1200.c
@@ -31,7 +31,7 @@
 /* input clock on serial interface */
 #define AD2S1200_HZ	8192000
 /* clock period in nano second */
-#define AD2S1200_TSCLK	(1000000000/AD2S1200_HZ)
+#define AD2S1200_TSCLK	(1000000000 / AD2S1200_HZ)
 
 struct ad2s1200_state {
 	struct mutex lock;
diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index f11832c..f2a3463 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -67,7 +67,7 @@
 /* default input clock on serial interface */
 #define AD2S1210_DEF_CLKIN	8192000
 /* clock period in nano second */
-#define AD2S1210_DEF_TCK	(1000000000/AD2S1210_DEF_CLKIN)
+#define AD2S1210_DEF_TCK	(1000000000 / AD2S1210_DEF_CLKIN)
 #define AD2S1210_DEF_EXCIT	10000
 
 enum ad2s1210_mode {
@@ -176,9 +176,9 @@ static const int ad2s1210_res_pins[4][2] = {
 static inline void ad2s1210_set_resolution_pin(struct ad2s1210_state *st)
 {
 	gpio_set_value(st->pdata->res[0],
-		       ad2s1210_res_pins[(st->resolution - 10)/2][0]);
+		       ad2s1210_res_pins[(st->resolution - 10) / 2][0]);
 	gpio_set_value(st->pdata->res[1],
-		       ad2s1210_res_pins[(st->resolution - 10)/2][1]);
+		       ad2s1210_res_pins[(st->resolution - 10) / 2][1]);
 }
 
 static inline int ad2s1210_soft_reset(struct ad2s1210_state *st)
-- 
1.9.1


