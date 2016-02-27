X-GM-THRID: 6255857186717564928
X-Received: by 10.129.155.201 with SMTP id s192mr4350890ywg.4.1456555255414;
        Fri, 26 Feb 2016 22:40:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.112 with SMTP id j103ls1675158qge.57.gmail; Fri, 26 Feb
 2016 22:40:52 -0800 (PST)
X-Received: by 10.140.246.3 with SMTP id r3mr4185491qhc.2.1456555252045;
        Fri, 26 Feb 2016 22:40:52 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id 12si2387840pfb.1.2016.02.26.22.40.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 22:40:51 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id e127so64343492pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 22:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=EpCEc3aDgxSay3ZjALA0pJoFjiFmMhple/OR9lgFKns=;
        b=BYhXAlNxa9KYn031MB2o84noD8QRXxfph38TqWzAqMCNTSr0cvTXnVKQdXqioTCdYh
         QIs/1nm9rAMR0HkSk1ub5P0WbHbKtJbDnw+4qDr2ZrTvP2pacZVsbCIAOjIEQ7Kdf4LL
         JRXPbC/q1rw51NhLcGaAzzxBKC6RFTjMfIidvs3b9FSCGsPnpXZgU/SKD2x8cN1Jj9HE
         iXj2Fw3u7ojBoGhRim6/pZxjSJF6vYg1ce/upBeITnnpnUoPWngBAPmICG0eOm7lrma3
         22xy8QrPxVzsVz7WTU3oHe59P0WAITmPoQwSmMQ/HBVranx59fvgSj+tvxflotkMKZi+
         MjWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=EpCEc3aDgxSay3ZjALA0pJoFjiFmMhple/OR9lgFKns=;
        b=io5Vf15D5xbgcQXeFiprbf7Dy0JceCp3dWuvDDEaajbG4bLDv+E71HiV0pOghvx0WF
         qLFUaPEomXfAZxUy/OvKJUJKqLTL3ATlosGVElV8rnSUkgpqLrr0ykrdBq+MTzaOItrx
         5iJTDVH89lSk/9jeSHYAbX+KGil/HYCVaoIiR6FZjYFIXZc0fIg5bvR4VtRJCoa6lkGn
         p2hiEO/1RoWNGD9AVuD7yX8NKmeLkeGAWaCOOxRNYHIxLKuyLQtuqKTOl3OrMl9SHRC3
         +959/bBWSvKvTZwZHwvUugEH4fVTHL9hLU0o1lOs2cdAQn/7gl7jqhS/zszLCm0wkEl+
         N0AA==
X-Gm-Message-State: AD7BkJKUYT3sgw5RH0Zv/ZM7HvR0Va/y1t+ZuJGyi3ek0NFcgumM+bYksqKpooVjstSbOg==
X-Received: by 10.98.89.4 with SMTP id n4mr7388639pfb.81.1456555251681;
        Fri, 26 Feb 2016 22:40:51 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s197sm23467527pfs.62.2016.02.26.22.40.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 22:40:51 -0800 (PST)
Date: Sat, 27 Feb 2016 12:10:29 +0530
From: "pooja.shamili" <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Clean up the tests on the results of
 functions which return NULL on failure
Message-ID: <20160227064029.GA16461@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Functions returning NULL as a return value on failure can be tested for
as !x, NULL == x or x == NULL. As !x is commonly used, all the tests
need to be modified to use !x for a consistent coding style. In this
patch, the function kzalloc is considered.

Signed-off-by: pooja.shamili <poojashamili@gmail.com>
---
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


