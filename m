X-GM-THRID: 6254799821931020288
X-Received: by 10.129.41.70 with SMTP id p67mr35575861ywp.33.1456309068197;
        Wed, 24 Feb 2016 02:17:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.52 with SMTP id 49ls2618101qgo.79.gmail; Wed, 24 Feb
 2016 02:17:47 -0800 (PST)
X-Received: by 10.140.93.199 with SMTP id d65mr8257069qge.30.1456309067540;
        Wed, 24 Feb 2016 02:17:47 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id 79si331034pft.0.2016.02.24.02.17.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 02:17:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id yy13so10399044pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 02:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=PkZDDfYAHn4wFC2WpNPu6//8orVa6G8fNYbDRDXigsU=;
        b=p++/BUAFQ3+xdLSoJ/Id/mHTIrSgsyPHQ5lDufWY9AKhWQWLCM4hzGRUx5USNzlyqD
         2IU88nljCF7ubfuiuTF0A0N+SuDC2zIZzzq9M4LNaE436IO4AhMoK6DDrRk2cxDz1tK0
         Zbc6BRZE9W6/EA2AfoN5/qt2B8s/30UTlnloKa+npIE255s49i40lDfCLmi7oH/tx3Qw
         9i2z1/x4DJcYdoUo6CFRt5GFiwVf6ZlNxW54UIudQl5VNRwyepBLRY4pCHIyt39rPKB3
         oExTpF29uhlEnBh9CYQeY0maXtz0hEdQ6gIlamgRQ34jikV6mhLOsrFoG8I3zcrFgy5X
         l7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PkZDDfYAHn4wFC2WpNPu6//8orVa6G8fNYbDRDXigsU=;
        b=WIh3U9vxtx2T8a6/+p3TwrfQpE0K9P6F2QKoJ9o82KrglfsA0kqwkPs+b8J8iJbdT1
         ei/XRxEo1tI9qzjbmNx6VXnG5GBW6/+AUEuTyUUzZKPgvY+G8kHy/wCyVrg1q0jDTkOo
         o44wA0uPlJQFuS17Mf5WglGpouJNpDwaKhP1HMiyob2QHODplZkKJ4hwrpO0uguQy3cD
         fMOHeWqOqncqlfSYa66koxtKH9zV2UAOc4hKMQQ+23ZDymLe4XYadrl9cPtQYUXVFnCl
         ij+eIDTc5BE+IoISSD7L7awnBPgrXoMmXzuGS816oHrJ6t/WcYGUtq4iMVrqnkwvJfEl
         aWfA==
X-Gm-Message-State: AG10YOTdQk2ji/WpP/QFU/zAofzuOGZWvgRlKFmAt6A4orejUVjjygj8N5Eu+8uHPH2RxQ==
X-Received: by 10.66.119.202 with SMTP id kw10mr48306052pab.110.1456309067347;
        Wed, 24 Feb 2016 02:17:47 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.141.103])
        by smtp.gmail.com with ESMTPSA id o17sm3834521pfj.50.2016.02.24.02.17.42
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 02:17:46 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 24 Feb 2016 15:47:37 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Clean up tests if NULL returned on failure  
Date: Wed, 24 Feb 2016 15:47:35 +0530
Message-Id: <1456309055-6392-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Some functions return Null as their return value on failure. !x is 
generally preferred over x==NULL or NULL==x. So make use of !x if 
the value returned on failure is NULL.
Done using coccinelle:
@@
expression e;
statement S;
@@
e = \(kmalloc\|devm_kzalloc\|kmalloc_array
     \|devm_ioremap\|usb_alloc_urb\|alloc_netdev\)(...);
- if(e==NULL)
+ if(!e)
  S

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
 drivers/staging/rtl8192u/r8192U_core.c            | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 9dfde07..879c413 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -1289,7 +1289,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	payload = skb->data + hdrlen;
 	//ethertype = (payload[6] << 8) | payload[7];
 	rxb = kmalloc(sizeof(struct ieee80211_rxb), GFP_ATOMIC);
-	if (rxb == NULL)
+	if (!rxb)
 	{
 		IEEE80211_DEBUG(IEEE80211_DL_ERR,"%s(): kmalloc rxb error\n",__func__);
 		goto rx_dropped;
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 3a93218..849a95e 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1732,7 +1732,7 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
 
 	priv->rx_urb = kmalloc(sizeof(struct urb *) * (MAX_RX_URB + 1),
 			       GFP_KERNEL);
-	if (priv->rx_urb == NULL)
+	if (!priv->rx_urb)
 		return -ENOMEM;
 
 #ifndef JACKSON_NEW_RX
-- 
1.9.1


