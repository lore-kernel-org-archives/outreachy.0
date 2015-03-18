X-GM-THRID: 8985735331840
X-Received: by 10.236.27.76 with SMTP id d52mr46275546yha.52.1426686224456;
        Wed, 18 Mar 2015 06:43:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.230 with SMTP id o6ls486515igv.30.gmail; Wed, 18 Mar
 2015 06:43:44 -0700 (PDT)
X-Received: by 10.42.153.135 with SMTP id m7mr69776797icw.4.1426686224247;
        Wed, 18 Mar 2015 06:43:44 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id gu4si3125314pac.1.2015.03.18.06.43.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 06:43:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22e.google.com with SMTP id ni2so43668621pdb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 06:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=1A1fbuyERHVTS9Awb2ODmMcJCXd+IFodHgK+wIKA9eI=;
        b=bPP0HmkFiBxQfFwXVJCBkNj3vhD/nRmEcnVq0zZJxsiyRTtIydcvu8n3PJNi8OxhHM
         7oRkFP3x5DTCdoT7yUpSQ5ewmyOlX9ai2iVfKQWbZ8g3hnIvJge0xqGGWDOU3fv9D9l2
         hJT+ngXpEgyTLbNaz2kiPE7N2WJ8o5vVZIqBGzqBoyI0BbyhJmGCE6MB0muT8VpU/A6n
         Qtj1RSWr9/ayeh4VaD9xCWVhY574PDthdJ1x7HliYf0K66UQH0I2E6HXulIjHsbFXuLh
         ngtL+X9kHUNf5Raq7FwXI47p9bmRPyl4wOrmw4Map3pymtdPKS8mPtfLfYbRuc/E5KjS
         VSbA==
X-Received: by 10.70.35.72 with SMTP id f8mr19332140pdj.88.1426686224139;
        Wed, 18 Mar 2015 06:43:44 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([111.93.99.180])
        by mx.google.com with ESMTPSA id ms7sm27727302pdb.8.2015.03.18.06.43.42
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 06:43:43 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 1/5] Staging: rtl8192e: Replace memcpy with ether_addr_copy
Date: Wed, 18 Mar 2015 19:13:19 +0530
Message-Id: <9eab4a1c89f930dac0710fda702a6de414172237.1426685762.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426685762.git.darshanapadmadas@gmail.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426685762.git.darshanapadmadas@gmail.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch fixes the following warning found by checkpatch.pl:
Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2

Also included header file linux/etherdevice.h that defines 
ether_addr_copy.

Pahole showed that the structure for BAReq and Delba is aligned:
struct rtllib_hdr_3addr {
        __le16                     frame_ctl;            /*     0     2 */
        __le16                     duration_id;          /*     2     2 */
        u8                         addr1[6];             /*     4     6 */
        u8                         addr2[6];             /*    10     6 */
        u8                         addr3[6];             /*    16     6 */
        __le16                     seq_ctl;              /*    22     2 */
        u8                         payload[0];           /*    24     0 */

        /* size: 24, cachelines: 1, members: 7 */
        /* last cacheline: 24 bytes */
};

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 0415e02..4031462 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -18,6 +18,7 @@
 ******************************************************************************/
 #include <asm/byteorder.h>
 #include <asm/unaligned.h>
+#include <linux/etherdevice.h>
 #include "rtllib.h"
 #include "rtl819x_BA.h"
 
@@ -103,7 +104,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 	BAReq = (struct rtllib_hdr_3addr *)skb_put(skb,
 		 sizeof(struct rtllib_hdr_3addr));
 
-	memcpy(BAReq->addr1, Dst, ETH_ALEN);
+	ether_addr_copy(BAReq->addr1, Dst);
 	memcpy(BAReq->addr2, ieee->dev->dev_addr, ETH_ALEN);
 
 	memcpy(BAReq->addr3, ieee->current_network.bssid, ETH_ALEN);
@@ -168,7 +169,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
 	Delba = (struct rtllib_hdr_3addr *) skb_put(skb,
 		 sizeof(struct rtllib_hdr_3addr));
 
-	memcpy(Delba->addr1, dst, ETH_ALEN);
+	ether_addr_copy(Delba->addr1, dst);
 	memcpy(Delba->addr2, ieee->dev->dev_addr, ETH_ALEN);
 	memcpy(Delba->addr3, ieee->current_network.bssid, ETH_ALEN);
 	Delba->frame_ctl = cpu_to_le16(RTLLIB_STYPE_MANAGE_ACT);
-- 
1.9.1


