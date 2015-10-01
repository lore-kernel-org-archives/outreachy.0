X-GM-THRID: 6200282727557627904
X-Received: by 10.180.149.210 with SMTP id uc18mr247102wib.4.1443686751911;
        Thu, 01 Oct 2015 01:05:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.30.98 with SMTP id r2ls95142lah.45.gmail; Thu, 01 Oct 2015
 01:05:51 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr1199073lbb.13.1443686751200;
        Thu, 01 Oct 2015 01:05:51 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id o5si52787wib.0.2015.10.01.01.05.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 01:05:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id lk2so16097663wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 01:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mcK/tiu/ZcBp9/B+2qptuZo6doWZ5aZvClgwYrgeowI=;
        b=flP539Ds/5T9CPyPqLylgdTRU7C099qk+CkYbx5NuQU07ros1lqcD+4fqDm6uY90gY
         IY+jbUXXoi3vmfrSHkRiW+FuYA0qKJkF01spjIXHYZjyNuCrfTDvXX0i150JpOtDNlfJ
         KzJ1O15K+ASIiP03grPMZt60s8CX7aNYoVbVnim07FEb0lRNf75+OWbXByAkFwbUNOp9
         0asrqsGEaNX09o2jhr24rdSY8HZT1PWibt/++livvnPGQM8YACoDrEK7T/RpAR48/XCu
         wxSVqtOToe3PfGVgGVL7tCoEKaGlz/943R91E8a0grBaNQVkekkgCY1qJ8G4tkyYpaul
         m+iw==
X-Received: by 10.194.185.236 with SMTP id ff12mr8437896wjc.49.1443686751066;
        Thu, 01 Oct 2015 01:05:51 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.43])
        by smtp.gmail.com with ESMTPSA id x7sm1847044wia.5.2015.10.01.01.05.49
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 01:05:49 -0700 (PDT)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2] Staging: octeon: Use preferred kernel type
Date: Thu,  1 Oct 2015 11:05:41 +0300
Message-Id: <1443686741-3437-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 2.1.4

This patch "uint*_t" type instead of "u*" type was used.
checkpatch.pl issue in ethernet.c file.

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* change commit explain message.
* all uint*_t type changed in one commit.
* add my surname in user name part.
---
 drivers/staging/octeon/ethernet.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 7274fda..c9183e0 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -382,11 +382,11 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
 	    && (cvmx_helper_interface_get_mode(interface) !=
 		CVMX_HELPER_INTERFACE_MODE_SPI)) {
 		int i;
-		uint8_t *ptr = dev->dev_addr;
-		uint64_t mac = 0;
+		u8 *ptr = dev->dev_addr;
+		u64 mac = 0;
 
 		for (i = 0; i < 6; i++)
-			mac = (mac << 8) | (uint64_t)ptr[i];
+			mac = (mac << 8) | (u64)ptr[i];
 
 		gmx_cfg.u64 =
 		    cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
@@ -835,7 +835,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
 				cvm_oct_device[priv->port] = dev;
 				fau -=
 				    cvmx_pko_get_num_queues(priv->port) *
-				    sizeof(uint32_t);
+				    sizeof(u32);
 				queue_delayed_work(cvm_oct_poll_queue,
 						&priv->port_periodic_work, HZ);
 			}
-- 
2.1.4


