X-GM-THRID: 6258876692691943424
X-Received: by 10.98.8.15 with SMTP id c15mr12492679pfd.0.1457258288014;
        Sun, 06 Mar 2016 01:58:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.164 with SMTP id x33ls1181154qgx.8.gmail; Sun, 06 Mar
 2016 01:58:07 -0800 (PST)
X-Received: by 10.31.152.208 with SMTP id a199mr12468111vke.4.1457258287332;
        Sun, 06 Mar 2016 01:58:07 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ff2si2484687pad.2.2016.03.06.01.58.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 01:58:07 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 184so6120055pff.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 01:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=a5IFWsNpOks1hxfIbXLxXNfsNCRn0ECXVpWP96ynR8A=;
        b=HF5NyWmPs4CE9ePbTMoBJc6ph3OzCigvJVHsDjvS4lNYaPcpxbMxMLSVCvq3x4Q2uo
         hE3TI3KSYfXqNW5wQD4VEWoXpijO71zlVt5K+wNiq9D+R/Dyyc/0d3nj6jZmikJwoOAs
         enedDF5UQzhUgWA9vdRpqnBf9ngRHJACPm1oBllj+yoSh6nT9bdn6AEwVfIMADQg8b6n
         RZ5nDszBpl7wxoeA745dANgcxidkvDLb2EFfWOxPXBex0vHG+o02mo3kzicxLlxeq3pg
         zVSrSY18J0tFjafPV4kCSZ/OvH+1uM7h2nngl0UmA5yXI9BNUuFhSSAD8nxYLfshEfnN
         PyXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=a5IFWsNpOks1hxfIbXLxXNfsNCRn0ECXVpWP96ynR8A=;
        b=KydZUqNxx8iIYbtKjXCr7O9Lv9p10oZAMb0htKS+okODTQm1rAo6Yr77JzOe22EzQK
         ymZ4vIyBfR6yHYJkKGk3PIkQPomafaCkujsNpEE8avhXmTBL9j9xnr/Gq5YNbix0sTFm
         Czs/PSVepyr8jZ0lgphYfcZsfArJKHNSp9hW2jaHBb2kWlUS15Lb315Wru4EPN820NTa
         hXCyUuQLCwvOFkkg36S8Ul4W+2IRe8FLdy3XBnuAh6j1om6G9ATTCgIezFKSdZc8deJ8
         gTpi0NKkHqCT6Wbn+XRoRoaCSjX+FNMst+MPRmj+JgK42a8nm3GJMLzrYYXVmDiRzKLk
         xb1w==
X-Gm-Message-State: AD7BkJIysdP688dD4AK1ERZZuQFisDG6HbSyYa0KmxXuuNIhCPaX1uU6w9ppe/cPi8hg8A==
X-Received: by 10.98.9.92 with SMTP id e89mr25512853pfd.34.1457258287160;
        Sun, 06 Mar 2016 01:58:07 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([103.224.159.11])
        by smtp.gmail.com with ESMTPSA id u64sm16932133pfa.86.2016.03.06.01.58.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 01:58:06 -0800 (PST)
Date: Sun, 6 Mar 2016 15:28:04 +0530
From: G Pooja Shamili <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192e: Clean up tests on the results of
 functions that return a NULL on failure.
Message-ID: <20160306095804.GA2730@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Functions returning NULL as a return value on failure can be tested for as !x, NULL == x or x == NULL. As !x is commonly used, all the tests
need to be modified to use !x for a consistent coding style. In this patch, the function kzalloc is considered. Coccinelle is used to
achieve this, the semantic patch being:

@@
expression E;
statement S;
@@

E = kzalloc(...);

if (
(
+        !
         E
-        == NULL
|
+        !
-        NULL ==
         E
)
 ) S

Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
---
Changes from Version 1:
	    * Changed the name in the From: and Signed-off-by: to full
	    name.

 drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
index 2096d78..0907d3c 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
@@ -62,7 +62,7 @@ static void *rtllib_tkip_init(int key_idx)
 	struct rtllib_tkip_data *priv;
 
 	priv = kzalloc(sizeof(*priv), GFP_ATOMIC);
-	if (priv == NULL)
+	if (!priv)
 		goto fail;
 	priv->key_idx = key_idx;
 	priv->tx_tfm_arc4 = crypto_alloc_blkcipher("ecb(arc4)", 0,
-- 
2.1.4


