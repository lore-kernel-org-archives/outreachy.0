X-GM-THRID: 8956373106688
X-Received: by 10.236.207.68 with SMTP id m44mr64588871yho.25.1426683709113;
        Wed, 18 Mar 2015 06:01:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.74 with SMTP id a68ls554907qga.76.gmail; Wed, 18 Mar
 2015 06:01:48 -0700 (PDT)
X-Received: by 10.236.19.8 with SMTP id m8mr77564426yhm.53.1426683708964;
        Wed, 18 Mar 2015 06:01:48 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id l3si3110634pdo.0.2015.03.18.06.01.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 06:01:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id cy3so42128383pad.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 06:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=per2VzGGVMm9TLRCz1h59Xhrc9i/1Z08QXk7z2lS2nQ=;
        b=yP3TQsABjgEmiHZcebl7W39EKkgStj47puZOjvLPYsD0JEU7HmXj9eBk8ArJ0FlZ4n
         rRlsCY4SYOu1wqSuGB21nOQk0xasHbdhQjxKn3gIwi0BeO4y+BLb072i++k1RbTAWJkR
         YsqgfyrFwVFDBMipglaXJDodJNHBUsXcOVGjrAy2HCI4stIk8FdV5KKgko/gc/nRLjew
         9F4Hup93cLKt0CbISvtKIQ5WPI0XcoGADNLQMzPIES8E3iYkWWNBXHLvrgNOnVg97jW4
         cKyAs5JKHXQ68M8mLxwktOyXoxDHXCfgvmj2J51G6fvnBTCRGt0rejQvu1epsMYf2m8U
         kQNw==
X-Received: by 10.66.66.166 with SMTP id g6mr163946243pat.88.1426683708780;
        Wed, 18 Mar 2015 06:01:48 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id cz10sm27553757pdb.9.2015.03.18.06.01.46
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 06:01:47 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v3 2/5] Staging: rtl8192e: Use ether_addr_copy instead of memcpy
Date: Wed, 18 Mar 2015 18:31:40 +0530
Message-Id: <1426683700-9579-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <8aedbc9ac39f65a5d4193271a9e8fd6ff54e4fd2.1426681038.git.darshanapadmadas@gmail.com>
References: <8aedbc9ac39f65a5d4193271a9e8fd6ff54e4fd2.1426681038.git.darshanapadmadas@gmail.com>
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
Changes in v3:
    - Included structure layout of ev in commit message.

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


