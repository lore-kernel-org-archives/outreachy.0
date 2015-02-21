X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.98 with SMTP id zn2mr438689lbb.6.1424552501087;
        Sat, 21 Feb 2015 13:01:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.13 with SMTP id n13ls22025laa.80.gmail; Sat, 21 Feb 2015
 13:01:40 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr435984lbf.21.1424552500859;
        Sat, 21 Feb 2015 13:01:40 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r6si380221wix.0.2015.02.21.13.01.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 13:01:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="122824460"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 22:01:40 +0100
Date: Sat, 21 Feb 2015 22:01:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: emxx_udc: Fix do not
 add new typedefs
In-Reply-To: <311e630256ddb78958e41c7f0fd1f776e6d523c4.1424473862.git.hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212200310.2296@localhost6.localdomain6>
References: <cover.1424473862.git.hamohammed.sa@gmail.com> <311e630256ddb78958e41c7f0fd1f776e6d523c4.1424473862.git.hamohammed.sa@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Haneen Mohammed wrote:

> This patch fixes the following checkpatch.pl warning:"do not add new typedefs".
> Remove typedefs keyword and rename structs identifiers appropriately.
> Update related  files.

When you send a revision of a patch, you have to send revisions of all of 
the patches in the series, all labelled with the current version number.  
If some don't change, then just put a note below the --- saying that 
nothing has changed.

julia

> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v2: Removed typedefs appropriately and chenged related file.
> v3: Removed all typedefs.
> 
>  drivers/staging/emxx_udc/emxx_udc.c | 60 ++++++++++++++++++-------------------
>  drivers/staging/emxx_udc/emxx_udc.h | 26 ++++++++--------
>  2 files changed, 43 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index 82c492f..98093b9 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -201,7 +201,7 @@ static u32 _nbu2ss_get_begin_ram_address(struct nbu2ss_udc *udc)
>  	u32		num, buf_type;
>  	u32		data, last_ram_adr, use_ram_size;
>  
> -	PT_EP_REGS	p_ep_regs;
> +	struct ep_regs *p_ep_regs;
>  
>  	last_ram_adr = (D_RAM_SIZE_CTRL / sizeof(u32)) * 2;
>  	use_ram_size = 0;
> @@ -394,7 +394,7 @@ static void _nbu2ss_ep_dma_exit(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
>  {
>  	u32		num;
>  	u32		data;
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	if (udc->vbus_active == 0)
>  		return;		/* VBUS OFF */
> @@ -425,7 +425,7 @@ static void _nbu2ss_ep_dma_exit(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
>  /* Abort DMA */
>  static void _nbu2ss_ep_dma_abort(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
>  {
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	_nbu2ss_bitclr(&preg->EP_DCR[ep->epnum-1].EP_DCR1, DCR1_EPn_REQEN);
>  	mdelay(DMA_DISABLE_TIME);	/* DCR1_EPn_REQEN Clear */
> @@ -443,7 +443,7 @@ static void _nbu2ss_ep_in_end(
>  {
>  	u32		data;
>  	u32		num;
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	if (length >= sizeof(u32))
>  		return;
> @@ -567,7 +567,7 @@ static int EP0_out_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
>  	u32		i;
>  	int		nret   = 0;
>  	u32		iWordLength = 0;
> -	USB_REG_ACCESS *pBuf32 = (USB_REG_ACCESS *)pBuf;
> +	struct usb_reg_access *pBuf32 = (struct usb_reg_access *)pBuf;
>  
>  	/*------------------------------------------------------------*/
>  	/* Read Length */
> @@ -592,8 +592,8 @@ static int EP0_out_OverBytes(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
>  {
>  	u32		i;
>  	u32		iReadSize = 0;
> -	USB_REG_ACCESS  Temp32;
> -	USB_REG_ACCESS *pBuf32 = (USB_REG_ACCESS *)pBuf;
> +	struct usb_reg_access  Temp32;
> +	struct usb_reg_access  *pBuf32 = (struct usb_reg_access *)pBuf;
>  
>  	if ((0 < length) && (length < sizeof(u32))) {
>  		Temp32.dw = _nbu2ss_readl(&udc->p_regs->EP0_READ);
> @@ -613,7 +613,7 @@ static int EP0_in_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
>  	u32		iMaxLength   = EP0_PACKETSIZE;
>  	u32		iWordLength  = 0;
>  	u32		iWriteLength = 0;
> -	USB_REG_ACCESS *pBuf32 = (USB_REG_ACCESS *)pBuf;
> +	struct usb_reg_access  *pBuf32 = (struct usb_reg_access *)pBuf;
>  
>  	/*------------------------------------------------------------*/
>  	/* Transfer Length */
> @@ -638,8 +638,8 @@ static int EP0_in_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
>  static int EP0_in_OverBytes(struct nbu2ss_udc *udc, u8 *pBuf, u32 iRemainSize)
>  {
>  	u32		i;
> -	USB_REG_ACCESS Temp32;
> -	USB_REG_ACCESS *pBuf32 = (USB_REG_ACCESS *)pBuf;
> +	struct usb_reg_access  Temp32;
> +	struct usb_reg_access  *pBuf32 = (struct usb_reg_access *)pBuf;
>  
>  	if ((0 < iRemainSize) && (iRemainSize < sizeof(u32))) {
>  		for (i = 0 ; i < iRemainSize ; i++)
> @@ -840,7 +840,7 @@ static int _nbu2ss_out_dma(
>  	u32		burst = 1;
>  	u32		data;
>  	int		result = -EINVAL;
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	if (req->dma_flag)
>  		return 1;		/* DMA is forwarded */
> @@ -900,10 +900,10 @@ static int _nbu2ss_epn_out_pio(
>  	u32		i;
>  	u32		data;
>  	u32		iWordLength;
> -	USB_REG_ACCESS	Temp32;
> -	USB_REG_ACCESS	*pBuf32;
> +	struct usb_reg_access	Temp32;
> +	struct usb_reg_access	*pBuf32;
>  	int		result = 0;
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	if (req->dma_flag)
>  		return 1;		/* DMA is forwarded */
> @@ -912,7 +912,7 @@ static int _nbu2ss_epn_out_pio(
>  		return 0;
>  
>  	pBuffer = (u8 *)req->req.buf;
> -	pBuf32 = (USB_REG_ACCESS *)(pBuffer + req->req.actual);
> +	pBuf32 = (struct usb_reg_access *)(pBuffer + req->req.actual);
>  
>  	iWordLength = length / sizeof(u32);
>  	if (iWordLength > 0) {
> @@ -988,7 +988,7 @@ static int _nbu2ss_epn_out_transfer(
>  	u32		num;
>  	u32		iRecvLength;
>  	int		result = 1;
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	if (ep->epnum == 0)
>  		return -EINVAL;
> @@ -1051,7 +1051,7 @@ static int _nbu2ss_in_dma(
>  	u32		iWriteLength;
>  	u32		data;
>  	int		result = -EINVAL;
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	if (req->dma_flag)
>  		return 1;		/* DMA is forwarded */
> @@ -1123,17 +1123,17 @@ static int _nbu2ss_epn_in_pio(
>  	u32		i;
>  	u32		data;
>  	u32		iWordLength;
> -	USB_REG_ACCESS	Temp32;
> -	USB_REG_ACCESS	*pBuf32 = NULL;
> +	struct usb_reg_access	Temp32;
> +	struct usb_reg_access	*pBuf32 = NULL;
>  	int		result = 0;
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	if (req->dma_flag)
>  		return 1;		/* DMA is forwarded */
>  
>  	if (length > 0) {
>  		pBuffer = (u8 *)req->req.buf;
> -		pBuf32 = (USB_REG_ACCESS *)(pBuffer + req->req.actual);
> +		pBuf32 = (struct usb_reg_access *)(pBuffer + req->req.actual);
>  
>  		iWordLength = length / sizeof(u32);
>  		if (iWordLength > 0) {
> @@ -1347,7 +1347,7 @@ static void _nbu2ss_set_endpoint_stall(
>  	u8		num, epnum;
>  	u32		data;
>  	struct nbu2ss_ep *ep;
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	if ((ep_adrs == 0) || (ep_adrs == 0x80)) {
>  		if (bstall) {
> @@ -1471,7 +1471,7 @@ static int _nbu2ss_get_ep_stall(struct nbu2ss_udc *udc, u8 ep_adrs)
>  {
>  	u8		epnum;
>  	u32		data = 0, bit_data;
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	epnum = ep_adrs & ~USB_ENDPOINT_DIR_MASK;
>  	if (epnum == 0) {
> @@ -1566,7 +1566,7 @@ static void _nbu2ss_epn_set_stall(
>  	u32	regdata;
>  	int	limit_cnt = 0;
>  
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	if (ep->direct == USB_DIR_IN) {
>  		for (limit_cnt = 0
> @@ -1994,7 +1994,7 @@ static inline void _nbu2ss_epn_in_int(
>  	int	result = 0;
>  	u32	status;
>  
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	if (req->dma_flag)
>  		return;		/* DMA is forwarded */
> @@ -2090,7 +2090,7 @@ static inline void _nbu2ss_epn_out_dma_int(
>  	u32		num;
>  	u32		dmacnt, ep_dmacnt;
>  	u32		mpkt;
> -	PT_FC_REGS	preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	num = ep->epnum - 1;
>  
> @@ -2293,7 +2293,7 @@ static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)
>  /*-------------------------------------------------------------------------*/
>  static void _nbu2ss_fifo_flush(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
>  {
> -	PT_FC_REGS	p = udc->p_regs;
> +	struct fc_regs	*p = udc->p_regs;
>  
>  	if (udc->vbus_active == 0)
>  		return;
> @@ -2536,7 +2536,7 @@ static irqreturn_t _nbu2ss_udc_irq(int irq, void *_udc)
>  	u32	epnum, int_bit;
>  
>  	struct nbu2ss_udc	*udc = (struct nbu2ss_udc *)_udc;
> -	PT_FC_REGS		preg = udc->p_regs;
> +	struct fc_regs	*preg = udc->p_regs;
>  
>  	if (gpio_get_value(VBUS_VALUE) == 0) {
>  		_nbu2ss_writel(&preg->USB_INT_STA, ~USB_INT_STA_RW);
> @@ -2944,7 +2944,7 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
>  	struct nbu2ss_ep	*ep;
>  	struct nbu2ss_udc	*udc;
>  	unsigned long		flags;
> -	PT_FC_REGS		preg;
> +	struct fc_regs		*preg;
>  
>  /*	INFO("=== %s()\n", __func__); */
>  
> @@ -3341,7 +3341,7 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
>  				  0, driver_name, udc);
>  
>  	/* IO Memory */
> -	udc->p_regs = (PT_FC_REGS)mmio_base;
> +	udc->p_regs = (struct fc_regs *)mmio_base;
>  
>  	/* USB Function Controller Interrupt */
>  	if (status != 0) {
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index ee1b80d..c1f98b3 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -474,8 +474,8 @@
>  
>  /*===========================================================================*/
>  /* Struct */
> -/*------- T_EP_REGS */
> -typedef struct _T_EP_REGS {
> +/*------- ep_regs */
> +struct ep_regs {
>  	u32 EP_CONTROL;			/* EP Control */
>  	u32 EP_STATUS;			/* EP Status */
>  	u32 EP_INT_ENA;			/* EP Interrupt Enable */
> @@ -484,18 +484,18 @@ typedef struct _T_EP_REGS {
>  	u32 EP_LEN_DCNT;		/* EP Length & DMA count */
>  	u32 EP_READ;			/* EP Read */
>  	u32 EP_WRITE;			/* EP Write */
> -} T_EP_REGS, *PT_EP_REGS;
> +};
>  
> -/*------- T_EP_DCR */
> -typedef struct _T_EP_DCR {
> +/*------- ep_dcr */
> +struct ep_dcr {
>  	u32 EP_DCR1;			/* EP_DCR1 */
>  	u32 EP_DCR2;			/* EP_DCR2 */
>  	u32 EP_TADR;			/* EP_TADR */
>  	u32 Reserved;			/* Reserved */
> -} T_EP_DCR, *PT_EP_DCR;
> +};
>  
>  /*------- Function Registers */
> -typedef struct _T_FC_REGS {
> +struct fc_regs {
>  	u32 USB_CONTROL;		/* (0x0000) USB Control */
>  	u32 USB_STATUS;			/* (0x0004) USB Status */
>  	u32 USB_ADDRESS;		/* (0x0008) USB Address */
> @@ -513,7 +513,7 @@ typedef struct _T_FC_REGS {
>  	u32 EP0_READ;			/* (0x0038) EP0 Read */
>  	u32 EP0_WRITE;			/* (0x003C) EP0 Write */
>  
> -	T_EP_REGS EP_REGS[REG_EP_NUM];	/* Endpoint Register */
> +	struct ep_regs EP_REGS[REG_EP_NUM];	/* Endpoint Register */
>  
>  	u8 Reserved220[0x1000-0x220];	/* (0x0220:0x0FFF) Reserved */
>  
> @@ -531,11 +531,11 @@ typedef struct _T_FC_REGS {
>  
>  	u8 Reserved1028[0x110-0x28];	/* (0x1028:0x110F) Reserved */
>  
> -	T_EP_DCR EP_DCR[REG_EP_NUM];	/* */
> +	struct ep_dcr EP_DCR[REG_EP_NUM];	/* */
>  
>  	u8 Reserved1200[0x1000-0x200];	/* Reserved */
>  
> -} __attribute__ ((aligned(32))) T_FC_REGS, *PT_FC_REGS;
> +} __attribute__ ((aligned(32)));
>  
>  
>  
> @@ -632,16 +632,16 @@ struct nbu2ss_udc {
>  
>  	u32		curr_config;	/* Current Configuration Number */
>  
> -	PT_FC_REGS		p_regs;
> +	struct fc_regs		*p_regs;
>  };
>  
>  /* USB register access structure */
> -typedef volatile union {
> +volatile union usb_reg_access {
>  	struct {
>  		unsigned char	DATA[4];
>  	} byte;
>  	unsigned int		dw;
> -} USB_REG_ACCESS;
> +};
>  
>  /*-------------------------------------------------------------------------*/
>  #define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/311e630256ddb78958e41c7f0fd1f776e6d523c4.1424473862.git.hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

