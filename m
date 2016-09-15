X-GM-THRID: 6330560970566402048
X-Received: by 10.107.200.79 with SMTP id y76mr6859895iof.1.1473948585383;
        Thu, 15 Sep 2016 07:09:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.203.7 with SMTP id u7ls502653itg.16.canary; Thu, 15 Sep
 2016 07:09:44 -0700 (PDT)
X-Received: by 10.66.8.66 with SMTP id p2mr6738658paa.11.1473948584465;
        Thu, 15 Sep 2016 07:09:44 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id l185si217239ywb.5.2016.09.15.07.09.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 07:09:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=ronladred@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id b204so3399615qkc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 07:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lqRQfXwhgCKfLTCC8MMLfN74E46s7FGiKRx6/nmPfuk=;
        b=EE2MVHOdVPHJjVvHvCuHTRf322QX8MVfLLSz/PmYYEi+Mu/uHGnT8rHqlHyyZVfB0X
         1xiO/UMwckAXh23QavA1D0tjkBtcran0FRaf+3f06GHnUFUMLHZZRiMW51Ebz8bOZrne
         mYNUU7ycQhm/mFEEVFuU1diEbzekfDCDKGJwBZ8j92dYgKKDnMvVsQy2sFslMB0NRRUd
         o+JPMNG8tmk1yrcWZkVceTFJ+w0llflIwVGxJSC3EO8E+3qEW3T5ipdlH2VdmIaaJaY2
         0LkfWh5uS9S8ixigeBr6ppXyVbtCPgr+jYeTzDLKykGCX4miYRx5M51JwqcAp6Jh/1Oz
         voUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lqRQfXwhgCKfLTCC8MMLfN74E46s7FGiKRx6/nmPfuk=;
        b=TnWEOviMfBGx2FDE7uk2sfEipnmJd+5tVnWdfH2XNhnX8H5udjc8Yxt4HPciPsLCHU
         HQa/Xi+d/NztW65t1YXF7x5r3GPKWxVJyatx3QYH1o9WfvbMRpgPH8fglUk/kl19Wwsl
         RN+g80rqxeb1QlO5pp9Vyl4b4IbyGAE4IP1X766H8b5dckzXOE5smEfx4OY7ttFoOeGd
         vvnyJ4uF+Lb4NV8kHE/s5WXV37KVNjbO3RN3gk6zWpzhmtkFkEVCG8f2drWax8HHH6lU
         iT7MX4+0W8OBJd9mafTYXapP0NEXQgq89z555eIb+osbGh+eYiH+/a0cZ8J4bjuIWwp0
         5xxg==
X-Gm-Message-State: AE9vXwMpHsCDL60qDvmnAhwq7KC/3AOWLRfiKzaQYvvLbJjdnSKt3oMyCP83aBvUN8UYoA==
X-Received: by 10.55.203.198 with SMTP id u67mr9358163qkl.66.1473948584223;
        Thu, 15 Sep 2016 07:09:44 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from fedora (NYUFWA-WLESSAUTHCLIENTS-EXP02.NATPOOL.NYU.EDU. [216.165.95.70])
        by smtp.gmail.com with ESMTPSA id l187sm1941283qkc.8.2016.09.15.07.09.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 07:09:43 -0700 (PDT)
Date: Thu, 15 Sep 2016 10:09:43 -0400
From: Ronald Rojas <ronladred@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v6] Staging: octeon: Fix blank lines warnings
Message-ID: <20160915140941.GA22631@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

Fixes several of the checkpatch.pl warnings to
not use multiple blank lines

Signed-off-by: Ronald Rojas <ronladred@gmail.com>
---
v6 changes: Corrected patch name and commit log

 drivers/staging/octeon/ethernet.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index e9cd5f2..79571d6 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -86,7 +86,6 @@ int rx_napi_weight = 32;
 module_param(rx_napi_weight, int, 0444);
 MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");
 
-
 /*
  * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
  *
@@ -665,7 +664,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-
 	cvm_oct_configure_common_hw();
 
 	cvmx_helper_initialize_packet_io_global();
@@ -878,7 +876,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
 		}
 	}
 
-
 	cvmx_pko_shutdown();
 
 	cvmx_ipd_free_ptr();
-- 
2.7.4


