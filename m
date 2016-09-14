X-GM-THRID: 6330196266384883712
X-Received: by 10.107.130.90 with SMTP id e87mr2597040iod.10.1473863671971;
        Wed, 14 Sep 2016 07:34:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls1177456otb.16.gmail; Wed, 14 Sep
 2016 07:34:31 -0700 (PDT)
X-Received: by 10.129.145.9 with SMTP id i9mr2229795ywg.55.1473863671523;
        Wed, 14 Sep 2016 07:34:31 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id m82si424854ywm.2.2016.09.14.07.34.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 07:34:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=ronladred@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id z143so1153592qka.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 07:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tVgVEj3YEXrlOVvYbb+KgJEdJn509nmTQR7Uh3oVV14=;
        b=u4AzKiCU66p1Aegpx+Isd9312W/NpIvC0dLs3eABmfcq7Hx90K1teyxcxgfC2+fiTc
         Vr5vw+aRIgYT3m6VI7eqnaD1sdpzSI8YisSvDvmSF3LDPbxJe9ZQ4YyWtwrjE366KoZY
         UBUnueKkqmQf+XsgqTlh0QUVsDBwyqefeaD+PoHNsSPmmaj6cc17gW35NTG2qs3VWXBk
         0lThNzxz4xaR7yQudkRWb9dO7a/4m231vcfk0YwNbEzBLQ/fZfeM9hQ7yG1+sOuplsgl
         dLOtcq7eLCHTlFSimFjmGRnZLMrA1sM7pjPDsDBQTXUMdboZTqKsE3hXv2ITlotawHqc
         lrXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tVgVEj3YEXrlOVvYbb+KgJEdJn509nmTQR7Uh3oVV14=;
        b=Qnf5OdubspkFAW2on7eQ+3gZakag1tMyTqvNFe+3lh35ASVa+E1o60EoR2ivkb2+Ib
         X+2xay+xRRWb4LhBkxbbhCvtGxL2j4s2f+oyv9oLYYLYwd1TnIZS75GuFqXaHxVk5+w3
         OmG60Y/tjlxISY2HK1SaYki0VCLMjrmRT1CKEhQkqYrR4JmFqGDIbUwhAHyclikDq5VQ
         L5tf996BqFaigCTPZaQNFudXruK9x/zJTAEdreX5PsE/HAYsobmoHsvKUhuloRZxI5br
         TO0EegGaPCFIzRQf+cDIKRhT+JyAL49gVWzjhc7jeaiKHYsS1gmEWe6VxjFKsO1C4KKm
         dbLw==
X-Gm-Message-State: AE9vXwOmYEaLwQZ/FVVidvrVp56/Knc+Ide2kJU8gI5bbwvToENy6d1SfeTpSqaq13W9vw==
X-Received: by 10.55.159.77 with SMTP id i74mr3416601qke.60.1473863671166;
        Wed, 14 Sep 2016 07:34:31 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from fedora (NYUFWA-WLESSAUTHCLIENTS-20.NATPOOL.NYU.EDU. [216.165.95.9])
        by smtp.gmail.com with ESMTPSA id y203sm2361872qkb.31.2016.09.14.07.34.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 07:34:30 -0700 (PDT)
Date: Wed, 14 Sep 2016 10:34:30 -0400
From: Ronald Rojas <ronladred@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ethernet: Fixes checkpatch blank lines warnings
Message-ID: <20160914143430.GA22511@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes several of the checkpatch.pl warnings
in the driver/staging/octeon/ethernet.c file:

CHECK: Please don't use multiple blank lines
89: FILE: drivers/staging/octeon/ethernet.c:89:

CHECK: Please don't use multiple blank lines
668: FILE: drivers/staging/octeon/ethernet.c:668:

CHECK: Please don't use multiple blank lines
881: FILE: drivers/staging/octeon/ethernet.c:881:

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


