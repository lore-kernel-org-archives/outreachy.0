X-GM-THRID: 6476866726968426496
X-Received: by 10.28.45.215 with SMTP id t206mr37704wmt.17.1508145776786;
        Mon, 16 Oct 2017 02:22:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.162.137 with SMTP id s9ls2938443wra.7.gmail; Mon, 16 Oct
 2017 02:22:55 -0700 (PDT)
X-Received: by 10.28.6.76 with SMTP id 73mr44519wmg.26.1508145775913;
        Mon, 16 Oct 2017 02:22:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508145775; cv=none;
        d=google.com; s=arc-20160816;
        b=xPUGrcy4jAeIUd7O7MGINok2tlhIzjxmMfRB0LV2kt5qtsUwV9tib7z5hZbwPpjwPQ
         nGuirq0ghDsnbmQskFLtHimg4sEs9ipjU3HOoTyTWyJM50n8KCHy4Y0ue+RB/PuYoyE7
         a3T06ySHMlwkM8Q4iXXyFgpMtrNuraZUlCLP+9g2SaSbmI7yMctOK/rBDz68NKRk746c
         J1oOH+Yt5ZMfxzoXw96U1M4AQ7hD4pfJD1tLVAg2U2Jx/1dTq6ZftCmSXeHpR0OQ74Wt
         whF9M72v0oWRTXvWVHiGtZOY5ndTkwiYHpfnRI2cIZcDpIPHrgPXuy4ft1wDP4tMnJf9
         Ofdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature:arc-authentication-results;
        bh=vA5feeCs+3DW/jA+9iPzPhpTN9ZZgFpg36wVsgMTwq8=;
        b=xRtkwTZqteDmyqmEka/c5iTRqYxmO4KbU8aOTGsvlasVOwxWhULILkdEdFyGb5etsB
         qjHBlVFjqroOZ+NmAR+N/REtvapxsmJr7aV1fpxX5zCDxX9Qu7w5zGZo3z6pwR9XHeu2
         fTOa10earEq4nRJ3fwIjAe7mBsfFaGHnBdeVMlU5QGXKRfIfGd07qq1vjNwCxU6advnz
         yo8YX4B3el7IHf8iRn+Kq3YNU+mZ/acpI4JnaIauOW4pGnxxqKi7WaEbK4QF3RQe14+p
         VcRPwTPeDY7sjCGBQ2vTw2KTpqdMfPJx//c0pYKKR2gt7odAFmpOMKjY2lj+tMWW8OxQ
         N3/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=D2+C6eCO;
       spf=neutral (google.com: 2a00:1450:400c:c09::22c is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id d82si306418wmd.1.2017.10.16.02.22.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 02:22:55 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::22c is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=D2+C6eCO;
       spf=neutral (google.com: 2a00:1450:400c:c09::22c is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x22c.google.com with SMTP id f4so1071342wme.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 02:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=vA5feeCs+3DW/jA+9iPzPhpTN9ZZgFpg36wVsgMTwq8=;
        b=D2+C6eCOjNEZNS67uNrePLJAmX6mszuPniSZFbbFs/HNFniDsXh/QHEgR3+w8V8Cug
         i9NJydjxk0L1d1yt5lKhEMAHnRCB6P5UcYTyS+lclksBTsN848VlLQUzOik8c7noc8PD
         1Kmhl/9triIBPTiRiwRpNIxEFOxTMQ5lEf72k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=vA5feeCs+3DW/jA+9iPzPhpTN9ZZgFpg36wVsgMTwq8=;
        b=cWAk4j/PawNP3m7HYdlCcLnjeoxN491KyDa+HzmD2k3KDeZQFlJuYj+X6jBiCshaqD
         WcG/8pOK+uLs7b/XmhnD3BBU3JA0OfKqcmdFOmwhwq/0ml2VjVM4H34fhX6jqzY8Bu4C
         uIoAace1WKg32unJXWAvQ1qk7dbEtrGy5Z3YPCtr4+1UqfCCK7UL3O8O6xC9db6qSdmK
         oFp68KUnGmR2CDyZe3WgfJo4hbe9AWXduiydaJf1xVA3l9jyrMcyI0GlAdOsIwe0bTa3
         KDgMH+ke7bmHzqVyf/E9Lq6W3k3SYlkXaE/fFAoTF1ei4rM2UA41lFej3P1P5rkwLPOu
         LApg==
X-Gm-Message-State: AMCzsaXFVmz+2hvpuayqdA0dtwDP8w4HZQOs9Ey0StURF1qexURNdJhx
	V13W0I2atFFbgycoNMhtotX1sw==
X-Google-Smtp-Source: AOwi7QBltwAslf7CsrTgUpb1sOTLZMc1UE3WLy8UfJ4M1cKD5Nz4oa7TTZJwIBaY2oGCBnidFyWT8w==
X-Received: by 10.80.137.6 with SMTP id e6mr12386094ede.32.1508145775548;
        Mon, 16 Oct 2017 02:22:55 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id 23sm4460597edx.8.2017.10.16.02.22.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Oct 2017 02:22:54 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 16 Oct 2017 11:22:52 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Harsha Sharma <harshasharmaiitr@gmail.com>,
	Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc: daniel.vetter@ffwll.ch, treding@nvidia.com, airlied@linux.ie,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] drm/tinydrm: Replace list_for_each with
 list_for_each_entry
Message-ID: <20171016092252.cs5rdruvnshurgnz@phenom.ffwll.local>
Mail-Followup-To: Harsha Sharma <harshasharmaiitr@gmail.com>,
	Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
	treding@nvidia.com, airlied@linux.ie,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <20171014202823.29230-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171014202823.29230-1-harshasharmaiitr@gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Sun, Oct 15, 2017 at 01:58:23AM +0530, Harsha Sharma wrote:
> Replace use of list_for_each with list_for_each_entry to simplify the
> code and remove variables that are used only in list_for_each.
> Done with following coccinelle patch:
> 
> @r@
> identifier fn,i,f,p;
> expression e;
> iterator name list_for_each, list_for_each_entry;
> type T;
> @@
> 
> fn(...) {
> ++ T *i;
>   <+...
> - list_for_each(p,e)
> + list_for_each_entry(i,e,f)
>   {
>               ...
> -   T *i = list_entry(p,T,f);
>                   ...
>    }
>    ...+>
> }
> 
> @@
> identifier r.fn,r.p;
> @@
> 
> fn(...) {
>   ...
> - struct list_head *p;
>   ... when != p
> }
> 
> @@
> identifier r.fn,r.i,r.f;
> expression r.e;
> statement S;
> @@
> 
> fn(...) {
>   <...
>   list_for_each_entry(i,e,f)
> - {
>   S
> - }
>   ...>
> }
> 
> @s@
> identifier i,f,p;
> expression e;
> type T;
> @@
> 
> - list_for_each(p,e)
> + list_for_each_entry(i,e,f)
>   {
>     ... when != T *i;
> -   i = list_entry(p,T,f);
>     ...
>   }
> 
> @@
> identifier s.p;
> @@
> 
> - struct list_head *p;
>   ... when != p
> 
> @@
> identifier s.i,s.f;
> expression s.e;
> statement S;
> @@
> 
>   list_for_each_entry(i,e,f)
> - {
>   S
> - }
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Please use scripts/get_maintainers.pl to generate the list of recipients,
you've missed Noralf as the tinydrm maintainer. I've added him.
-Daniel

> ---
>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> index bd6cce093a85..bf96072d1b97 100644
> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> @@ -414,11 +414,9 @@ tinydrm_dbg_spi_print(struct spi_device *spi, struct spi_transfer *tr,
>  void _tinydrm_dbg_spi_message(struct spi_device *spi, struct spi_message *m)
>  {
>  	struct spi_transfer *tmp;
> -	struct list_head *pos;
>  	int i = 0;
>  
> -	list_for_each(pos, &m->transfers) {
> -		tmp = list_entry(pos, struct spi_transfer, transfer_list);
> +	list_for_each_entry(tmp, &m->transfers, transfer_list) {
>  
>  		if (tmp->tx_buf)
>  			tinydrm_dbg_spi_print(spi, tmp, tmp->tx_buf, i, true);
> -- 
> 2.11.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

