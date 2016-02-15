X-GM-THRID: 6251650339458514944
X-Received: by 10.25.39.2 with SMTP id n2mr2150752lfn.10.1455575927695;
        Mon, 15 Feb 2016 14:38:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.74 with SMTP id u71ls650448wmd.25.canary; Mon, 15 Feb
 2016 14:38:47 -0800 (PST)
X-Received: by 10.28.47.140 with SMTP id v134mr1546891wmv.3.1455575927150;
        Mon, 15 Feb 2016 14:38:47 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id h73si548130wme.0.2016.02.15.14.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 14:38:47 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id g62so17929393wme.2
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 14:38:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=QdvhVbF6DyjYy25smp2asKcmlPBZsLpT3YjINC0yKcU=;
        b=ZZ/f6J5rbAl90PNTS73P67PdFU07HJVlm0AwEl7N1VGFm40B8/fSG5wPDgywPYcuhJ
         JpeLwEDNTjsRTizLukMgtXJzwCbmdzybM+WkN/JcVYPSVrOocScYdAblszyi1bbjwTif
         TU/yMN4WqiCtTBQ9gqJPDgFLUahG6bNLfpvrYb4519eWmEDzeLlofl6XS1c0l7kwCx0V
         MHcJ6nsUyF5gWEWAZa+pvLhXuUztQbIlXSnz9OzqjCHfeHWbtZuHCUE23lXfY8EOnbov
         gdschRyBSvf1zSJImtFLTIqkLX4jgR+gNw7iCBUYKKXyu/TDB/EOnt6h2jn0a72bODGs
         2ZtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=QdvhVbF6DyjYy25smp2asKcmlPBZsLpT3YjINC0yKcU=;
        b=ZD+j978+KzWnjHZaLeycnZ7edGe8r4cvtCd+pozoIxah2iWoVCMfH1yYrXWdaba6Ku
         2M3c/pWFFeqzsn8du2OfH/vjWHRZzQAVH5FdgF5DTaqgDSjJDL0jfca5QPE9DlgnLTZe
         EbLG/SU0aE7lW/uygFnu2UzQmrgOyMfUKX6jVijgipXk/3XYi/fdY8Pfb5NPFK/RgnhT
         PRMOpKI1+GuA0pxtpiZH0W9TreyzCa1plxf6h3dkdALjEh4ek24XRzMtMrSBHrdKkHCP
         YoZqykGLuxo/0Tu72PQrZaVbzFOgg9sKDlNPIjnHN6nJro2qY8gazqgx/MUIS3y6HMKN
         s58g==
X-Gm-Message-State: AG10YORMACNLvTAD8RN4E2nA30tbX6CYaukILckaa04T5xAOwchJBxcqrhLPE9bxiuI9Hg==
X-Received: by 10.194.58.47 with SMTP id n15mr18648037wjq.155.1455575927036;
        Mon, 15 Feb 2016 14:38:47 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id t12sm17577634wmt.20.2016.02.15.14.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 14:38:45 -0800 (PST)
Date: Mon, 15 Feb 2016 23:38:43 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/7] staging: netlogic: Fix CamelCase for constants
Message-ID: <6a499ce2d72d97cc1ab22dffdeb1caa207bc27e8.1455575263.git.nevola@gmail.com>
References: <cover.1455575263.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455575263.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid the use of CamelCase for constants. Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c |  30 +-
 drivers/staging/netlogic/xlr_net.h | 978 ++++++++++++++++++-------------------
 2 files changed, 504 insertions(+), 504 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index c1bfe7c..4b72f03 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -932,13 +932,13 @@ static void xlr_port_enable(struct xlr_net_priv *priv)
 
 	/* Setup tx control reg */
 	xlr_reg_update(priv->base_addr, R_TX_CONTROL,
-		       ((1 << O_TX_CONTROL__TxEnable) |
-		       (512 << O_TX_CONTROL__TxThreshold)), 0x3fff);
+		       ((1 << O_TX_CONTROL__TXENABLE) |
+		       (512 << O_TX_CONTROL__TXTHRESHOLD)), 0x3fff);
 
 	/* Setup rx control reg */
 	xlr_reg_update(priv->base_addr, R_RX_CONTROL,
-		       1 << O_RX_CONTROL__RxEnable,
-		       1 << O_RX_CONTROL__RxEnable);
+		       1 << O_RX_CONTROL__RXENABLE,
+		       1 << O_RX_CONTROL__RXENABLE);
 }
 
 static void xlr_port_disable(struct xlr_net_priv *priv)
@@ -953,12 +953,12 @@ static void xlr_port_disable(struct xlr_net_priv *priv)
 
 	/* Setup tx control reg */
 	xlr_reg_update(priv->base_addr, R_TX_CONTROL,
-		       ((1 << O_TX_CONTROL__TxEnable) |
-		       (512 << O_TX_CONTROL__TxThreshold)), 0);
+		       ((1 << O_TX_CONTROL__TXENABLE) |
+		       (512 << O_TX_CONTROL__TXTHRESHOLD)), 0);
 
 	/* Setup rx control reg */
 	xlr_reg_update(priv->base_addr, R_RX_CONTROL,
-		       1 << O_RX_CONTROL__RxEnable, 0);
+		       1 << O_RX_CONTROL__RXENABLE, 0);
 }
 
 /*
@@ -974,9 +974,9 @@ static int xlr_gmac_init(struct xlr_net_priv *priv,
 	xlr_port_disable(priv);
 
 	xlr_nae_wreg(priv->base_addr, R_DESC_PACK_CTRL,
-		     (1 << O_DESC_PACK_CTRL__MaxEntry) |
-		     (BYTE_OFFSET << O_DESC_PACK_CTRL__ByteOffset) |
-		     (1600 << O_DESC_PACK_CTRL__RegularSize));
+		     (1 << O_DESC_PACK_CTRL__MAXENTRY) |
+		     (BYTE_OFFSET << O_DESC_PACK_CTRL__BYTEOFFSET) |
+		     (1600 << O_DESC_PACK_CTRL__REGULARSIZE));
 
 	ret = xlr_setup_mdio(priv, pdev);
 	if (ret)
@@ -988,13 +988,13 @@ static int xlr_gmac_init(struct xlr_net_priv *priv,
 	/* speed 2.5Mhz */
 	xlr_nae_wreg(priv->base_addr, R_CORECONTROL, 0x02);
 	/* Setup Interrupt mask reg */
-	xlr_nae_wreg(priv->base_addr, R_INTMASK, (1 << O_INTMASK__TxIllegal) |
-		     (1 << O_INTMASK__MDInt) | (1 << O_INTMASK__TxFetchError) |
-		     (1 << O_INTMASK__P2PSpillEcc) | (1 << O_INTMASK__TagFull) |
-		     (1 << O_INTMASK__Underrun) | (1 << O_INTMASK__Abort));
+	xlr_nae_wreg(priv->base_addr, R_INTMASK, (1 << O_INTMASK__TXILLEGAL) |
+		     (1 << O_INTMASK__MDINT) | (1 << O_INTMASK__TXFETCHERROR) |
+		     (1 << O_INTMASK__P2PSPILLECC) | (1 << O_INTMASK__TAGFULL) |
+		     (1 << O_INTMASK__UNDERRUN) | (1 << O_INTMASK__ABORT));
 
 	/* Clear all stats */
-	xlr_reg_update(priv->base_addr, R_STATCTRL, 0, 1 << O_STATCTRL__ClrCnt);
+	xlr_reg_update(priv->base_addr, R_STATCTRL, 0, 1 << O_STATCTRL__CLRCNT);
 	xlr_reg_update(priv->base_addr, R_STATCTRL, 1 << 2, 1 << 2);
 	return 0;
 }
diff --git a/drivers/staging/netlogic/xlr_net.h b/drivers/staging/netlogic/xlr_net.h
index 7ae8874..f76e16c 100644
--- a/drivers/staging/netlogic/xlr_net.h
+++ b/drivers/staging/netlogic/xlr_net.h
@@ -277,332 +277,332 @@
 #define   O_MAC_FILTER_CONFIG__MAC_ADDR0_VALID                      0
 #define R_HASH_TABLE_VECTOR                                         0x30
 #define R_TX_CONTROL                                                 0x0A0
-#define   O_TX_CONTROL__Tx15Halt                                     31
-#define   O_TX_CONTROL__Tx14Halt                                     30
-#define   O_TX_CONTROL__Tx13Halt                                     29
-#define   O_TX_CONTROL__Tx12Halt                                     28
-#define   O_TX_CONTROL__Tx11Halt                                     27
-#define   O_TX_CONTROL__Tx10Halt                                     26
-#define   O_TX_CONTROL__Tx9Halt                                      25
-#define   O_TX_CONTROL__Tx8Halt                                      24
-#define   O_TX_CONTROL__Tx7Halt                                      23
-#define   O_TX_CONTROL__Tx6Halt                                      22
-#define   O_TX_CONTROL__Tx5Halt                                      21
-#define   O_TX_CONTROL__Tx4Halt                                      20
-#define   O_TX_CONTROL__Tx3Halt                                      19
-#define   O_TX_CONTROL__Tx2Halt                                      18
-#define   O_TX_CONTROL__Tx1Halt                                      17
-#define   O_TX_CONTROL__Tx0Halt                                      16
-#define   O_TX_CONTROL__TxIdle                                       15
-#define   O_TX_CONTROL__TxEnable                                     14
-#define   O_TX_CONTROL__TxThreshold                                  0
-#define   W_TX_CONTROL__TxThreshold                                  14
+#define   O_TX_CONTROL__TX15HALT                                     31
+#define   O_TX_CONTROL__TX14HALT                                     30
+#define   O_TX_CONTROL__TX13HALT                                     29
+#define   O_TX_CONTROL__TX12HALT                                     28
+#define   O_TX_CONTROL__TX11HALT                                     27
+#define   O_TX_CONTROL__TX10HALT                                     26
+#define   O_TX_CONTROL__TX9HALT                                      25
+#define   O_TX_CONTROL__TX8HALT                                      24
+#define   O_TX_CONTROL__TX7HALT                                      23
+#define   O_TX_CONTROL__TX6HALT                                      22
+#define   O_TX_CONTROL__TX5HALT                                      21
+#define   O_TX_CONTROL__TX4HALT                                      20
+#define   O_TX_CONTROL__TX3HALT                                      19
+#define   O_TX_CONTROL__TX2HALT                                      18
+#define   O_TX_CONTROL__TX1HALT                                      17
+#define   O_TX_CONTROL__TX0HALT                                      16
+#define   O_TX_CONTROL__TXIDLE                                       15
+#define   O_TX_CONTROL__TXENABLE                                     14
+#define   O_TX_CONTROL__TXTHRESHOLD                                  0
+#define   W_TX_CONTROL__TXTHRESHOLD                                  14
 #define R_RX_CONTROL                                                 0x0A1
 #define   O_RX_CONTROL__RGMII                                        10
-#define   O_RX_CONTROL__SoftReset			             2
-#define   O_RX_CONTROL__RxHalt                                       1
-#define   O_RX_CONTROL__RxEnable                                     0
+#define   O_RX_CONTROL__SOFTRESET			             2
+#define   O_RX_CONTROL__RXHALT                                       1
+#define   O_RX_CONTROL__RXENABLE                                     0
 #define R_DESC_PACK_CTRL                                            0x0A2
-#define   O_DESC_PACK_CTRL__ByteOffset                              17
-#define   W_DESC_PACK_CTRL__ByteOffset                              3
-#define   O_DESC_PACK_CTRL__PrePadEnable                            16
-#define   O_DESC_PACK_CTRL__MaxEntry                                14
-#define   W_DESC_PACK_CTRL__MaxEntry                                2
-#define   O_DESC_PACK_CTRL__RegularSize                             0
-#define   W_DESC_PACK_CTRL__RegularSize                             14
+#define   O_DESC_PACK_CTRL__BYTEOFFSET                              17
+#define   W_DESC_PACK_CTRL__BYTEOFFSET                              3
+#define   O_DESC_PACK_CTRL__PREPADENABLE                            16
+#define   O_DESC_PACK_CTRL__MAXENTRY                                14
+#define   W_DESC_PACK_CTRL__MAXENTRY                                2
+#define   O_DESC_PACK_CTRL__REGULARSIZE                             0
+#define   W_DESC_PACK_CTRL__REGULARSIZE                             14
 #define R_STATCTRL                                                  0x0A3
-#define   O_STATCTRL__OverFlowEn                                    4
+#define   O_STATCTRL__OVERFLOWEN                                    4
 #define   O_STATCTRL__GIG                                           3
-#define   O_STATCTRL__Sten                                          2
-#define   O_STATCTRL__ClrCnt                                        1
-#define   O_STATCTRL__AutoZ                                         0
+#define   O_STATCTRL__STEN                                          2
+#define   O_STATCTRL__CLRCNT                                        1
+#define   O_STATCTRL__AUTOZ                                         0
 #define R_L2ALLOCCTRL                                               0x0A4
-#define   O_L2ALLOCCTRL__TxL2Allocate                               9
-#define   W_L2ALLOCCTRL__TxL2Allocate                               9
-#define   O_L2ALLOCCTRL__RxL2Allocate                               0
-#define   W_L2ALLOCCTRL__RxL2Allocate                               9
+#define   O_L2ALLOCCTRL__TXL2ALLOCATE                               9
+#define   W_L2ALLOCCTRL__TXL2ALLOCATE                               9
+#define   O_L2ALLOCCTRL__RXL2ALLOCATE                               0
+#define   W_L2ALLOCCTRL__RXL2ALLOCATE                               9
 #define R_INTMASK                                                   0x0A5
-#define   O_INTMASK__Spi4TxError                                     28
-#define   O_INTMASK__Spi4RxError                                     27
-#define   O_INTMASK__RGMIIHalfDupCollision                           27
-#define   O_INTMASK__Abort                                           26
-#define   O_INTMASK__Underrun                                        25
-#define   O_INTMASK__DiscardPacket                                   24
-#define   O_INTMASK__AsyncFifoFull                                   23
-#define   O_INTMASK__TagFull                                         22
-#define   O_INTMASK__Class3Full                                      21
-#define   O_INTMASK__C3EarlyFull                                     20
-#define   O_INTMASK__Class2Full                                      19
-#define   O_INTMASK__C2EarlyFull                                     18
-#define   O_INTMASK__Class1Full                                      17
-#define   O_INTMASK__C1EarlyFull                                     16
-#define   O_INTMASK__Class0Full                                      15
-#define   O_INTMASK__C0EarlyFull                                     14
-#define   O_INTMASK__RxDataFull                                      13
-#define   O_INTMASK__RxEarlyFull                                     12
-#define   O_INTMASK__RFreeEmpty                                      9
-#define   O_INTMASK__RFEarlyEmpty                                    8
-#define   O_INTMASK__P2PSpillEcc                                     7
-#define   O_INTMASK__FreeDescFull                                    5
-#define   O_INTMASK__FreeEarlyFull                                   4
-#define   O_INTMASK__TxFetchError                                    3
-#define   O_INTMASK__StatCarry                                       2
-#define   O_INTMASK__MDInt                                           1
-#define   O_INTMASK__TxIllegal                                       0
+#define   O_INTMASK__SPI4TXERROR                                     28
+#define   O_INTMASK__SPI4RXERROR                                     27
+#define   O_INTMASK__RGMIIHALFDUPCOLLISION                           27
+#define   O_INTMASK__ABORT                                           26
+#define   O_INTMASK__UNDERRUN                                        25
+#define   O_INTMASK__DISCARDPACKET                                   24
+#define   O_INTMASK__ASYNCFIFOFULL                                   23
+#define   O_INTMASK__TAGFULL                                         22
+#define   O_INTMASK__CLASS3FULL                                      21
+#define   O_INTMASK__C3EARLYFULL                                     20
+#define   O_INTMASK__CLASS2FULL                                      19
+#define   O_INTMASK__C2EARLYFULL                                     18
+#define   O_INTMASK__CLASS1FULL                                      17
+#define   O_INTMASK__C1EARLYFULL                                     16
+#define   O_INTMASK__CLASS0FULL                                      15
+#define   O_INTMASK__C0EARLYFULL                                     14
+#define   O_INTMASK__RXDATAFULL                                      13
+#define   O_INTMASK__RXEARLYFULL                                     12
+#define   O_INTMASK__RFREEEMPTY                                      9
+#define   O_INTMASK__RFEARLYEMPTY                                    8
+#define   O_INTMASK__P2PSPILLECC                                     7
+#define   O_INTMASK__FREEDESCFULL                                    5
+#define   O_INTMASK__FREEEARLYFULL                                   4
+#define   O_INTMASK__TXFETCHERROR                                    3
+#define   O_INTMASK__STATCARRY                                       2
+#define   O_INTMASK__MDINT                                           1
+#define   O_INTMASK__TXILLEGAL                                       0
 #define R_INTREG                                                    0x0A6
-#define   O_INTREG__Spi4TxError                                     28
-#define   O_INTREG__Spi4RxError                                     27
-#define   O_INTREG__RGMIIHalfDupCollision                           27
-#define   O_INTREG__Abort                                           26
-#define   O_INTREG__Underrun                                        25
-#define   O_INTREG__DiscardPacket                                   24
-#define   O_INTREG__AsyncFifoFull                                   23
-#define   O_INTREG__TagFull                                         22
-#define   O_INTREG__Class3Full                                      21
-#define   O_INTREG__C3EarlyFull                                     20
-#define   O_INTREG__Class2Full                                      19
-#define   O_INTREG__C2EarlyFull                                     18
-#define   O_INTREG__Class1Full                                      17
-#define   O_INTREG__C1EarlyFull                                     16
-#define   O_INTREG__Class0Full                                      15
-#define   O_INTREG__C0EarlyFull                                     14
-#define   O_INTREG__RxDataFull                                      13
-#define   O_INTREG__RxEarlyFull                                     12
-#define   O_INTREG__RFreeEmpty                                      9
-#define   O_INTREG__RFEarlyEmpty                                    8
-#define   O_INTREG__P2PSpillEcc                                     7
-#define   O_INTREG__FreeDescFull                                    5
-#define   O_INTREG__FreeEarlyFull                                   4
-#define   O_INTREG__TxFetchError                                    3
-#define   O_INTREG__StatCarry                                       2
-#define   O_INTREG__MDInt                                           1
-#define   O_INTREG__TxIllegal                                       0
+#define   O_INTREG__SPI4TXERROR                                     28
+#define   O_INTREG__SPI4RXERROR                                     27
+#define   O_INTREG__RGMIIHALFDUPCOLLISION                           27
+#define   O_INTREG__ABORT                                           26
+#define   O_INTREG__UNDERRUN                                        25
+#define   O_INTREG__DISCARDPACKET                                   24
+#define   O_INTREG__ASYNCFIFOFULL                                   23
+#define   O_INTREG__TAGFULL                                         22
+#define   O_INTREG__CLASS3FULL                                      21
+#define   O_INTREG__C3EARLYFULL                                     20
+#define   O_INTREG__CLASS2FULL                                      19
+#define   O_INTREG__C2EARLYFULL                                     18
+#define   O_INTREG__CLASS1FULL                                      17
+#define   O_INTREG__C1EARLYFULL                                     16
+#define   O_INTREG__CLASS0FULL                                      15
+#define   O_INTREG__C0EARLYFULL                                     14
+#define   O_INTREG__RXDATAFULL                                      13
+#define   O_INTREG__RXEARLYFULL                                     12
+#define   O_INTREG__RFREEEMPTY                                      9
+#define   O_INTREG__RFEARLYEMPTY                                    8
+#define   O_INTREG__P2PSPILLECC                                     7
+#define   O_INTREG__FREEDESCFULL                                    5
+#define   O_INTREG__FREEEARLYFULL                                   4
+#define   O_INTREG__TXFETCHERROR                                    3
+#define   O_INTREG__STATCARRY                                       2
+#define   O_INTREG__MDINT                                           1
+#define   O_INTREG__TXILLEGAL                                       0
 #define R_TXRETRY                                                   0x0A7
-#define   O_TXRETRY__CollisionRetry                                 6
-#define   O_TXRETRY__BusErrorRetry                                  5
-#define   O_TXRETRY__UnderRunRetry                                  4
-#define   O_TXRETRY__Retries                                        0
-#define   W_TXRETRY__Retries                                        4
+#define   O_TXRETRY__COLLISIONRETRY                                 6
+#define   O_TXRETRY__BUSERRORRETRY                                  5
+#define   O_TXRETRY__UNDERRUNRETRY                                  4
+#define   O_TXRETRY__RETRIES                                        0
+#define   W_TXRETRY__RETRIES                                        4
 #define R_CORECONTROL                                               0x0A8
-#define   O_CORECONTROL__ErrorThread                                4
-#define   W_CORECONTROL__ErrorThread                                7
-#define   O_CORECONTROL__Shutdown                                   2
-#define   O_CORECONTROL__Speed                                      0
-#define   W_CORECONTROL__Speed                                      2
+#define   O_CORECONTROL__ERRORTHREAD                                4
+#define   W_CORECONTROL__ERRORTHREAD                                7
+#define   O_CORECONTROL__SHUTDOWN                                   2
+#define   O_CORECONTROL__SPEED                                      0
+#define   W_CORECONTROL__SPEED                                      2
 #define R_BYTEOFFSET0                                               0x0A9
 #define R_BYTEOFFSET1                                               0x0AA
 #define R_L2TYPE_0                                                  0x0F0
-#define   O_L2TYPE__ExtraHdrProtoSize                               26
-#define   W_L2TYPE__ExtraHdrProtoSize                               5
-#define   O_L2TYPE__ExtraHdrProtoOffset                             20
-#define   W_L2TYPE__ExtraHdrProtoOffset                             6
-#define   O_L2TYPE__ExtraHeaderSize                                 14
-#define   W_L2TYPE__ExtraHeaderSize                                 6
-#define   O_L2TYPE__ProtoOffset                                     8
-#define   W_L2TYPE__ProtoOffset                                     6
-#define   O_L2TYPE__L2HdrOffset                                     2
-#define   W_L2TYPE__L2HdrOffset                                     6
-#define   O_L2TYPE__L2Proto                                         0
-#define   W_L2TYPE__L2Proto                                         2
+#define   O_L2TYPE__EXTRAHDRPROTOSIZE                               26
+#define   W_L2TYPE__EXTRAHDRPROTOSIZE                               5
+#define   O_L2TYPE__EXTRAHDRPROTOOFFSET                             20
+#define   W_L2TYPE__EXTRAHDRPROTOOFFSET                             6
+#define   O_L2TYPE__EXTRAHEADERSIZE                                 14
+#define   W_L2TYPE__EXTRAHEADERSIZE                                 6
+#define   O_L2TYPE__PROTOOFFSET                                     8
+#define   W_L2TYPE__PROTOOFFSET                                     6
+#define   O_L2TYPE__L2HDROFFSET                                     2
+#define   W_L2TYPE__L2HDROFFSET                                     6
+#define   O_L2TYPE__L2PROTO                                         0
+#define   W_L2TYPE__L2PROTO                                         2
 #define R_L2TYPE_1                                                  0xF0
 #define R_L2TYPE_2                                                  0xF0
 #define R_L2TYPE_3                                                  0xF0
 #define R_PARSERCONFIGREG                                           0x100
-#define   O_PARSERCONFIGREG__CRCHashPoly                            8
-#define   W_PARSERCONFIGREG__CRCHashPoly                            7
-#define   O_PARSERCONFIGREG__PrePadOffset                           4
-#define   W_PARSERCONFIGREG__PrePadOffset                           4
-#define   O_PARSERCONFIGREG__UseCAM                                 2
-#define   O_PARSERCONFIGREG__UseHASH                                1
-#define   O_PARSERCONFIGREG__UseProto                               0
+#define   O_PARSERCONFIGREG__CRCHASHPOLY                            8
+#define   W_PARSERCONFIGREG__CRCHASHPOLY                            7
+#define   O_PARSERCONFIGREG__PREPADOFFSET                           4
+#define   W_PARSERCONFIGREG__PREPADOFFSET                           4
+#define   O_PARSERCONFIGREG__USECAM                                 2
+#define   O_PARSERCONFIGREG__USEHASH                                1
+#define   O_PARSERCONFIGREG__USEPROTO                               0
 #define R_L3CTABLE                                                  0x140
-#define   O_L3CTABLE__Offset0                                       25
-#define   W_L3CTABLE__Offset0                                       7
-#define   O_L3CTABLE__Len0                                          21
-#define   W_L3CTABLE__Len0                                          4
-#define   O_L3CTABLE__Offset1                                       14
-#define   W_L3CTABLE__Offset1                                       7
-#define   O_L3CTABLE__Len1                                          10
-#define   W_L3CTABLE__Len1                                          4
-#define   O_L3CTABLE__Offset2                                       4
-#define   W_L3CTABLE__Offset2                                       6
-#define   O_L3CTABLE__Len2                                          0
-#define   W_L3CTABLE__Len2                                          4
-#define   O_L3CTABLE__L3HdrOffset                                   26
-#define   W_L3CTABLE__L3HdrOffset                                   6
-#define   O_L3CTABLE__L4ProtoOffset                                 20
-#define   W_L3CTABLE__L4ProtoOffset                                 6
-#define   O_L3CTABLE__IPChksumCompute                               19
-#define   O_L3CTABLE__L4Classify                                    18
-#define   O_L3CTABLE__L2Proto                                       16
-#define   W_L3CTABLE__L2Proto                                       2
-#define   O_L3CTABLE__L3ProtoKey                                    0
-#define   W_L3CTABLE__L3ProtoKey                                    16
+#define   O_L3CTABLE__OFFSET0                                       25
+#define   W_L3CTABLE__OFFSET0                                       7
+#define   O_L3CTABLE__LEN0                                          21
+#define   W_L3CTABLE__LEN0                                          4
+#define   O_L3CTABLE__OFFSET1                                       14
+#define   W_L3CTABLE__OFFSET1                                       7
+#define   O_L3CTABLE__LEN1                                          10
+#define   W_L3CTABLE__LEN1                                          4
+#define   O_L3CTABLE__OFFSET2                                       4
+#define   W_L3CTABLE__OFFSET2                                       6
+#define   O_L3CTABLE__LEN2                                          0
+#define   W_L3CTABLE__LEN2                                          4
+#define   O_L3CTABLE__L3HDROFFSET                                   26
+#define   W_L3CTABLE__L3HDROFFSET                                   6
+#define   O_L3CTABLE__L4PROTOOFFSET                                 20
+#define   W_L3CTABLE__L4PROTOOFFSET                                 6
+#define   O_L3CTABLE__IPCHKSUMCOMPUTE                               19
+#define   O_L3CTABLE__L4CLASSIFY                                    18
+#define   O_L3CTABLE__L2PROTO                                       16
+#define   W_L3CTABLE__L2PROTO                                       2
+#define   O_L3CTABLE__L3PROTOKEY                                    0
+#define   W_L3CTABLE__L3PROTOKEY                                    16
 #define R_L4CTABLE                                                  0x160
-#define   O_L4CTABLE__Offset0                                       21
-#define   W_L4CTABLE__Offset0                                       6
-#define   O_L4CTABLE__Len0                                          17
-#define   W_L4CTABLE__Len0                                          4
-#define   O_L4CTABLE__Offset1                                       11
-#define   W_L4CTABLE__Offset1                                       6
-#define   O_L4CTABLE__Len1                                          7
-#define   W_L4CTABLE__Len1                                          4
-#define   O_L4CTABLE__TCPChksumEnable                               0
+#define   O_L4CTABLE__OFFSET0                                       21
+#define   W_L4CTABLE__OFFSET0                                       6
+#define   O_L4CTABLE__LEN0                                          17
+#define   W_L4CTABLE__LEN0                                          4
+#define   O_L4CTABLE__OFFSET1                                       11
+#define   W_L4CTABLE__OFFSET1                                       6
+#define   O_L4CTABLE__LEN1                                          7
+#define   W_L4CTABLE__LEN1                                          4
+#define   O_L4CTABLE__TCPCHKSUMENABLE                               0
 #define R_CAM4X128TABLE                                             0x172
-#define   O_CAM4X128TABLE__ClassId                                  7
-#define   W_CAM4X128TABLE__ClassId                                  2
-#define   O_CAM4X128TABLE__BucketId                                 1
-#define   W_CAM4X128TABLE__BucketId                                 6
-#define   O_CAM4X128TABLE__UseBucket                                0
+#define   O_CAM4X128TABLE__CLASSID                                  7
+#define   W_CAM4X128TABLE__CLASSID                                  2
+#define   O_CAM4X128TABLE__BUCKETID                                 1
+#define   W_CAM4X128TABLE__BUCKETID                                 6
+#define   O_CAM4X128TABLE__USEBUCKET                                0
 #define R_CAM4X128KEY                                               0x180
 #define R_TRANSLATETABLE                                            0x1A0
 #define R_DMACR0                                                    0x200
-#define   O_DMACR0__Data0WrMaxCr                                    27
-#define   W_DMACR0__Data0WrMaxCr                                    3
-#define   O_DMACR0__Data0RdMaxCr                                    24
-#define   W_DMACR0__Data0RdMaxCr                                    3
-#define   O_DMACR0__Data1WrMaxCr                                    21
-#define   W_DMACR0__Data1WrMaxCr                                    3
-#define   O_DMACR0__Data1RdMaxCr                                    18
-#define   W_DMACR0__Data1RdMaxCr                                    3
-#define   O_DMACR0__Data2WrMaxCr                                    15
-#define   W_DMACR0__Data2WrMaxCr                                    3
-#define   O_DMACR0__Data2RdMaxCr                                    12
-#define   W_DMACR0__Data2RdMaxCr                                    3
-#define   O_DMACR0__Data3WrMaxCr                                    9
-#define   W_DMACR0__Data3WrMaxCr                                    3
-#define   O_DMACR0__Data3RdMaxCr                                    6
-#define   W_DMACR0__Data3RdMaxCr                                    3
-#define   O_DMACR0__Data4WrMaxCr                                    3
-#define   W_DMACR0__Data4WrMaxCr                                    3
-#define   O_DMACR0__Data4RdMaxCr                                    0
-#define   W_DMACR0__Data4RdMaxCr                                    3
+#define   O_DMACR0__DATA0WRMAXCR                                    27
+#define   W_DMACR0__DATA0WRMAXCR                                    3
+#define   O_DMACR0__DATA0RDMAXCR                                    24
+#define   W_DMACR0__DATA0RDMAXCR                                    3
+#define   O_DMACR0__DATA1WRMAXCR                                    21
+#define   W_DMACR0__DATA1WRMAXCR                                    3
+#define   O_DMACR0__DATA1RDMAXCR                                    18
+#define   W_DMACR0__DATA1RDMAXCR                                    3
+#define   O_DMACR0__DATA2WRMAXCR                                    15
+#define   W_DMACR0__DATA2WRMAXCR                                    3
+#define   O_DMACR0__DATA2RDMAXCR                                    12
+#define   W_DMACR0__DATA2RDMAXCR                                    3
+#define   O_DMACR0__DATA3WRMAXCR                                    9
+#define   W_DMACR0__DATA3WRMAXCR                                    3
+#define   O_DMACR0__DATA3RDMAXCR                                    6
+#define   W_DMACR0__DATA3RDMAXCR                                    3
+#define   O_DMACR0__DATA4WRMAXCR                                    3
+#define   W_DMACR0__DATA4WRMAXCR                                    3
+#define   O_DMACR0__DATA4RDMAXCR                                    0
+#define   W_DMACR0__DATA4RDMAXCR                                    3
 #define R_DMACR1                                                    0x201
-#define   O_DMACR1__Data5WrMaxCr                                    27
-#define   W_DMACR1__Data5WrMaxCr                                    3
-#define   O_DMACR1__Data5RdMaxCr                                    24
-#define   W_DMACR1__Data5RdMaxCr                                    3
-#define   O_DMACR1__Data6WrMaxCr                                    21
-#define   W_DMACR1__Data6WrMaxCr                                    3
-#define   O_DMACR1__Data6RdMaxCr                                    18
-#define   W_DMACR1__Data6RdMaxCr                                    3
-#define   O_DMACR1__Data7WrMaxCr                                    15
-#define   W_DMACR1__Data7WrMaxCr                                    3
-#define   O_DMACR1__Data7RdMaxCr                                    12
-#define   W_DMACR1__Data7RdMaxCr                                    3
-#define   O_DMACR1__Data8WrMaxCr                                    9
-#define   W_DMACR1__Data8WrMaxCr                                    3
-#define   O_DMACR1__Data8RdMaxCr                                    6
-#define   W_DMACR1__Data8RdMaxCr                                    3
-#define   O_DMACR1__Data9WrMaxCr                                    3
-#define   W_DMACR1__Data9WrMaxCr                                    3
-#define   O_DMACR1__Data9RdMaxCr                                    0
-#define   W_DMACR1__Data9RdMaxCr                                    3
+#define   O_DMACR1__DATA5WRMAXCR                                    27
+#define   W_DMACR1__DATA5WRMAXCR                                    3
+#define   O_DMACR1__DATA5RDMAXCR                                    24
+#define   W_DMACR1__DATA5RDMAXCR                                    3
+#define   O_DMACR1__DATA6WRMAXCR                                    21
+#define   W_DMACR1__DATA6WRMAXCR                                    3
+#define   O_DMACR1__DATA6RDMAXCR                                    18
+#define   W_DMACR1__DATA6RDMAXCR                                    3
+#define   O_DMACR1__DATA7WRMAXCR                                    15
+#define   W_DMACR1__DATA7WRMAXCR                                    3
+#define   O_DMACR1__DATA7RDMAXCR                                    12
+#define   W_DMACR1__DATA7RDMAXCR                                    3
+#define   O_DMACR1__DATA8WRMAXCR                                    9
+#define   W_DMACR1__DATA8WRMAXCR                                    3
+#define   O_DMACR1__DATA8RDMAXCR                                    6
+#define   W_DMACR1__DATA8RDMAXCR                                    3
+#define   O_DMACR1__DATA9WRMAXCR                                    3
+#define   W_DMACR1__DATA9WRMAXCR                                    3
+#define   O_DMACR1__DATA9RDMAXCR                                    0
+#define   W_DMACR1__DATA9RDMAXCR                                    3
 #define R_DMACR2                                                    0x202
-#define   O_DMACR2__Data10WrMaxCr                                   27
-#define   W_DMACR2__Data10WrMaxCr                                   3
-#define   O_DMACR2__Data10RdMaxCr                                   24
-#define   W_DMACR2__Data10RdMaxCr                                   3
-#define   O_DMACR2__Data11WrMaxCr                                   21
-#define   W_DMACR2__Data11WrMaxCr                                   3
-#define   O_DMACR2__Data11RdMaxCr                                   18
-#define   W_DMACR2__Data11RdMaxCr                                   3
-#define   O_DMACR2__Data12WrMaxCr                                   15
-#define   W_DMACR2__Data12WrMaxCr                                   3
-#define   O_DMACR2__Data12RdMaxCr                                   12
-#define   W_DMACR2__Data12RdMaxCr                                   3
-#define   O_DMACR2__Data13WrMaxCr                                   9
-#define   W_DMACR2__Data13WrMaxCr                                   3
-#define   O_DMACR2__Data13RdMaxCr                                   6
-#define   W_DMACR2__Data13RdMaxCr                                   3
-#define   O_DMACR2__Data14WrMaxCr                                   3
-#define   W_DMACR2__Data14WrMaxCr                                   3
-#define   O_DMACR2__Data14RdMaxCr                                   0
-#define   W_DMACR2__Data14RdMaxCr                                   3
+#define   O_DMACR2__DATA10WRMAXCR                                   27
+#define   W_DMACR2__DATA10WRMAXCR                                   3
+#define   O_DMACR2__DATA10RDMAXCR                                   24
+#define   W_DMACR2__DATA10RDMAXCR                                   3
+#define   O_DMACR2__DATA11WRMAXCR                                   21
+#define   W_DMACR2__DATA11WRMAXCR                                   3
+#define   O_DMACR2__DATA11RDMAXCR                                   18
+#define   W_DMACR2__DATA11RDMAXCR                                   3
+#define   O_DMACR2__DATA12WRMAXCR                                   15
+#define   W_DMACR2__DATA12WRMAXCR                                   3
+#define   O_DMACR2__DATA12RDMAXCR                                   12
+#define   W_DMACR2__DATA12RDMAXCR                                   3
+#define   O_DMACR2__DATA13WRMAXCR                                   9
+#define   W_DMACR2__DATA13WRMAXCR                                   3
+#define   O_DMACR2__DATA13RDMAXCR                                   6
+#define   W_DMACR2__DATA13RDMAXCR                                   3
+#define   O_DMACR2__DATA14WRMAXCR                                   3
+#define   W_DMACR2__DATA14WRMAXCR                                   3
+#define   O_DMACR2__DATA14RDMAXCR                                   0
+#define   W_DMACR2__DATA14RDMAXCR                                   3
 #define R_DMACR3                                                    0x203
-#define   O_DMACR3__Data15WrMaxCr                                   27
-#define   W_DMACR3__Data15WrMaxCr                                   3
-#define   O_DMACR3__Data15RdMaxCr                                   24
-#define   W_DMACR3__Data15RdMaxCr                                   3
-#define   O_DMACR3__SpClassWrMaxCr                                  21
-#define   W_DMACR3__SpClassWrMaxCr                                  3
-#define   O_DMACR3__SpClassRdMaxCr                                  18
-#define   W_DMACR3__SpClassRdMaxCr                                  3
-#define   O_DMACR3__JumFrInWrMaxCr                                  15
-#define   W_DMACR3__JumFrInWrMaxCr                                  3
-#define   O_DMACR3__JumFrInRdMaxCr                                  12
-#define   W_DMACR3__JumFrInRdMaxCr                                  3
-#define   O_DMACR3__RegFrInWrMaxCr                                  9
-#define   W_DMACR3__RegFrInWrMaxCr                                  3
-#define   O_DMACR3__RegFrInRdMaxCr                                  6
-#define   W_DMACR3__RegFrInRdMaxCr                                  3
-#define   O_DMACR3__FrOutWrMaxCr                                    3
-#define   W_DMACR3__FrOutWrMaxCr                                    3
-#define   O_DMACR3__FrOutRdMaxCr                                    0
-#define   W_DMACR3__FrOutRdMaxCr                                    3
+#define   O_DMACR3__DATA15WRMAXCR                                   27
+#define   W_DMACR3__DATA15WRMAXCR                                   3
+#define   O_DMACR3__DATA15RDMAXCR                                   24
+#define   W_DMACR3__DATA15RDMAXCR                                   3
+#define   O_DMACR3__SPCLASSWRMAXCR                                  21
+#define   W_DMACR3__SPCLASSWRMAXCR                                  3
+#define   O_DMACR3__SPCLASSRDMAXCR                                  18
+#define   W_DMACR3__SPCLASSRDMAXCR                                  3
+#define   O_DMACR3__JUMFRINWRMAXCR                                  15
+#define   W_DMACR3__JUMFRINWRMAXCR                                  3
+#define   O_DMACR3__JUMFRINRDMAXCR                                  12
+#define   W_DMACR3__JUMFRINRDMAXCR                                  3
+#define   O_DMACR3__REGFRINWRMAXCR                                  9
+#define   W_DMACR3__REGFRINWRMAXCR                                  3
+#define   O_DMACR3__REGFRINRDMAXCR                                  6
+#define   W_DMACR3__REGFRINRDMAXCR                                  3
+#define   O_DMACR3__FROUTWRMAXCR                                    3
+#define   W_DMACR3__FROUTWRMAXCR                                    3
+#define   O_DMACR3__FROUTRDMAXCR                                    0
+#define   W_DMACR3__FROUTRDMAXCR                                    3
 #define R_REG_FRIN_SPILL_MEM_START_0                                0x204
-#define   O_REG_FRIN_SPILL_MEM_START_0__RegFrInSpillMemStart0        0
-#define   W_REG_FRIN_SPILL_MEM_START_0__RegFrInSpillMemStart0       32
+#define   O_REG_FRIN_SPILL_MEM_START_0__REGFRINSPILLMEMSTART0        0
+#define   W_REG_FRIN_SPILL_MEM_START_0__REGFRINSPILLMEMSTART0       32
 #define R_REG_FRIN_SPILL_MEM_START_1                                0x205
-#define   O_REG_FRIN_SPILL_MEM_START_1__RegFrInSpillMemStart1        0
-#define   W_REG_FRIN_SPILL_MEM_START_1__RegFrInSpillMemStart1        3
+#define   O_REG_FRIN_SPILL_MEM_START_1__REGFRINSPILLMEMSTART1        0
+#define   W_REG_FRIN_SPILL_MEM_START_1__REGFRINSPILLMEMSTART1        3
 #define R_REG_FRIN_SPILL_MEM_SIZE                                   0x206
-#define   O_REG_FRIN_SPILL_MEM_SIZE__RegFrInSpillMemSize             0
-#define   W_REG_FRIN_SPILL_MEM_SIZE__RegFrInSpillMemSize            32
+#define   O_REG_FRIN_SPILL_MEM_SIZE__REGFRINSPILLMEMSIZE             0
+#define   W_REG_FRIN_SPILL_MEM_SIZE__REGFRINSPILLMEMSIZE            32
 #define R_FROUT_SPILL_MEM_START_0                                   0x207
-#define   O_FROUT_SPILL_MEM_START_0__FrOutSpillMemStart0             0
-#define   W_FROUT_SPILL_MEM_START_0__FrOutSpillMemStart0            32
+#define   O_FROUT_SPILL_MEM_START_0__FROUTSPILLMEMSTART0             0
+#define   W_FROUT_SPILL_MEM_START_0__FROUTSPILLMEMSTART0            32
 #define R_FROUT_SPILL_MEM_START_1                                   0x208
-#define   O_FROUT_SPILL_MEM_START_1__FrOutSpillMemStart1             0
-#define   W_FROUT_SPILL_MEM_START_1__FrOutSpillMemStart1             3
+#define   O_FROUT_SPILL_MEM_START_1__FROUTSPILLMEMSTART1             0
+#define   W_FROUT_SPILL_MEM_START_1__FROUTSPILLMEMSTART1             3
 #define R_FROUT_SPILL_MEM_SIZE                                      0x209
-#define   O_FROUT_SPILL_MEM_SIZE__FrOutSpillMemSize                  0
-#define   W_FROUT_SPILL_MEM_SIZE__FrOutSpillMemSize                 32
+#define   O_FROUT_SPILL_MEM_SIZE__FROUTSPILLMEMSIZE                  0
+#define   W_FROUT_SPILL_MEM_SIZE__FROUTSPILLMEMSIZE                 32
 #define R_CLASS0_SPILL_MEM_START_0                                  0x20A
-#define   O_CLASS0_SPILL_MEM_START_0__Class0SpillMemStart0           0
-#define   W_CLASS0_SPILL_MEM_START_0__Class0SpillMemStart0          32
+#define   O_CLASS0_SPILL_MEM_START_0__CLASS0SPILLMEMSTART0           0
+#define   W_CLASS0_SPILL_MEM_START_0__CLASS0SPILLMEMSTART0          32
 #define R_CLASS0_SPILL_MEM_START_1                                  0x20B
-#define   O_CLASS0_SPILL_MEM_START_1__Class0SpillMemStart1           0
-#define   W_CLASS0_SPILL_MEM_START_1__Class0SpillMemStart1           3
+#define   O_CLASS0_SPILL_MEM_START_1__CLASS0SPILLMEMSTART1           0
+#define   W_CLASS0_SPILL_MEM_START_1__CLASS0SPILLMEMSTART1           3
 #define R_CLASS0_SPILL_MEM_SIZE                                     0x20C
-#define   O_CLASS0_SPILL_MEM_SIZE__Class0SpillMemSize                0
-#define   W_CLASS0_SPILL_MEM_SIZE__Class0SpillMemSize               32
+#define   O_CLASS0_SPILL_MEM_SIZE__CLASS0SPILLMEMSIZE                0
+#define   W_CLASS0_SPILL_MEM_SIZE__CLASS0SPILLMEMSIZE               32
 #define R_JUMFRIN_SPILL_MEM_START_0                                 0x20D
-#define   O_JUMFRIN_SPILL_MEM_START_0__JumFrInSpillMemStar0          0
-#define   W_JUMFRIN_SPILL_MEM_START_0__JumFrInSpillMemStar0         32
+#define   O_JUMFRIN_SPILL_MEM_START_0__JUMFRINSPILLMEMSTART0          0
+#define   W_JUMFRIN_SPILL_MEM_START_0__JUMFRINSPILLMEMSTART0         32
 #define R_JUMFRIN_SPILL_MEM_START_1                                 0x20E
-#define   O_JUMFRIN_SPILL_MEM_START_1__JumFrInSpillMemStart1         0
-#define   W_JUMFRIN_SPILL_MEM_START_1__JumFrInSpillMemStart1         3
+#define   O_JUMFRIN_SPILL_MEM_START_1__JUMFRINSPILLMEMSTART1         0
+#define   W_JUMFRIN_SPILL_MEM_START_1__JUMFRINSPILLMEMSTART1         3
 #define R_JUMFRIN_SPILL_MEM_SIZE                                    0x20F
-#define   O_JUMFRIN_SPILL_MEM_SIZE__JumFrInSpillMemSize              0
-#define   W_JUMFRIN_SPILL_MEM_SIZE__JumFrInSpillMemSize             32
+#define   O_JUMFRIN_SPILL_MEM_SIZE__JUMFRINSPILLMEMSIZE              0
+#define   W_JUMFRIN_SPILL_MEM_SIZE__JUMFRINSPILLMEMSIZE             32
 #define R_CLASS1_SPILL_MEM_START_0                                  0x210
-#define   O_CLASS1_SPILL_MEM_START_0__Class1SpillMemStart0           0
-#define   W_CLASS1_SPILL_MEM_START_0__Class1SpillMemStart0          32
+#define   O_CLASS1_SPILL_MEM_START_0__CLASS1SPILLMEMSTART0           0
+#define   W_CLASS1_SPILL_MEM_START_0__CLASS1SPILLMEMSTART0          32
 #define R_CLASS1_SPILL_MEM_START_1                                  0x211
-#define   O_CLASS1_SPILL_MEM_START_1__Class1SpillMemStart1           0
-#define   W_CLASS1_SPILL_MEM_START_1__Class1SpillMemStart1           3
+#define   O_CLASS1_SPILL_MEM_START_1__CLASS1SPILLMEMSTART1           0
+#define   W_CLASS1_SPILL_MEM_START_1__CLASS1SPILLMEMSTART1           3
 #define R_CLASS1_SPILL_MEM_SIZE                                     0x212
-#define   O_CLASS1_SPILL_MEM_SIZE__Class1SpillMemSize                0
-#define   W_CLASS1_SPILL_MEM_SIZE__Class1SpillMemSize               32
+#define   O_CLASS1_SPILL_MEM_SIZE__CLASS1SPILLMEMSIZE                0
+#define   W_CLASS1_SPILL_MEM_SIZE__CLASS1SPILLMEMSIZE               32
 #define R_CLASS2_SPILL_MEM_START_0                                  0x213
-#define   O_CLASS2_SPILL_MEM_START_0__Class2SpillMemStart0           0
-#define   W_CLASS2_SPILL_MEM_START_0__Class2SpillMemStart0          32
+#define   O_CLASS2_SPILL_MEM_START_0__CLASS2SPILLMEMSTART0           0
+#define   W_CLASS2_SPILL_MEM_START_0__CLASS2SPILLMEMSTART0          32
 #define R_CLASS2_SPILL_MEM_START_1                                  0x214
-#define   O_CLASS2_SPILL_MEM_START_1__Class2SpillMemStart1           0
-#define   W_CLASS2_SPILL_MEM_START_1__Class2SpillMemStart1           3
+#define   O_CLASS2_SPILL_MEM_START_1__CLASS2SPILLMEMSTART1           0
+#define   W_CLASS2_SPILL_MEM_START_1__CLASS2SPILLMEMSTART1           3
 #define R_CLASS2_SPILL_MEM_SIZE                                     0x215
-#define   O_CLASS2_SPILL_MEM_SIZE__Class2SpillMemSize                0
-#define   W_CLASS2_SPILL_MEM_SIZE__Class2SpillMemSize               32
+#define   O_CLASS2_SPILL_MEM_SIZE__CLASS2SPILLMEMSIZE                0
+#define   W_CLASS2_SPILL_MEM_SIZE__CLASS2SPILLMEMSIZE               32
 #define R_CLASS3_SPILL_MEM_START_0                                  0x216
-#define   O_CLASS3_SPILL_MEM_START_0__Class3SpillMemStart0           0
-#define   W_CLASS3_SPILL_MEM_START_0__Class3SpillMemStart0          32
+#define   O_CLASS3_SPILL_MEM_START_0__CLASS3SPILLMEMSTART0           0
+#define   W_CLASS3_SPILL_MEM_START_0__CLASS3SPILLMEMSTART0          32
 #define R_CLASS3_SPILL_MEM_START_1                                  0x217
-#define   O_CLASS3_SPILL_MEM_START_1__Class3SpillMemStart1           0
-#define   W_CLASS3_SPILL_MEM_START_1__Class3SpillMemStart1           3
+#define   O_CLASS3_SPILL_MEM_START_1__CLASS3SPILLMEMSTART1           0
+#define   W_CLASS3_SPILL_MEM_START_1__CLASS3SPILLMEMSTART1           3
 #define R_CLASS3_SPILL_MEM_SIZE                                     0x218
-#define   O_CLASS3_SPILL_MEM_SIZE__Class3SpillMemSize                0
-#define   W_CLASS3_SPILL_MEM_SIZE__Class3SpillMemSize               32
+#define   O_CLASS3_SPILL_MEM_SIZE__CLASS3SPILLMEMSIZE                0
+#define   W_CLASS3_SPILL_MEM_SIZE__CLASS3SPILLMEMSIZE               32
 #define R_REG_FRIN1_SPILL_MEM_START_0                               0x219
 #define R_REG_FRIN1_SPILL_MEM_START_1                               0x21a
 #define R_REG_FRIN1_SPILL_MEM_SIZE                                  0x21b
@@ -679,244 +679,244 @@
 #define   O_SPISTRV3__EG_STRV_THRESH_15                             0
 #define   W_SPISTRV3__EG_STRV_THRESH_15                             7
 #define R_TXDATAFIFO0                                               0x221
-#define   O_TXDATAFIFO0__Tx0DataFifoStart                           24
-#define   W_TXDATAFIFO0__Tx0DataFifoStart                           7
-#define   O_TXDATAFIFO0__Tx0DataFifoSize                            16
-#define   W_TXDATAFIFO0__Tx0DataFifoSize                            7
-#define   O_TXDATAFIFO0__Tx1DataFifoStart                           8
-#define   W_TXDATAFIFO0__Tx1DataFifoStart                           7
-#define   O_TXDATAFIFO0__Tx1DataFifoSize                            0
-#define   W_TXDATAFIFO0__Tx1DataFifoSize                            7
+#define   O_TXDATAFIFO0__TX0DATAFIFOSTART                           24
+#define   W_TXDATAFIFO0__TX0DATAFIFOSTART                           7
+#define   O_TXDATAFIFO0__TX0DATAFIFOSIZE                            16
+#define   W_TXDATAFIFO0__TX0DATAFIFOSIZE                            7
+#define   O_TXDATAFIFO0__TX1DATAFIFOSTART                           8
+#define   W_TXDATAFIFO0__TX1DATAFIFOSTART                           7
+#define   O_TXDATAFIFO0__TX1DATAFIFOSIZE                            0
+#define   W_TXDATAFIFO0__TX1DATAFIFOSIZE                            7
 #define R_TXDATAFIFO1                                               0x222
-#define   O_TXDATAFIFO1__Tx2DataFifoStart                           24
-#define   W_TXDATAFIFO1__Tx2DataFifoStart                           7
-#define   O_TXDATAFIFO1__Tx2DataFifoSize                            16
-#define   W_TXDATAFIFO1__Tx2DataFifoSize                            7
-#define   O_TXDATAFIFO1__Tx3DataFifoStart                           8
-#define   W_TXDATAFIFO1__Tx3DataFifoStart                           7
-#define   O_TXDATAFIFO1__Tx3DataFifoSize                            0
-#define   W_TXDATAFIFO1__Tx3DataFifoSize                            7
+#define   O_TXDATAFIFO1__TX2DATAFIFOSTART                           24
+#define   W_TXDATAFIFO1__TX2DATAFIFOSTART                           7
+#define   O_TXDATAFIFO1__TX2DATAFIFOSIZE                            16
+#define   W_TXDATAFIFO1__TX2DATAFIFOSIZE                            7
+#define   O_TXDATAFIFO1__TX3DATAFIFOSTART                           8
+#define   W_TXDATAFIFO1__TX3DATAFIFOSTART                           7
+#define   O_TXDATAFIFO1__TX3DATAFIFOSIZE                            0
+#define   W_TXDATAFIFO1__TX3DATAFIFOSIZE                            7
 #define R_TXDATAFIFO2                                               0x223
-#define   O_TXDATAFIFO2__Tx4DataFifoStart                           24
-#define   W_TXDATAFIFO2__Tx4DataFifoStart                           7
-#define   O_TXDATAFIFO2__Tx4DataFifoSize                            16
-#define   W_TXDATAFIFO2__Tx4DataFifoSize                            7
-#define   O_TXDATAFIFO2__Tx5DataFifoStart                           8
-#define   W_TXDATAFIFO2__Tx5DataFifoStart                           7
-#define   O_TXDATAFIFO2__Tx5DataFifoSize                            0
-#define   W_TXDATAFIFO2__Tx5DataFifoSize                            7
+#define   O_TXDATAFIFO2__TX4DATAFIFOSTART                           24
+#define   W_TXDATAFIFO2__TX4DATAFIFOSTART                           7
+#define   O_TXDATAFIFO2__TX4DATAFIFOSIZE                            16
+#define   W_TXDATAFIFO2__TX4DATAFIFOSIZE                            7
+#define   O_TXDATAFIFO2__TX5DATAFIFOSTART                           8
+#define   W_TXDATAFIFO2__TX5DATAFIFOSTART                           7
+#define   O_TXDATAFIFO2__TX5DATAFIFOSIZE                            0
+#define   W_TXDATAFIFO2__TX5DATAFIFOSIZE                            7
 #define R_TXDATAFIFO3                                               0x224
-#define   O_TXDATAFIFO3__Tx6DataFifoStart                           24
-#define   W_TXDATAFIFO3__Tx6DataFifoStart                           7
-#define   O_TXDATAFIFO3__Tx6DataFifoSize                            16
-#define   W_TXDATAFIFO3__Tx6DataFifoSize                            7
-#define   O_TXDATAFIFO3__Tx7DataFifoStart                           8
-#define   W_TXDATAFIFO3__Tx7DataFifoStart                           7
-#define   O_TXDATAFIFO3__Tx7DataFifoSize                            0
-#define   W_TXDATAFIFO3__Tx7DataFifoSize                            7
+#define   O_TXDATAFIFO3__TX6DATAFIFOSTART                           24
+#define   W_TXDATAFIFO3__TX6DATAFIFOSTART                           7
+#define   O_TXDATAFIFO3__TX6DATAFIFOSIZE                            16
+#define   W_TXDATAFIFO3__TX6DATAFIFOSIZE                            7
+#define   O_TXDATAFIFO3__TX7DATAFIFOSTART                           8
+#define   W_TXDATAFIFO3__TX7DATAFIFOSTART                           7
+#define   O_TXDATAFIFO3__TX7DATAFIFOSIZE                            0
+#define   W_TXDATAFIFO3__TX7DATAFIFOSIZE                            7
 #define R_TXDATAFIFO4                                               0x225
-#define   O_TXDATAFIFO4__Tx8DataFifoStart                           24
-#define   W_TXDATAFIFO4__Tx8DataFifoStart                           7
-#define   O_TXDATAFIFO4__Tx8DataFifoSize                            16
-#define   W_TXDATAFIFO4__Tx8DataFifoSize                            7
-#define   O_TXDATAFIFO4__Tx9DataFifoStart                           8
-#define   W_TXDATAFIFO4__Tx9DataFifoStart                           7
-#define   O_TXDATAFIFO4__Tx9DataFifoSize                            0
-#define   W_TXDATAFIFO4__Tx9DataFifoSize                            7
+#define   O_TXDATAFIFO4__TX8DATAFIFOSTART                           24
+#define   W_TXDATAFIFO4__TX8DATAFIFOSTART                           7
+#define   O_TXDATAFIFO4__TX8DATAFIFOSIZE                            16
+#define   W_TXDATAFIFO4__TX8DATAFIFOSIZE                            7
+#define   O_TXDATAFIFO4__TX9DATAFIFOSTART                           8
+#define   W_TXDATAFIFO4__TX9DATAFIFOSTART                           7
+#define   O_TXDATAFIFO4__TX9DATAFIFOSIZE                            0
+#define   W_TXDATAFIFO4__TX9DATAFIFOSIZE                            7
 #define R_TXDATAFIFO5                                               0x226
-#define   O_TXDATAFIFO5__Tx10DataFifoStart                          24
-#define   W_TXDATAFIFO5__Tx10DataFifoStart                          7
-#define   O_TXDATAFIFO5__Tx10DataFifoSize                           16
-#define   W_TXDATAFIFO5__Tx10DataFifoSize                           7
-#define   O_TXDATAFIFO5__Tx11DataFifoStart                          8
-#define   W_TXDATAFIFO5__Tx11DataFifoStart                          7
-#define   O_TXDATAFIFO5__Tx11DataFifoSize                           0
-#define   W_TXDATAFIFO5__Tx11DataFifoSize                           7
+#define   O_TXDATAFIFO5__TX10DATAFIFOSTART                          24
+#define   W_TXDATAFIFO5__TX10DATAFIFOSTART                          7
+#define   O_TXDATAFIFO5__TX10DATAFIFOSIZE                           16
+#define   W_TXDATAFIFO5__TX10DATAFIFOSIZE                           7
+#define   O_TXDATAFIFO5__TX11DATAFIFOSTART                          8
+#define   W_TXDATAFIFO5__TX11DATAFIFOSTART                          7
+#define   O_TXDATAFIFO5__TX11DATAFIFOSIZE                           0
+#define   W_TXDATAFIFO5__TX11DATAFIFOSIZE                           7
 #define R_TXDATAFIFO6                                               0x227
-#define   O_TXDATAFIFO6__Tx12DataFifoStart                          24
-#define   W_TXDATAFIFO6__Tx12DataFifoStart                          7
-#define   O_TXDATAFIFO6__Tx12DataFifoSize                           16
-#define   W_TXDATAFIFO6__Tx12DataFifoSize                           7
-#define   O_TXDATAFIFO6__Tx13DataFifoStart                          8
-#define   W_TXDATAFIFO6__Tx13DataFifoStart                          7
-#define   O_TXDATAFIFO6__Tx13DataFifoSize                           0
-#define   W_TXDATAFIFO6__Tx13DataFifoSize                           7
+#define   O_TXDATAFIFO6__TX12DATAFIFOSTART                          24
+#define   W_TXDATAFIFO6__TX12DATAFIFOSTART                          7
+#define   O_TXDATAFIFO6__TX12DATAFIFOSIZE                           16
+#define   W_TXDATAFIFO6__TX12DATAFIFOSIZE                           7
+#define   O_TXDATAFIFO6__TX13DATAFIFOSTART                          8
+#define   W_TXDATAFIFO6__TX13DATAFIFOSTART                          7
+#define   O_TXDATAFIFO6__TX13DATAFIFOSIZE                           0
+#define   W_TXDATAFIFO6__TX13DATAFIFOSIZE                           7
 #define R_TXDATAFIFO7                                               0x228
-#define   O_TXDATAFIFO7__Tx14DataFifoStart                          24
-#define   W_TXDATAFIFO7__Tx14DataFifoStart                          7
-#define   O_TXDATAFIFO7__Tx14DataFifoSize                           16
-#define   W_TXDATAFIFO7__Tx14DataFifoSize                           7
-#define   O_TXDATAFIFO7__Tx15DataFifoStart                          8
-#define   W_TXDATAFIFO7__Tx15DataFifoStart                          7
-#define   O_TXDATAFIFO7__Tx15DataFifoSize                           0
-#define   W_TXDATAFIFO7__Tx15DataFifoSize                           7
+#define   O_TXDATAFIFO7__TX14DATAFIFOSTART                          24
+#define   W_TXDATAFIFO7__TX14DATAFIFOSTART                          7
+#define   O_TXDATAFIFO7__TX14DATAFIFOSIZE                           16
+#define   W_TXDATAFIFO7__TX14DATAFIFOSIZE                           7
+#define   O_TXDATAFIFO7__TX15DATAFIFOSTART                          8
+#define   W_TXDATAFIFO7__TX15DATAFIFOSTART                          7
+#define   O_TXDATAFIFO7__TX15DATAFIFOSIZE                           0
+#define   W_TXDATAFIFO7__TX15DATAFIFOSIZE                           7
 #define R_RXDATAFIFO0                                               0x229
-#define   O_RXDATAFIFO0__Rx0DataFifoStart                           24
-#define   W_RXDATAFIFO0__Rx0DataFifoStart                           7
-#define   O_RXDATAFIFO0__Rx0DataFifoSize                            16
-#define   W_RXDATAFIFO0__Rx0DataFifoSize                            7
-#define   O_RXDATAFIFO0__Rx1DataFifoStart                           8
-#define   W_RXDATAFIFO0__Rx1DataFifoStart                           7
-#define   O_RXDATAFIFO0__Rx1DataFifoSize                            0
-#define   W_RXDATAFIFO0__Rx1DataFifoSize                            7
+#define   O_RXDATAFIFO0__RX0DATAFIFOSTART                           24
+#define   W_RXDATAFIFO0__RX0DATAFIFOSTART                           7
+#define   O_RXDATAFIFO0__RX0DATAFIFOSIZE                            16
+#define   W_RXDATAFIFO0__RX0DATAFIFOSIZE                            7
+#define   O_RXDATAFIFO0__RX1DATAFIFOSTART                           8
+#define   W_RXDATAFIFO0__RX1DATAFIFOSTART                           7
+#define   O_RXDATAFIFO0__RX1DATAFIFOSIZE                            0
+#define   W_RXDATAFIFO0__RX1DATAFIFOSIZE                            7
 #define R_RXDATAFIFO1                                               0x22A
-#define   O_RXDATAFIFO1__Rx2DataFifoStart                           24
-#define   W_RXDATAFIFO1__Rx2DataFifoStart                           7
-#define   O_RXDATAFIFO1__Rx2DataFifoSize                            16
-#define   W_RXDATAFIFO1__Rx2DataFifoSize                            7
-#define   O_RXDATAFIFO1__Rx3DataFifoStart                           8
-#define   W_RXDATAFIFO1__Rx3DataFifoStart                           7
-#define   O_RXDATAFIFO1__Rx3DataFifoSize                            0
-#define   W_RXDATAFIFO1__Rx3DataFifoSize                            7
+#define   O_RXDATAFIFO1__RX2DATAFIFOSTART                           24
+#define   W_RXDATAFIFO1__RX2DATAFIFOSTART                           7
+#define   O_RXDATAFIFO1__RX2DATAFIFOSIZE                            16
+#define   W_RXDATAFIFO1__RX2DATAFIFOSIZE                            7
+#define   O_RXDATAFIFO1__RX3DATAFIFOSTART                           8
+#define   W_RXDATAFIFO1__RX3DATAFIFOSTART                           7
+#define   O_RXDATAFIFO1__RX3DATAFIFOSIZE                            0
+#define   W_RXDATAFIFO1__RX3DATAFIFOSIZE                            7
 #define R_RXDATAFIFO2                                               0x22B
-#define   O_RXDATAFIFO2__Rx4DataFifoStart                           24
-#define   W_RXDATAFIFO2__Rx4DataFifoStart                           7
-#define   O_RXDATAFIFO2__Rx4DataFifoSize                            16
-#define   W_RXDATAFIFO2__Rx4DataFifoSize                            7
-#define   O_RXDATAFIFO2__Rx5DataFifoStart                           8
-#define   W_RXDATAFIFO2__Rx5DataFifoStart                           7
-#define   O_RXDATAFIFO2__Rx5DataFifoSize                            0
-#define   W_RXDATAFIFO2__Rx5DataFifoSize                            7
+#define   O_RXDATAFIFO2__RX4DATAFIFOSTART                           24
+#define   W_RXDATAFIFO2__RX4DATAFIFOSTART                           7
+#define   O_RXDATAFIFO2__RX4DATAFIFOSIZE                            16
+#define   W_RXDATAFIFO2__RX4DATAFIFOSIZE                            7
+#define   O_RXDATAFIFO2__RX5DATAFIFOSTART                           8
+#define   W_RXDATAFIFO2__RX5DATAFIFOSTART                           7
+#define   O_RXDATAFIFO2__RX5DATAFIFOSIZE                            0
+#define   W_RXDATAFIFO2__RX5DATAFIFOSIZE                            7
 #define R_RXDATAFIFO3                                               0x22C
-#define   O_RXDATAFIFO3__Rx6DataFifoStart                           24
-#define   W_RXDATAFIFO3__Rx6DataFifoStart                           7
-#define   O_RXDATAFIFO3__Rx6DataFifoSize                            16
-#define   W_RXDATAFIFO3__Rx6DataFifoSize                            7
-#define   O_RXDATAFIFO3__Rx7DataFifoStart                           8
-#define   W_RXDATAFIFO3__Rx7DataFifoStart                           7
-#define   O_RXDATAFIFO3__Rx7DataFifoSize                            0
-#define   W_RXDATAFIFO3__Rx7DataFifoSize                            7
+#define   O_RXDATAFIFO3__RX6DATAFIFOSTART                           24
+#define   W_RXDATAFIFO3__RX6DATAFIFOSTART                           7
+#define   O_RXDATAFIFO3__RX6DATAFIFOSIZE                            16
+#define   W_RXDATAFIFO3__RX6DATAFIFOSIZE                            7
+#define   O_RXDATAFIFO3__RX7DATAFIFOSTART                           8
+#define   W_RXDATAFIFO3__RX7DATAFIFOSTART                           7
+#define   O_RXDATAFIFO3__RX7DATAFIFOSIZE                            0
+#define   W_RXDATAFIFO3__RX7DATAFIFOSIZE                            7
 #define R_RXDATAFIFO4                                               0x22D
-#define   O_RXDATAFIFO4__Rx8DataFifoStart                           24
-#define   W_RXDATAFIFO4__Rx8DataFifoStart                           7
-#define   O_RXDATAFIFO4__Rx8DataFifoSize                            16
-#define   W_RXDATAFIFO4__Rx8DataFifoSize                            7
-#define   O_RXDATAFIFO4__Rx9DataFifoStart                           8
-#define   W_RXDATAFIFO4__Rx9DataFifoStart                           7
-#define   O_RXDATAFIFO4__Rx9DataFifoSize                            0
-#define   W_RXDATAFIFO4__Rx9DataFifoSize                            7
+#define   O_RXDATAFIFO4__RX8DATAFIFOSTART                           24
+#define   W_RXDATAFIFO4__RX8DATAFIFOSTART                           7
+#define   O_RXDATAFIFO4__RX8DATAFIFOSIZE                            16
+#define   W_RXDATAFIFO4__RX8DATAFIFOSIZE                            7
+#define   O_RXDATAFIFO4__RX9DATAFIFOSTART                           8
+#define   W_RXDATAFIFO4__RX9DATAFIFOSTART                           7
+#define   O_RXDATAFIFO4__RX9DATAFIFOSIZE                            0
+#define   W_RXDATAFIFO4__RX9DATAFIFOSIZE                            7
 #define R_RXDATAFIFO5                                               0x22E
-#define   O_RXDATAFIFO5__Rx10DataFifoStart                          24
-#define   W_RXDATAFIFO5__Rx10DataFifoStart                          7
-#define   O_RXDATAFIFO5__Rx10DataFifoSize                           16
-#define   W_RXDATAFIFO5__Rx10DataFifoSize                           7
-#define   O_RXDATAFIFO5__Rx11DataFifoStart                          8
-#define   W_RXDATAFIFO5__Rx11DataFifoStart                          7
-#define   O_RXDATAFIFO5__Rx11DataFifoSize                           0
-#define   W_RXDATAFIFO5__Rx11DataFifoSize                           7
+#define   O_RXDATAFIFO5__RX10DATAFIFOSTART                          24
+#define   W_RXDATAFIFO5__RX10DATAFIFOSTART                          7
+#define   O_RXDATAFIFO5__RX10DATAFIFOSIZE                           16
+#define   W_RXDATAFIFO5__RX10DATAFIFOSIZE                           7
+#define   O_RXDATAFIFO5__RX11DATAFIFOSTART                          8
+#define   W_RXDATAFIFO5__RX11DATAFIFOSTART                          7
+#define   O_RXDATAFIFO5__RX11DATAFIFOSIZE                           0
+#define   W_RXDATAFIFO5__RX11DATAFIFOSIZE                           7
 #define R_RXDATAFIFO6                                               0x22F
-#define   O_RXDATAFIFO6__Rx12DataFifoStart                          24
-#define   W_RXDATAFIFO6__Rx12DataFifoStart                          7
-#define   O_RXDATAFIFO6__Rx12DataFifoSize                           16
-#define   W_RXDATAFIFO6__Rx12DataFifoSize                           7
-#define   O_RXDATAFIFO6__Rx13DataFifoStart                          8
-#define   W_RXDATAFIFO6__Rx13DataFifoStart                          7
-#define   O_RXDATAFIFO6__Rx13DataFifoSize                           0
-#define   W_RXDATAFIFO6__Rx13DataFifoSize                           7
+#define   O_RXDATAFIFO6__RX12DATAFIFOSTART                          24
+#define   W_RXDATAFIFO6__RX12DATAFIFOSTART                          7
+#define   O_RXDATAFIFO6__RX12DATAFIFOSIZE                           16
+#define   W_RXDATAFIFO6__RX12DATAFIFOSIZE                           7
+#define   O_RXDATAFIFO6__RX13DATAFIFOSTART                          8
+#define   W_RXDATAFIFO6__RX13DATAFIFOSTART                          7
+#define   O_RXDATAFIFO6__RX13DATAFIFOSIZE                           0
+#define   W_RXDATAFIFO6__RX13DATAFIFOSIZE                           7
 #define R_RXDATAFIFO7                                               0x230
-#define   O_RXDATAFIFO7__Rx14DataFifoStart                          24
-#define   W_RXDATAFIFO7__Rx14DataFifoStart                          7
-#define   O_RXDATAFIFO7__Rx14DataFifoSize                           16
-#define   W_RXDATAFIFO7__Rx14DataFifoSize                           7
-#define   O_RXDATAFIFO7__Rx15DataFifoStart                          8
-#define   W_RXDATAFIFO7__Rx15DataFifoStart                          7
-#define   O_RXDATAFIFO7__Rx15DataFifoSize                           0
-#define   W_RXDATAFIFO7__Rx15DataFifoSize                           7
+#define   O_RXDATAFIFO7__RX14DATAFIFOSTART                          24
+#define   W_RXDATAFIFO7__RX14DATAFIFOSTART                          7
+#define   O_RXDATAFIFO7__RX14DATAFIFOSIZE                           16
+#define   W_RXDATAFIFO7__RX14DATAFIFOSIZE                           7
+#define   O_RXDATAFIFO7__RX15DATAFIFOSTART                          8
+#define   W_RXDATAFIFO7__RX15DATAFIFOSTART                          7
+#define   O_RXDATAFIFO7__RX15DATAFIFOSIZE                           0
+#define   W_RXDATAFIFO7__RX15DATAFIFOSIZE                           7
 #define R_XGMACPADCALIBRATION                                       0x231
 #define R_FREEQCARVE                                                0x233
 #define R_SPI4STATICDELAY0                                          0x240
-#define   O_SPI4STATICDELAY0__DataLine7                             28
-#define   W_SPI4STATICDELAY0__DataLine7                             4
-#define   O_SPI4STATICDELAY0__DataLine6                             24
-#define   W_SPI4STATICDELAY0__DataLine6                             4
-#define   O_SPI4STATICDELAY0__DataLine5                             20
-#define   W_SPI4STATICDELAY0__DataLine5                             4
-#define   O_SPI4STATICDELAY0__DataLine4                             16
-#define   W_SPI4STATICDELAY0__DataLine4                             4
-#define   O_SPI4STATICDELAY0__DataLine3                             12
-#define   W_SPI4STATICDELAY0__DataLine3                             4
-#define   O_SPI4STATICDELAY0__DataLine2                             8
-#define   W_SPI4STATICDELAY0__DataLine2                             4
-#define   O_SPI4STATICDELAY0__DataLine1                             4
-#define   W_SPI4STATICDELAY0__DataLine1                             4
-#define   O_SPI4STATICDELAY0__DataLine0                             0
-#define   W_SPI4STATICDELAY0__DataLine0                             4
+#define   O_SPI4STATICDELAY0__DATALINE7                             28
+#define   W_SPI4STATICDELAY0__DATALINE7                             4
+#define   O_SPI4STATICDELAY0__DATALINE6                             24
+#define   W_SPI4STATICDELAY0__DATALINE6                             4
+#define   O_SPI4STATICDELAY0__DATALINE5                             20
+#define   W_SPI4STATICDELAY0__DATALINE5                             4
+#define   O_SPI4STATICDELAY0__DATALINE4                             16
+#define   W_SPI4STATICDELAY0__DATALINE4                             4
+#define   O_SPI4STATICDELAY0__DATALINE3                             12
+#define   W_SPI4STATICDELAY0__DATALINE3                             4
+#define   O_SPI4STATICDELAY0__DATALINE2                             8
+#define   W_SPI4STATICDELAY0__DATALINE2                             4
+#define   O_SPI4STATICDELAY0__DATALINE1                             4
+#define   W_SPI4STATICDELAY0__DATALINE1                             4
+#define   O_SPI4STATICDELAY0__DATALINE0                             0
+#define   W_SPI4STATICDELAY0__DATALINE0                             4
 #define R_SPI4STATICDELAY1                                          0x241
-#define   O_SPI4STATICDELAY1__DataLine15                            28
-#define   W_SPI4STATICDELAY1__DataLine15                            4
-#define   O_SPI4STATICDELAY1__DataLine14                            24
-#define   W_SPI4STATICDELAY1__DataLine14                            4
-#define   O_SPI4STATICDELAY1__DataLine13                            20
-#define   W_SPI4STATICDELAY1__DataLine13                            4
-#define   O_SPI4STATICDELAY1__DataLine12                            16
-#define   W_SPI4STATICDELAY1__DataLine12                            4
-#define   O_SPI4STATICDELAY1__DataLine11                            12
-#define   W_SPI4STATICDELAY1__DataLine11                            4
-#define   O_SPI4STATICDELAY1__DataLine10                            8
-#define   W_SPI4STATICDELAY1__DataLine10                            4
-#define   O_SPI4STATICDELAY1__DataLine9                             4
-#define   W_SPI4STATICDELAY1__DataLine9                             4
-#define   O_SPI4STATICDELAY1__DataLine8                             0
-#define   W_SPI4STATICDELAY1__DataLine8                             4
+#define   O_SPI4STATICDELAY1__DATALINE15                            28
+#define   W_SPI4STATICDELAY1__DATALINE15                            4
+#define   O_SPI4STATICDELAY1__DATALINE14                            24
+#define   W_SPI4STATICDELAY1__DATALINE14                            4
+#define   O_SPI4STATICDELAY1__DATALINE13                            20
+#define   W_SPI4STATICDELAY1__DATALINE13                            4
+#define   O_SPI4STATICDELAY1__DATALINE12                            16
+#define   W_SPI4STATICDELAY1__DATALINE12                            4
+#define   O_SPI4STATICDELAY1__DATALINE11                            12
+#define   W_SPI4STATICDELAY1__DATALINE11                            4
+#define   O_SPI4STATICDELAY1__DATALINE10                            8
+#define   W_SPI4STATICDELAY1__DATALINE10                            4
+#define   O_SPI4STATICDELAY1__DATALINE9                             4
+#define   W_SPI4STATICDELAY1__DATALINE9                             4
+#define   O_SPI4STATICDELAY1__DATALINE8                             0
+#define   W_SPI4STATICDELAY1__DATALINE8                             4
 #define R_SPI4STATICDELAY2                                          0x242
-#define   O_SPI4STATICDELAY0__TxStat1                               8
-#define   W_SPI4STATICDELAY0__TxStat1                               4
-#define   O_SPI4STATICDELAY0__TxStat0                               4
-#define   W_SPI4STATICDELAY0__TxStat0                               4
-#define   O_SPI4STATICDELAY0__RxControl                             0
-#define   W_SPI4STATICDELAY0__RxControl                             4
+#define   O_SPI4STATICDELAY0__TXSTAT1                               8
+#define   W_SPI4STATICDELAY0__TXSTAT1                               4
+#define   O_SPI4STATICDELAY0__TXSTAT0                               4
+#define   W_SPI4STATICDELAY0__TXSTAT0                               4
+#define   O_SPI4STATICDELAY0__RXCONTROL                             0
+#define   W_SPI4STATICDELAY0__RXCONTROL                             4
 #define R_SPI4CONTROL                                               0x243
-#define   O_SPI4CONTROL__StaticDelay                                2
+#define   O_SPI4CONTROL__STATICDELAY                                2
 #define   O_SPI4CONTROL__LVDS_LVTTL                                 1
-#define   O_SPI4CONTROL__SPI4Enable                                 0
+#define   O_SPI4CONTROL__SPI4ENABLE                                 0
 #define R_CLASSWATERMARKS                                           0x244
-#define   O_CLASSWATERMARKS__Class0Watermark                        24
-#define   W_CLASSWATERMARKS__Class0Watermark                        5
-#define   O_CLASSWATERMARKS__Class1Watermark                        16
-#define   W_CLASSWATERMARKS__Class1Watermark                        5
-#define   O_CLASSWATERMARKS__Class3Watermark                        0
-#define   W_CLASSWATERMARKS__Class3Watermark                        5
+#define   O_CLASSWATERMARKS__CLASS0WATERMARK                        24
+#define   W_CLASSWATERMARKS__CLASS0WATERMARK                        5
+#define   O_CLASSWATERMARKS__CLASS1WATERMARK                        16
+#define   W_CLASSWATERMARKS__CLASS1WATERMARK                        5
+#define   O_CLASSWATERMARKS__CLASS3WATERMARK                        0
+#define   W_CLASSWATERMARKS__CLASS3WATERMARK                        5
 #define R_RXWATERMARKS1                                              0x245
-#define   O_RXWATERMARKS__Rx0DataWatermark                          24
-#define   W_RXWATERMARKS__Rx0DataWatermark                          7
-#define   O_RXWATERMARKS__Rx1DataWatermark                          16
-#define   W_RXWATERMARKS__Rx1DataWatermark                          7
-#define   O_RXWATERMARKS__Rx3DataWatermark                          0
-#define   W_RXWATERMARKS__Rx3DataWatermark                          7
+#define   O_RXWATERMARKS__RX0DATAWATERMARK                          24
+#define   W_RXWATERMARKS__RX0DATAWATERMARK                          7
+#define   O_RXWATERMARKS__RX1DATAWATERMARK                          16
+#define   W_RXWATERMARKS__RX1DATAWATERMARK                          7
+#define   O_RXWATERMARKS__RX3DATAWATERMARK                          0
+#define   W_RXWATERMARKS__RX3DATAWATERMARK                          7
 #define R_RXWATERMARKS2                                              0x246
-#define   O_RXWATERMARKS__Rx4DataWatermark                          24
-#define   W_RXWATERMARKS__Rx4DataWatermark                          7
-#define   O_RXWATERMARKS__Rx5DataWatermark                          16
-#define   W_RXWATERMARKS__Rx5DataWatermark                          7
-#define   O_RXWATERMARKS__Rx6DataWatermark                          8
-#define   W_RXWATERMARKS__Rx6DataWatermark                          7
-#define   O_RXWATERMARKS__Rx7DataWatermark                          0
-#define   W_RXWATERMARKS__Rx7DataWatermark                          7
+#define   O_RXWATERMARKS__RX4DATAWATERMARK                          24
+#define   W_RXWATERMARKS__RX4DATAWATERMARK                          7
+#define   O_RXWATERMARKS__RX5DATAWATERMARK                          16
+#define   W_RXWATERMARKS__RX5DATAWATERMARK                          7
+#define   O_RXWATERMARKS__RX6DATAWATERMARK                          8
+#define   W_RXWATERMARKS__RX6DATAWATERMARK                          7
+#define   O_RXWATERMARKS__RX7DATAWATERMARK                          0
+#define   W_RXWATERMARKS__RX7DATAWATERMARK                          7
 #define R_RXWATERMARKS3                                              0x247
-#define   O_RXWATERMARKS__Rx8DataWatermark                          24
-#define   W_RXWATERMARKS__Rx8DataWatermark                          7
-#define   O_RXWATERMARKS__Rx9DataWatermark                          16
-#define   W_RXWATERMARKS__Rx9DataWatermark                          7
-#define   O_RXWATERMARKS__Rx10DataWatermark                         8
-#define   W_RXWATERMARKS__Rx10DataWatermark                         7
-#define   O_RXWATERMARKS__Rx11DataWatermark                         0
-#define   W_RXWATERMARKS__Rx11DataWatermark                         7
+#define   O_RXWATERMARKS__RX8DATAWATERMARK                          24
+#define   W_RXWATERMARKS__RX8DATAWATERMARK                          7
+#define   O_RXWATERMARKS__RX9DATAWATERMARK                          16
+#define   W_RXWATERMARKS__RX9DATAWATERMARK                          7
+#define   O_RXWATERMARKS__RX10DATAWATERMARK                         8
+#define   W_RXWATERMARKS__RX10DATAWATERMARK                         7
+#define   O_RXWATERMARKS__RX11DATAWATERMARK                         0
+#define   W_RXWATERMARKS__RX11DATAWATERMARK                         7
 #define R_RXWATERMARKS4                                              0x248
-#define   O_RXWATERMARKS__Rx12DataWatermark                         24
-#define   W_RXWATERMARKS__Rx12DataWatermark                         7
-#define   O_RXWATERMARKS__Rx13DataWatermark                         16
-#define   W_RXWATERMARKS__Rx13DataWatermark                         7
-#define   O_RXWATERMARKS__Rx14DataWatermark                         8
-#define   W_RXWATERMARKS__Rx14DataWatermark                         7
-#define   O_RXWATERMARKS__Rx15DataWatermark                         0
-#define   W_RXWATERMARKS__Rx15DataWatermark                         7
+#define   O_RXWATERMARKS__RX12DATAWATERMARK                         24
+#define   W_RXWATERMARKS__RX12DATAWATERMARK                         7
+#define   O_RXWATERMARKS__RX13DATAWATERMARK                         16
+#define   W_RXWATERMARKS__RX13DATAWATERMARK                         7
+#define   O_RXWATERMARKS__RX14DATAWATERMARK                         8
+#define   W_RXWATERMARKS__RX14DATAWATERMARK                         7
+#define   O_RXWATERMARKS__RX15DATAWATERMARK                         0
+#define   W_RXWATERMARKS__RX15DATAWATERMARK                         7
 #define R_FREEWATERMARKS                                            0x249
-#define   O_FREEWATERMARKS__FreeOutWatermark                        16
-#define   W_FREEWATERMARKS__FreeOutWatermark                        16
-#define   O_FREEWATERMARKS__JumFrWatermark                          8
-#define   W_FREEWATERMARKS__JumFrWatermark                          7
-#define   O_FREEWATERMARKS__RegFrWatermark                          0
-#define   W_FREEWATERMARKS__RegFrWatermark                          7
+#define   O_FREEWATERMARKS__FREEOUTWATERMARK                        16
+#define   W_FREEWATERMARKS__FREEOUTWATERMARK                        16
+#define   O_FREEWATERMARKS__JUMFRWATERMARK                          8
+#define   W_FREEWATERMARKS__JUMFRWATERMARK                          7
+#define   O_FREEWATERMARKS__REGFRWATERMARK                          0
+#define   W_FREEWATERMARKS__REGFRWATERMARK                          7
 #define R_EGRESSFIFOCARVINGSLOTS                                    0x24a
 
 #define CTRL_RES0           0
-- 
2.7.0


