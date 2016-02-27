X-GM-THRID: 6255857186717564928
X-Received: by 10.66.231.4 with SMTP id tc4mr4291390pac.14.1456555611673;
        Fri, 26 Feb 2016 22:46:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.22.137 with SMTP id d9ls678088obf.64.gmail; Fri, 26 Feb
 2016 22:46:51 -0800 (PST)
X-Received: by 10.182.118.169 with SMTP id kn9mr4262735obb.11.1456555611337;
        Fri, 26 Feb 2016 22:46:51 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id r75si842735pfr.0.2016.02.26.22.46.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 22:46:51 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so5575391pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 22:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Z2ln0vE4l0MdhVwWeFqAl1uEh77ZtXEIVFAc2AiD2Yg=;
        b=jKk8n6cNsX44Akr5TL7i7L6abhEs4/Z/dD3Hr+/COwV2vaBOe58DiaJrL5uBaYkHSE
         OjMNefikrRa7zx3YT7KnuCsO6fnfcbZi3C5lAuhxyfZnsW4a4xcIXiV9Xg6ytKq/fGv7
         2yIBNUQYzqC1cLiO2zNM1XZLggVcDKbnfNPh4ryKe+K/NRWEU9dVcBrLvTPip09MmPSf
         +33hzjcbYgMaTUV2icvgk1sFGbgve26L+rg6ACeE8CuvA44BTT1/Nenl+9MVkJBAZMG3
         tfpQmKjJVtUKD//gDhI0llX6P9bWN/IGgZpKO5EegP31rUudNWwgNQU0Sgujos0mEg23
         1q0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Z2ln0vE4l0MdhVwWeFqAl1uEh77ZtXEIVFAc2AiD2Yg=;
        b=FwFt9Y3y3a4kCb0PFflJC1k01sUWm7npizOhMd68TN6tJzfd/rbRpZD0PkqHkfEBxw
         i9Snhgov0mFgia3oSeG1R5OpB0KAoAwzmY0897dz55WBnCJCfXbKPIEFytvHxQBrRONo
         yi/3w5wVlFREqiAY5P+m1mKKqTQaJG9H5cXOf0UygXiI/xIOGhluUUdKnFKVcoVw351E
         5e9ztFlKJbx7E/+fTgGwBGJkB1k745an0UtMYH9nzu2m9VRU4/XWcUELOaHfS/qdqWd4
         VHk9aGBdexbnCylzcOspWmNKpaTNqEZbn7oxuzdEXNW7XqiLbiW7oLTgotWZzNoY/8o6
         pNSg==
X-Gm-Message-State: AD7BkJLvl/5q55PtVZ4d7Z7cxbhlcaFFXob1/yYYFwkGEVxh5TR5IunM0yTBFBasqkvmAA==
X-Received: by 10.67.23.161 with SMTP id ib1mr7441781pad.156.1456555611059;
        Fri, 26 Feb 2016 22:46:51 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ah10sm23575028pad.23.2016.02.26.22.46.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 22:46:50 -0800 (PST)
Date: Sat, 27 Feb 2016 12:16:27 +0530
From: "pooja.shamili" <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192e: Clean up the tests on the results of
 functions which return NULL on failure
Message-ID: <20160227064627.GA16581@localhost>
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

Signed-off-by: pooja.shamili <poojashamili@gmail.com>
---

Changes from v1:
*	Added the Coccinelle semantic patch

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


