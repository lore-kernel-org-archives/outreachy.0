X-GM-THRID: 8985735331840
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7da8cb61ff6c25cf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.1.200 with SMTP id 48mr22358855yhd.41.1427471271620;
        Fri, 27 Mar 2015 08:47:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.9 with SMTP id a9ls1073616ioe.74.gmail; Fri, 27 Mar
 2015 08:47:51 -0700 (PDT)
X-Received: by 10.42.209.135 with SMTP id gg7mr44064832icb.9.1427471271434;
        Fri, 27 Mar 2015 08:47:51 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id oc12si261887pdb.1.2015.03.27.08.47.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 08:47:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id xg6so99195448pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2015 08:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=WuynPBKeaZT/Z9WwdnX+5BS8s6r/ZBpc+JODMTtiT7w=;
        b=DtVCKseyaILA/P3qOy3Z5yKvXxmuAGDCjcKzUW8NQDmMRkO5ONRViYrpCykWKv/LCb
         YzP97n4/o8LbV8TS7Wgld/LalgNXEJaGOBeKLjNs4OErhGB3e+f34jfyvpojd7oOXAhF
         G8xge8nVYDdw7i/iH09dL0mWYPVGMxT2J2+VgDcE86sbzqmcknrKNpBlyUBU7Wiz/9Ff
         FyvSZ3IkAnNrGJz35L/hG6MoX5sDj0fKhoBMK/2j04jW6E2ODRJOLxpq1AWSx+GjuOr9
         Pd5xShRbBrG6KFSOT+WOd1o3lFsJImFNHu5aFw9qdjhncwGJgu9aOySi1HubuLZIT5op
         s/Lg==
X-Received: by 10.66.193.72 with SMTP id hm8mr36494892pac.24.1427471271344;
        Fri, 27 Mar 2015 08:47:51 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([101.63.83.78])
        by mx.google.com with ESMTPSA id ob7sm2559899pdb.13.2015.03.27.08.47.48
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 27 Mar 2015 08:47:50 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v3 4/4] Staging: rtl8192e: Use ether_addr_copy for aligned addresses
Date: Fri, 27 Mar 2015 21:17:07 +0530
Message-Id: <1427471227-17259-5-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427471227-17259-1-git-send-email-darshanapadmadas@gmail.com>
References: <1427471227-17259-1-git-send-email-darshanapadmadas@gmail.com>
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


