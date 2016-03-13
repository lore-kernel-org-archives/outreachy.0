X-GM-THRID: 6261499450444742656
X-Received: by 10.13.235.144 with SMTP id u138mr14464177ywe.21.1457879220172;
        Sun, 13 Mar 2016 07:27:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.14 with SMTP id h14ls1228405iod.78.gmail; Sun, 13 Mar
 2016 07:26:59 -0700 (PDT)
X-Received: by 10.66.124.200 with SMTP id mk8mr14485589pab.27.1457879219854;
        Sun, 13 Mar 2016 07:26:59 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id sf5si2635608pac.1.2016.03.13.07.26.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 07:26:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id n5so78608398pfn.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 07:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ywPxRcBzbiptCqFPlcPKczH5lva4rAJDtUu08emgE6Y=;
        b=s6ula9tQfkbQ+DtyDuARqcLpzlXx0t2XF7EG612wYbbMN3VGDdAO7pVshNLKvZ6iyc
         qRmVa1TG1ljghQGGi3Th9p6/cGZdZ4iz+y8WyGULTT99cvrndyoxmdt+L53lMbHPU6Q7
         Y2Kk9Q1uF+JyD4en0AU/xJ4szmdCldrd7fcybT2A69UEc7XFBgNzw1AwrXxfrUrL9O9G
         N0C1J2UOGHlKKz1OfTljaxkVsai3fbe9FpA+5eSXKIXi8NcPOXkSxPHZamAb8ibixmlc
         o/xMhg4f7FpJffSPOlS8Ozv/+sVlTFBQz8MfzK65K2KRDY9PqmsmxMvCmkBFFl97V+Qc
         h6Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ywPxRcBzbiptCqFPlcPKczH5lva4rAJDtUu08emgE6Y=;
        b=f2MSB1e2qt7quXLavzTl4qz8nSGihuEFlMhEzzn+/dkUd0XujFcmx4apjGlzm6wq3L
         ucYMOAc0hJpf9RhqOwyZXOzNHQvw7o19Exd5oaoVbN0KcVooYunzoV6vZra3BYanE4DC
         /5Vn9c3YRvw1YYRxq3gxSIRXXh4sqlzFm2ArlI76zcD5wbS/KRPlKaCxknZFSipjtU44
         MNPtXXEu6Zd12SEVSt2jSAc83HNjIBYrDidR0KWrGhcJiTJErVfRsYo9/Rzm+0W+rhcM
         WLKQecvAP11qS5Hgf5Bl/c0I24Jb5NXlgdEvsp/u0Izg2B99HTgNBJbdr2VcRFGqa8Vh
         HwOg==
X-Gm-Message-State: AD7BkJLL/sxpb2loYOTwk87sbOcGCL1pUrn31q6AKwqaRVVNzgyS0XRs1Y0cBeeMaGl4oA==
X-Received: by 10.98.67.67 with SMTP id q64mr23059686pfa.44.1457879219744;
        Sun, 13 Mar 2016 07:26:59 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id e1sm25652076pas.1.2016.03.13.07.26.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 07:26:59 -0700 (PDT)
Date: Sun, 13 Mar 2016 19:56:44 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: wilc1000: Remove camel case in variable
 names.
Message-ID: <54565b086bac8ca4e67a4b9eed2957d8dd20ebbf.1457878893.git.anchalj109@gmail.com>
References: <cover.1457878893.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457878893.git.anchalj109@gmail.com>
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


