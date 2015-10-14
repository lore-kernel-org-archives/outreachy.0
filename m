X-GM-THRID: 6205602461234757632
X-Received: by 10.180.107.167 with SMTP id hd7mr1327302wib.6.1444854415618;
        Wed, 14 Oct 2015 13:26:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.165.199 with SMTP id o190ls99541lfe.60.gmail; Wed, 14 Oct
 2015 13:26:54 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr1253483lbb.13.1444854414860;
        Wed, 14 Oct 2015 13:26:54 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id c1si359880wiv.3.2015.10.14.13.26.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 13:26:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id ll6so13418583wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 13:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Loyy652xgF/nWlSTO0zv1i5WFryrfLR9wawWO+QBBtQ=;
        b=CCSVmGyGdEAQ1YpgkbSrJ8P52KRGaWCmLPsSqqa8BELEON5U1Tlp0bMH+PyHW82OCm
         Q4sDsLVjdjO0V5hnaiJBR5+iKRvdXKecS05WOdDjSGBBGCYqINYBohysGs6MQkkAB9Hy
         zIoT0dMoJwFfAzGG5DQp6M1zjuHXZmp1NTucknVIqnZSs9RemBS2ZtUNIH/QriF712nS
         J7138SCDxH55IQlBfNolw8h50fDRZjdTTDDlyBukXZD2ooSFY7Ql9AP6KSF13L4hAxgg
         nqH8iUOjhMvksW3aIropoun64RGhfRiXp+Q0+D8JqVaxLS7XdTTWcMSzYdzU3j3P6gRj
         ckog==
X-Received: by 10.180.105.234 with SMTP id gp10mr27600161wib.51.1444854414763;
        Wed, 14 Oct 2015 13:26:54 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.104.115])
        by smtp.gmail.com with ESMTPSA id cv1sm8429816wib.18.2015.10.14.13.26.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 13:26:54 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: dgnc: Fix lines over 80 characters
Date: Wed, 14 Oct 2015 23:26:15 +0300
Message-Id: <1444854375-22873-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix 'line over 80 characters' checkpatch.pl
warnings

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 58 ++++++++++++++++++++++++++------------
 1 file changed, 40 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index c61884c..ce7cd9b 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -61,7 +61,9 @@
 #define PORT_NUM(dev)	((dev) & 0x7f)
 #define IS_PRINT(dev)	(((dev) & 0xff) >= 0x80)
 
-/* MAX number of stop characters we will send when our read queue is getting full */
+/* MAX number of stop characters we will send
+ * when our read queue is getting full
+ */
 #define MAX_STOPS_SENT 5
 
 /* 4 extra for alignment play space */
@@ -165,12 +167,15 @@ struct dgnc_board {
 	uint		maxports;	/* MAX ports this board can handle */
 	unsigned char	dvid;		/* Board specific device id */
 	unsigned char	vpd[128];	/* VPD of board, if found */
-	unsigned char	serial_num[20];	/* Serial number of board, if found in VPD */
+	unsigned char	serial_num[20];	/* Serial number of board,
+					 * if found in VPD
+					 */
 
 	spinlock_t	bd_lock;	/* Used to protect board */
 
-	spinlock_t	bd_intr_lock;	/* Used to protect the poller tasklet and
-					 * the interrupt routine from each other.
+	spinlock_t	bd_intr_lock;	/* Used to protect the poller tasklet
+					 * and the interrupt routine from each
+					 * other.
 					 */
 
 	uint		state;		/* State of card. */
@@ -189,14 +194,16 @@ struct dgnc_board {
 	ulong		membase;	/* Start of base memory of the card */
 	ulong		membase_end;	/* End of base memory of the card */
 
-	u8 __iomem		*re_map_membase;/* Remapped memory of the card */
+	u8 __iomem	*re_map_membase; /* Remapped memory of the card */
 
 	ulong		iobase;		/* Start of io base of the card */
 	ulong		iobase_end;	/* End of io base of the card */
 
 	uint		bd_uart_offset;	/* Space between each UART */
 
-	struct channel_t *channels[MAXPORTS]; /* array of pointers to our channels. */
+	struct channel_t *channels[MAXPORTS];	/* array of pointers
+						 * to our channels.
+						 */
 
 	struct tty_driver	SerialDriver;
 	char		SerialName[200];
@@ -211,8 +218,12 @@ struct dgnc_board {
 
 	uint		TtyRefCnt;
 
-	u16		dpatype;	/* The board "type", as defined by DPA */
-	u16		dpastatus;	/* The board "status", as defined by DPA */
+	u16		dpatype;	/* The board "type",
+					 * as defined by DPA
+					 */
+	u16		dpastatus;	/* The board "status",
+					 * as defined by DPA
+					 */
 
 	/*
 	 *	Mgmt data.
@@ -304,7 +315,7 @@ struct un_t {
  ************************************************************************/
 struct channel_t {
 	int magic;			/* Channel Magic Number		*/
-	struct dgnc_board	*ch_bd;		/* Board structure pointer      */
+	struct dgnc_board	*ch_bd;		/* Board structure pointer */
 	struct digi_t	ch_digi;	/* Transparent Print structure  */
 	struct un_t	ch_tun;		/* Terminal unit info	   */
 	struct un_t	ch_pun;		/* Printer unit info	    */
@@ -316,7 +327,9 @@ struct channel_t {
 	uint		ch_open_count;	/* open count			*/
 	uint		ch_flags;	/* Channel flags		*/
 
-	ulong		ch_close_delay;	/* How long we should drop RTS/DTR for */
+	ulong		ch_close_delay;	/* How long we should
+					 * drop RTS/DTR for
+					 */
 
 	ulong		ch_cpstime;	/* Time for CPS calculations    */
 
@@ -332,11 +345,15 @@ struct channel_t {
 
 	uint		ch_wopen;	/* Waiting for open process cnt */
 
-	unsigned char		ch_mostat;	/* FEP output modem status      */
-	unsigned char		ch_mistat;	/* FEP input modem status       */
+	unsigned char		ch_mostat;	/* FEP output modem status */
+	unsigned char		ch_mistat;	/* FEP input modem status */
 
-	struct neo_uart_struct __iomem *ch_neo_uart;	/* Pointer to the "mapped" UART struct */
-	struct cls_uart_struct __iomem *ch_cls_uart;	/* Pointer to the "mapped" UART struct */
+	struct neo_uart_struct __iomem *ch_neo_uart;	/* Pointer to the
+							 * "mapped" UART struct
+							 */
+	struct cls_uart_struct __iomem *ch_cls_uart;	/* Pointer to the
+							 * "mapped" UART struct
+							 */
 
 	unsigned char	ch_cached_lsr;	/* Cached value of the LSR register */
 
@@ -360,10 +377,13 @@ struct channel_t {
 
 	unsigned char		ch_r_watermark;	/* Receive Watermark */
 
-	ulong		ch_stop_sending_break;	/* Time we should STOP sending a break */
+	ulong		ch_stop_sending_break;	/* Time we should STOP
+						 * sending a break
+						 */
 
-	uint		ch_stops_sent;	/* How many times I have sent a stop character
-					 * to try to stop the other guy sending.
+	uint		ch_stops_sent;	/* How many times I have sent a stop
+					 * character to try to stop the other
+					 * guy sending.
 					 */
 	ulong		ch_err_parity;	/* Count of parity errors on channel */
 	ulong		ch_err_frame;	/* Count of framing errors on channel */
@@ -392,6 +412,8 @@ extern int		dgnc_poll_tick;		/* Poll interval - 20 ms */
 extern spinlock_t	dgnc_global_lock;	/* Driver global spinlock */
 extern spinlock_t	dgnc_poll_lock;		/* Poll scheduling lock */
 extern uint		dgnc_NumBoards;		/* Total number of boards */
-extern struct dgnc_board	*dgnc_Board[MAXBOARDS];	/* Array of board structs */
+extern struct dgnc_board	*dgnc_Board[MAXBOARDS];	/* Array of board
+							 * structs
+							 */
 
 #endif
-- 
1.9.1


