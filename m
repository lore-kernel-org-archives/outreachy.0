X-GM-THRID: 6340432633918390272
X-Received: by 10.129.77.87 with SMTP id a84mr2072960ywb.30.1476247011956;
        Tue, 11 Oct 2016 21:36:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.147 with SMTP id u19ls2854565ota.0.gmail; Tue, 11 Oct
 2016 21:36:51 -0700 (PDT)
X-Received: by 10.237.53.2 with SMTP id a2mr1947980qte.62.1476247011569;
        Tue, 11 Oct 2016 21:36:51 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id f133si1354991ita.1.2016.10.11.21.36.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 21:36:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id qn10so2700251pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 21:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IXNuGx+0ragUOAsEh+kXm7qHZwxxHNqhumaa/mfYbB8=;
        b=jG5IlFHcEzLw0xpjRMFfxm1/hVRlYyJ1Ztp3X4JAAgNjhzDVVraSzVTFysRIAZO6Bk
         TIvHeP7QwEIS3QFFCol0GMlC2T2cH3+cExI6loQr/8JQpFG8Gacqb9exHOJGm2iPPEfr
         TxJj3nM++d40Zt6Y4wmOm/bvZq1mS7nlI2IavEqzpjNRAsBWTIoW3N3/GPrw0wzlOfQA
         Z4k6Ycb/vbiS+YaKYZEi4rwRiF3caFpEeoo1SenevUSTxBNI+KE1udEzLTS4w7s+QtwF
         rgftmAzL+UzRCFD1DHJ41GVMjtKGraRp75LFYSxVPQMX8FjhMlxnJoiIiE178pPLbZiE
         MF3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IXNuGx+0ragUOAsEh+kXm7qHZwxxHNqhumaa/mfYbB8=;
        b=SzI/AoIFOVJdF0toxLzm2VmC9Jf/Gv9jSo0x/gM8aF8Ly4/JqAXzGGZyESHf0E2JgN
         C86kcWLinHpP7+VeH1Md8WisyM9SWD+wqfdGTIwYRKrkKCS3RMKIJ8J0n4jOTnuY7sJi
         ObPzt76FCtKUKqrkvcMpYNGPjrWrOqOJ0HS2US2NvKjMFBXs5RdTM/UbsPUDD1oO+Z/M
         W8+5/wdJlRDjPLmJcygcU1+kiZJfU6i8dgMGcwe6VKgW2xsfeG1Uf2smARB8n7icaB1C
         AA6x1490MugRTmDIp6zBUuB5rqG7UlVYYDGc6kDFrZWSqiZdcvx9Xj9p4dybbtz9Dmdv
         MDhw==
X-Gm-Message-State: AA6/9RnS/u4cJYHkhbgJdKVIAgD+DyqhiirpTu0ocE1nNJ7s9lwrvFY+N7VpHJIAt2eo9A==
X-Received: by 10.66.248.132 with SMTP id ym4mr12167054pac.182.1476247011131;
        Tue, 11 Oct 2016 21:36:51 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.237.178.166])
        by smtp.gmail.com with ESMTPSA id 136sm7909007pfu.87.2016.10.11.21.36.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Oct 2016 21:36:50 -0700 (PDT)
Date: Wed, 12 Oct 2016 10:06:46 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Cc: rvarsha016@gmail.com
Subject: [PATCH] staging: vt6655: Adding space around '*'
Message-ID: <20161012043646.GA3153@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes the checkpatch issue by adding space around '*'.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/vt6655/card.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index d7ddb6c..928c336 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -257,7 +257,7 @@ bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type)
 		BBbWriteEmbedded(priv, 0x88, 0x02);
 		bySlot = C_SLOT_LONG;
 		bySIFS = C_SIFS_BG;
-		byDIFS = C_SIFS_BG + 2*C_SLOT_LONG;
+		byDIFS = C_SIFS_BG + 2 * C_SLOT_LONG;
 		byCWMaxMin = 0xA5;
 	} else { /* PK_TYPE_11GA & PK_TYPE_11GB */
 		MACvSetBBType(priv->PortOffset, BB_TYPE_11G);
@@ -285,7 +285,7 @@ bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type)
 			byDIFS = C_SIFS_BG + 2 * C_SLOT_SHORT;
 		} else {
 			bySlot = C_SLOT_LONG;
-			byDIFS = C_SIFS_BG + 2*C_SLOT_LONG;
+			byDIFS = C_SIFS_BG + 2 * C_SLOT_LONG;
 		}
 
 		byCWMaxMin = 0xa4;
-- 
2.7.4


