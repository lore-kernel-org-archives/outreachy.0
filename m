X-GM-THRID: 6261499450444742656
X-Received: by 10.107.8.142 with SMTP id h14mr14884179ioi.22.1457879511875;
        Sun, 13 Mar 2016 07:31:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.63.2 with SMTP id m2ls1631385ioa.14.gmail; Sun, 13 Mar
 2016 07:31:51 -0700 (PDT)
X-Received: by 10.50.43.170 with SMTP id x10mr4288778igl.8.1457879511545;
        Sun, 13 Mar 2016 07:31:51 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id tu5si2037714pab.2.2016.03.13.07.31.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 07:31:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id td3so109688886pab.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 07:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Jh3zOMj5cwbzwoKJRCEmPg4lOMOZkjRonacOFzSLntY=;
        b=I+HZlF00n7drF2aTIgRTwjcf2eW0vDmJAeshGwGirDz+QtTX7kVRzCf6U56IIR4Hji
         avO6ZVcxTWiSnN/rngzPVEUtzV7j1GbvcELiRRpbm6i2p3NqdRHw5jDDEQBfL+TGlk3c
         oYeImNykDJRNs3P+C27oFdcl1RqKaWRyB6ATTqbYdTT+E9qK+dIk0FrGLA2WC6UeFgcq
         p18bNmqNfoh10WuoyAH3ajfZBYSRH/ObgpRplvY9AMLzKK6iUM08MLkwiJs5v3eFTiMl
         GnzwjnxQcuah2cUREsfyzWSNitaBmsC1kuYCLKp0tOgKmZDPbDB9o8JexkmlFe115TWG
         GAfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Jh3zOMj5cwbzwoKJRCEmPg4lOMOZkjRonacOFzSLntY=;
        b=hUAwdFEHul734KK3P8On/6jnU2A6L7mSKVxE3mxRmRYqCcflQ+AT514/9qnxnauVi3
         JCPpDpN/kX8qm/h2W5PGkbYoEg3d7G7Rewxbzm+9pEnak7syxzmqNFQ/RpL3UsNYlABr
         ZdcmIihmFTEgt9HEjTx36joW+SCiCcHPuCNjUD55kkcb2T+XOp8dM+KY5vaCA9zee4mG
         NE7SqPmVi8X1IFKyfIlugBS5c0OvF5ok0GFDrhZXXRymr+WlXSasue1a/n67A41b4zG0
         bWcDDDzvF5dEuequVjmXxcPSKJiAIDomTvXY6xb9GBOo1ega1nZpLzeHidhp9bns20j5
         Xrew==
X-Gm-Message-State: AD7BkJLvacEfK7rYs0dAf4QG+oZsVX0Ol5ES90qi2t5jJ3ZEn3LuROY8H8teAuCzFNoNkQ==
X-Received: by 10.66.145.68 with SMTP id ss4mr30849761pab.79.1457879511188;
        Sun, 13 Mar 2016 07:31:51 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id cq4sm25658831pad.28.2016.03.13.07.31.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 07:31:50 -0700 (PDT)
Date: Sun, 13 Mar 2016 20:01:39 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: drivers: Fix lines over 80 characters
Message-ID: <c8a83b1898463dafe6495d9dd227802018ef2a80.1457878893.git.anchalj109@gmail.com>
References: <cover.1457878893.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457878893.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
Changes in v2:
 - Improve the code
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


