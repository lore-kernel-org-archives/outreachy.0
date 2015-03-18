X-GM-THRID: 8985735331840
X-Received: by 10.70.45.135 with SMTP id n7mr2803127pdm.9.1426686234351;
        Wed, 18 Mar 2015 06:43:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.51.82 with SMTP id t76ls624597qga.26.gmail; Wed, 18 Mar
 2015 06:43:54 -0700 (PDT)
X-Received: by 10.236.227.162 with SMTP id d32mr83277460yhq.7.1426686234165;
        Wed, 18 Mar 2015 06:43:54 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pc4si3133560pac.0.2015.03.18.06.43.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 06:43:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pacwe9 with SMTP id we9so43179750pac.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 06:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=dROzGItEd0kuOeZVehcbNQ8QqtgJvqqorFNYiSpYlQE=;
        b=vMbsqUWIYd9Djf2zn383Ptwy+jjPTjK1ct/ZWHLIqSbsdEPxL/rAlODgQ8aiyRQ8rT
         qJszAQvQ7tYZ9u4QcoKvAXNfTo6pLoAnVPD2cBi0C1DRq/X5mgK9TnQ78ZwIwiTIR73M
         GR97ytD1KwZV21nIJK4pj8C4xBwTFHu2cgJQaXvflBHozkzer6vSXh+gxs7a+yb8yfAm
         EEWXXxg3iNJ4trIO0kRRz+zFVrJYUbSNznV1Lt7FoVeHGWIXYhwPzsVcbEeorM0ttDLp
         6/4FaaV6zl5cc73F1GTzp5jeX4O9uX4a2LwQPj8vsl5QzHl37TacyLF6hFwxNd2GM5M/
         85yQ==
X-Received: by 10.70.40.167 with SMTP id y7mr71135974pdk.164.1426686234034;
        Wed, 18 Mar 2015 06:43:54 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id jj1sm27789058pac.17.2015.03.18.06.43.51
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 06:43:52 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 3/5] Staging: rtl8192e: Use ether_addr_copy replacing memcpy
Date: Wed, 18 Mar 2015 19:13:21 +0530
Message-Id: <d43d8f29249c6dd1d8622b65a9030bf3ac3f5c29.1426685762.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426685762.git.darshanapadmadas@gmail.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426685762.git.darshanapadmadas@gmail.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
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


