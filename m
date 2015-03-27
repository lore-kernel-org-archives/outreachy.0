X-GM-THRID: 8985735331840
X-Received: by 10.42.70.141 with SMTP id f13mr20339958icj.15.1427471246434;
        Fri, 27 Mar 2015 08:47:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.97 with SMTP id d88ls1326142qga.26.gmail; Fri, 27 Mar
 2015 08:47:26 -0700 (PDT)
X-Received: by 10.140.233.84 with SMTP id e81mr22367787qhc.2.1427471246196;
        Fri, 27 Mar 2015 08:47:26 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id iw3si262275pbd.1.2015.03.27.08.47.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 08:47:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id cy3so99081171pad.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2015 08:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=mmw9TApoyWxTMUctVAzyBqaQ7iMoWmibs0qoGamyhAk=;
        b=Ck73gX1+bDsaG0Htb3X9msud3MvebqhHWAOORKcP5AjRFNn9WaC2slWes6XWsD9Hr6
         aI73ySYJeZyhyzkyGEM+9a455c+kvAgKDJnXWEoy8+6LPVmItQbr6Kp7wmzmGTFLXu2a
         pqfxHmbsilYrknLP9NOR9WhdpUSAgSG0OnZeJlhN+PtS9r16xrw/+DW0AHHZQGj10nsr
         7kDNcP64XW6gnd79ArF2iRHorgsIVVsDHzrh8JO7xuR4NTwcHwOLzWwCTO8VdGy/d5Dc
         uZJiG57Q2r1OpuTVwSsT27ua3wE18y8BDdj/yj8Xc2oZtx1t6o2TAMXnHPBEOQAYFKZc
         shYQ==
X-Received: by 10.68.90.132 with SMTP id bw4mr36087620pbb.102.1427471246080;
        Fri, 27 Mar 2015 08:47:26 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([101.63.83.78])
        by mx.google.com with ESMTPSA id k9sm2544370pbq.46.2015.03.27.08.47.23
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 27 Mar 2015 08:47:24 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v3 1/4] Staging: rtl8192e: Replace memcpy with ether_addr_copy
Date: Fri, 27 Mar 2015 21:17:04 +0530
Message-Id: <1427471227-17259-2-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427471227-17259-1-git-send-email-darshanapadmadas@gmail.com>
References: <1427471227-17259-1-git-send-email-darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch fixes the following warning found by checkpatch.pl:
Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2

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


