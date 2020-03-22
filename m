X-GM-THRID: 6807027945867051008
X-Received: by 2002:a5d:63d2:: with SMTP id c18mr2562453wrw.385.1584885372954;
        Sun, 22 Mar 2020 06:56:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls760734wrp.6.gmail; Sun, 22 Mar
 2020 06:56:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu92G0y0AJXsC8hkmTUCkkD5uey6zKZ3b18tcjQl4dZQ2MVtFHn62Lvrd+JnTfmah1Fl0V4
X-Received: by 2002:adf:dd06:: with SMTP id a6mr13137619wrm.189.1584885371761;
        Sun, 22 Mar 2020 06:56:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584885371; cv=none;
        d=google.com; s=arc-20160816;
        b=bzjgtHdntXnJJjhn8Dgbgu28WVeL/E7kP+0Xx+PKt8DGNEA17FaI0tHL41DJqpqVma
         /4eZwjoDVyOmQ+B0GDwHh6lYgkFU8O+n+WUsWnGyHygau/+gLRm3twxzhN+hnbu41oT1
         FJXqfb8zy8gL1+YxIs6I5vaAMPR5TIOeVF7wyD1v7n0Emi9Iubli4KJHVAbgtACJGxRo
         2s9imoRsd59KTSE4RR/als7I8laRDBq+8kYMtnYWYwfQO6NLzDXwesimW+rl6lh2YmnW
         zklJiQ9rC1sNbglCloJyP3ZVPJteQrX4YkZGIHkggGEAES4ILM42K5WJAgixT4TOIpew
         AOXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=vbx6g14hNYW9X/LTIOdT1MNrBVG5nlIUtbJTMzHmLuk=;
        b=SCcHFAC+mqBi4xnYXETVveYydDs2e+njOmEXH++yFoRGLru22lGVJTSYThRjSGNxvm
         2mmf++xZ0GcU/YDcm874KlgAFyMW/phrYELpWSPsnEy+oVIN0VesKNzsEyu5FTXgBr7o
         f78OyEtnOKY8ZSjOSYXky2Mv9RQvaSXPH4z7/8sLomxP3fax3UXY4xCW3JvPYnxWtMPr
         rLjVTdKdigSD5PkPBVnCWaLP+g9WidT9aOfyRSviDo2mR4NelMMCykev4xUHk7e/epx5
         A8phmzDq9z2Do0tujN3ahvCnjst/9rwqJmr/2JIVdZKZwZKZlYDpsFDCqNkcEsjYgbmw
         Brag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b17si224526wme.3.2020.03.22.06.56.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 06:56:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,292,1580770800"; 
   d="scan'208";a="343199705"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 14:55:47 +0100
Date: Sun, 22 Mar 2020 14:55:47 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Soumyajit Deb <debsoumyajit100@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    perex@perex.cz
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: Add space around +
 operator and remove space around pointers
In-Reply-To: <20200322134852.GA30778@ubuntu>
Message-ID: <alpine.DEB.2.21.2003221455370.2325@hadrien>
References: <20200322134852.GA30778@ubuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Soumyajit Deb wrote:

> Add space around + operator and remove space after * in pointer
> declaration to improve code readability
> Reported by checkpatch.pl

Did you send the same thing twice?

julia

>
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index b89c4dcf53f5..2cf1104cd2dd 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -119,7 +119,7 @@
>  #define HP100_REGION_SIZE	0x20	/* for ioports */
>  #define HP100_SIG_LEN		8	/* same as EISA_SIG_LEN */
>
> -#define HP100_MAX_PACKET_SIZE	(1536+4)
> +#define HP100_MAX_PACKET_SIZE	(1536 + 4)
>  #define HP100_MIN_PACKET_SIZE	60
>
>  #ifndef HP100_DEFAULT_RX_RATIO
> @@ -246,11 +246,11 @@ static void hp100_BM_shutdown(struct net_device *dev);
>  static void hp100_mmuinit(struct net_device *dev);
>  static void hp100_init_pdls(struct net_device *dev);
>  static int hp100_init_rxpdl(struct net_device *dev,
> -			    register hp100_ring_t * ringptr,
> -			    register u_int * pdlptr);
> +			    register hp100_ring_t *ringptr,
> +			    register u_int *pdlptr);
>  static int hp100_init_txpdl(struct net_device *dev,
> -			    register hp100_ring_t * ringptr,
> -			    register u_int * pdlptr);
> +			    register hp100_ring_t *ringptr,
> +			    register u_int *pdlptr);
>  static void hp100_rxfill(struct net_device *dev);
>  static void hp100_hwinit(struct net_device *dev);
>  static void hp100_clean_txring(struct net_device *dev);
> @@ -264,7 +264,7 @@ static void hp100_RegisterDump(struct net_device *dev);
>   * because it was properly DMA allocated via pci_alloc_consistent(),
>   * so we just need to "retrieve" the original mapping to bus/phys/dma
>   * address - Jean II */
> -static inline dma_addr_t virt_to_whatever(struct net_device *dev, u32 * ptr)
> +static inline dma_addr_t virt_to_whatever(struct net_device *dev, u32 *ptr)
>  {
>  	struct hp100_private *lp = netdev_priv(dev);
>  	return ((u_long) ptr) + lp->whatever_offset;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322134852.GA30778%40ubuntu.
>

