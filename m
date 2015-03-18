X-GM-THRID: 8956373106688
X-Received: by 10.66.233.5 with SMTP id ts5mr57941873pac.27.1426682164437;
        Wed, 18 Mar 2015 05:36:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.6 with SMTP id p6ls605017qge.51.gmail; Wed, 18 Mar 2015
 05:36:04 -0700 (PDT)
X-Received: by 10.140.201.202 with SMTP id w193mr29608867qha.7.1426682164262;
        Wed, 18 Mar 2015 05:36:04 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id l3si3101320pdo.0.2015.03.18.05.36.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 05:36:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id cy3so41540370pad.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 05:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=jOuH/94Xj4RKQgc5L5CuCWi5NVAup/wZjTtQYx1sXpg=;
        b=Kvo48vFH9UM5u5ClPfOSEXj2iNHZcyeUYG6nx/ZkJp+pKmb8JKluwxtQJ8/fWe0+HY
         LA8ImLv/wnVsrfjPi5hQKoXRoiPgr7lvq+vkGH/KWT50y6PM51VGPVpsEYc3ax8Jw22n
         eSpEiyvfmniN+R9pPL9n/uT1b5vEj6ld4RVLHVa6WWCQ3Bqf1dNNZizXpNdUylGPzvTg
         Ak3asu/CEXjdNCoTJE/iAgrlt8jz2J53OArNHLM+bRgKeahlJjkghPLO5QZsq+3gYCoe
         /U3UxT6Wrfp02TCHIxZN254gWYZC/aVh3gjpWnKZgLGmurkm9PCwKhxugyP9nOykA1si
         yJ/Q==
X-Received: by 10.66.101.7 with SMTP id fc7mr128459685pab.26.1426682164116;
        Wed, 18 Mar 2015 05:36:04 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id v5sm7907986pdc.41.2015.03.18.05.36.02
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 05:36:03 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 2/5] Staging: rtl8192e: Use ether_addr_copy instead of memcpy
Date: Wed, 18 Mar 2015 18:05:58 +0530
Message-Id: <8aedbc9ac39f65a5d4193271a9e8fd6ff54e4fd2.1426681038.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <505785ea794f8d40840c64751e8156bdd857b9cc.1426533157.git.darshanapadmadas@gmail.com>
References: <505785ea794f8d40840c64751e8156bdd857b9cc.1426533157.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426681038.git.darshanapadmadas@gmail.com>
References: <cover.1426681038.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch replaces use of memcpy with ether_addr_copy since
the addresses for struct of hdr11 are aligned as shown by Pahole
and hdr is of type u8.
The header file linux/etherdevice.h is also included where 
ether_addr_copy is defined.

struct rtllib_hdr_4addr {
        __le16                     frame_ctl;            /*     0     2 */
        __le16                     duration_id;          /*     2     2 */
        u8                         addr1[6];             /*     4     6 */
        u8                         addr2[6];             /*    10     6 */
        u8                         addr3[6];             /*    16     6 */
        __le16                     seq_ctl;              /*    22     2 */
        u8                         addr4[6];             /*    24     6 */
        u8                         payload[0];           /*    30     0 */

        /* size: 30, cachelines: 1, members: 8 */
        /* last cacheline: 30 bytes */
};

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
Changes in v2:
    - Included header file where ether_addr_copy is defined.
    - Made commit message more clear.
    
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
index 78db2b6..949fc8f 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
@@ -21,7 +21,7 @@
 #include <linux/crypto.h>
 #include <linux/scatterlist.h>
 #include <linux/crc32.h>
-
+#include <linux/etherdevice.h>
 #include "rtllib.h"
 
 struct rtllib_tkip_data {
@@ -525,19 +525,19 @@ static void michael_mic_hdr(struct sk_buff *skb, u8 *hdr)
 	switch (le16_to_cpu(hdr11->frame_ctl) &
 		(RTLLIB_FCTL_FROMDS | RTLLIB_FCTL_TODS)) {
 	case RTLLIB_FCTL_TODS:
-		memcpy(hdr, hdr11->addr3, ETH_ALEN); /* DA */
+		ether_addr_copy(hdr, hdr11->addr3); /* DA */
 		memcpy(hdr + ETH_ALEN, hdr11->addr2, ETH_ALEN); /* SA */
 		break;
 	case RTLLIB_FCTL_FROMDS:
-		memcpy(hdr, hdr11->addr1, ETH_ALEN); /* DA */
+		ether_addr_copy(hdr, hdr11->addr1); /* DA */
 		memcpy(hdr + ETH_ALEN, hdr11->addr3, ETH_ALEN); /* SA */
 		break;
 	case RTLLIB_FCTL_FROMDS | RTLLIB_FCTL_TODS:
-		memcpy(hdr, hdr11->addr3, ETH_ALEN); /* DA */
+		ether_addr_copy(hdr, hdr11->addr3); /* DA */
 		memcpy(hdr + ETH_ALEN, hdr11->addr4, ETH_ALEN); /* SA */
 		break;
 	case 0:
-		memcpy(hdr, hdr11->addr1, ETH_ALEN); /* DA */
+		ether_addr_copy(hdr, hdr11->addr1); /* DA */
 		memcpy(hdr + ETH_ALEN, hdr11->addr2, ETH_ALEN); /* SA */
 		break;
 	}
@@ -591,7 +591,7 @@ static void rtllib_michael_mic_failure(struct net_device *dev,
 	else
 		ev.flags |= IW_MICFAILURE_PAIRWISE;
 	ev.src_addr.sa_family = ARPHRD_ETHER;
-	memcpy(ev.src_addr.sa_data, hdr->addr2, ETH_ALEN);
+	ether_addr_copy(ev.src_addr.sa_data, hdr->addr2);
 	memset(&wrqu, 0, sizeof(wrqu));
 	wrqu.data.length = sizeof(ev);
 	wireless_send_event(dev, IWEVMICHAELMICFAILURE, &wrqu, (char *) &ev);
-- 
1.9.1


