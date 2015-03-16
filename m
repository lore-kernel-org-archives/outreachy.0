X-GM-THRID: 8658120343552
X-Received: by 10.182.22.138 with SMTP id d10mr62376873obf.37.1426533527205;
        Mon, 16 Mar 2015 12:18:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.233 with SMTP id 102ls1993279iom.25.gmail; Mon, 16 Mar
 2015 12:18:47 -0700 (PDT)
X-Received: by 10.66.124.198 with SMTP id mk6mr62980311pab.22.1426533526972;
        Mon, 16 Mar 2015 12:18:46 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x22b.google.com (mail-pd0-x22b.google.com. [2607:f8b0:400e:c02::22b])
        by gmr-mx.google.com with ESMTPS id ri9si2103849pdb.1.2015.03.16.12.18.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 12:18:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) client-ip=2607:f8b0:400e:c02::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22b.google.com with SMTP id cz9so66315122pdb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 12:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=H0rrw6nIPH2TyzFNDzC2CWeDmhua2HVKku4wh+QOL3E=;
        b=LH0xK0tmPYu3nWJJjM2cfU0cgVD79J5LlgNjo1/KARZO0fQxgXw4pfeUQN7Ee/imHX
         86niHJhdBIHggXCL917qiJHtPJ9YdbtnmlxFEWPelI4TWcNv+25f8qxfXq7dGzxqIUVQ
         zzL8hovJ0oecUewMzmoBsTpw6FablqJctdx7m5T0zFtIxyzDotMVqNW9vuCv4yoyWmN2
         GZykyfwAoEL+vpSooM5nbDYlra3ZaLA46CRt3RLad/eZfo9EpXvmmD2+0lmiWfNENqHC
         FCVXiw4LqT6ajbbasIXGagLQvf7aVpRZC2HSHaLZ+DIvM/79rpMb1YgQvi5uiUX/rBvy
         74Dg==
X-Received: by 10.70.36.48 with SMTP id n16mr20088565pdj.82.1426533526878;
        Mon, 16 Mar 2015 12:18:46 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([115.242.162.199])
        by mx.google.com with ESMTPSA id g3sm18564216pdg.39.2015.03.16.12.18.44
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 12:18:45 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 3/5] Staging: rtl8192e: Use ether_addr_copy replacing memcpy
Date: Tue, 17 Mar 2015 00:48:13 +0530
Message-Id: <7b41c549baa17e4dd419d3676f517979a717f212.1426533157.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch uses ether_addr_copy instead of memcpy since
the structures of beacon_buf, assoc, auth, a, header
are aligned as shown by Pahole:

struct rtllib_probe_response {
	struct rtllib_hdr_3addr    header;               /*     0    24 */
	u32                        time_stamp[2];        /*    24     8 */
	__le16                     beacon_interval;      /*    32     2 */
	__le16                     capability;           /*    34     2 */
	struct rtllib_info_element info_element[0];      /*    36     0 */

	/* size: 36, cachelines: 1, members: 5 */
	/* last cacheline: 36 bytes */
};
struct rtllib_assoc_response_frame {
	struct rtllib_hdr_3addr    header;               /*     0    24 */
	__le16                     capability;           /*    24     2 */
	__le16                     status;               /*    26     2 */
	__le16                     aid;                  /*    28     2 */
	struct rtllib_info_element info_element[0];      /*    30     0 */

	/* size: 30, cachelines: 1, members: 5 */
	/* last cacheline: 30 bytes */
};
struct rtllib_authentication {
	struct rtllib_hdr_3addr    header;               /*     0    24 */
	__le16                     algorithm;            /*    24     2 */
	__le16                     transaction;          /*    26     2 */
	__le16                     status;               /*    28     2 */
	struct rtllib_info_element info_element[0];      /*    30     0 */

	/* size: 30, cachelines: 1, members: 5 */
	/* last cacheline: 30 bytes */
};
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

this eliminates the following warning found by checkpatch.pl:
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2)

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_softmac.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 16aef7c..d2ea955 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -911,7 +911,7 @@ static struct sk_buff *rtllib_probe_resp(struct rtllib_device *ieee, u8 *dest)
 
 	beacon_buf = (struct rtllib_probe_response *) skb_put(skb,
 		     (beacon_size - ieee->tx_headroom));
-	memcpy(beacon_buf->header.addr1, dest, ETH_ALEN);
+	ether_addr_copy(beacon_buf->header.addr1, dest);
 	memcpy(beacon_buf->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
 	memcpy(beacon_buf->header.addr3, ieee->current_network.bssid, ETH_ALEN);
 
@@ -1008,7 +1008,7 @@ static struct sk_buff *rtllib_assoc_resp(struct rtllib_device *ieee, u8 *dest)
 		skb_put(skb, sizeof(struct rtllib_assoc_response_frame));
 
 	assoc->header.frame_ctl = cpu_to_le16(RTLLIB_STYPE_ASSOC_RESP);
-	memcpy(assoc->header.addr1, dest, ETH_ALEN);
+	ether_addr_copy(assoc->header.addr1, dest);
 	memcpy(assoc->header.addr3, ieee->dev->dev_addr, ETH_ALEN);
 	memcpy(assoc->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
 	assoc->capability = cpu_to_le16(ieee->iw_mode == IW_MODE_MASTER ?
@@ -1067,7 +1067,7 @@ static struct sk_buff *rtllib_auth_resp(struct rtllib_device *ieee, int status,
 
 	memcpy(auth->header.addr3, ieee->dev->dev_addr, ETH_ALEN);
 	memcpy(auth->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
-	memcpy(auth->header.addr1, dest, ETH_ALEN);
+	ether_addr_copy(auth->header.addr1, dest);
 	auth->header.frame_ctl = cpu_to_le16(RTLLIB_STYPE_AUTH);
 	return skb;
 
@@ -1831,7 +1831,7 @@ static int auth_rq_parse(struct sk_buff *skb, u8 *dest)
 	}
 	a = (struct rtllib_authentication *) skb->data;
 
-	memcpy(dest, a->header.addr2, ETH_ALEN);
+	ether_addr_copy(dest, a->header.addr2);
 
 	if (le16_to_cpu(a->algorithm) != WLAN_AUTH_OPEN)
 		return  WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG;
@@ -1859,7 +1859,7 @@ static short probe_rq_parse(struct rtllib_device *ieee, struct sk_buff *skb,
 	if (bssid_match)
 		return -1;
 
-	memcpy(src, header->addr2, ETH_ALEN);
+	ether_addr_copy(src, header->addr2);
 
 	skbend = (u8 *)skb->data + skb->len;
 
@@ -1898,7 +1898,7 @@ static int assoc_rq_parse(struct sk_buff *skb, u8 *dest)
 
 	a = (struct rtllib_assoc_request_frame *) skb->data;
 
-	memcpy(dest, a->header.addr2, ETH_ALEN);
+	ether_addr_copy(dest, a->header.addr2);
 
 	return 0;
 }
-- 
1.9.1


