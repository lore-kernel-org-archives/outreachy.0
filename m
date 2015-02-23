X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.178.234 with SMTP id db10mr1063135wjc.2.1424676051219;
        Sun, 22 Feb 2015 23:20:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.187.106 with SMTP id fr10ls481375wic.8.canary; Sun, 22 Feb
 2015 23:20:50 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr1062973wjc.3.1424676050961;
        Sun, 22 Feb 2015 23:20:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si616605wix.0.2015.02.22.23.20.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 23:20:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,629,1418079600"; 
   d="scan'208";a="100954473"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 08:20:50 +0100
Date: Mon, 23 Feb 2015 08:20:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4 2/6] Staging: emxx_udc: Remove
 volatile from union usb_regs_access
In-Reply-To: <05cc0b9434eecf49b6b4b4a15c86e2516cb5827c.1424645871.git.hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.02.1502230820330.2053@localhost6.localdomain6>
References: <cover.1424645871.git.hamohammed.sa@gmail.com> <05cc0b9434eecf49b6b4b4a15c86e2516cb5827c.1424645871.git.hamohammed.sa@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Haneen Mohammed wrote:

> This patch removes volatile from union usb_regs_access, to fix checkpatch.pl
> warning:
> WARNING: Use of volatile is usually wrong

You need a justification for why it is wrong in this case.

julia

> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 24 ++++++++++++------------
>  drivers/staging/emxx_udc/emxx_udc.h |  2 +-
>  2 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index e33ccc4..c9f5e5d 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -567,7 +567,7 @@ static int EP0_out_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
>  	u32		i;
>  	int		nret   = 0;
>  	u32		iWordLength = 0;
> -	volatile union usb_reg_access *pBuf32 = (volatile union usb_reg_access *)pBuf;
> +	union usb_reg_access *pBuf32 = (union usb_reg_access *)pBuf;
>  
>  	/*------------------------------------------------------------*/
>  	/* Read Length */
> @@ -592,8 +592,8 @@ static int EP0_out_OverBytes(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
>  {
>  	u32		i;
>  	u32		iReadSize = 0;
> -	volatile union usb_reg_access  Temp32;
> -	volatile union usb_reg_access  *pBuf32 = (volatile union usb_reg_access *)pBuf;
> +	union usb_reg_access  Temp32;
> +	union usb_reg_access  *pBuf32 = (union usb_reg_access *)pBuf;
>  
>  	if ((0 < length) && (length < sizeof(u32))) {
>  		Temp32.dw = _nbu2ss_readl(&udc->p_regs->EP0_READ);
> @@ -613,7 +613,7 @@ static int EP0_in_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
>  	u32		iMaxLength   = EP0_PACKETSIZE;
>  	u32		iWordLength  = 0;
>  	u32		iWriteLength = 0;
> -	volatile union usb_reg_access  *pBuf32 = (volatile union usb_reg_access *)pBuf;
> +	union usb_reg_access  *pBuf32 = (union usb_reg_access *)pBuf;
>  
>  	/*------------------------------------------------------------*/
>  	/* Transfer Length */
> @@ -638,8 +638,8 @@ static int EP0_in_PIO(struct nbu2ss_udc *udc, u8 *pBuf, u32 length)
>  static int EP0_in_OverBytes(struct nbu2ss_udc *udc, u8 *pBuf, u32 iRemainSize)
>  {
>  	u32		i;
> -	volatile union usb_reg_access  Temp32;
> -	volatile union usb_reg_access  *pBuf32 = (volatile union usb_reg_access *)pBuf;
> +	union usb_reg_access  Temp32;
> +	union usb_reg_access  *pBuf32 = (union usb_reg_access *)pBuf;
>  
>  	if ((0 < iRemainSize) && (iRemainSize < sizeof(u32))) {
>  		for (i = 0 ; i < iRemainSize ; i++)
> @@ -900,8 +900,8 @@ static int _nbu2ss_epn_out_pio(
>  	u32		i;
>  	u32		data;
>  	u32		iWordLength;
> -	volatile union usb_reg_access	Temp32;
> -	volatile union usb_reg_access	*pBuf32;
> +	union usb_reg_access	Temp32;
> +	union usb_reg_access	*pBuf32;
>  	int		result = 0;
>  	struct fc_regs	*preg = udc->p_regs;
>  
> @@ -912,7 +912,7 @@ static int _nbu2ss_epn_out_pio(
>  		return 0;
>  
>  	pBuffer = (u8 *)req->req.buf;
> -	pBuf32 = (volatile union usb_reg_access *)(pBuffer + req->req.actual);
> +	pBuf32 = (union usb_reg_access *)(pBuffer + req->req.actual);
>  
>  	iWordLength = length / sizeof(u32);
>  	if (iWordLength > 0) {
> @@ -1123,8 +1123,8 @@ static int _nbu2ss_epn_in_pio(
>  	u32		i;
>  	u32		data;
>  	u32		iWordLength;
> -	volatile union usb_reg_access	Temp32;
> -	volatile union usb_reg_access	*pBuf32 = NULL;
> +	union usb_reg_access	Temp32;
> +	union usb_reg_access	*pBuf32 = NULL;
>  	int		result = 0;
>  	struct fc_regs	*preg = udc->p_regs;
>  
> @@ -1133,7 +1133,7 @@ static int _nbu2ss_epn_in_pio(
>  
>  	if (length > 0) {
>  		pBuffer = (u8 *)req->req.buf;
> -		pBuf32 = (volatile union usb_reg_access *)(pBuffer + req->req.actual);
> +		pBuf32 = (union usb_reg_access *)(pBuffer + req->req.actual);
>  
>  		iWordLength = length / sizeof(u32);
>  		if (iWordLength > 0) {
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index c1f98b3..7b2fcb6 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -636,7 +636,7 @@ struct nbu2ss_udc {
>  };
>  
>  /* USB register access structure */
> -volatile union usb_reg_access {
> +union usb_reg_access {
>  	struct {
>  		unsigned char	DATA[4];
>  	} byte;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/05cc0b9434eecf49b6b4b4a15c86e2516cb5827c.1424645871.git.hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

