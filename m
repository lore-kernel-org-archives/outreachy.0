X-GM-THRID: 8985735331840
X-Received: by 10.182.126.12 with SMTP id mu12mr81252747obb.13.1426686239137;
        Wed, 18 Mar 2015 06:43:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.205 with SMTP id y196ls451994iod.78.gmail; Wed, 18 Mar
 2015 06:43:58 -0700 (PDT)
X-Received: by 10.42.89.73 with SMTP id f9mr49728414icm.31.1426686238970;
        Wed, 18 Mar 2015 06:43:58 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id ri9si3124821pdb.1.2015.03.18.06.43.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 06:43:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbni2 with SMTP id ni2so43708240pdb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 06:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=WuynPBKeaZT/Z9WwdnX+5BS8s6r/ZBpc+JODMTtiT7w=;
        b=s2kbVF1J/fdxYhuRS0FIQ0TLIzpxee0Ie2ovv9D+oWCoX5AhjhFdFI7KDejJpXdJHE
         jIhkh5gztnDevP3d/LYWRhj/7C0LFZF3pErQmSAsb74DmfZJe2FozhCZgBgvWcSOAnah
         TVWCqgLu0LREjbWRxgWfz8cJ0uxSbMzHVQDSUCRse4JN2NE0BcHjnmzZb8USYYpXID0L
         xNEEeUdq8gVZQ9occQ07mdrndJfQ6sTZqnrL+AZxk2DXkwwewOz4A6K/Kx6gmKuBkunf
         ERF+QviwuqxxACTl35ShxkTCt4vVG3Ih/5xYmxoR+TPnjXPx0E1TLs1ern0MFp3XVWKi
         iJhA==
X-Received: by 10.66.154.17 with SMTP id vk17mr161113704pab.5.1426686238826;
        Wed, 18 Mar 2015 06:43:58 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id nq8sm15537667pdb.37.2015.03.18.06.43.56
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 06:43:57 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 4/5] Staging: rtl8192e: Use ether_addr_copy for aligned addresses
Date: Wed, 18 Mar 2015 19:13:22 +0530
Message-Id: <ff198249d01818ff39f7dda1acef5b83ef3b66a6.1426685762.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426685762.git.darshanapadmadas@gmail.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426685762.git.darshanapadmadas@gmail.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
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


