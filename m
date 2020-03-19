X-GM-THRID: 6805954026607214592
X-Received: by 2002:a17:902:ba93:: with SMTP id k19mr4071214pls.73.1584635465301;
        Thu, 19 Mar 2020 09:31:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls1590554pls.6.gmail; Thu, 19
 Mar 2020 09:31:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtov4o+He2iu1ZGgAAXPOL/Mr4rHfADHSecMZTmXigztcXbKpFhK6ZJWCoQc+m7KKKk3pjO
X-Received: by 2002:a17:902:b617:: with SMTP id b23mr4286995pls.285.1584635463722;
        Thu, 19 Mar 2020 09:31:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584635463; cv=none;
        d=google.com; s=arc-20160816;
        b=w8Xxl2cPytUd0VwKJ4cZy9JREYfWQQcg7+IM/AA4ETTv3ZyAaj6FVNPkQIHHRfDjAL
         oZTIt7tPbP94NXBHcdGCFSN7NWu6QtzC+1WDWu3yP2nq3WeMr2A9HAXIvLHNjEI9PK3F
         pkiw9/MSgLfqU3WCN2TGMYeTt5jTGA+XdRvohG2tbH4SpbmL+n8hEnQQfhh9FhLaxtrQ
         vyxOG99T50+5V4fxcUJUcYx9GX7h2yhJ5P5apgVN9sZGsq+kGYnuf9ZZlk86fwJ2Mgdy
         d2d5zwp+6EWsi4O6TnvE6SXzDRrwHa9NSdvPg6tXdzEXLmQan3qxzokm5m5EgqlRHJvt
         /o2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LLPQP4FYX8Zm/sMa5BwLYM32YtKjTvqGv8E0qY71aIU=;
        b=AzThcPaemdDxSh5J2XseMDOEjdfSW5P8mbfVttkTFywefNMCCiL/J96sX63X6+iPyf
         blmgYulvjq5T1RZTZsGUBu3bdvxoZHnYWnOOT+9wbJ1TO9sVj0/aPOz72YpNjrBLoitE
         we0yl2Qn3CTkD8m/UDTNHCQDbzcDBbHKdhenwyCYNTVb6lyVA351nmTKTJh8O6bJGdjs
         wdXJ07ZfaR6QDFAEUAYElVzEhfwe0WVd+c/EbNoYw9Oo9q+1JZfGtOHPqC3ehFEg58xo
         5Bm8v0Z9082j6bd3v68OEmB6YfVzQut3xPQxsN5Wve+4NyVh8lpSKnm5SNvct3688Ygz
         cudA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="HR3xTa/O";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 188si257261pfb.1.2020.03.19.09.31.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 09:31:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="HR3xTa/O";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E86372072C;
	Thu, 19 Mar 2020 16:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584635463;
	bh=9xXmcZ2JgehAjPClBVp3wuOlsi7g5YzirmWePU5/H+I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HR3xTa/OX8WnTTRkcpp6IBtbpclapHg6nXCodEstSrfG8wQ6gUzDKED0rYYJ87Ot0
	 KKq5fsmqzBtpTAOC/j1t2k32o3P+UtqbQfDBM8/z/jK5edQ1X/0WspF9IOHeOyoWsa
	 t/V9VHW5CYfg5WZCEf1awKT+HVmjMGNqv/uL56CM=
Date: Thu, 19 Mar 2020 17:31:01 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 2/2] staging: rtl8723bs: os_dep: Correct long line
 comments
Message-ID: <20200319163101.GA240188@kroah.com>
References: <cover.1584633953.git.vkor@vkten.in>
 <876ab0cca61886355ca75004ba9ec9e62465b7bd.1584633953.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <876ab0cca61886355ca75004ba9ec9e62465b7bd.1584633953.git.vkor@vkten.in>

On Thu, Mar 19, 2020 at 09:47:13PM +0530, R Veera Kumar wrote:
> Correct long line comments to respect 80 character per
> line limit.
> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
> Changes in v2:
>  - Remove an extra blank line added by error
> ---
>  drivers/staging/rtl8723bs/os_dep/recv_linux.c | 26 ++++++++++++++-----
>  1 file changed, 20 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> index a6491f163272..35241c0493d2 100644
> --- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> @@ -35,7 +35,8 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
>  
>  	for (i = 0; i < NR_RECVFRAME; i++) {
>  		if (precvframe->u.hdr.pkt) {
> -			dev_kfree_skb_any(precvframe->u.hdr.pkt);/* free skb by driver */
> +			/* free skb by driver */
> +			dev_kfree_skb_any(precvframe->u.hdr.pkt);
>  			precvframe->u.hdr.pkt = NULL;
>  		}
>  		precvframe++;
> @@ -80,7 +81,10 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
>  		((!memcmp(sub_skb->data, rtw_rfc1042_header, SNAP_SIZE) &&
>  		  eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
>  		 !memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {
> -		/* remove RFC1042 or Bridge-Tunnel encapsulation and replace EtherType */
> +		/*
> +		 * remove RFC1042 or Bridge-Tunnel encapsulation and replace
> +		 * EtherType
> +		 */
>  		skb_pull(sub_skb, SNAP_SIZE);
>  		memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src, ETH_ALEN);
>  		memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst, ETH_ALEN);
> @@ -112,7 +116,10 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
>  			/* DBG_871X("bmcast =%d\n", bmcast); */
>  
>  			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
> -				/* DBG_871X("not ap psta =%p, addr =%pM\n", psta, pattrib->dst); */
> +				/*
> +				 *  DBG_871X("not ap psta =%p, addr =%pM\n",
> +				 *  psta, pattrib->dst);
> +				 */

Why the extra ' ' character before the comment?

And that was a code line, not a comment line, it should just be removed
entirely.  But as a separate patch please.

thanks,

greg k-h

