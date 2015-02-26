X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.87.97 with SMTP id w1mr819248igz.1.1424992856228;
        Thu, 26 Feb 2015 15:20:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.191.36 with SMTP id gv4ls156519obc.96.gmail; Thu, 26 Feb
 2015 15:20:56 -0800 (PST)
X-Received: by 10.182.251.231 with SMTP id zn7mr10821080obc.24.1424992856060;
        Thu, 26 Feb 2015 15:20:56 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si295668pdb.1.2015.02.26.15.20.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:20:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C07A4B4C;
	Thu, 26 Feb 2015 23:20:55 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:20:55 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 1/6] Staging: emxx_udc: Fix do not
 add new typedefs
Message-ID: <20150226232055.GA16476@kroah.com>
References: <cover.1424786861.git.hamohammed.sa@gmail.com>
 <114675998581f4b01d0d6c1556193010f35da12e.1424786861.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <114675998581f4b01d0d6c1556193010f35da12e.1424786861.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 24, 2015 at 05:23:30PM +0300, Haneen Mohammed wrote:
> This patch fixes the following checkpatch.pl warning:"do not add new
> typedefs".
> Remove typedefs keyword and rename identifiers appropriately.
> Update related  files.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v5: Nothing
> v4: Replace struct with volatile union for usb_reg_access.
> v3: Remove all typedefs and create patchset from emxx_udc.
> v2: Remove typedefs appropriately and change related file.
> 
>  drivers/staging/emxx_udc/emxx_udc.c | 60 ++++++++++++++++++-------------------
>  drivers/staging/emxx_udc/emxx_udc.h | 26 ++++++++--------
>  2 files changed, 43 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index 82c492f..e33ccc4 100644
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
> +	volatile union usb_reg_access *pBuf32 = (volatile union usb_reg_access *)pBuf;
>  
>  	/*------------------------------------------------------------*/
>  	/* Read Length */
> @@ -592,8 +592,8 @@ static int EP0_out_OverBytes(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
>  {
>  	u32		i;
>  	u32		iReadSize = 0;
> -	USB_REG_ACCESS  Temp32;
> -	USB_REG_ACCESS *pBuf32 = (USB_REG_ACCESS *)pBuf;
> +	volatile union usb_reg_access  Temp32;
> +	volatile union usb_reg_access  *pBuf32 = (volatile union usb_reg_access *)pBuf;

volatile is almost never needed in the kernel, and in these places it's
wrong, so please don't add it here, or in any of these cases.

thanks,

greg k-h

