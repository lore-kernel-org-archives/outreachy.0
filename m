X-GM-THRID: 6392835608825298944
X-Received: by 10.98.61.149 with SMTP id x21mr2785526pfj.20.1488448044769;
        Thu, 02 Mar 2017 01:47:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.66.83 with SMTP id i80ls1999086itb.6.gmail; Thu, 02 Mar
 2017 01:47:24 -0800 (PST)
X-Received: by 10.99.126.11 with SMTP id z11mr4981517pgc.111.1488448044166;
        Thu, 02 Mar 2017 01:47:24 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h79si1332046pfh.2.2017.03.02.01.47.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 01:47:24 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so8827141pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 01:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xk5Neli+TmgB7TlNdZke0kwn/fdYDmQkfjnbfy4q3vQ=;
        b=QP0bZlhFhGy7Re4FWJ6aIwFJwUfjq6H8EQobjxAOAGn6bWYofY46ohW0Zw11SLa2OV
         hKB2YqewJg2OSkPOkHQB3ZxVDBTIuZgUjNo+Bv7Ifx0tZgzz50Ybiuo1Hq1Ya1yv886H
         2hLNMj+R5axbcJfSC4ZT6mt6+m/swQ6DWOu17MbANuVMx9sfTYeSLli+MqZ5Gd/4nIp1
         tJc5I0BeljK1vrx/ZFodYPDfHaW0YZv3eLV1DrOuqqe04lDXo5zwkJfvLO5GWaCjfs/L
         ARV+cv+HnXocddC60pCePXTpLIT9wXPljrKPoPekiSPn8iWO3cTo+w7W6laMdBaLKa8o
         IwXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xk5Neli+TmgB7TlNdZke0kwn/fdYDmQkfjnbfy4q3vQ=;
        b=He9X8xxexwoK9taeuco/v+PDdCnV7KR6rJiZwC9dOprpEQ+PTkNfNpEA4eiVgpjBvW
         xvo2B5UrCaQY2a2WGeu0X9cTNUSNWwfujNwa3+8tn6vd4BhvcQaPcLWu0EXu9KKKfnv1
         1b+mg8vKWsrmVs9WPJfshg7oTChi/SnN5pG1wJiDQL1M08RMRNtfgeuXR7Jgx52yy5dN
         WON8RMIbbgK+AwKOz6Tdnd5e8nZhs1cMoDZqHdfdJUzaA0RlQ6e4ZKK9NehZbMoIQmo0
         1TJ8yDLWtKmNdupjPs3ndyzNhJ/+f6k/o+vMt3c0MHuYa7bz6iOjZOROtlq3d+6ukjQb
         yjQA==
X-Gm-Message-State: AMke39lowH8yv5DE5Yf3F4tP5xWLS+p/eq1l3+O6AbTATW57v6/ls/bW0+4f4TQsQAREZA==
X-Received: by 10.84.214.129 with SMTP id j1mr17464961pli.23.1488448043974;
        Thu, 02 Mar 2017 01:47:23 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c1sm15747480pfk.112.2017.03.02.01.47.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 01:47:22 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	sergio.paracuellos@gmail.com,
	juliana.orod@gmail.com,
	thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: rtl8192u: Fix Sparse warning of cast from restricted __le16
Date: Thu,  2 Mar 2017 15:19:05 +0530
Message-Id: <1488448146-29452-5-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>
References: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>

This patch fixes the following Sparse warning-

drivers/staging/rtl8192u/r8192U_dm.c:2307:49: warning: cast from restricted __le16
drivers/staging/rtl8192u/r8192U_dm.c:2308:44: warning: cast from restricted __le16
drivers/staging/rtl8192u/r8192U_dm.c:2309:44: warning: cast from restricted __le16

And added space before '|'

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 9209aad..e1c83a3 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -2304,9 +2304,9 @@ static void dm_check_edca_turbo(
 				/*  For Each time updating EDCA parameter, reset EDCA turbo mode status. */
 				dm_init_edca_turbo(dev);
 				u1bAIFS = qos_parameters->aifs[0] * ((mode&(IEEE_G|IEEE_N_24G)) ? 9 : 20) + aSifsTime;
-				u4bAcParam = (((u32)(qos_parameters->tx_op_limit[0])) << AC_PARAM_TXOP_LIMIT_OFFSET)|
-					(((u32)(qos_parameters->cw_max[0])) << AC_PARAM_ECW_MAX_OFFSET)|
-					(((u32)(qos_parameters->cw_min[0])) << AC_PARAM_ECW_MIN_OFFSET)|
+				u4bAcParam = ((le16_to_cpu(qos_parameters->tx_op_limit[0])) << AC_PARAM_TXOP_LIMIT_OFFSET) |
+					((le16_to_cpu(qos_parameters->cw_max[0])) << AC_PARAM_ECW_MAX_OFFSET) |
+					((le16_to_cpu(qos_parameters->cw_min[0])) << AC_PARAM_ECW_MIN_OFFSET) |
 					((u32)u1bAIFS << AC_PARAM_AIFS_OFFSET);
 				/*write_nic_dword(dev, WDCAPARA_ADD[i], u4bAcParam);*/
 				write_nic_dword(dev, EDCAPARA_BE,  u4bAcParam);
-- 
2.7.4


