X-GM-THRID: 6207829732386406400
X-Received: by 10.180.87.164 with SMTP id az4mr5814071wib.1.1445372992297;
        Tue, 20 Oct 2015 13:29:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.151.149 with SMTP id z143ls106139lfd.104.gmail; Tue, 20 Oct
 2015 13:29:51 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr1106932lbc.23.1445372991772;
        Tue, 20 Oct 2015 13:29:51 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id w4si826061wiz.0.2015.10.20.13.29.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 13:29:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id fx6so62854394wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 13:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=uG60R2WhG+0RC7R8oH1Fw66myn6qgWmg8DQIDd5SINw=;
        b=DaKMj4DL3wlpe7VOZMFlC2seNh+db5STCstAijxPwm9Up3yQzj+1exEyvQcJzBv56d
         yYbVzK8w4GVnL48uA83D8d03OSTgExbhkYFjYQvXJA7U3FzKWeZlYNMqIEDEgzQvF4lD
         /d/oAk4NWikc99e2y+spkuxf8WvSzUpH4njBtw69FfVXboknXtKnK/k+HO8wyFzhX2Nh
         IbtgRIQuVctdK2UeKqXrUaOQw40gFIK1HNkOBYQrlBUnHqU9b1naV3K63dvRU1rBzqdi
         3axxqZ9I72xD/Tco+nBL73tDxpQIX7HP82DaIHrAQq/ejrQtGkjPc8NYXngPZn623XZ+
         T3JQ==
X-Received: by 10.194.202.137 with SMTP id ki9mr6166075wjc.16.1445372991626;
        Tue, 20 Oct 2015 13:29:51 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([95.13.215.164])
        by smtp.gmail.com with ESMTPSA id ka10sm5909987wjc.30.2015.10.20.13.29.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 13:29:51 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH v2] staging: netlogic: Do not use multiple blank lines.
Date: Tue, 20 Oct 2015 23:29:31 +0300
Message-Id: <1445372971-16675-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple blank lines. Problem found using checkpatch.pl
"CHECK: Please don't use multiple blank lines"

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
Changes since v1:
* added kernel part information
---
 drivers/staging/netlogic/platform_net.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index e914147..7806c2b 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -58,7 +58,6 @@
 #define MAX_NUM_XLS_GMAC	8
 #define MAX_NUM_XLR_GMAC	4
 
-
 static u32 xlr_gmac_offsets[] = {
 	NETLOGIC_IO_GMAC_0_OFFSET, NETLOGIC_IO_GMAC_1_OFFSET,
 	NETLOGIC_IO_GMAC_2_OFFSET, NETLOGIC_IO_GMAC_3_OFFSET,
-- 
1.9.1


