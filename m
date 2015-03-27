X-GM-THRID: 8985735331840
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7da8cb61ff6c25cf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.65.37 with SMTP id u5mr23337223obs.27.1427471255244;
        Fri, 27 Mar 2015 08:47:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.18 with SMTP id f18ls1129051iod.39.gmail; Fri, 27 Mar
 2015 08:47:35 -0700 (PDT)
X-Received: by 10.50.87.97 with SMTP id w1mr2357010igz.1.1427471255040;
        Fri, 27 Mar 2015 08:47:35 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id oc12si261883pdb.1.2015.03.27.08.47.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 08:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22e.google.com with SMTP id ni2so100075041pdb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2015 08:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=a0vxIg6uEUne/gCHibbZKM6M2pOQKnqqHANt5y+bSrY=;
        b=ATU1pSLk2JfiAzK+YKbyeYZi/fqGBXtEcArJ1wTlH76vsIpR7mpsM55d0qbh2JNR20
         2+KoDGpQEE9zvGwTiAoWAz/yzmDJMxPMk+ffiXhpi487kbqJXb3MPTSB+Z11IaD6oraX
         AA7zVFyxvLpyYfRfxaZc3cvo8b6/mZE4LKnJMrK/hbOgvPmKeUnjN2F7wVjoIm4Tqz1J
         0u/oM4yrWsUTSrAwtf5/oN+ZcSacfyHZ0TgBaE7pCGE/xrcLc8MlK4nWtBhXVtftbKrI
         43CluIMxXeRRMau6olkxaEJOkZeVvWMw9AHjm0ahU3orM3+g0xP81sAVxEHomeZqX7hO
         9F8w==
X-Received: by 10.66.140.39 with SMTP id rd7mr35923767pab.25.1427471254946;
        Fri, 27 Mar 2015 08:47:34 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([101.63.83.78])
        by mx.google.com with ESMTPSA id fk4sm2540893pab.48.2015.03.27.08.47.31
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 27 Mar 2015 08:47:33 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v3 2/4] Staging: rtl8192e: Use ether_addr_copy instead of memcpy
Date: Fri, 27 Mar 2015 21:17:05 +0530
Message-Id: <1427471227-17259-3-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427471227-17259-1-git-send-email-darshanapadmadas@gmail.com>
References: <1427471227-17259-1-git-send-email-darshanapadmadas@gmail.com>
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


