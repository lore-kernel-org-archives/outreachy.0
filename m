X-GM-THRID: 6330196266384883712
X-Received: by 10.107.135.198 with SMTP id r67mr3442957ioi.2.1473876377121;
        Wed, 14 Sep 2016 11:06:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.231 with SMTP id c94ls1562082otb.45.gmail; Wed, 14 Sep
 2016 11:06:16 -0700 (PDT)
X-Received: by 10.13.214.83 with SMTP id y80mr3004635ywd.33.1473876376667;
        Wed, 14 Sep 2016 11:06:16 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id c75si496071ywh.0.2016.09.14.11.06.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 11:06:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=ronladred@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id z143so1603625qka.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 11:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Q3Uhh/64Mw9PJWQUz108FWBb9588DFUCuo6DecnN41g=;
        b=bIZNIx0EWyXY9aWRYXeO4D9uVq+n00rD/hJRjNRFmwBjGWTeE9OXcZiNxT+uAJU6e7
         6PhFTJWV+yqfDr4tpkTC23Xlt9/qtd9l7tz/VoOZmAPB92MFCqK8lspqO4lKd/81dKqC
         6FFrABcy5/Jv7SgJkq2ogrPHRP5nDpunhVgIWRQXAwN7lk1G0aUiaPqDbdxi3+7kcroU
         Gjxtmj7vfuYBKq2/66WewcgQH2GTJzPbSoA07Su5xVgRxND7/BHlLCmw70pdcZ5Jp6VR
         WkM9tGQV1CdRb/WfwyHkTzeaLslcekoRUurhIb15X48y20ic4ZIgsMBKF6UCEFLUeirt
         jsAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Q3Uhh/64Mw9PJWQUz108FWBb9588DFUCuo6DecnN41g=;
        b=nA8+ydFd4Jj7IiEHOJj+0hRuB8aSZ/iZH90XvACmv2gGPtY4OSUoLz4rV1FbqukZaH
         xVVSSLoEHb6Zs7nYzMIG7nRNcIC7Wr48CUWpPPk5S4yP2nS+ojx3wXjDFAik/vmKY9BM
         9L9/C+b+6cwq10+sm06c0z/mO4Mtcn2zpb5km/mSHEwi/6nbmZmKiR98d2b4zoLitGLu
         K+ueb5FZSGyVuNcfp9vss159vkAzFg/3IQbSosT9uEl1Dan69OnFGqgk5okol+PLjU6t
         3JSokTOwNUQrMBw+msWSyqlHxW/kgKSm7ZUzdAZ0KlDiflnaZpJS0oRd/XOqx279La+s
         n9TA==
X-Gm-Message-State: AE9vXwPpfAxSbOl1kJDfRoraXtlVMZIqxpqsj7ArxbGKDe6mpb6vQzp5lcn5fsPwovFXeA==
X-Received: by 10.55.185.197 with SMTP id j188mr4643472qkf.288.1473876375581;
        Wed, 14 Sep 2016 11:06:15 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from fedora (NYUFWA-WLESSAUTHCLIENTS-05.NATPOOL.NYU.EDU. [216.165.95.76])
        by smtp.gmail.com with ESMTPSA id a192sm2875801qkc.26.2016.09.14.11.06.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 11:06:15 -0700 (PDT)
Date: Wed, 14 Sep 2016 14:06:14 -0400
From: Ronald Rojas <ronladred@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: ethernet: Fixes checkpatch blank lines warnings
Message-ID: <20160914180614.GA4299@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes several of the checkpatch.pl warnings
in the driver/staging/octeon/ethernet.c file.
All of the errors were "Please don't use multiple blank lines"
and the appropriate lines were deleted at lines 89, 668, and 881.
89.

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


