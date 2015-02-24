X-GM-THRID: 2067485687808
X-Received: by 10.180.160.176 with SMTP id xl16mr1258809wib.6.1424787818083;
        Tue, 24 Feb 2015 06:23:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.198.225 with SMTP id jf1ls185503wic.12.gmail; Tue, 24 Feb
 2015 06:23:37 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr2174647wjz.0.1424787817694;
        Tue, 24 Feb 2015 06:23:37 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id l8si1095955wia.0.2015.02.24.06.23.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:23:37 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f194.google.com with SMTP id l15so2069774wiw.1
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 06:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=O1M5vRmDUhqvr9CAa4NTWKzC/3t7BL6nyatdir9XMsI=;
        b=V+HbjDSYPp6fk2OrK4oYCWvGrDeHPRGmq/rP+sRmzWIbcfv8tmaGSbc1pkOp8Thb7b
         JcQllBAcH4Ul88z1o3cAH9j37+1p5TEtLIYYonG7zsEzxxQ7pawkxAtwVBt0EE5ljnAf
         84D1zK+L/K287tHE5dPpHQjrIdBUZ+GenYrJHWHq4mdlbZyPyTtcfqs7GVvuQCQuvNic
         XJynEs9oItWie35QVZMMK93Lf1NZ16JdutHXB7rw2YH/2ORWuHVZmbP4j4ypOup3H0CB
         JytDP1im3QAQBeCEwfR//IraDJr6Il8HY5dsJnErA3vqLhtns9zTl5WAoCyy+eylaPfM
         iehw==
X-Received: by 10.180.106.225 with SMTP id gx1mr31282156wib.53.1424787817551;
        Tue, 24 Feb 2015 06:23:37 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.205])
        by mx.google.com with ESMTPSA id l4sm20755139wiw.9.2015.02.24.06.23.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:23:36 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id C0F5163386; Tue, 24 Feb 2015 17:23:31 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v5 1/6] Staging: emxx_udc: Fix do not add new typedefs
Date: Tue, 24 Feb 2015 17:23:30 +0300
Message-Id: <114675998581f4b01d0d6c1556193010f35da12e.1424786861.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424786861.git.hamohammed.sa@gmail.com>
References: <cover.1424786861.git.hamohammed.sa@gmail.com>

This patch fixes the following checkpatch.pl warning:"do not add new
typedefs".
Remove typedefs keyword and rename identifiers appropriately.
Update related  files.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v5: Nothing
v4: Replace struct with volatile union for usb_reg_access.
v3: Remove all typedefs and create patchset from emxx_udc.
v2: Remove typedefs appropriately and change related file.

 drivers/staging/emxx_udc/emxx_udc.c | 60 ++++++++++++++++++-------------------
 drivers/staging/emxx_udc/emxx_udc.h | 26 ++++++++--------
 2 files changed, 43 insertions(+), 43 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 82c492f..e33ccc4 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -201,7 +201,7 @@ static u32 _nbu2ss_get_begin_ram_address(struct nbu2ss_udc *udc)
 	u32		num, buf_type;
 	u32		data, last_ram_adr, use_ram_size;
 
-	PT_EP_REGS	p_ep_regs;
+	struct ep_regs *p_ep_regs;
 
 	last_ram_adr = (D_RAM_SIZE_CTRL / sizeof(u32)) * 2;
 	use_ram_size = 0;
@@ -394,7 +394,7 @@ static void _nbu2ss_ep_dma_exit(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
 {
 	u32		num;
 	u32		data;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (udc->vbus_active == 0)
 		return;		/* VBUS OFF */
@@ -425,7 +425,7 @@ static void _nbu2ss_ep_dma_exit(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
 /* Abort DMA */
 static void _nbu2ss_ep_dma_abort(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
 {
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	_nbu2ss_bitclr(&preg->EP_DCR[ep->epnum-1].EP_DCR1, DCR1_EPn_REQEN);
 	mdelay(DMA_DISABLE_TIME);	/* DCR1_EPn_REQEN Clear */
@@ -443,7 +443,7 @@ static void _nbu2ss_ep_in_end(
 {
 	u32		data;
 	u32		num;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (length >= sizeof(u32))
 		return;
@@ -567,7 +567,7 @@ static int EP0_out_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
 	u32		i;
 	int		nret   = 0;
 	u32		iWordLength = 0;
-	USB_REG_ACCESS *pBuf32 = (USB_REG_ACCESS *)pBuf;
+	volatile union usb_reg_access *pBuf32 = (volatile union usb_reg_access *)pBuf;
 
 	/*------------------------------------------------------------*/
 	/* Read Length */
@@ -592,8 +592,8 @@ static int EP0_out_OverBytes(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
 {
 	u32		i;
 	u32		iReadSize = 0;
-	USB_REG_ACCESS  Temp32;
-	USB_REG_ACCESS *pBuf32 = (USB_REG_ACCESS *)pBuf;
+	volatile union usb_reg_access  Temp32;
+	volatile union usb_reg_access  *pBuf32 = (volatile union usb_reg_access *)pBuf;
 
 	if ((0 < length) && (length < sizeof(u32))) {
 		Temp32.dw = _nbu2ss_readl(&udc->p_regs->EP0_READ);
@@ -613,7 +613,7 @@ static int EP0_in_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
 	u32		iMaxLength   = EP0_PACKETSIZE;
 	u32		iWordLength  = 0;
 	u32		iWriteLength = 0;
-	USB_REG_ACCESS *pBuf32 = (USB_REG_ACCESS *)pBuf;
+	volatile union usb_reg_access  *pBuf32 = (volatile union usb_reg_access *)pBuf;
 
 	/*------------------------------------------------------------*/
 	/* Transfer Length */
@@ -638,8 +638,8 @@ static int EP0_in_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
 static int EP0_in_OverBytes(struct nbu2ss_udc *udc, u8 *pBuf, u32 iRemainSize)
 {
 	u32		i;
-	USB_REG_ACCESS Temp32;
-	USB_REG_ACCESS *pBuf32 = (USB_REG_ACCESS *)pBuf;
+	volatile union usb_reg_access  Temp32;
+	volatile union usb_reg_access  *pBuf32 = (volatile union usb_reg_access *)pBuf;
 
 	if ((0 < iRemainSize) && (iRemainSize < sizeof(u32))) {
 		for (i = 0 ; i < iRemainSize ; i++)
@@ -840,7 +840,7 @@ static int _nbu2ss_out_dma(
 	u32		burst = 1;
 	u32		data;
 	int		result = -EINVAL;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (req->dma_flag)
 		return 1;		/* DMA is forwarded */
@@ -900,10 +900,10 @@ static int _nbu2ss_epn_out_pio(
 	u32		i;
 	u32		data;
 	u32		iWordLength;
-	USB_REG_ACCESS	Temp32;
-	USB_REG_ACCESS	*pBuf32;
+	volatile union usb_reg_access	Temp32;
+	volatile union usb_reg_access	*pBuf32;
 	int		result = 0;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (req->dma_flag)
 		return 1;		/* DMA is forwarded */
@@ -912,7 +912,7 @@ static int _nbu2ss_epn_out_pio(
 		return 0;
 
 	pBuffer = (u8 *)req->req.buf;
-	pBuf32 = (USB_REG_ACCESS *)(pBuffer + req->req.actual);
+	pBuf32 = (volatile union usb_reg_access *)(pBuffer + req->req.actual);
 
 	iWordLength = length / sizeof(u32);
 	if (iWordLength > 0) {
@@ -988,7 +988,7 @@ static int _nbu2ss_epn_out_transfer(
 	u32		num;
 	u32		iRecvLength;
 	int		result = 1;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (ep->epnum == 0)
 		return -EINVAL;
@@ -1051,7 +1051,7 @@ static int _nbu2ss_in_dma(
 	u32		iWriteLength;
 	u32		data;
 	int		result = -EINVAL;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (req->dma_flag)
 		return 1;		/* DMA is forwarded */
@@ -1123,17 +1123,17 @@ static int _nbu2ss_epn_in_pio(
 	u32		i;
 	u32		data;
 	u32		iWordLength;
-	USB_REG_ACCESS	Temp32;
-	USB_REG_ACCESS	*pBuf32 = NULL;
+	volatile union usb_reg_access	Temp32;
+	volatile union usb_reg_access	*pBuf32 = NULL;
 	int		result = 0;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (req->dma_flag)
 		return 1;		/* DMA is forwarded */
 
 	if (length > 0) {
 		pBuffer = (u8 *)req->req.buf;
-		pBuf32 = (USB_REG_ACCESS *)(pBuffer + req->req.actual);
+		pBuf32 = (volatile union usb_reg_access *)(pBuffer + req->req.actual);
 
 		iWordLength = length / sizeof(u32);
 		if (iWordLength > 0) {
@@ -1347,7 +1347,7 @@ static void _nbu2ss_set_endpoint_stall(
 	u8		num, epnum;
 	u32		data;
 	struct nbu2ss_ep *ep;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if ((ep_adrs == 0) || (ep_adrs == 0x80)) {
 		if (bstall) {
@@ -1471,7 +1471,7 @@ static int _nbu2ss_get_ep_stall(struct nbu2ss_udc *udc, u8 ep_adrs)
 {
 	u8		epnum;
 	u32		data = 0, bit_data;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	epnum = ep_adrs & ~USB_ENDPOINT_DIR_MASK;
 	if (epnum == 0) {
@@ -1566,7 +1566,7 @@ static void _nbu2ss_epn_set_stall(
 	u32	regdata;
 	int	limit_cnt = 0;
 
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (ep->direct == USB_DIR_IN) {
 		for (limit_cnt = 0
@@ -1994,7 +1994,7 @@ static inline void _nbu2ss_epn_in_int(
 	int	result = 0;
 	u32	status;
 
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (req->dma_flag)
 		return;		/* DMA is forwarded */
@@ -2090,7 +2090,7 @@ static inline void _nbu2ss_epn_out_dma_int(
 	u32		num;
 	u32		dmacnt, ep_dmacnt;
 	u32		mpkt;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	num = ep->epnum - 1;
 
@@ -2293,7 +2293,7 @@ static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)
 /*-------------------------------------------------------------------------*/
 static void _nbu2ss_fifo_flush(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
 {
-	PT_FC_REGS	p = udc->p_regs;
+	struct fc_regs	*p = udc->p_regs;
 
 	if (udc->vbus_active == 0)
 		return;
@@ -2536,7 +2536,7 @@ static irqreturn_t _nbu2ss_udc_irq(int irq, void *_udc)
 	u32	epnum, int_bit;
 
 	struct nbu2ss_udc	*udc = (struct nbu2ss_udc *)_udc;
-	PT_FC_REGS		preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (gpio_get_value(VBUS_VALUE) == 0) {
 		_nbu2ss_writel(&preg->USB_INT_STA, ~USB_INT_STA_RW);
@@ -2944,7 +2944,7 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
 	struct nbu2ss_ep	*ep;
 	struct nbu2ss_udc	*udc;
 	unsigned long		flags;
-	PT_FC_REGS		preg;
+	struct fc_regs		*preg;
 
 /*	INFO("=== %s()\n", __func__); */
 
@@ -3341,7 +3341,7 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
 				  0, driver_name, udc);
 
 	/* IO Memory */
-	udc->p_regs = (PT_FC_REGS)mmio_base;
+	udc->p_regs = (struct fc_regs *)mmio_base;
 
 	/* USB Function Controller Interrupt */
 	if (status != 0) {
diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index ee1b80d..c1f98b3 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -474,8 +474,8 @@
 
 /*===========================================================================*/
 /* Struct */
-/*------- T_EP_REGS */
-typedef struct _T_EP_REGS {
+/*------- ep_regs */
+struct ep_regs {
 	u32 EP_CONTROL;			/* EP Control */
 	u32 EP_STATUS;			/* EP Status */
 	u32 EP_INT_ENA;			/* EP Interrupt Enable */
@@ -484,18 +484,18 @@ typedef struct _T_EP_REGS {
 	u32 EP_LEN_DCNT;		/* EP Length & DMA count */
 	u32 EP_READ;			/* EP Read */
 	u32 EP_WRITE;			/* EP Write */
-} T_EP_REGS, *PT_EP_REGS;
+};
 
-/*------- T_EP_DCR */
-typedef struct _T_EP_DCR {
+/*------- ep_dcr */
+struct ep_dcr {
 	u32 EP_DCR1;			/* EP_DCR1 */
 	u32 EP_DCR2;			/* EP_DCR2 */
 	u32 EP_TADR;			/* EP_TADR */
 	u32 Reserved;			/* Reserved */
-} T_EP_DCR, *PT_EP_DCR;
+};
 
 /*------- Function Registers */
-typedef struct _T_FC_REGS {
+struct fc_regs {
 	u32 USB_CONTROL;		/* (0x0000) USB Control */
 	u32 USB_STATUS;			/* (0x0004) USB Status */
 	u32 USB_ADDRESS;		/* (0x0008) USB Address */
@@ -513,7 +513,7 @@ typedef struct _T_FC_REGS {
 	u32 EP0_READ;			/* (0x0038) EP0 Read */
 	u32 EP0_WRITE;			/* (0x003C) EP0 Write */
 
-	T_EP_REGS EP_REGS[REG_EP_NUM];	/* Endpoint Register */
+	struct ep_regs EP_REGS[REG_EP_NUM];	/* Endpoint Register */
 
 	u8 Reserved220[0x1000-0x220];	/* (0x0220:0x0FFF) Reserved */
 
@@ -531,11 +531,11 @@ typedef struct _T_FC_REGS {
 
 	u8 Reserved1028[0x110-0x28];	/* (0x1028:0x110F) Reserved */
 
-	T_EP_DCR EP_DCR[REG_EP_NUM];	/* */
+	struct ep_dcr EP_DCR[REG_EP_NUM];	/* */
 
 	u8 Reserved1200[0x1000-0x200];	/* Reserved */
 
-} __attribute__ ((aligned(32))) T_FC_REGS, *PT_FC_REGS;
+} __attribute__ ((aligned(32)));
 
 
 
@@ -632,16 +632,16 @@ struct nbu2ss_udc {
 
 	u32		curr_config;	/* Current Configuration Number */
 
-	PT_FC_REGS		p_regs;
+	struct fc_regs		*p_regs;
 };
 
 /* USB register access structure */
-typedef volatile union {
+volatile union usb_reg_access {
 	struct {
 		unsigned char	DATA[4];
 	} byte;
 	unsigned int		dw;
-} USB_REG_ACCESS;
+};
 
 /*-------------------------------------------------------------------------*/
 #define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
-- 
1.9.1


