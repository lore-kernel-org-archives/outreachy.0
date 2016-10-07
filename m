X-GM-THRID: 6338488741529649152
X-Received: by 10.25.221.130 with SMTP id w2mr1068378lfi.8.1475794413973;
        Thu, 06 Oct 2016 15:53:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.141 with SMTP id 135ls378576ljj.8.gmail; Thu, 06 Oct 2016
 15:53:33 -0700 (PDT)
X-Received: by 10.25.204.196 with SMTP id c187mr1147793lfg.19.1475794413080;
        Thu, 06 Oct 2016 15:53:33 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id w79si11178wmw.0.2016.10.06.15.53.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 15:53:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id 123so99375wmb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 15:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=01d9N9ntQx1awT3kaL+pV1NwZ4tDeEz1ZHrr4kvy3GE=;
        b=BDbWoNntd31UAV9hjGDYOdw/YwhixiVM4sN8yzAvqcTnoJa5E8/XAc/MAi9BeS3pow
         ymnqFi8fU9IHVKS12BGoNOQbdfGqBpAfXBdW8ZlHNPqwKShIujrQ7cmpHA1IafsaO4ai
         fhD7jaThk06PfWMEhe/nG8mQUlyvHKS+cFMqFc7olM+toluKbNFvXjdgOF0xdhqM0mRb
         VHuuEz1FxF+fZvcIK/7wrsiGne+57zedf1PJZBv5IPwEln6Yegbwd1tVtuKwr782w/hB
         D8iqUurE6SECIIQ3LMlmt+Wr728dgTdXH1fGMYvWTM1S9loyiZwCPwVtHudbeiHPFPmT
         Xveg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=01d9N9ntQx1awT3kaL+pV1NwZ4tDeEz1ZHrr4kvy3GE=;
        b=CDEiZj7yBOhe64jOkkHNEDnA526DNNhoRPvV7oBJyThl170cyPvriXLnkp2MtcODkL
         fwWS7EKjEjtC5F6Ghc6ztoZO9bpxfNbrw/UNQH8UyVBl5Pwz7DWmmfCkvgp0sUwB3ZOl
         UC6MaB5QQ2x5SbW95EwPnSjBHPaKqwmxOIb2ffpJyUg4leZtvDHb5g5vgc6wrmdJDRk4
         tMmlKCamA5e2OxYjny59uXEPOUBMv4hNd/5+UI7VZAz1ZgastdmsZU5qXOyqld52kOyt
         Cv3EMwOyJF9qb1QWNlVmlFBuIYKE/Jl4G6mJ3K9kEGnWsVHTWGThnn/TOfFStszTqhY+
         4D7g==
X-Gm-Message-State: AA6/9RkbVidco7z4L5BlrvNxrla0DctKup9AGtwREmxr+icpAmw2NqcXqvEDY2o9E5NxYg==
X-Received: by 10.28.216.202 with SMTP id p193mr7242307wmg.82.1475794412803;
        Thu, 06 Oct 2016 15:53:32 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from kheixx-VB (240.red-79-150-62.dynamicip.rima-tde.net. [79.150.62.240])
        by smtp.gmail.com with ESMTPSA id n5sm16643062wjv.35.2016.10.06.15.53.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 15:53:32 -0700 (PDT)
Date: Sat, 8 Oct 2016 00:49:05 +0200
From: Keila Novo <laurana5@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH]staging/dgnc/dgnc_neo.h Lines less than 80 characters
Message-ID: <20161007224905.GA16609@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch.pl error: "Lines over 80 characters" to conform
to Kernel coding style.

Signed-off-by: Keila Novo <laurana5@gmail.com>
---
 drivers/staging/dgnc/dgnc_neo.h | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.h b/drivers/staging/dgnc/dgnc_neo.h
index abddd48..5b9a870 100644
--- a/drivers/staging/dgnc/dgnc_neo.h
+++ b/drivers/staging/dgnc/dgnc_neo.h
@@ -30,7 +30,7 @@
 struct neo_uart_struct {
 	u8 txrx;		/* WR  RHR/THR - Holding Reg */
 	u8 ier;		/* WR  IER - Interrupt Enable Reg */
-	u8 isr_fcr;		/* WR  ISR/FCR - Interrupt Status Reg/Fifo Control Reg */
+	u8 isr_fcr;/* WR  ISR/FCR - Interrupt Status Reg/Fifo Control Reg */
 	u8 lcr;		/* WR  LCR - Line Control Reg */
 	u8 mcr;		/* WR  MCR - Modem Control Reg */
 	u8 lsr;		/* WR  LSR - Line Status Reg */
@@ -108,19 +108,21 @@ struct neo_uart_struct {
 /* 17158 Extended IIR's */
 #define UART_17158_IIR_RDI_TIMEOUT	0x0C	/* Receiver data TIMEOUT */
 #define UART_17158_IIR_XONXOFF		0x10	/* Received an XON/XOFF char */
-#define UART_17158_IIR_HWFLOW_STATE_CHANGE 0x20	/* CTS/DSR or RTS/DTR state change */
+#define UART_17158_IIR_HWFLOW_STATE_CHANGE 0x20
+					/* CTS/DSR or RTS/DTR state change */
 #define UART_17158_IIR_FIFO_ENABLED	0xC0	/* 16550 FIFOs are Enabled */
 
 /*
  * These are the extended interrupts that get sent
  * back to us from the UART's 32bit interrupt register
  */
-#define UART_17158_RX_LINE_STATUS	0x1	/* RX Ready */
-#define UART_17158_RXRDY_TIMEOUT	0x2	/* RX Ready Timeout */
-#define UART_17158_TXRDY		0x3	/* TX Ready */
-#define UART_17158_MSR			0x4	/* Modem State Change */
-#define UART_17158_TX_AND_FIFO_CLR	0x40	/* Transmitter Holding Reg Empty */
-#define UART_17158_RX_FIFO_DATA_ERROR	0x80	/* UART detected an RX FIFO Data error */
+#define UART_17158_RX_LINE_STATUS  0x1	/* RX Ready */
+#define UART_17158_RXRDY_TIMEOUT   0x2	/* RX Ready Timeout */
+#define UART_17158_TXRDY	   0x3	/* TX Ready */
+#define UART_17158_MSR		   0x4	/* Modem State Change */
+#define UART_17158_TX_AND_FIFO_CLR 0x40	/* Transmitter Holding Reg Empty */
+#define UART_17158_RX_FIFO_DATA_ERROR 0x80
+				/* UART detected an RX FIFO Data error */
 
 /*
  * These are the EXTENDED definitions for the 17C158's Interrupt
@@ -132,8 +134,9 @@ struct neo_uart_struct {
 #define UART_17158_EFR_RTSDTR	0x40	/* Auto RTS/DTR Flow Control Enable */
 #define UART_17158_EFR_CTSDSR	0x80	/* Auto CTS/DSR Flow COntrol Enable */
 
-#define UART_17158_XOFF_DETECT	0x1	/* Indicates whether chip saw an incoming XOFF char  */
-#define UART_17158_XON_DETECT	0x2	/* Indicates whether chip saw an incoming XON char */
+#define UART_17158_XOFF_DETECT	0x1
+				/*Indicates if chip saw incoming XOFF char  */
+#define UART_17158_XON_DETECT	0x2 /*Indicates if chip saw incoming XON char */
 
 #define UART_17158_IER_RSVD1	0x10	/* Reserved by Exar */
 #define UART_17158_IER_XOFF	0x20	/* Xoff Interrupt Enable */
-- 
2.7.4


