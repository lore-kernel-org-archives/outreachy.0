X-GM-THRID: 6338855429722865664
X-Received: by 10.28.152.146 with SMTP id a140mr44030wme.15.1475879789944;
        Fri, 07 Oct 2016 15:36:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.211 with SMTP id f80ls546950lji.32.gmail; Fri, 07 Oct
 2016 15:36:29 -0700 (PDT)
X-Received: by 10.25.141.68 with SMTP id p65mr1500285lfd.24.1475879789347;
        Fri, 07 Oct 2016 15:36:29 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id 82si259994wmg.3.2016.10.07.15.36.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 15:36:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id i130so4862917wmg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 15:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Ii/56FkP2xTPNQTdy6sa9WQUn37kDg6CgIbrE6OU2ag=;
        b=IDg/TGUOTx2R/va8a4k9EmRcgxqThJyRM/k8q4S+VEsyp9K847yuLr+AcyJu5/Bu4U
         MJh7DtceRpCn7SjeaNJeCyX3cBuMxK0OwBruK3YV+MrIN6/DkVFXVhijYHyJYBvardlf
         tYraO06LolgyoomlhgqW4FrjFWaQuVEDPofuyHyWrrlAyiMiDXmOquV1oY4KydmyYgIT
         jqDLB2H/kcVuFXreSGCq2u4zdLkIYfGhOG9Wc3fljLqQQaP7tXDtAdlPoZX7+16U1GlK
         nofki44sQfdjRPXZRHxFI10bo3E0T1eP8o5HCZnNx17KgEkNbPQGYeuTac+dKJvxsg7n
         OcVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ii/56FkP2xTPNQTdy6sa9WQUn37kDg6CgIbrE6OU2ag=;
        b=HIzC5C3JzqMDXWiH6+bNtjMY2V3tth4iQj9D2JpVkP9+AtpkaKc6Y4jN65aV29BzF+
         Cnz0a0mju8bpoZB7XtMIlrU6gVZRG21UpHnCYYxYB0LRugd/XfctV7eJZcGTaP8VoyDU
         rbBYosK4Cw7NYE9lqgwPhvtxVH+qY3ympnUtsNZfY18jzJjfblrw++wTs+MkaWicR1bg
         ZPU6IT4kMOAuuMWAnjSFH8rPezC3bUYHx9hUoir8gWzCXyxttiM51qoaEWkC4Ub8GcWV
         dZCH+k/2TBlORgQXkE1FXJEhiciUIVImq4CPrI0nSVom5IMQiVLMwegOwU8PE842kFzg
         CZSw==
X-Gm-Message-State: AA6/9RkvcnCthqbSyr5P6lkl/INzWSEzB7SP0Y8QL0Fa5bDOn7AVbdrC/UsWq6DjpK0FTw==
X-Received: by 10.194.108.230 with SMTP id hn6mr18996157wjb.122.1475879789081;
        Fri, 07 Oct 2016 15:36:29 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from kheixx-VB (240.red-79-150-62.dynamicip.rima-tde.net. [79.150.62.240])
        by smtp.gmail.com with ESMTPSA id z17sm5081404wmz.23.2016.10.07.15.36.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 15:36:28 -0700 (PDT)
Date: Sat, 8 Oct 2016 01:44:03 +0200
From: Keila <laurana5@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH]V2 /staging/dgnc/dgnc_neo.h. Lines less than 80 characters
Message-ID: <20161007234403.GA18409@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Signed-off-by: Keila Novo <laurana5@gmail.com>

Version 2. Fix checkpatch "more than 80 characters
per line"

Signed-off-by: Keila Novo <laurana5@gmail.com>
---
 drivers/staging/dgnc/dgnc_neo.h | 35 +++++++++++++++++++----------------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.h b/drivers/staging/dgnc/dgnc_neo.h
index abddd48..efc88fd 100644
--- a/drivers/staging/dgnc/dgnc_neo.h
+++ b/drivers/staging/dgnc/dgnc_neo.h
@@ -28,27 +28,27 @@
  ************************************************************************/
 
 struct neo_uart_struct {
-	u8 txrx;		/* WR  RHR/THR - Holding Reg */
+	u8 txrx;	/* WR  RHR/THR - Holding Reg */
 	u8 ier;		/* WR  IER - Interrupt Enable Reg */
-	u8 isr_fcr;		/* WR  ISR/FCR - Interrupt Status Reg/Fifo Control Reg */
+	u8 isr_fcr;    /* WR ISR/FCR - Interrupt Status Reg/Fifo Control Reg */
 	u8 lcr;		/* WR  LCR - Line Control Reg */
 	u8 mcr;		/* WR  MCR - Modem Control Reg */
 	u8 lsr;		/* WR  LSR - Line Status Reg */
 	u8 msr;		/* WR  MSR - Modem Status Reg */
 	u8 spr;		/* WR  SPR - Scratch Pad Reg */
-	u8 fctr;		/* WR  FCTR - Feature Control Reg */
+	u8 fctr;	/* WR  FCTR - Feature Control Reg */
 	u8 efr;		/* WR  EFR - Enhanced Function Reg */
-	u8 tfifo;		/* WR  TXCNT/TXTRG - Transmit FIFO Reg */
-	u8 rfifo;		/* WR  RXCNT/RXTRG - Receive  FIFO Reg */
+	u8 tfifo;	/* WR  TXCNT/TXTRG - Transmit FIFO Reg */
+	u8 rfifo;	/* WR  RXCNT/RXTRG - Receive  FIFO Reg */
 	u8 xoffchar1;	/* WR  XOFF 1 - XOff Character 1 Reg */
 	u8 xoffchar2;	/* WR  XOFF 2 - XOff Character 2 Reg */
 	u8 xonchar1;	/* WR  XON 1 - Xon Character 1 Reg */
 	u8 xonchar2;	/* WR  XON 2 - XOn Character 2 Reg */
 
 	u8 reserved1[0x2ff - 0x200]; /* U   Reserved by Exar */
-	u8 txrxburst[64];	/* RW  64 bytes of RX/TX FIFO Data */
+	u8 txrxburst[64];	     /* RW  64 bytes of RX/TX FIFO Data */
 	u8 reserved2[0x37f - 0x340]; /* U   Reserved by Exar */
-	u8 rxburst_with_errors[64];	/* R  64 bytes of RX FIFO Data + LSR */
+	u8 rxburst_with_errors[64];  /* R  64 bytes of RX FIFO Data + LSR */
 };
 
 /* Where to read the extended interrupt register (32bits instead of 8bits) */
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


