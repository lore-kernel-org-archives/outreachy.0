X-GM-THRID: 8985735331840
X-Received: by 10.52.122.75 with SMTP id lq11mr75172346vdb.4.1426686228937;
        Wed, 18 Mar 2015 06:43:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.164 with SMTP id c33ls701310qgf.66.gmail; Wed, 18 Mar
 2015 06:43:48 -0700 (PDT)
X-Received: by 10.236.41.73 with SMTP id g49mr83236965yhb.57.1426686228736;
        Wed, 18 Mar 2015 06:43:48 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id l3si3130214pdo.0.2015.03.18.06.43.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 06:43:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id op1so43550512pdb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 06:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=a0vxIg6uEUne/gCHibbZKM6M2pOQKnqqHANt5y+bSrY=;
        b=vaj/lYMMI97C4lgLYXN4ZTtgccDok2rYV61gPCMJNmpSG+15MhCJ3n5ZQjO6UtZMVY
         tR4Lgm2B/XZnvVQPDAeu7OJWW2IbtBXKIUCShsnJy23LZVwGIoVHji7tZv6hhIWknFp7
         8whB+4uJwdYz+Q/KQlYc6dNaiOdMoDxNYKzydpA+vsG5EEikIwly/p0ppC4iPsOx8JuC
         VpRN0Z7tAD7fI3PN0XNqc5JB9RNClW/rn3YCBvcEsNUohGh1/+kN2kOl3HyTReJg44Zm
         u6g6W4NNP8/haxlFo1Olj/h7DpOw8iTIuQw8KovWDbRkMLNcrZK1e63qxJbfxGwlB4hT
         Xiwg==
X-Received: by 10.70.18.68 with SMTP id u4mr129413397pdd.38.1426686228582;
        Wed, 18 Mar 2015 06:43:48 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([111.93.99.180])
        by mx.google.com with ESMTPSA id dq4sm27695173pdb.96.2015.03.18.06.43.46
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 06:43:47 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 2/5] Staging: rtl8192e: Use ether_addr_copy instead of memcpy
Date: Wed, 18 Mar 2015 19:13:20 +0530
Message-Id: <45dc7bf7f24cf72e6cbb7516c979c98bd65110a4.1426685762.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426685762.git.darshanapadmadas@gmail.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426685762.git.darshanapadmadas@gmail.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch replaces use of memcpy with ether_addr_copy since
the addresses for struct of hdr11 and ev are aligned as shown by Pahole
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
struct iw_michaelmicfailure {
	__u32                      flags;                /*     0     4 */
	struct sockaddr            src_addr;             /*     4    16 */
	__u8                       tsc[8];               /*    20     8 */

	/* size: 28, cachelines: 1, members: 3 */
	/* last cacheline: 28 bytes */
};

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
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


