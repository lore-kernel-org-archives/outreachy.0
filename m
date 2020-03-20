X-GM-THRID: 6806100951859986432
X-Received: by 2002:a25:4b45:: with SMTP id y66mr13042462yba.59.1584713191155;
        Fri, 20 Mar 2020 07:06:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls2227744ybf.5.gmail; Fri, 20 Mar
 2020 07:06:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsUQpoA9bIq1dsPuSeFW0Vj1ONLxvCC1NtS6lnI6rs2wLrVhomFHqQNsSSPN+Y4WOAU8Scp
X-Received: by 2002:a25:2255:: with SMTP id i82mr14188803ybi.21.1584713189821;
        Fri, 20 Mar 2020 07:06:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584713189; cv=none;
        d=google.com; s=arc-20160816;
        b=hOcsvifUIHOpxL6tiSHxYrfclIfP2uaEKY+JWHRTFaTBBuWUrErXvWyrMms5K7BsRd
         INUNBD4EENaH3jGZ4iy0IhGevZgtTKBMwNL/BokqbtkEVVQ+POq/kE2f7JY5z9tfZMVW
         kJJIv3Nxk6qGBabIOM/8nhUyCzu5pS3vJHgiAu3Il7K8P29AMIdjqmSWH/hUY8XUep6e
         CWfRajxOA3MTs0BQy/BcQnuSzRMn6hD6ssfmmOkBmqXlWZt1VI1rxUnb4h1CcsIezSAi
         XjqQseQCSvH4s/POGRcCOR+sg+WpveeUzVqNs1jxZX5P5vH+Idn9X9cssOlBO/E+a9k4
         RvXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rQjHWmmKTrndn9f+LONwuZvnvXyOamVo54KICxHKlSo=;
        b=cYPTJ9Ug+M4L26uR471XQ93bL+V9ffKxaIiN8PSkEFtfFG0yGq1W1WuGwVdiMR+8rY
         vX+7T5uu9RRIPN9mZ5HnM1a5MGe2XecWeNXa1Cmep3C73I1PDXc6z019XWUrWXwpCIh3
         HSWDnnzVFpJRyGg4kc32ibKblCWtQU84mhBIfUakBUryGf8S0TVDtWHjGKVDH/h5jrkT
         dhU7nqhAODt1Uyq03Wp/wZQMt0jTy0OHqgEkyd6eLgsNdgna1VdySHrlo9kwhzAO6Jms
         UPdubTIWuI3p8402IHhX3J+tyJkUsPv1aFE2yOIVbDCOAcE37EXCY9vJSBcFL4sS+c6p
         iwbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="KO/Z9BQ7";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e14si417803ybp.0.2020.03.20.07.06.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 07:06:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="KO/Z9BQ7";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 769E42072D;
	Fri, 20 Mar 2020 14:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584713188;
	bh=GGhdj6G8IShOI13D5Wm2+KiwtoChVUp1vxBYu6Z9SKM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KO/Z9BQ7qXt1mOsSa5HpK4vBzG+h2+UGFKGxDaH7gUBwW0IlYYNY74yL3He2S/Q0e
	 7VU3kCtVSZLIF30vGIzSob8E9Qn+a8+NyTBxGDj1C9jV7A59t560vS2mjKNKsIN0XR
	 KpHISkSbtE+2pmmy6yNWMwnjZWQLawu/W1LZDL3Q=
Date: Fri, 20 Mar 2020 15:06:26 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 1/2] staging: rtl8723bs: os_dep: Correct long line
 comments
Message-ID: <20200320140626.GC643325@kroah.com>
References: <cover.1584668433.git.vkor@vkten.in>
 <05a62157d9d940a15ea369cd3739bc0d084aeb3f.1584668433.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <05a62157d9d940a15ea369cd3739bc0d084aeb3f.1584668433.git.vkor@vkten.in>

On Fri, Mar 20, 2020 at 07:17:29AM +0530, R Veera Kumar wrote:
> Correct long line comments to respect 80 character per
> line limit.
> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
> Changes in v3:
>  - Remove extra ' ' character before comment
> Changes in v2:
>  - Remove an extra blank line added by error
> ---
>  drivers/staging/rtl8723bs/os_dep/recv_linux.c | 26 ++++++++++++++-----
>  1 file changed, 20 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> index a6491f163272..87090af7d776 100644
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
> +				 * DBG_871X("not ap psta =%p, addr =%pM\n",
> +				 * psta, pattrib->dst);

Same comments on v1 of this patch series.


