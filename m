X-GM-THRID: 8658120343552
X-Received: by 10.140.146.5 with SMTP id 5mr55350878qhs.4.1426533512889;
        Mon, 16 Mar 2015 12:18:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.99 with SMTP id pj3ls1059354igb.5.gmail; Mon, 16 Mar
 2015 12:18:32 -0700 (PDT)
X-Received: by 10.50.43.170 with SMTP id x10mr12802857igl.2.1426533512666;
        Mon, 16 Mar 2015 12:18:32 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id gu4si2104859pac.1.2015.03.16.12.18.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 12:18:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x231.google.com with SMTP id op1so66307717pdb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 12:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=txF4KgoEdw9EF5Q+6cY6+qFl0j0QhnuJrQPDUv8Hogw=;
        b=A7UPo15f8xd/U2HCmLsT/ZKBm8q1C23C16xwKLLnVLexNu1jCEVTpwLk2XZsXHxqQ6
         9TSGIrPskHUtajlJ33t0mGDnOHjwwVATyTmj8ZHpP4kIo50iOs0wSIvJZEuKOTU7gSaT
         qGHu2ka6RCHuFD/MKrF8/yMOMUsjaMiufsWNYV9nWGLh9exGuqE1Lgia1FzyPmcfopwS
         ZHhoFXZxkC/WyHeFWqbo2rF8vSdEPZc1abcmeJ5MG3NkwVm4n7GLIhtG2FcmK9xX/k9k
         mtVCfJ6u4kUhhLJIvCatl+fuEClQ1gYuEv6kP30EmKM4hwTTC7jcyrShTXWFtudGEN3r
         /VjA==
X-Received: by 10.70.100.39 with SMTP id ev7mr123164935pdb.29.1426533512545;
        Mon, 16 Mar 2015 12:18:32 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([115.242.162.199])
        by mx.google.com with ESMTPSA id kd9sm18624076pab.0.2015.03.16.12.18.30
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 12:18:31 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 1/5] Staging: rtl8192e: Replace memcpy with ether_addr_copy
Date: Tue, 17 Mar 2015 00:48:11 +0530
Message-Id: <07d5dca03ac0a1d777e133546e2f914e36efeb3f.1426533157.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
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
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 0415e02..9bab409 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -103,7 +103,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 	BAReq = (struct rtllib_hdr_3addr *)skb_put(skb,
 		 sizeof(struct rtllib_hdr_3addr));
 
-	memcpy(BAReq->addr1, Dst, ETH_ALEN);
+	ether_addr_copy(BAReq->addr1, Dst);
 	memcpy(BAReq->addr2, ieee->dev->dev_addr, ETH_ALEN);
 
 	memcpy(BAReq->addr3, ieee->current_network.bssid, ETH_ALEN);
@@ -168,7 +168,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
 	Delba = (struct rtllib_hdr_3addr *) skb_put(skb,
 		 sizeof(struct rtllib_hdr_3addr));
 
-	memcpy(Delba->addr1, dst, ETH_ALEN);
+	ether_addr_copy(Delba->addr1, dst);
 	memcpy(Delba->addr2, ieee->dev->dev_addr, ETH_ALEN);
 	memcpy(Delba->addr3, ieee->current_network.bssid, ETH_ALEN);
 	Delba->frame_ctl = cpu_to_le16(RTLLIB_STYPE_MANAGE_ACT);
-- 
1.9.1


