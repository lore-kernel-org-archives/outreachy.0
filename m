X-GM-THRID: 964710891520
X-Received: by 10.181.13.236 with SMTP id fb12mr5403wid.1.1424454558602;
        Fri, 20 Feb 2015 09:49:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.9 with SMTP id bc9ls338083lab.101.gmail; Fri, 20 Feb
 2015 09:49:15 -0800 (PST)
X-Received: by 10.152.26.74 with SMTP id j10mr1452797lag.10.1424454555387;
        Fri, 20 Feb 2015 09:49:15 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id i7si159374wif.0.2015.02.20.09.49.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 09:49:15 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so6985288wes.6
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 09:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=kbMCRv58o5a29JFUljgVNtY2Ic2G2xpCUp7Pbg4j1Ys=;
        b=Do30dpVFpxccHs2FRam14+lUCtcrQG/Zl+sBASNSTAKw2KiPSaLFaFwJwfynadonII
         VtaegUUrBrGtRwHJ20ofwAn/qxp/GzAtAiCJxpDJGcAMybsfa32RPmzL2a/Es4paEWeP
         ycUGlmcyjFbix+SXXVQu1fwTh17ykulyXw36QfCY1+Ll9nSta1dm5jsEW5Q9c3r0/Zz2
         OOLkw4wn3Z+W6gVvYzxDyoAY1U8a99zcvdxyOmf5pcsNvIVzq12TJUcvZNuQ1X3wFcyF
         aK75u17EeWiY4qI4oojBA4u1akcfuLSbsxuJAs/4xv6LiDA6PoMcVyIIryde4Ty/Wkrm
         3rrw==
X-Received: by 10.180.91.112 with SMTP id cd16mr98603wib.14.1424454555235;
        Fri, 20 Feb 2015 09:49:15 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([79.170.54.52])
        by mx.google.com with ESMTPSA id u16sm3842454wjr.5.2015.02.20.09.49.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 09:49:14 -0800 (PST)
Date: Fri, 20 Feb 2015 20:49:14 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: emxx_udc: Fix do not add new typedefs
Message-ID: <20150220174914.GA24454@example.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following checkpatch.pl warning:"do not add new typedefs".
Remove typedefs keyword and rename structs identifiers appropriately.
Update related  files.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 36 ++++++++++++++++++------------------
 drivers/staging/emxx_udc/emxx_udc.h | 22 +++++++++++-----------
 2 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 82c492f..5300c91 100644
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
@@ -840,7 +840,7 @@ static int _nbu2ss_out_dma(
 	u32		burst = 1;
 	u32		data;
 	int		result = -EINVAL;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (req->dma_flag)
 		return 1;		/* DMA is forwarded */
@@ -903,7 +903,7 @@ static int _nbu2ss_epn_out_pio(
 	USB_REG_ACCESS	Temp32;
 	USB_REG_ACCESS	*pBuf32;
 	int		result = 0;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (req->dma_flag)
 		return 1;		/* DMA is forwarded */
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
@@ -1126,7 +1126,7 @@ static int _nbu2ss_epn_in_pio(
 	USB_REG_ACCESS	Temp32;
 	USB_REG_ACCESS	*pBuf32 = NULL;
 	int		result = 0;
-	PT_FC_REGS	preg = udc->p_regs;
+	struct fc_regs	*preg = udc->p_regs;
 
 	if (req->dma_flag)
 		return 1;		/* DMA is forwarded */
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
index ee1b80d..073dfbd 100644
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
 
 
 
@@ -632,7 +632,7 @@ struct nbu2ss_udc {
 
 	u32		curr_config;	/* Current Configuration Number */
 
-	PT_FC_REGS		p_regs;
+	struct fc_regs		*p_regs;
 };
 
 /* USB register access structure */
-- 
1.9.1


