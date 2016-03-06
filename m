X-GM-THRID: 6258875941838127104
X-Received: by 10.107.162.2 with SMTP id l2mr12533938ioe.14.1457258114120;
        Sun, 06 Mar 2016 01:55:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.25.175 with SMTP id 44ls559880qgt.1.gmail; Sun, 06 Mar
 2016 01:55:12 -0800 (PST)
X-Received: by 10.140.252.131 with SMTP id x125mr12653478qhc.12.1457258112416;
        Sun, 06 Mar 2016 01:55:12 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r75si2377227pfr.0.2016.03.06.01.55.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 01:55:12 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so6101401pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 01:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=48sXC+aooCElUsqzJNo5Mrtdba+54A1JW6igrcoMIRE=;
        b=vzAAy/q7AgLi17lHFs2mk98iqbE+jcywi6Osdqkpx+ubR3depey3Ktfc/CQlMX97HB
         fR5eay6VsyLQabyPRITaNcxcpCRXp4YGjl5Ot+YjV5V8utDLAoNvijnG9dKVkPKXQ0tq
         bREvETltAC5hbyyc07Nc8DfP9LMMTPIaoaygXC6JMwpSmWlWZuOIemZyx4rPc6gvWUji
         Fwh1X578yFo77lQgm57Ee9Nyox0QlZRmWJR4gbLDv42CaZtLLpWYEmDUV9XhCFbU2+Y3
         xOgDDewVlJzsoTnaB74VAX4W4mKF68wZN23o2rxYumONDFfpRbTb/r8fC8vuFxseOGxm
         ea2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=48sXC+aooCElUsqzJNo5Mrtdba+54A1JW6igrcoMIRE=;
        b=DxZLiQgqls/DxnCem5AJ9WJBUAUgf5j2B59n9+I/bPt6rOfMZlQszxlbDIWCz1OfCU
         T96S2RfpBOC1fwjqR3ZoiqYbA91qhredz7Vl0TXf+cXu4bMFV+SqJ2IWCezyp2Ru8BCQ
         9BDoygegqd7mx8DitBc1BSk1lo+oq/UFo7fUSahvvWHWUyHBTJXztyNqpH1JYMWt2ZtR
         4AY7MBLXx5KHSWqpKnrrr5XkkvWPbFZdnjdMNTXiQmZeSqemEjTNE5oVr5dzybTwmMnO
         8TOKhTs63FTfPj5pLxo2rpOO6GCsQSP2OXuHdUaBUO1U0+jWYJw0NrJZtTf0LjiVSL4/
         8pEA==
X-Gm-Message-State: AD7BkJLj5cIBh31p5OATK5ep5RLj63DmyGMci/XBvIEFERolLQ2TO+kY/BE6zZ/Nh1VlXQ==
X-Received: by 10.98.19.215 with SMTP id 84mr25381934pft.22.1457258112248;
        Sun, 06 Mar 2016 01:55:12 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([103.224.159.11])
        by smtp.gmail.com with ESMTPSA id q2sm16920845pfq.88.2016.03.06.01.55.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 01:55:11 -0800 (PST)
Date: Sun, 6 Mar 2016 15:25:01 +0530
From: G Pooja Shamili <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192e: Clean up the tests on results of
 functions which return NULL on failure
Message-ID: <20160306095501.GA1958@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Functions returning NULL as a return value on failure can be tested for
as !x, NULL == x or x == NULL. As !x is commonly used, all the tests
need to be modified to use !x for a consistent coding style. In this
patch, the function kzalloc is considered.

Coccinelle is used to achieve this, the semantic patch being:

@@
expression E;
statement S;
@@

E = kzalloc(...);

if (
(
+	!
	E
-	== NULL
|
+	!
-	NULL ==
	E
)
 ) S

Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
---
Changes from Version 1:
	    * Changed the name in the From: and Signed-off-by: to full
	     name.


 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index 496de4f..5b893e4 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -63,7 +63,7 @@ static void *rtllib_ccmp_init(int key_idx)
 	struct rtllib_ccmp_data *priv;
 
 	priv = kzalloc(sizeof(*priv), GFP_ATOMIC);
-	if (priv == NULL)
+	if (!priv)
 		goto fail;
 	priv->key_idx = key_idx;
 
-- 
2.1.4


