X-GM-THRID: 6261499450444742656
X-Received: by 10.98.1.81 with SMTP id 78mr12207223pfb.1.1457888955934;
        Sun, 13 Mar 2016 10:09:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.71 with SMTP id w65ls3182443qgd.6.gmail; Sun, 13 Mar
 2016 10:09:15 -0700 (PDT)
X-Received: by 10.31.174.2 with SMTP id x2mr15043387vke.13.1457888955402;
        Sun, 13 Mar 2016 10:09:15 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id tu5si2083301pab.2.2016.03.13.10.09.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:09:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id td3so111340423pab.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ywPxRcBzbiptCqFPlcPKczH5lva4rAJDtUu08emgE6Y=;
        b=X3XMShasMzeYBKzARoT9l395NijjQooVLOI0MqO2jVY/YLB15Eu7aI35kS5WyZKkXy
         RoYxQzOE3+JJvcgnbuVFVfBxW0ZkWf2SzHKFaVHKHaeSMn2iAXaq227F0vDH9U6KbguP
         YE7AnywOtRIzurFV2zUL+UVzF0uf0jeSxtvaEG+hppgV6+3YUFudma5BI6G2JYyLiXYx
         gudN270vsJdqWBj/Ny5u+GoEq/5xSalhwAO3j4J59yCgIPPvagGzGmSbFn9hhdcsGoAi
         O4C0CMeCE0gnCbkjNbEzWn3tDMMvMMwcxJhrCUkvkf+p3zjwCmElONLzpw7sIFSCar81
         S5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ywPxRcBzbiptCqFPlcPKczH5lva4rAJDtUu08emgE6Y=;
        b=RomOprzAGCqC8Lv8IkZFpQEVCGq7P9RlGzTxKFehSywG05VmW8KWMrmvu67DOBCVV8
         9obMZtjZVHkUnnXksEaQ0FD5UP6LalKe9vY1BGEXjOc4S5BOvBPDWw2PiAzFZ9zWdsB1
         U+CsMc1deZX9FduFNOyn1LprTtuR2s3cRYRpJoBk0OsX8B5PXPjhCeI0nWG1c7oRBuBq
         dq/jblD/7crWcd/zqeqppBumzEO4xf76KLEaWRsNwJ3/5/uP9ZeRYpEX9CWSrwQjqnJS
         6XQ79mUWFq0zUju//6Rc3lHoayVyjFS936HRYjoYHNTXq4HvmuWsSq2WWm20p5UGjZh7
         IGtg==
X-Gm-Message-State: AD7BkJJOyqOX77dSc78YnHCZtv9TS49sk6rRCL2c0BOSn8oGZ0+KEZVB9F7Mc1jTZT7fFw==
X-Received: by 10.67.5.9 with SMTP id ci9mr31523399pad.101.1457888955215;
        Sun, 13 Mar 2016 10:09:15 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id 16sm26275501pfk.28.2016.03.13.10.09.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:09:14 -0700 (PDT)
Date: Sun, 13 Mar 2016 22:39:00 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/2] staging: wilc1000: Remove camel case in variable
 names.
Message-ID: <54565b086bac8ca4e67a4b9eed2957d8dd20ebbf.1457888861.git.anchalj109@gmail.com>
References: <cover.1457888861.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457888861.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove a check detect by checkpatch.pl

CHECK: Avoid CamelCase: <srcAdd>

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index 7d9e5de..fd25116 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -24,7 +24,7 @@ struct wilc_wfi_radiotap_cb_hdr {
 
 static struct net_device *wilc_wfi_mon; /* global monitor netdev */
 
-static u8 srcAdd[6];
+static u8 srcadd[6];
 static u8 bssid[6];
 static u8 broadcast[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 /**
@@ -225,11 +225,11 @@ static netdev_tx_t WILC_WFI_mon_xmit(struct sk_buff *skb,
 	skb->dev = mon_priv->real_ndev;
 
 	/* Identify if Ethernet or MAC header (data or mgmt) */
-	memcpy(srcAdd, &skb->data[10], 6);
+	memcpy(srcadd, &skb->data[10], 6);
 	memcpy(bssid, &skb->data[16], 6);
 	/* if source address and bssid fields are equal>>Mac header */
 	/*send it to mgmt frames handler */
-	if (!(memcmp(srcAdd, bssid, 6))) {
+	if (!(memcmp(srcadd, bssid, 6))) {
 		ret = mon_mgmt_tx(mon_priv->real_ndev, skb->data, skb->len);
 		if (ret)
 			netdev_err(dev, "fail to mgmt tx\n");
-- 
1.9.1


