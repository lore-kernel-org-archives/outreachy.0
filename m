X-GM-THRID: 6261559103932334080
X-Received: by 10.140.156.139 with SMTP id c133mr14594858qhc.4.1457883604679;
        Sun, 13 Mar 2016 08:40:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.44.73 with SMTP id f67ls3291676qga.58.gmail; Sun, 13 Mar
 2016 08:40:03 -0700 (PDT)
X-Received: by 10.129.145.130 with SMTP id i124mr14325807ywg.8.1457883603873;
        Sun, 13 Mar 2016 08:40:03 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id y20si2506576pfa.2.2016.03.13.08.40.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 08:40:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fl4so136935577pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 08:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=c8joE3oGC3pLUt32Phb+4tsc5uES6ctAf58cp2i6N9A=;
        b=vK/tuXlJq77I05AI8J+l9YiEo5rAEZBwuYyYOpPEZHvPEiAhWUxGdH/htZ7lCy7Tlr
         SSx7UqyIOxcsmOccF2PXSIasfR+a46wqYdm0w9WrtCgBg2SOexg8j7NYkjzE8KWhZlkx
         svBakvRHgsucJayFVn97nIWjxMSiN8hPZFsycR40/u74blbjqKvEGrVDTfYHW4FVTtIl
         9G6wqtO7ZT0qzeFe8Bop19Ii1NaInq3yBMQsgOQjXrP9DGG2wSGttwMJ9H4CM3Yh1EjC
         tEy3f5TJGNPfQKrTmHO17DzH/GSmq06ao1sbGyR42GTtUfOhzwKCmMgp/89q/yT633Co
         QPqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=c8joE3oGC3pLUt32Phb+4tsc5uES6ctAf58cp2i6N9A=;
        b=RErXI3WL4wG5gbg5v7KOyu6/7QBeeo0POwcXxECV33YH9zzGJpshi6o2D9vT0Xg/Mw
         mObDc15gZB0mY8HfkFFZXM1mVmk4xlJ0UVRnFVCpSybdEirDJV9o0OY7DFQM+pnzaIJX
         ANzpnMVQh4gdhdRI+MWbNeGOnX1Pn9V5ncacKQbIRMfTiPy8K8/glRAw6La8Lv2WMG2d
         yBgAYuPRS5jmc6F3soOBQiUTzNek2pvGmhi4H3nXSkDIv5qlFVfrvlwe0gVIfVcBvhyj
         gyCYlew57AWf8xfZagn2liEJWf6x/mY1OagFIbUksoxDzAeglKuhUF/D2q8Q0rlDHKP/
         GWGA==
X-Gm-Message-State: AD7BkJLEW3x3wwimSQsjGFpFz3KChyfo+ya2Joa7cR489i+h9r5u7UrFr+orqlDTddNrAA==
X-Received: by 10.66.158.232 with SMTP id wx8mr31207853pab.159.1457883603693;
        Sun, 13 Mar 2016 08:40:03 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id s14sm25939112pfa.3.2016.03.13.08.40.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 08:40:03 -0700 (PDT)
Date: Sun, 13 Mar 2016 21:09:52 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/2] staging: wilc1000: Fix lines over 80 characters
Message-ID: <05190ce66cd66f77ead782c80f3a8624d45d502f.1457883459.git.anchalj109@gmail.com>
References: <cover.1457883459.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457883459.git.anchalj109@gmail.com>
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


