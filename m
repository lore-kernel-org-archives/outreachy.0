X-GM-THRID: 6670940020392591360
X-Received: by 2002:ab0:5a30:: with SMTP id l45mr5615842uad.58.1553264179372;
        Fri, 22 Mar 2019 07:16:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab84:: with SMTP id u126ls1440658vke.0.gmail; Fri, 22
 Mar 2019 07:16:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwvqDYVNWG9quO3erfWHCa7cRKohE93TSGh0tFw0fyRPGNVbdQLX3CJySmnGvC5WIRNmGlc
X-Received: by 2002:a1f:be81:: with SMTP id o123mr6135608vkf.83.1553264178867;
        Fri, 22 Mar 2019 07:16:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553264178; cv=none;
        d=google.com; s=arc-20160816;
        b=zs04g5Zh0TFYhGwYtrP0uMAVAnTIWzI3LTpXZba7IthyS8mpBGYmxd6din3g35ngOr
         b0fUChwrtzpJVKpz0NeAnRIhDA5wNkFexDyZKroxKWsSwgayi9PwR8esgpeoefiQPEMM
         aBRtkr6YQzAd5OTWL4wnCnxqtds3l5AmLDCF3dv4gIdIYsn7RmV2NA6iwpsCjbt+ildA
         avYP+wazWug23SENB1nf2Si+OV6gFeVUS4iSVXK9h2pomfl64FxFzwvtxhPsv4MAZLKI
         CyPgAKen3+oF1iQDEX8H/khBMI0IUpZpmSWtms2yS+R1erIJXVCXioPZqE67Vjb2z6Wh
         dtHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=updV7XqS30HTYPdxNkwUJIhmS51TIY8HMRhjxPLk/go=;
        b=UwtuHRo/18DzFe70rKYvg7hARzGJTeGvJDnlVUCj6uoGT4na7s3lxpRefailysqk+i
         +5sktzgrYFgJPtTe3Gw0XFXFnCWX6wWghUkHdURoo5ftOL8FVsufyLmNnVzGnGIxS1NH
         svPM1swQarrT+gbaqxKP5Utwrsm+/b9k1twaamxyR+pL9KBvU/B1rTEVyzsvNVsuXOdb
         Xkb9VeelYOvqsqXhbB+FJdr+5Fsk9dA+CJ5DFTlBFv64FxVQSfEfXsbGKAHFLPFd6E6g
         wajcSfGFbL26mjbP4pZW7QOVch+C26vN+Dzexck6SbzYpwsOA9WKLVYarsAb+NIrp6SG
         0owg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n8ogjpuW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k68si227834vkg.5.2019.03.22.07.16.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:16:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n8ogjpuW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5E4CD218E2;
	Fri, 22 Mar 2019 14:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553264177;
	bh=eY+8bwrhz3JldXm7cB7Xnxpr918sCsi8841YkxpQnHY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n8ogjpuWtBEbZ+m6AfNT+dSjrr0Abi1mRFhK+CBpbheEAsuk0rj/VhqXCdoVpUOph
	 giPtdRj3rdvTtmZZ7BFPDg7F6e8K/BVbYpUQIrpPhZMTlPmfjE7n1KusbdOODoKhlY
	 uWwPtsfQGXqXMtA/r6IyyvzjjUdYGXezzzA9tH3E=
Date: Fri, 22 Mar 2019 15:16:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/4] staging: rtl8723bs: core: Remove return variables in
 rtw_io.c
Message-ID: <20190322141615.GC25959@kroah.com>
References: <20190321201359.5948-1-nishka.dasgupta@yahoo.com>
 <20190321201359.5948-7-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190321201359.5948-7-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 22, 2019 at 01:43:59AM +0530, Nishka Dasgupta wrote:
> Remove unnecessary return variables in rtw_io.c. Issue found with
> Coccinelle using ret.cocci.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_io.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_io.c b/drivers/staging/rtl8723bs/core/rtw_io.c
> index d341069097e2..60347349efd1 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_io.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_io.c
> @@ -37,7 +37,6 @@ jackson@realtek.com.tw
>  
>  u8 _rtw_read8(struct adapter *adapter, u32 addr)
>  {
> -	u8 r_val;
>  	/* struct	io_queue	*pio_queue = (struct io_queue *)adapter->pio_queue; */
>  	struct io_priv *pio_priv = &adapter->iopriv;
>  	struct	intf_hdl		*pintfhdl = &(pio_priv->intf);
> @@ -45,8 +44,7 @@ u8 _rtw_read8(struct adapter *adapter, u32 addr)
>  
>  	_read8 = pintfhdl->io_ops._read8;
>  
> -	r_val = _read8(pintfhdl, addr);
> -	return r_val;
> +	return  _read8(pintfhdl, addr);

One too many spaces there :(

Please fix up and resend.

thanks,

greg k-h

