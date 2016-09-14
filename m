X-GM-THRID: 6330196266384883712
X-Received: by 10.200.54.228 with SMTP id b33mr1857822qtc.28.1473882392347;
        Wed, 14 Sep 2016 12:46:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.141 with SMTP id o135ls605552ioe.29.gmail; Wed, 14 Sep
 2016 12:46:31 -0700 (PDT)
X-Received: by 10.66.88.234 with SMTP id bj10mr3351271pab.36.1473882391779;
        Wed, 14 Sep 2016 12:46:31 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id y77si728886ywd.7.2016.09.14.12.46.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:46:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=ronladred@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id b204so1800147qkc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 12:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Yf1YJ786R5f5/xO8nJXf5IkrRLaXdSp0xvBfqBOrGsM=;
        b=XPXU4W2NZPtDuJ3NZ3IfPE+3EyXzuKwzNmATw0LfYjJxf21uaPXH0l2m9eamxNxRsA
         TyzO4asJgym4G7Ra5SkY8CI2omjR3FJPv49XkTJNS1Mu4sXxvRuyeWrQjU+I476KgIpV
         FKdFd6bvprerttDiZ3BsQfwR7MeQ56jRcU1YKIWlYLYhhOD5yTqNVVmqNkdC1CpErU/I
         k1VM2+ZeCR6Y5PRJgezwJnrGAv/yVmTpvH9mTEK6EufnYlFGSodhNLzPJpXvHUYvs9TG
         QRS4S63zBcAQzdNWG1isiugKHCVzZVWQJ2clZtJJH55MeX6yaAw40cF9bDXp+eSD2VxR
         ji6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Yf1YJ786R5f5/xO8nJXf5IkrRLaXdSp0xvBfqBOrGsM=;
        b=e8eQME+MzTjv3uDkdu1Y8B6kgBqegClYH9TdrrbEPucKr0ZkwYOMRRiuyUiPehQB1b
         DQFwPH5+7yuJsOcyXKo646InfS0JnPWQf7liaK+4IhXWuIsA1HbgNi+C10ROltYMEiLq
         T2yoJJTb5XZTyWOCVlkuGoGSrhvnZ0+B4m8eOtDha08Um6LEVqU0ZpLVvtBg52unD5aE
         jxvTALdIM5UFIyFCMfIKtm+JYe0j3h6e7VkxtoqtcRNczW0kg8nNWebc3vEtZx7eu2Gm
         lnAps+fIFX4xU/5x3dTVfTNR/qpFg0fJ3AEwtp6Nizp2Dc0uDOFMrg4BAMQfw5MFr1ez
         rVQw==
X-Gm-Message-State: AE9vXwO4BJO2MIs5BU9kMZ3U/Bg4yJouucAWrPaStI8Q9ZXMeMq7RpuslrMSietBHsZ3+w==
X-Received: by 10.55.19.66 with SMTP id d63mr5446370qkh.247.1473882391573;
        Wed, 14 Sep 2016 12:46:31 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from fedora (NYUFWA-WLESSAUTHCLIENTS-05.NATPOOL.NYU.EDU. [216.165.95.76])
        by smtp.gmail.com with ESMTPSA id v193sm3110030qka.18.2016.09.14.12.46.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 12:46:31 -0700 (PDT)
Date: Wed, 14 Sep 2016 15:46:30 -0400
From: Ronald Rojas <ronladred@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3] Staging: ethernet: Fixes checkpatch blank lines warnings
Message-ID: <20160914194630.GA2546@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes several of the checkpatch.pl warning
CHECK: Please don't use multiple blank lines

v3: changes to commit log

Signed-off-by: Ronald Rojas <ronladred@gmail.com>
---
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


