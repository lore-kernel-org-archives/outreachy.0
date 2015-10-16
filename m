X-GM-THRID: 6206265644827017216
X-Received: by 10.182.126.228 with SMTP id nb4mr13016407obb.19.1445008824645;
        Fri, 16 Oct 2015 08:20:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.227 with SMTP id g96ls865265ioj.55.gmail; Fri, 16 Oct
 2015 08:20:22 -0700 (PDT)
X-Received: by 10.50.78.170 with SMTP id c10mr4643888igx.6.1445008822859;
        Fri, 16 Oct 2015 08:20:22 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id ce6si1521437pad.0.2015.10.16.08.20.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 08:20:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id cn9so8526801pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 08:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=zjzCHEj3e9VOi+SwGmgx+i0rYCXAs3Yr5UBS1CjMfvI=;
        b=QeXkC2qaf8FNqgxnANv+4/Ne1kDhh5dNIfwvYXZmVdZ77woWArFBIWAc1URoFVlwZL
         WBmW+cZXAxydyETXu4WQFsSKaAWxbWwzJrVtGqwYGN+aSNXSm/rO+Sso2XiA4HKOIDhM
         uWmtU4nE1J794Xzxd31o5/mtG3J1iJjgytVzvro1wQHpwRyGfv0rVxMSEG2tv1NWfCuX
         rX7J9iBBfxo30VFdoIu1nclkr7UthC57bk8qAvuAdsj6590t8oJC0gRjzry5tVRstFsH
         JhlMT8+Ce2RV3zBITuujVc8qBMqPgTmWL9LP518HbhV9boSyYIUNA/rwLo4GF7l92yTg
         VTDQ==
X-Received: by 10.66.219.162 with SMTP id pp2mr17126627pac.59.1445008822702;
        Fri, 16 Oct 2015 08:20:22 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id es4sm21828255pbc.42.2015.10.16.08.20.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 08:20:21 -0700 (PDT)
Date: Fri, 16 Oct 2015 20:50:10 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: iio: tsl2x7x_core: Remove unrequired parentheses
 from DIV_ROUND_UP
Message-ID: <20151016152010.GA19210@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses surrounding the first argument of the macro
DIV_ROUND_UP as they are not required.
Semantic patch used:

@@
expression e1,e2;
@@
DIV_ROUND_UP(
- (
  e1
- )
  ,e2)

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	Improve semantic patch.

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


