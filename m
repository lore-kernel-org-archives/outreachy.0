X-GM-THRID: 6330925606572654592
X-Received: by 10.31.174.76 with SMTP id x73mr103601vke.17.1474033770126;
        Fri, 16 Sep 2016 06:49:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.202 with SMTP id g71ls60339ioi.54.gmail; Fri, 16 Sep
 2016 06:49:29 -0700 (PDT)
X-Received: by 10.66.7.137 with SMTP id j9mr99467paa.122.1474033769669;
        Fri, 16 Sep 2016 06:49:29 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id w188si704632itc.3.2016.09.16.06.49.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:49:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 6so720495pfl.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 06:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SzI2nzK4rkt79nlGTRmMozqNoH3jafbGyU/Hpg22p2A=;
        b=Jv2yjqdteBNJFqoJsO2ErV9pJSrWJI5eBYF4IadIKCxppvh/3O6LLQxsxtwMBU0eYw
         tSothyCCiO6birMRqe1MweCplJB6TA9VDiM/Sb8O8M6AIYGHdjY1rik8GvNSIUVEusNc
         u3Kp0Ux0izsGHwLYA++FDyYXw2som1K1LHD8ACMInkoRNtHNQ+ffIk3bKLWUn5A/GKt9
         x5JZ6vMKcAO1d0Moumq2dEF+uCZb4XzLQdxxhyU93wkIaAj7sslxd4nB//BKCtquIngz
         xLMq/VpMNrSsE7Hyd5NEWL0DNwcxXuJZT1tJFDfDmSekfXDYeOgsufx4NlB+xdKU3E7b
         2uZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SzI2nzK4rkt79nlGTRmMozqNoH3jafbGyU/Hpg22p2A=;
        b=NQFLnK840izKZ/Bp+EHhy5uZP6Scm11wmCCr0dYS8Hvd/fnTUA/Syl4urbnUQEpHxJ
         +TEupwTLhfJtSPN4yp/bKw/h352nT0ErqHqhYPewbw+yix5GpkljJwpb1ZB/Qi3Hpp8F
         lMrOOp+DEURA/phOl/lv8b+SlAA7aMol9cBL8061Yn0WFLkV1aZvD9YJf+qFJQlw7Z4/
         Cv5NmZlM3k1LtQJIJNxeoS7knX+3suGE6UUY+RZRXrVeRscIzpfMR3JP7Vhb0Nj15UDu
         smYNScAl8xeir9AyAjWuAdHZ3ItplwLyOtIH6KlgQySpDt2Q2HfxiwM1MoHdEQt5FxgI
         B80w==
X-Gm-Message-State: AE9vXwOLFgZyKw2rBm35N7wlW5NUVfv7wwg1H3pP2ZlU8XAlckAV8Sqw5yG24VDRl/mwIw==
X-Received: by 10.98.89.93 with SMTP id n90mr9527698pfb.184.1474033769048;
        Fri, 16 Sep 2016 06:49:29 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id wp4sm12585923pab.15.2016.09.16.06.49.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:49:28 -0700 (PDT)
Date: Fri, 16 Sep 2016 19:19:16 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 3/6] staging: ks7010: Remove space after '(' and before ')'
Message-ID: <54b587cd99b4569349b8e443e4c13ca3af5cdd7d.1474032241.git.karniksayli1995@gmail.com>
References: <cover.1474032241.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474032241.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch fixes the following errors detected by checkpatch.pl:
ERROR: space prohibited before that close parenthesis ')'
ERROR: space prohibited after that open parenthesis '('

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 8e1f68a..b0c6f93 100644
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


