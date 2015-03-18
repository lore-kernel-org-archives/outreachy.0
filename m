X-GM-THRID: 8956373106688
X-Received: by 10.66.161.36 with SMTP id xp4mr74517466pab.36.1426682085840;
        Wed, 18 Mar 2015 05:34:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.134 with SMTP id j6ls586977qgf.74.gmail; Wed, 18 Mar
 2015 05:34:45 -0700 (PDT)
X-Received: by 10.236.53.10 with SMTP id f10mr74128355yhc.17.1426682085644;
        Wed, 18 Mar 2015 05:34:45 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x22d.google.com (mail-pd0-x22d.google.com. [2607:f8b0:400e:c02::22d])
        by gmr-mx.google.com with ESMTPS id l3si3100897pdo.0.2015.03.18.05.34.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 05:34:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) client-ip=2607:f8b0:400e:c02::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbni2 with SMTP id ni2so42110499pdb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 05:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=QyFBkl2Z7dAxGTqAkv7uj+vlSCcwEqaKiHq2ffzp+go=;
        b=mMgdLdsP403t4gkTjrEAG93tmeYvGw5mprXqMjMTIcGJTW4i38H9GJqHLJ/z86oPo1
         uf640KYDCa/IOAPU3Z4ZtWfPGZgmX2c7kNfoteR8v0er6hzc4YYdvC2qxUxmx8/QE81w
         yyLH9C+Agk8XbH/oq88GegBrjJ27Ur9rxP+eFTLouCNAyM0zfxGs6k39GraxOZNIBdCd
         TOA4edVeoXsFQUsMOm9Cl4jsE1aDSDET3EL2gFfYFxN3lSUJYNN+mxMDxtTRayJw27K8
         VWvsN2RaCl37Vdq0rJBi/yzDDf8ILxksEIT9wzfLkpODna8XG6c2ruNTl12B6ACq2FfD
         AbyQ==
X-Received: by 10.66.136.48 with SMTP id px16mr126155212pab.89.1426682085453;
        Wed, 18 Mar 2015 05:34:45 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id c9sm27433663pdo.13.2015.03.18.05.34.43
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 05:34:44 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 1/5] Staging: rtl8192e: Replace memcpy with ether_addr_copy
Date: Wed, 18 Mar 2015 18:04:39 +0530
Message-Id: <9eab4a1c89f930dac0710fda702a6de414172237.1426681038.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <07d5dca03ac0a1d777e133546e2f914e36efeb3f.1426533157.git.darshanapadmadas@gmail.com>
References: <07d5dca03ac0a1d777e133546e2f914e36efeb3f.1426533157.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426681038.git.darshanapadmadas@gmail.com>
References: <cover.1426681038.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch fixes the following warning found by checkpatch.pl:
Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2

Also included the header file linux/etherdevice.h where ether_addr_copy has 
been defined.
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
Changes in v2:
    - Included header file where ether_addr_copy is defined.
    - Made the commit message more clear.

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


