X-GM-THRID: 6206247613706010624
X-Received: by 10.129.131.138 with SMTP id t132mr8805426ywf.12.1445004626018;
        Fri, 16 Oct 2015 07:10:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.179 with SMTP id n48ls1218474qgn.82.gmail; Fri, 16 Oct
 2015 07:10:25 -0700 (PDT)
X-Received: by 10.13.216.77 with SMTP id a74mr14021641ywe.9.1445004625428;
        Fri, 16 Oct 2015 07:10:25 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id el2si2014823pbb.0.2015.10.16.07.10.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 07:10:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id rc13so121997508pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 07:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/jLv1xTVDrhPVVdPyLEJFsIVDDKgxVV2FPQ2P+3Z9KY=;
        b=TBnLiSkPuvndHJDWec/5y9cGjqkUgWR5jeeulOWmMqvSmKkSa8RtFys//1HM8+pW38
         zApRelKQqc+7S/OJC63kEZVLlP0UQrN2GBzvmbazd7jKD+Ovk+Rr66baOv8k70nwxX+u
         CMrq4yOgIOye7dZATIaWCos4UIYYaMs9TsRdi2D1X935+bv7kGQDFGTEu95mQmu3QDFv
         HBrBjaaBl9liCQbd2GlAKXNL7ODkjSXLfnBUcuGsfQUJlC6bMxIitgLn1B+k+6DtngZK
         IsfJ6D8MXEpzJiqPLfJAZ9yy6uVQC0rESAKJVbuP5rY8rePv+M2mpeJRbPS0BmcAF6Or
         QibQ==
X-Received: by 10.66.158.233 with SMTP id wx9mr16906397pab.157.1445004625276;
        Fri, 16 Oct 2015 07:10:25 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id d2sm21667130pat.24.2015.10.16.07.10.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 07:10:24 -0700 (PDT)
Date: Fri, 16 Oct 2015 19:40:11 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: tsl2x7x_core: Remove extra parentheses from
 DIV_ROUND_UP
Message-ID: <20151016141011.GA14411@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses surrounding the first argument of the macro
DIV_ROUND_UP as they are not required.
Semantic patch used:

@@
expression n,d;
@@

- DIV_ROUND_UP((n),d)
+ DIV_ROUND_UP(n,d)

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/iio/light/tsl2x7x_core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 010e607..bf9627e 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -418,9 +418,9 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 	if (p->ratio == 0) {
 		lux = 0;
 	} else {
-		ch0lux = DIV_ROUND_UP((ch0 * p->ch0),
+		ch0lux = DIV_ROUND_UP(ch0 * p->ch0,
 			tsl2X7X_als_gainadj[chip->tsl2x7x_settings.als_gain]);
-		ch1lux = DIV_ROUND_UP((ch1 * p->ch1),
+		ch1lux = DIV_ROUND_UP(ch1 * p->ch1,
 			tsl2X7X_als_gainadj[chip->tsl2x7x_settings.als_gain]);
 		lux = ch0lux - ch1lux;
 	}
@@ -1057,7 +1057,7 @@ static ssize_t tsl2x7x_als_persistence_store(struct device *dev,
 	z = y * TSL2X7X_MIN_ITIME;
 
 	filter_delay =
-		DIV_ROUND_UP(((result.integer * 1000) + result.fract), z);
+		DIV_ROUND_UP((result.integer * 1000) + result.fract, z);
 
 	chip->tsl2x7x_settings.persistence &= 0xF0;
 	chip->tsl2x7x_settings.persistence |= (filter_delay & 0x0F);
@@ -1103,7 +1103,7 @@ static ssize_t tsl2x7x_prox_persistence_store(struct device *dev,
 	z = y * TSL2X7X_MIN_ITIME;
 
 	filter_delay =
-		DIV_ROUND_UP(((result.integer * 1000) + result.fract), z);
+		DIV_ROUND_UP((result.integer * 1000) + result.fract, z);
 
 	chip->tsl2x7x_settings.persistence &= 0x0F;
 	chip->tsl2x7x_settings.persistence |= ((filter_delay << 4) & 0xF0);
-- 
2.1.0


