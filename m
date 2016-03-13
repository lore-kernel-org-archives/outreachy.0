X-GM-THRID: 6261559103932334080
X-Received: by 10.182.110.163 with SMTP id ib3mr14831625obb.43.1457882836606;
        Sun, 13 Mar 2016 08:27:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.28.11 with SMTP id x11ls619193igg.38.gmail; Sun, 13 Mar
 2016 08:27:16 -0700 (PDT)
X-Received: by 10.107.12.212 with SMTP id 81mr14867880iom.18.1457882836138;
        Sun, 13 Mar 2016 08:27:16 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id y20si2502562pfa.2.2016.03.13.08.27.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 08:27:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id n5so79137951pfn.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 08:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6Y4ccHlsSD/l5S/ytHm8Uyg7XQlmKmvAtdTEdzlKSCs=;
        b=FBhB7TkzFZ+QqZuzyAfMFCxHhsK+ZP42hkW+2+49YUXjVwRegWwzPbqj8ifOjaiPGD
         1VGDayu8AJFw2aff0dcPkH8nC2MLu04lrR8HKrz4ckGWlngyDQ5m4IvBeLRTG2vUSu9Q
         lwfYQe267ZIfjRRKwE2pnbf53wmbiLIkLR4eDoKQX5GEE6XDpsEgfUZnusZBB0I4OJyj
         UdFnq5cPu//sSmBYUIqUqdsvLsYVeTZliZCC+76fuX2+BWFa9DmcdBCGSi5Ue0dHUgA9
         6jNTl0mN0rCMy9am9dYLeC+Q28GYUMLqxvuQD33RSJw+zoIo+wm97vTBHXiN/ktQ3Weh
         m8+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6Y4ccHlsSD/l5S/ytHm8Uyg7XQlmKmvAtdTEdzlKSCs=;
        b=SESBdDOJqdkhX1nKFUSOmwDFSXRPdsS3IpHbOoSRQGZCZwPbH7PwPCu6qGSCw0N448
         88uHh+E1Q+mldqkCPPVRo9HMAhx2yqFMhobpOKQFrY0YnAC+CtMj1/OyiYXtSjGmmmkt
         qI+Df0gmKXXm1882AyhDIi2L6l2bZVQG6MW5vMjcwz81HIDMREPzz5LgyhBPr3PUCQjO
         CvlijXjSUeuLCQZifIG6flZgCQb1terceQwhn8cKTiOWXeQwsZ+HcyGNYP6a7LafoXQ2
         9fLFH5RwAczlgQKQIswmoKMi7EzhjaewElOcYV3Dh+sT1e8scCf9yV21xv02njkhxATv
         VosQ==
X-Gm-Message-State: AD7BkJKHN27pFJx7YYLwOffFf4vMoCLUdZRJaREXJQN1Rwp/fkSmqoczoG0QyuiCoV/XBg==
X-Received: by 10.98.93.1 with SMTP id r1mr22805100pfb.57.1457882835974;
        Sun, 13 Mar 2016 08:27:15 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id l81sm25856712pfb.73.2016.03.13.08.27.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 08:27:15 -0700 (PDT)
Date: Sun, 13 Mar 2016 20:57:06 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: wilc1000: Fix lines over 80 characters
Message-ID: <2872c92d61078c94d0b7475c3900a841a13d72bd.1457882673.git.anchalj109@gmail.com>
References: <cover.1457882673.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457882673.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
changes in v3:
 - Make the commit message more clear
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


