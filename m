X-GM-THRID: 6260133962299998208
X-Received: by 10.182.230.107 with SMTP id sx11mr26159399obc.5.1457551019523;
        Wed, 09 Mar 2016 11:16:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.33 with SMTP id 30ls1324927qgc.99.gmail; Wed, 09 Mar
 2016 11:16:59 -0800 (PST)
X-Received: by 10.140.31.102 with SMTP id e93mr4718627qge.27.1457551019047;
        Wed, 09 Mar 2016 11:16:59 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id tu5si3543pab.2.2016.03.09.11.16.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 11:16:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id u190so18742771pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 11:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gL5eEt70c/yF/ckMDfbBFNrUjXQri4V6/qEIYynC+0U=;
        b=cAsZOra733e5rz/tVZRfLhJ5ZXxiKeI4tU0/ELPEJ/QYQ17xgXM+xpbkjqF42YvtUO
         TZQenDF8yPoZAo2pXWAvzOoB11fIIuMWco0sxZWp3q+fHNtZocIsCHhTYTf7S9kG5R6V
         G1r5qIqlmr8oeoIX2oQw0O9Lrr+yILFjgPD63yfIMaJEwjfZCebUzqcSAfCM2/RmakrT
         BVUewTncY00OYyqd4dvcmh2zpD3zUyWtoPEMfvJk9ZQGJ/RoakwIKBLwnSLHZLahpNX6
         yMzuP47koQMa3MX3lJyr40f2vFxrT27G3SwtmtZkZxg7LgGvRu1h9vS3JsjOcZznCXiq
         7TLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gL5eEt70c/yF/ckMDfbBFNrUjXQri4V6/qEIYynC+0U=;
        b=C6dQDAT3EPjRxCUr2RPJpJJrUkBOHSZjnuYaoQXqwoHbievIa5we0F2Dk+qbZ8JBwE
         E2+IrSckAtJECtlTV7oLqNPQO7WLHjSkgbpAyYAEuCgk2MJ3tW4JBzATKPsFMLMtaH4/
         TJjzGh3wr8u+8WY9sFE665nqOzkqPa+ic33g4gzL9YA6rXap0/DObVpmuG5kkCUFdWof
         H9JFKCeylf+vqLeqlxW8rL9957M81QwGuYG83+KM0mvYE3XB/N2QoWbKrXsURD5u61Mj
         veSbtocxr+eN7nJJA8DQ2ToNz6qguFXk3f1GcT9WMbQF2QuLxy48Z4pP/I3EwrCxlx1b
         iqfg==
X-Gm-Message-State: AD7BkJIN3sfaIUjgO6M3y+MVSVbOtxs0H0Vkkowvth+pggTIG8YrCaTyWU6pTtE//2E3Nw==
X-Received: by 10.98.15.135 with SMTP id 7mr52283305pfp.142.1457551018885;
        Wed, 09 Mar 2016 11:16:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d81sm15712pfj.77.2016.03.09.11.16.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 09 Mar 2016 11:16:58 -0800 (PST)
Date: Thu, 10 Mar 2016 00:34:44 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: ni_pcidio.c: Prefer using macro DIV_ROUND_UP
Message-ID: <20160309190443.GA16831@Karyakshetra>
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
 drivers/staging/comedi/drivers/ni_pcidio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_pcidio.c b/drivers/staging/comedi/drivers/ni_pcidio.c
index 67b9f22..7112c3f 100644
--- a/drivers/staging/comedi/drivers/ni_pcidio.c
+++ b/drivers/staging/comedi/drivers/ni_pcidio.c
@@ -531,7 +531,7 @@ static int ni_pcidio_ns_to_timer(int *nanosec, unsigned int flags)
 		divider = (*nanosec) / base;
 		break;
 	case CMDF_ROUND_UP:
-		divider = (*nanosec + base - 1) / base;
+		divider = DIV_ROUND_UP(*nanosec, base);
 		break;
 	}

--
2.1.4


