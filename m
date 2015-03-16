X-GM-THRID: 8658120343552
X-Received: by 10.50.26.40 with SMTP id i8mr67830496igg.8.1426533533847;
        Mon, 16 Mar 2015 12:18:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.72 with SMTP id j69ls1783693iod.67.gmail; Mon, 16 Mar
 2015 12:18:53 -0700 (PDT)
X-Received: by 10.42.76.145 with SMTP id e17mr60619023ick.34.1426533533679;
        Mon, 16 Mar 2015 12:18:53 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id l3si2116024pdo.0.2015.03.16.12.18.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 12:18:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id cy3so73190878pad.3
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 12:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=WwWjVkTuVg1MZrOhHvU4VTCrlVk94XhwFALChUeWJ60=;
        b=aSoArIqIijhBUXhzbuZYWwPZIUdbI5XW2LrWYI67x/wZb2FwL5MQS01DaIHZgW2dE1
         qAqJZiKpgR/DdMKsTXPqJ4QlZE5eQvosK1dOMg8UydD9/T13xtHaS7MBJKncbQOZgs6y
         Jbzb9jIM5ggJGrLr7q7z3VMpRwCNeVaZZffQnjQvih/uNZhomFfEdEtuUgKADpR458Zz
         XYGPzk+wq2uLXjS95wbSdcVmEIEWiAwlHaZDh/mB0W06KUSoUagipZGJbA1wpR3A1gZb
         f8IRfBsUxKoqBSxZeUsbt+OMpTJumwx6RFBMD6Pm6uYblc9FeMpUxB99RxWErvK88Ivn
         aXYA==
X-Received: by 10.66.165.105 with SMTP id yx9mr139256466pab.145.1426533533588;
        Mon, 16 Mar 2015 12:18:53 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([115.242.162.199])
        by mx.google.com with ESMTPSA id b12sm18556163pdl.62.2015.03.16.12.18.51
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 12:18:52 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 4/5] Staging: rtl8192e: Use ether_addr_copy for aligned addresses
Date: Tue, 17 Mar 2015 00:48:14 +0530
Message-Id: <b0175cac164836c2cf22b903623adbce97fa83d6.1426533157.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch replaces memcpy with ether_addr_copy since structures
are aligned as shown by pahole:
struct rtllib_hdr_3addrqos {
	__le16                     frame_ctl;            /*     0     2 */
	__le16                     duration_id;          /*     2     2 */
	u8                         addr1[6];             /*     4     6 */
	u8                         addr2[6];             /*    10     6 */
	u8                         addr3[6];             /*    16     6 */
	__le16                     seq_ctl;              /*    22     2 */
	__le16                     qos_ctl;              /*    24     2 */
	u8                         payload[0];           /*    26     0 */

	/* size: 26, cachelines: 1, members: 8 */
	/* last cacheline: 26 bytes */
};

This eliminates the following warning reported by checkpatch:
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2)

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_tx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index 4f68ffe..de74e0e 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -688,12 +688,12 @@ int rtllib_xmit_inter(struct sk_buff *skb, struct net_device *dev)
 				memcpy(&header.addr3,
 				       ieee->current_network.bssid, ETH_ALEN);
 			else
-				memcpy(&header.addr3, &dest, ETH_ALEN);
+				ether_addr_copy(&header.addr3, &dest);
 		} else if (ieee->iw_mode == IW_MODE_ADHOC) {
 			/* not From/To DS: Addr1 = DA, Addr2 = SA,
 			Addr3 = BSSID */
-			memcpy(&header.addr1, dest, ETH_ALEN);
-			memcpy(&header.addr2, src, ETH_ALEN);
+			ether_addr_copy(&header.addr1, dest);
+			ether_addr_copy(&header.addr2, src);
 			memcpy(&header.addr3, ieee->current_network.bssid,
 			       ETH_ALEN);
 		}
-- 
1.9.1


