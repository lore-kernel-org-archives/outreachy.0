X-GM-THRID: 6211239444830224384
X-Received: by 10.112.166.40 with SMTP id zd8mr392178lbb.21.1446166877492;
        Thu, 29 Oct 2015 18:01:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.88.141 with SMTP id m135ls152404lfb.100.gmail; Thu, 29 Oct
 2015 18:01:16 -0700 (PDT)
X-Received: by 10.112.138.66 with SMTP id qo2mr1089655lbb.2.1446166876818;
        Thu, 29 Oct 2015 18:01:16 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id m135si13786wmb.0.2015.10.29.18.01.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 18:01:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fx6so923397wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 18:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=i3rlwylI65G9LGYtXLtD1+smvtS1CEKMhn1kDLzq1+w=;
        b=aecmcbTklndaeuGU4V4l6/XBxEE5dn6QbDxFOHPZgb0JjtLQD8+dD4IqmxcJie+m12
         PlE1+I/SE+p9m/ngSW/C+G4igZPihHn05dCoOXOrhKVXPW5ywBoyfhgph107aN7Sr/98
         r7bEInckSwmdzmRrQOXdWRm18N5kWc+x64biheUdFtNlOXDF4mPynUQDsQBC2jCZhWig
         iNHCNqMcOgH6jd0Isl/NZhE4qW0d5Pr/VRYMRPQ2RcJZ+TqdG35k8qD2YzQxaToefgOK
         oSK97BT5hrCE/ImQnH7GMD4bvipCFs9jTLRz6A5WSkWMbn7hjT8Xc3cDBN4MhTPJdwIc
         arUA==
X-Received: by 10.194.186.170 with SMTP id fl10mr5398378wjc.91.1446166876697;
        Thu, 29 Oct 2015 18:01:16 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.182.227.7])
        by smtp.gmail.com with ESMTPSA id gl9sm4428082wjb.10.2015.10.29.18.01.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 18:01:16 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH 1/2] staging: octeon: Add space around '+'
Date: Fri, 30 Oct 2015 04:01:01 +0300
Message-Id: <1446166862-1859-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '+'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '+' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/octeon/ethernet-defines.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet-defines.h b/drivers/staging/octeon/ethernet-defines.h
index f92e0c4..d683348 100644
--- a/drivers/staging/octeon/ethernet-defines.h
+++ b/drivers/staging/octeon/ethernet-defines.h
@@ -40,7 +40,7 @@
 #define FAU_TOTAL_TX_TO_CLEAN (CVMX_FAU_REG_END - sizeof(uint32_t))
 #define FAU_NUM_PACKET_BUFFERS_TO_FREE (FAU_TOTAL_TX_TO_CLEAN - sizeof(uint32_t))
 
-#define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS+1)
+#define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS + 1)
 
 
 #endif /* __ETHERNET_DEFINES_H__ */
-- 
1.9.1


