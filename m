X-GM-THRID: 6338829541865160704
X-Received: by 10.28.209.12 with SMTP id i12mr33029wmg.14.1475873762424;
        Fri, 07 Oct 2016 13:56:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.218 with SMTP id h87ls546454lji.4.gmail; Fri, 07 Oct
 2016 13:56:01 -0700 (PDT)
X-Received: by 10.46.69.69 with SMTP id s66mr1423413lja.1.1475873761399;
        Fri, 07 Oct 2016 13:56:01 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id a126si213785wmd.1.2016.10.07.13.56.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 13:56:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id f193so4587598wmg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 13:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0o2/KZZITTif4KyCF0teWfyokkHAb+xiEEyiVZDxrfY=;
        b=Z3nvxWFZsH7Zj79m+jV6Xd6qBaeS0WlNIzMjL3BDRo3tXh233UXA+7OhGTp7sd1vVP
         9BV3JIIbQN1uzZRzs0xdRfKhNpOcoNWC8GldbZO0tG1spcM6XDw6wRcIawTJ/7EfgeOF
         X+eQNmAjxWtcZ8B53BJH6thwP7Jy65qg9lr6xn1Ezhj0eGug7+x8vxUnytxpef8qzo0c
         i0dsREoD20GEY0dgUFfDBaHIe42BwcOKeKkTfBmBZNB7fEoSwD9nqoOPV5Q1qwqe+nUE
         Ds5c19EeQauiocUmjl31ZDkunja941I43Ics8xaj8KbgfyxpV/ijSHqNtbaOJl4KanaD
         UAIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0o2/KZZITTif4KyCF0teWfyokkHAb+xiEEyiVZDxrfY=;
        b=e5x9GNiP2xPw5AFLiLf0Dyg41v5i6lEG3dfoRjAkG2Nzut+gzHqSGCb9AeJiJpvE+J
         KT+7rHbRyINrLgvMlwy17P/QjC1f1Aaj3I9oHlwFkKpTSVtCQ8GxZg7J72Q3bR6hf3Ut
         8gkPgkOJ0PzMK54IfwGCBcFf3ymSBn4rrzgy2u1JemLpft3315U6Ga8vznu1r/8uDZoV
         PSdonPBHHecl/IkedD8wNjF5KDFmr2DMCW8MmyB0W30CXjbp8B06ES+A87cJ+3VdsHhV
         4L5vP1v184cBJQ+HDNExhT50Xw64jxir0AKVxYJ0/CN+9NpznCr1KpvPJyW65l/CgGX3
         4PIA==
X-Gm-Message-State: AA6/9RneJgdBNDoZ8BJNmOlvmtMqFhV8EwKyrvJhYVTv4eCkK71K2FHm1+iNebFYT9YfBA==
X-Received: by 10.28.113.16 with SMTP id m16mr416413wmc.29.1475873760955;
        Fri, 07 Oct 2016 13:56:00 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id 4sm4742989wmu.2.2016.10.07.13.56.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 07 Oct 2016 13:56:00 -0700 (PDT)
Date: Fri, 7 Oct 2016 23:55:59 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ks7010: Replace printk with netdev_*
Message-ID: <20161007205559.GA11103@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a patch to ks_hostif.c file that fixes up a checkpatch.pl

WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
dev_info(dev, ... then pr_info(... to printk(KERN_INFO ...

For netdev devices netdev_info and netdev_warn is preferred over
printk(KERN_INFO/WARN..).

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index c57ca58..8798b63 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -476,8 +476,7 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 			skb->dev->last_rx = jiffies;
 			netif_rx(skb);
 		} else {
-			printk(KERN_WARNING
-			       "ks_wlan: Memory squeeze, dropping packet.\n");
+			netdev_warn(skb->dev, "ks_wlan: Memory squeeze, dropping packet.\n");
 			priv->nstats.rx_dropped++;
 		}
 		break;
@@ -511,8 +510,7 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 			skb->dev->last_rx = jiffies;
 			netif_rx(skb);
 		} else {
-			printk(KERN_WARNING
-			       "ks_wlan: Memory squeeze, dropping packet.\n");
+			netdev_warn(skb->dev, "ks_wlan: Memory squeeze, dropping packet.\n");
 			priv->nstats.rx_dropped++;
 		}
 		break;
@@ -560,8 +558,7 @@ void hostif_mib_get_confirm(struct ks_wlan_private *priv)
 		dev->dev_addr[5] = priv->eth_addr[5];
 		dev->dev_addr[6] = 0x00;
 		dev->dev_addr[7] = 0x00;
-		printk(KERN_INFO
-		       "ks_wlan: MAC ADDRESS = %02x:%02x:%02x:%02x:%02x:%02x\n",
+		netdev_info(dev, "ks_wlan: MAC ADDRESS = %02x:%02x:%02x:%02x:%02x:%02x\n",
 		       priv->eth_addr[0], priv->eth_addr[1], priv->eth_addr[2],
 		       priv->eth_addr[3], priv->eth_addr[4], priv->eth_addr[5]);
 		break;
@@ -571,7 +568,7 @@ void hostif_mib_get_confirm(struct ks_wlan_private *priv)
 		priv->version_size = priv->rx_size;
 		memcpy(priv->firmware_version, priv->rxp, priv->rx_size);
 		priv->firmware_version[priv->rx_size] = '\0';
-		printk(KERN_INFO "ks_wlan: firmware ver. = %s\n",
+		netdev_info(dev, "ks_wlan: firmware ver. = %s\n",
 		       priv->firmware_version);
 		hostif_sme_enqueue(priv, SME_GET_PRODUCT_VERSION);
 		/* wake_up_interruptible_all(&priv->confirm_wait); */
-- 
2.7.4


