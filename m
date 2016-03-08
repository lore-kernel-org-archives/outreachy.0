X-GM-THRID: 6259747720772190208
X-Received: by 10.129.83.85 with SMTP id h82mr636333ywb.18.1457461090455;
        Tue, 08 Mar 2016 10:18:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.22 with SMTP id 22ls614920qgi.41.gmail; Tue, 08 Mar
 2016 10:18:09 -0800 (PST)
X-Received: by 10.31.157.213 with SMTP id g204mr601556vke.14.1457461089704;
        Tue, 08 Mar 2016 10:18:09 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 12si637792pfb.1.2016.03.08.10.18.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 10:18:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hj7so1640403pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 10:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8B9joLQ1yGPG+A3O4nm/0tJGbvO6b+kMeNuB5QWz3Mw=;
        b=qUPPCZaxqMPQcrFYwG5pEQhngnP2fpuNJUzxgnx0/HMjSPscIBdOO3FAnBA3ZK0ePo
         syeKSA6Nvr7vFNyx6T9dFefrGVEoEImTcnvItCKUZ6/wTsaws8gXItSganavX/walS0k
         X9HNm/GzRiuhiZrcIDcbEIlSZSz8URg6G4ZRQTVXyqYap0JyA0UWoBe5ciuj/jJboIYN
         uOUlXNToUtBG48NbxsIdmgDMhO3mPWN03FWuZzWI7Zawtu2XIdwhJCmD8VgRt1V6Sf6Q
         /vgAFdArTok/xEr3+kBDRni6N5+ioFVoDI6bHezQDpBRU0oIAjehuIMplnISwMQHaW3Q
         9sAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8B9joLQ1yGPG+A3O4nm/0tJGbvO6b+kMeNuB5QWz3Mw=;
        b=FK3tAMRj5zQtZyfgKrrJAcsPrWuyUd3yyd4X3DpuodDQ7VRBZioZ1giLmONFisFsb8
         bUeKyFNRtSCXjXBOjb+/p3jqbOG0On57Yeljv68AlrHsq5VI2I3rbWdzdKuIGFBFQ9bS
         ExI+UEZV7TgMEDeXM+cG4f/QpoM/dU7BT8ZV4J9mdPopkYjpTqlC0vT00CZ5vzGgiVqU
         mEsx9ZI+0nCFQK+iHW4moZbZwkcVJrZJywlIAgB3cp9TF59cdNO6ncQu3y9ydrMgEE5w
         ZDUFrwekE8JtZZxGRDLDl88Py+ENwBEeRGHL+JzYXl+8v0pb/hHmRSFoHSIn8LbK3tUE
         Mg0A==
X-Gm-Message-State: AD7BkJICdkkOTKKiZcC7D/gnT0P6JlLPwPod1ZO2hgBYnOjlgDQQ8PH8pXaDYYiVwnrGuA==
X-Received: by 10.66.190.40 with SMTP id gn8mr43192904pac.64.1457461089520;
        Tue, 08 Mar 2016 10:18:09 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w12sm6501095pfa.79.2016.03.08.10.18.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 10:18:09 -0800 (PST)
Date: Tue, 8 Mar 2016 23:35:56 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: lustre: ptlrpc: sec_bulk: Use macro DIV_ROUND_UP
Message-ID: <20160308180556.GA30651@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v3:
	-Changed subject to prevent conflict with other patches

 drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
index 72d5b9b..0d58d8e 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
@@ -274,7 +274,7 @@ static unsigned long enc_pools_shrink_scan(struct shrinker *s,
 static inline
 int npages_to_npools(unsigned long npages)
 {
-	return (int) ((npages + PAGES_PER_POOL - 1) / PAGES_PER_POOL);
+	return (int) (DIV_ROUND_UP(npages, PAGES_PER_POOL));
 }

 /*
--
2.1.4


