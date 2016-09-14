X-GM-THRID: 6330275775734874112
X-Received: by 10.66.189.197 with SMTP id gk5mr408327pac.44.1473882513700;
        Wed, 14 Sep 2016 12:48:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.131 with SMTP id n3ls1759467otn.39.gmail; Wed, 14 Sep
 2016 12:48:33 -0700 (PDT)
X-Received: by 10.157.3.1 with SMTP id 1mr3472147otv.29.1473882513339;
        Wed, 14 Sep 2016 12:48:33 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c20si1607047pfc.1.2016.09.14.12.48.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:48:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so1184662pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 12:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x4OUCSH9o43+PHoXfXh++8QjIkTsktDwQorwZ99OOYM=;
        b=DcU2kiausdHwLhDZI3GvBZx4aWwq9jBOZTqaGFpflx36fxJK49OCQep++k4Dok7wLm
         BFfITDKBcaa51Dv2L/lioIObiMX9SoSWv/GkecWgxs8XKSKBBjAaTzRONCWoITCtnx0D
         +vryZwnVzgYnju3Qfd57E6o3j++oZ4bRSj5CzabreZAW/8N87/ercxl48RI5CPuqgIUp
         tL3d7yM3Xa4kW6Js4T8vl4cP3e/DgiN7UkOH4jlpI2XqcmjTiH5fBmtRovwHqoiF5ZK4
         Rjgh/eGrAUeSRqOiqC4EbOIQPU5lfNYV30IIK0VyUuVsOAq8PajfnXlS1QHaK3xK/fOz
         bgyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x4OUCSH9o43+PHoXfXh++8QjIkTsktDwQorwZ99OOYM=;
        b=WABBWW6KCd8wZbt2DfPftpzfyA5le6dooSVS6yTdiRVRc+lx087GqEXVhq5c2wvTUv
         mVOZ8oySjnFa/sVN4rmMjhm0GuOb0KCP94WiV3QEQAIUvsaXb6eZqt7YVUYkiB7ABoDu
         GyjjiiKBUMC4uoWBFrSzMZgFN7kVpKcgPOZfGgSHndFtnvnkhIUUN3VmLuEAb1390udG
         NS914aDw4L6GcHpQM1Wzno28NVNIvgSGeSOHIcAaL9LLM1u+/Ub+9UAvDgbNq7zj/qZ3
         7zdY7xaXvtRxwRtRutO+179D3Ml7mVO80lEGjSbj9DMlCPGlBG5heZOOxCcOBQgkZNSR
         fhCw==
X-Gm-Message-State: AE9vXwPhOzms79AqjxpydrNfiFtCftOly0MlKeVuN650GN8E9U/dCMLhKEtoaozR4Ow9ew==
X-Received: by 10.98.80.78 with SMTP id e75mr3636827pfb.131.1473882513153;
        Wed, 14 Sep 2016 12:48:33 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.240.22])
        by smtp.gmail.com with ESMTPSA id c64sm39963776pfa.51.2016.09.14.12.48.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:48:32 -0700 (PDT)
Date: Thu, 15 Sep 2016 01:18:21 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 3/6] staging: ks7010: ks7010_sdio.c: Remove space after '('
 and before ')'
Message-ID: <5cc659dfe8be3d94a99839fa4c7a2e16a89327e9.1473877138.git.karniksayli1995@gmail.com>
References: <cover.1473877138.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473877138.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch fixes the following errors detected by checkpatch.pl:
ERROR: space prohibited before that close parenthesis ')'
ERROR: space prohibited after that open parenthesis '('

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 852d887..1e109dd 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -35,18 +35,18 @@ MODULE_DEVICE_TABLE(sdio, ks7010_sdio_ids);
 /* macro */
 
 #define inc_txqhead(priv) \
-        ( priv->tx_dev.qhead = (priv->tx_dev.qhead + 1) % TX_DEVICE_BUFF_SIZE )
+        (priv->tx_dev.qhead = (priv->tx_dev.qhead + 1) % TX_DEVICE_BUFF_SIZE)
 #define inc_txqtail(priv) \
-        ( priv->tx_dev.qtail = (priv->tx_dev.qtail + 1) % TX_DEVICE_BUFF_SIZE )
+        (priv->tx_dev.qtail = (priv->tx_dev.qtail + 1) % TX_DEVICE_BUFF_SIZE)
 #define cnt_txqbody(priv) \
-        (((priv->tx_dev.qtail + TX_DEVICE_BUFF_SIZE) - (priv->tx_dev.qhead)) % TX_DEVICE_BUFF_SIZE )
+        (((priv->tx_dev.qtail + TX_DEVICE_BUFF_SIZE) - (priv->tx_dev.qhead)) % TX_DEVICE_BUFF_SIZE)
 
 #define inc_rxqhead(priv) \
-        ( priv->rx_dev.qhead = (priv->rx_dev.qhead + 1) % RX_DEVICE_BUFF_SIZE )
+        (priv->rx_dev.qhead = (priv->rx_dev.qhead + 1) % RX_DEVICE_BUFF_SIZE)
 #define inc_rxqtail(priv) \
-        ( priv->rx_dev.qtail = (priv->rx_dev.qtail + 1) % RX_DEVICE_BUFF_SIZE )
+        (priv->rx_dev.qtail = (priv->rx_dev.qtail + 1) % RX_DEVICE_BUFF_SIZE)
 #define cnt_rxqbody(priv) \
-        (((priv->rx_dev.qtail + RX_DEVICE_BUFF_SIZE) - (priv->rx_dev.qhead)) % RX_DEVICE_BUFF_SIZE )
+        (((priv->rx_dev.qtail + RX_DEVICE_BUFF_SIZE) - (priv->rx_dev.qhead)) % RX_DEVICE_BUFF_SIZE)
 
 static int ks7010_sdio_read(struct ks_wlan_private *priv, unsigned int address,
 			    unsigned char *buffer, int length)
-- 
2.7.4


