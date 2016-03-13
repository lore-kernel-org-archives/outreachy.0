X-GM-THRID: 6261499450444742656
X-Received: by 10.50.65.69 with SMTP id v5mr8964473igs.13.1457868955941;
        Sun, 13 Mar 2016 04:35:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.134 with SMTP id g128ls1716319ioe.45.gmail; Sun, 13
 Mar 2016 04:35:55 -0700 (PDT)
X-Received: by 10.98.42.67 with SMTP id q64mr11243071pfq.9.1457868955710;
        Sun, 13 Mar 2016 04:35:55 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ui7si2564073pab.0.2016.03.13.04.35.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 04:35:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id tt10so135612506pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 04:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ywPxRcBzbiptCqFPlcPKczH5lva4rAJDtUu08emgE6Y=;
        b=xpAaJFWCoUayM17TzKZI6J6jpRMf3uKvvi3JFQuXBXQbWjahGfFbzRBw2s3XvOpxgf
         TAKddEcyjzb1MZ9YAhjLgSgtBtiq+6HRWYinQPu3BlL3nyNOJUHvBQor55gd2ZlOLrBY
         ErNI6uy+2fl5G6RYOAqSmamenylJuBz5c0GTbsyt4y3KpUgXlrCcTE7HOmiljFdtzJt+
         UqKNHilaXPn8ujkmDJmugH0fSZri6Kp0GkK4Zlw13Uc9fI1on6Zi/hPpwTVuV+EkFGbN
         reXqQ7RkTiq+XShfa9p8H8SWhDFDNCxdg/N8apthfGP+95yE/D8Mo02in/6ZRokk0939
         PCpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ywPxRcBzbiptCqFPlcPKczH5lva4rAJDtUu08emgE6Y=;
        b=Lm/3D0s6FylAPastL0eMzYZrZq5VtaRtSSYVn2flartUT6W3m4qnvK0IM9JU8tEF9W
         9YPDBE95zsy3t+YQSecW38jl+zKOhEOpp93XazQCsE17kvWwwIjcWo2/jcWH4kXo1Lva
         hOrwvnaPyZogJXI8/Fnfv1jVehl94v9LhfDq9Li/FCh7pFSHQS3PK5dQmL8lWn/JhhAm
         1JpX7cz/C3LRwQ/fyxLa/SLszg6yRS/0ZTbEtDwrj1kbDbSr5tp6Ag9jqtaqZ4HJL/zx
         c2soD4K9vKKH2wdMzhPyUPQk6EWvGJBWWpe9LDozvNYITbuOOsK67Lo1rRKqLLzYayWr
         n61A==
X-Gm-Message-State: AD7BkJKUgyosXiN/TmOhmgz0MYI7GBJDPnZtBBHxYo5z2s+UBzvy3sOLs+TBYHp7nXWmsg==
X-Received: by 10.67.5.68 with SMTP id ck4mr29316821pad.3.1457868955588;
        Sun, 13 Mar 2016 04:35:55 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id e87sm24852220pfb.76.2016.03.13.04.35.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 04:35:55 -0700 (PDT)
Date: Sun, 13 Mar 2016 17:05:47 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: wilc1000: Remove camel case in variable names.
Message-ID: <54565b086bac8ca4e67a4b9eed2957d8dd20ebbf.1457868804.git.anchalj109@gmail.com>
References: <cover.1457868804.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457868804.git.anchalj109@gmail.com>
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


