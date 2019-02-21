X-GM-THRID: 6659981654376841216
X-Received: by 2002:a63:931c:: with SMTP id b28mr14055668pge.56.1550738258564;
        Thu, 21 Feb 2019 00:37:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1548:: with SMTP id 69ls852211pfv.7.gmail; Thu, 21 Feb
 2019 00:37:37 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibb9iYyMiJ4cb9DahEELbjFgZebCPxCuXcoMHfywT4cxNx7jb9iq/cOCwk15wxPYux38Xq4
X-Received: by 2002:a63:778b:: with SMTP id s133mr13701022pgc.90.1550738257940;
        Thu, 21 Feb 2019 00:37:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550738257; cv=none;
        d=google.com; s=arc-20160816;
        b=dt5nDFL1MAG37Ie6HF/oVZAj+rD5vVuj9CkmaFttz1f8KqWHcN8lHh6sWpNXqnAb3E
         DklqEGTP3Nw1Co7Xe8WtQQBuOpWYI5limDy3JGOYFlVEcS/lVnXXrHzyTCyY3neWFfno
         NbXYle9riNTIt17fSeuoyWbqv1qF91Yxirh271EC+aTB8PuJoj4MVbzj7SW1qAqIr6vS
         WiAmQql1RTw+fj7je5/wInyMxPyjLoLoNIQi/oPhy1j8NbNKDPzgJc35hEGU+Bz7eAKn
         40oIVLcIwCMOGEvGV7wrmp2c0vSsym+1RNi5OsmBjbzo4uGrFC3BIS64X724KaOQuzGe
         lALw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=D2jFGJ1WAQhox55O7Vr25k8Bfg/f+8pLkJvdQfO/784=;
        b=wh9fSd2CqWcfdiInTU/oenlJLRFr5Sl0dnSypr98wnBkgBHwUEVqpYUSpoyF3/FPiq
         V/pTFUq6WO74iyi6v+Uj0onWtLReuGAB4IEU2ChGknMpMJL/zUCR8+M48K1NUtANxpv2
         pY1YT5Va+U27RyPq4GOOK/rts5hyIMedeVJ2U8y15I/e9yQjngAj0Emih5jgQNvGC9zu
         MxN0osL1wYSferuaN29md2DaD3VuhPFBjoEWcFmJAtuJbB3U/LDU9aF52wnoiDnePMvj
         rtocRNasPkVq7RvddEhoPZFuVnTDwwqfMC2dFpTyJChcI0RYv15hopoKLqRwpbvMTIHb
         dwnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1s4CD7eb;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f79si690200pff.4.2019.02.21.00.37.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 00:37:37 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1s4CD7eb;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2BC9620842;
	Thu, 21 Feb 2019 08:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550738257;
	bh=oLTaY09LT6nYXQZFalZ/icFmP7SshQvinodhqvd1344=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1s4CD7ebLMO76Z4yrM5tAcfsQnWCmtNc0LWgai+RJEmCCJNZW2fswUUIqpy5hiw+/
	 nEiRgSEBLV0/fyt2DishICpdzV6/oxeTqWC/Rx/wNvHiHhWFD0dkdQf8C1qjwnfx82
	 v2uvoaJKTyLoRkoqXptPyPK3PPeXksDSedHbZjhw=
Date: Thu, 21 Feb 2019 09:37:34 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 2/2] Staging: rtl8192e: Avoid using bool structure
 members
Message-ID: <20190221083734.GE6397@kroah.com>
References: <20190221074729.GA27093@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190221074729.GA27093@bhanusree-MacBookAir>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Feb 21, 2019 at 01:17:29PM +0530, Bhanusree Pola wrote:
> -Use 'u8' with bitfield instead of 'bool' to preserve space.
> -Also bool size can be 1 or sizeof(int) depending on the macro
>  definition given to bool
> -inorder to avoid alignment issues the u8 bitfield is placed as last
>  member of the structure.
> -removes checkpatch.pl check:
>  CHECK: Avoid using bool structure members because of possible alignment
>  issues
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtl8192e/dot11d.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
> index 6d2b93acfa43..a1d879d316ed 100644
> --- a/drivers/staging/rtl8192e/dot11d.h
> +++ b/drivers/staging/rtl8192e/dot11d.h
> @@ -33,8 +33,6 @@ enum dot11d_state {
>   */
>  
>  struct rt_dot11d_info {
> -	bool enabled;
> -
>  	u16 country_len;
>  	u8  country_buffer[MAX_IE_LEN];
>  	u8  country_src_addr[6];
> @@ -44,6 +42,7 @@ struct rt_dot11d_info {
>  	u8  max_tx_power_list[MAX_CHANNEL_NUMBER + 1];
>  
>  	enum dot11d_state state;
> +	u8 enabled:1;

Again, no, this is not ok at all.  I thought I said so the last time you
sent this patch.  checkpatch.pl is a "hint", you do not always have to
follow everything it says to do.

thanks,

greg k-h

