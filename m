X-GM-THRID: 6261559103932334080
X-Received: by 10.140.156.139 with SMTP id c133mr17685064qhc.4.1457959027866;
        Mon, 14 Mar 2016 05:37:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.33.68 with SMTP id p4ls1580916obi.29.gmail; Mon, 14 Mar
 2016 05:37:07 -0700 (PDT)
X-Received: by 10.182.53.233 with SMTP id e9mr18011422obp.28.1457959027125;
        Mon, 14 Mar 2016 05:37:07 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id 12si3065898pfb.1.2016.03.14.05.37.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 05:37:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fl4so155621187pad.0
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 05:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Pfh1a2uRLj5Pj4QFgztAxDePLBFJ1TcgdAOZmBzW5Sg=;
        b=VnT6XcLJ2OtCCZlH0KkkaZBUBl7PXPxVkq2BRgpwdQRn8g0/Np7jC93HqqTLcZ1cdt
         fi/Oz+arJCXOnZBehy4sriQdCBLF63L53661y0P64lgJQrQpwSjK9V/i56RkYwQaAbcd
         6uMQTvYoqWY/2VhJ/Kr9Yau9vDS2mgTSskZX/am23dUDHbSWb3r9cRHMwm43GxpUXd0y
         7uRdQWZWCnwKbo4UCuKZpf4AFdZm6Y7HBL/yLNVKZVBSze1tizOOJaCLps1meh9B1Bb8
         wi3ZN29v1w1//Ug86lDBzzyekryqTKuwIY3m+mw2UesZsa5cuvELmPUMLfiqhy4A9kfQ
         N55A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Pfh1a2uRLj5Pj4QFgztAxDePLBFJ1TcgdAOZmBzW5Sg=;
        b=OGnkiAaPZyp9/JZmtBFpk4dxy70hv5uIbuS3HbGn94Ekj2QpSl+g8pVxI41+ON2+53
         qa+leb6lgpbxY6PFhAbkKM9SSke+4u7DPXpFabFcwtptZMc6LpvwDE/qSmYcv5ee9gO1
         cFlMyOMX+HcndjhfQCG4jRmWkwiVlGF6GXcVHgN1oid/8p1DP7Oy1EktHlb1e5+EbWqe
         wv/PUzRHQDcWBnRMsva5kUN8aiC96dZJYUarXZX5UfZIc/Y79VOo9q/exnD/tkPxKH6g
         egshuX9OpW7zDX11Gi90CqZYDeK5S/HZimaamYCoTHnPx8aAZAfqtP71CZ6SPbqpkNFf
         WFwg==
X-Gm-Message-State: AD7BkJLTj4OZG2j/hDXLbfRB/UnTFabBJe2ljrKgoYPmkLgKL3ztOshfsqjgddEV50W/KQ==
X-Received: by 10.66.248.168 with SMTP id yn8mr37360651pac.24.1457959026633;
        Mon, 14 Mar 2016 05:37:06 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id u2sm17888356pfi.26.2016.03.14.05.37.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 05:37:06 -0700 (PDT)
Date: Mon, 14 Mar 2016 18:06:54 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 2/2] staging: wilc1000: Fix lines over 80 characters
Message-ID: <05190ce66cd66f77ead782c80f3a8624d45d502f.1457958844.git.anchalj109@gmail.com>
References: <cover.1457958843.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457958843.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Break lines so that they do not exceed 80
characters. Problem found using checkpatch.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
changes in v5:
 - make commit message more clear

 drivers/staging/wilc1000/linux_mon.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index fd25116..242f82f 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -59,9 +59,10 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 
 	/* Get WILC header */
 	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
-
-	/* The packet offset field conain info about what type of managment frame */
-	/* we are dealing with and ack status */
+	/*
+	 * The packet offset field contain info about what type of management
+	 * the frame we are dealing with and ack status
+	 */
 	pkt_offset = GET_PKT_OFFSET(header);
 
 	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
@@ -105,7 +106,7 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 		hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
 		hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_hdr));
 		hdr->hdr.it_present = cpu_to_le32
-				(1 << IEEE80211_RADIOTAP_RATE);                   /* | */
+				(1 << IEEE80211_RADIOTAP_RATE); /* | */
 		hdr->rate = 5; /* txrate->bitrate / 5; */
 	}
 
@@ -127,8 +128,10 @@ struct tx_complete_mon_data {
 static void mgmt_tx_complete(void *priv, int status)
 {
 	struct tx_complete_mon_data *pv_data = priv;
-
-	/* incase of fully hosting mode, the freeing will be done in response to the cfg packet */
+	/*
+	 * in case of fully hosting mode, the freeing will be done
+	 * in response to the cfg packet
+	 */
 	kfree(pv_data->buff);
 
 	kfree(pv_data);
@@ -255,7 +258,8 @@ static const struct net_device_ops wilc_wfi_netdev_ops = {
  *  @date	12 JUL 2012
  *  @version	1.0
  */
-struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device *real_dev)
+struct net_device *WILC_WFI_init_mon_interface(const char *name,
+					       struct net_device *real_dev)
 {
 	u32 ret = 0;
 	struct WILC_WFI_mon_priv *priv;
-- 
1.9.1


