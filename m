X-GM-THRID: 8658120343552
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2a5fd0519661ea9d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.133.69 with SMTP id pa5mr63635885obb.32.1426533520039;
        Mon, 16 Mar 2015 12:18:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.42 with SMTP id f10ls1099531igq.14.canary; Mon, 16 Mar
 2015 12:18:39 -0700 (PDT)
X-Received: by 10.42.99.140 with SMTP id w12mr31632742icn.12.1426533519841;
        Mon, 16 Mar 2015 12:18:39 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id l3si2116026pdo.0.2015.03.16.12.18.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 12:18:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id we9so73204272pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 12:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=0V9D9Zfsxmk55kanwpqCQw4U/kGr9rwVFDVZxApFI9Q=;
        b=frg4QQ/18mpzBzdTF/tmxKLoWvNXAkjkyz9La5FVwZsuZRILesX/AmL/aHIbuQkmp1
         LyNXxMeCBbkdhOdLTMNOmkWOYsNGLQtnF7VODO7sJBE7cDVyKTO3PD45quSLEDFL/Il7
         YIOiQYfggNcFI09A8znI5OTimXnvR0a2j0ZRUb70J/wqwSzI/8iEdWlIR+HTtzBCASi1
         IFqYzE42KQt0tJUy+Q7vVsfYqrgNMCAEJsv88/ht0eiG5wdHz0Rj5LFEIoNzwkEUwz9h
         5s6h2UBxZGt/BDt0o4Vkqu7FTAWfJk6vApqJru4hxizKgtr4Tr30FIUhnP8FYdJ+fR9+
         NSMA==
X-Received: by 10.70.28.130 with SMTP id b2mr142338513pdh.48.1426533519702;
        Mon, 16 Mar 2015 12:18:39 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([115.242.162.199])
        by mx.google.com with ESMTPSA id or3sm18571506pdb.15.2015.03.16.12.18.37
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 12:18:38 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 2/5] Staging: rtl8192e: Use ether_addr_copy instead of memcpy
Date: Tue, 17 Mar 2015 00:48:12 +0530
Message-Id: <505785ea794f8d40840c64751e8156bdd857b9cc.1426533157.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch replaces use of memcpy with ether_addr_copy since
the addresses for struct of hdr11 are aligned as shown by Pahole
and hdr is of type u8.

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

The following checkpatch warning is eliminated:
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2)

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
index 78db2b6..68a7fa6 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
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


