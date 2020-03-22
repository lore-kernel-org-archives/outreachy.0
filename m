X-GM-THRID: 6807027945867051008
X-Received: by 2002:a2e:5844:: with SMTP id x4mr10714372ljd.40.1584885258110;
        Sun, 22 Mar 2020 06:54:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:96:: with SMTP id 22ls2274993ljq.0.gmail; Sun, 22
 Mar 2020 06:54:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsSyhKcVJkJRNFViZKdwtKXWDiG0vB1GGxi5/sfsNEy3yYZQsovBfN0yy1ojbfWSIr6tcrz
X-Received: by 2002:a2e:151e:: with SMTP id s30mr11223562ljd.92.1584885256518;
        Sun, 22 Mar 2020 06:54:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584885256; cv=none;
        d=google.com; s=arc-20160816;
        b=yk5k0OWKIx9+rdMHAv3aqO/hxlQE9UYkEWNx33/iNtmbPtc3xpJhQ1MTxKLosVszMy
         IWJrJYMoCiHe8ueZfoK3bqLlebGD99eXlaAHwRfSw6lpnFreZ7PQIpjs0ojt1GyiVW6u
         2ih7D/rFUY9cAXiN1yZMpm6FYnsVe5A6PBvYMRztvlxz/t4Kp0H4honlRdi7UZ7OxPmm
         /RdY+ZKOyqHUMhXdBOuB61tB54EOtjiMCWHaTyYGS5xUX2+62CKi0wTSEBi+n69Ucs4T
         xdlx1/G6exrWyA8q0L3dipreURuPPdr3nX6ej5E9Y1EtFvBn64hVQtYMjD8Tx++tE/gf
         VlUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7TzY9rgEOzKjRDJDKFVcZc9ommjCY1znAJdx1gwzaN4=;
        b=h1xOF9vbZLpJKp8xBSj4wPgDekTRBo6CKzldhQ6VgXrHU9jXxQMz+bdPjq8432OKsZ
         zQ9QHsjjVTpN73EOPcNjzw5t9dc7MJRL8JvizK6svbD7n+zowz2IfmdduAUBDo7I2dA0
         sDF5U8fLaVDHRRwVxjDJoGt8Ng7QrUrra2b2HBsajVSnRC0OwM4UEoDIyODAr6qSX4U+
         ssr9mRf37BeI7TFBJcxsptw169mu7uOKbWi5wIEJHoJKGjkWVuBVrA1J4DtZc066g5ID
         b6HjEeH5nTHFJhQOobOY40KdrkqiUe5E0Z/H4lJjnJU0ijXvSf030RfK8rRLzrwFg59r
         CrKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m11si531761ljj.2.2020.03.22.06.54.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 06:54:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,292,1580770800"; 
   d="scan'208";a="343199648"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 14:54:15 +0100
Date: Sun, 22 Mar 2020 14:54:14 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Soumyajit Deb <debsoumyajit100@gmail.com>
cc: gregkh@linuxfoundation.org, perex@perex.cz, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: Add space around +
 operator and remove space around pointers
In-Reply-To: <20200322134439.GA30399@ubuntu>
Message-ID: <alpine.DEB.2.21.2003221453470.2325@hadrien>
References: <20200322134439.GA30399@ubuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Soumyajit Deb wrote:

> Add space around + operator and remove space after * in pointer
> declaration to improve code readability

These seem like two different kinds of changes, so they should be in
separate patches, in a patch series.

julia

> Reported by checkpatch.pl
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322134439.GA30399%40ubuntu.
>

