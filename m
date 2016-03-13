X-GM-THRID: 6261586472807170048
X-Received: by 10.129.89.198 with SMTP id n189mr14982545ywb.10.1457889208457;
        Sun, 13 Mar 2016 10:13:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.233 with SMTP id t96ls3476369qgd.49.gmail; Sun, 13 Mar
 2016 10:13:28 -0700 (PDT)
X-Received: by 10.140.99.106 with SMTP id p97mr15326619qge.13.1457889207987;
        Sun, 13 Mar 2016 10:13:27 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id h69si1428745pfj.0.2016.03.13.10.13.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:13:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id u190so88964894pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XOWpNFU1gH+GehEBnAwThVzx3LKqLDbc5wM+dLMmQm8=;
        b=Su8F3tZ2sCZc4clMRzIZrXrpD3hKO69SnqBgAddmZTT8BzM57xQaI6F8BPJMiYkMjh
         6JBsnNRUPCeqtpdS3/wV107gucjFNyM+p85ms2CaPj3w+4KK/fqUoihzyIodgBMARTLV
         gnmPgkqaBeShmKMg6XYIGwwG5iwfpSxVIf+cHId+Vl4L8rr7fgtBEinQqEyVOTN4WxCT
         zi4cL54RZTkJ5/d+bfczJdCzUn9BJM13RlN5cNrnsh9cBSErLpPLVGCoSzytY+rFiLLL
         0pzOD0nG7YRg50/D8uobKelnLlk1tYXybyyguXBRjL0cPDkHD5F+n7iy4csg+EDIGgd0
         F6cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XOWpNFU1gH+GehEBnAwThVzx3LKqLDbc5wM+dLMmQm8=;
        b=FL4kpR6KpMb2WgQKPbioTZjndWTDDOOTiyxQZC+/BGtMlcvs0b4ZedfPz1gqFx9rWt
         Bt5oJpo1NSM9tl5Nryph7Eh73cqbKacfwYByfS2q/9EP1ciLRsbhUFj1B+Pbb1iPTI/x
         tyCf7GttdTRbEbe0PRje6rOWTifcEfob9h17LsK5bSye05NLKZZUIN3bQ3/mhNrEVw5E
         tP5Cp6IATZ4hwUOAhCfiKJLsPpg+zOqZPqs04ZlFA71+Bz8YSf9mOh4pLEVy5wDcU+Wg
         e1ExkFxsrw1Z9AhuwtprXal5OgMEfVvoIexixsNNIm0KTs6gVrRMnaXPgp6LhUIlxNt5
         y3cQ==
X-Gm-Message-State: AD7BkJKAlJtPbeHcfswv1rnTX7GbxYs3HqZy5hBkWiuSLjJoj+kQCtEgAPhF+mbhrPorjg==
X-Received: by 10.98.72.218 with SMTP id q87mr13386759pfi.117.1457889207808;
        Sun, 13 Mar 2016 10:13:27 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id r65sm26277775pfa.27.2016.03.13.10.13.22
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:13:27 -0700 (PDT)
Date: Sun, 13 Mar 2016 22:43:14 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: Break@life-desktop, lines@life-desktop, so@life-desktop,
	that@life-desktop, they@life-desktop, do@life-desktop,
	not@life-desktop, exceed@life-desktop, 80@life-desktop
Cc: outreachy-kernel@googlegroups.com
Subject: outreachy-kernel@googlegroups.com
Message-ID: <05190ce66cd66f77ead782c80f3a8624d45d502f.1457888861.git.anchalj109@gmail.com>
References: <cover.1457888861.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457888861.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Break lines so that they do not exceed 80
characters. Problem found using checkpatch.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
changes in v4:
- Add commit message

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


