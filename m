X-GM-THRID: 6806098614327181312
X-Received: by 2002:a17:90b:3656:: with SMTP id nh22mr9536658pjb.38.1584713122336;
        Fri, 20 Mar 2020 07:05:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls3081132pfg.9.gmail; Fri, 20 Mar
 2020 07:05:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuCv2fMUmOhILh0FLX7rlB6fGyeldb1pbaR9WPsRDWqkWirMuH28qJsTuSUvihNDEqFbMth
X-Received: by 2002:a63:3111:: with SMTP id x17mr8952088pgx.422.1584713120925;
        Fri, 20 Mar 2020 07:05:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584713120; cv=none;
        d=google.com; s=arc-20160816;
        b=eXRa5vMyBMHJb3xbM2WJSokOMlAeN6vCupNaPOKaQH7af2IKT0aoKX3/4IHlGSdj8E
         kKSkawvEofloGrIfLF7dq2nuuvg9KpRNL8tdOLBMh+z+7HOw2fB8FO+WoEPynAAjEVx8
         uJrn/ek/WfW0w/qDCGoFWon2UnWekYe5csoI0Qj9+AX2z7uecnV3RIJ6andrIVBiQu2c
         hc3Hzidd4QaZqlcbu6nWfOmgnthiZsgdTh2bcGf3rFdYMwD/ucv8EUwXi/iF/417kLZ6
         cHD4ZP6zV034DMJUsL1JRc1hrn4Lpkpct23On08EkRi3rxgPclbKlLpVrNk4bhBevZHd
         a00g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TjR05BspuJPu7hQH0GJEWv4t9Ihv259FNgXwYDDOV40=;
        b=qouHwry9s/CtyTzkiJsjmuoKsmqo8g60ij6II3MgV+w9wsf7WIBWwJewra5DD+XaSk
         OiM2WuBMRtkF2V5DnoPqaNu2gYN/AA6aDBUUZLViAW5ILFUVQBdYgYfmIdwpBtgAn6fz
         Ngoj1VFojVV1Nw3IEufoXN7FTWIFVuCH1QbhMcvYFgbt4j1Guf4wno6OO1bXt4S0blK0
         lgAB3wVuVvPkpHt6Z+i9xXR9H+UkAoWandIkrqTLGvDtqYChTnc6kEWdIZH2tMw4vVaP
         OL/ZmbHd8G2MfbLcaWPNYdLFd1ATA145A9fS5csfPUa5AQR/lwLtAQvqXxKjbSJiOSHE
         bmyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cz80Pa04;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q1si475880pff.4.2020.03.20.07.05.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 07:05:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cz80Pa04;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2CFB02072D;
	Fri, 20 Mar 2020 14:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584713120;
	bh=ZAnxmaIXME1iMrZUD6x1CHNomDXnUvsEOgbnC/Urcow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cz80Pa04k6zFVe+a4y/X2vrFBWQB9M3ZeXkFn4AgCgTI6Cc/ankvwr2Z2H0tCxIcp
	 k9Pzb+zaKEq+ennUbilizwxqBC9ueMx86uIs5l6ACDAumMZOMva2qyCrA5SIxup855
	 7ZUWZiguTJNCzidp36D/E62oHc2OFa+vgqD5HL88=
Date: Fri, 20 Mar 2020 15:05:16 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 1/2] staging: rtl8723bs: os_dep: Correct long line
 comments
Message-ID: <20200320140516.GA643325@kroah.com>
References: <cover.1584667932.git.vkor@vkten.in>
 <05a62157d9d940a15ea369cd3739bc0d084aeb3f.1584667932.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <05a62157d9d940a15ea369cd3739bc0d084aeb3f.1584667932.git.vkor@vkten.in>

On Fri, Mar 20, 2020 at 07:08:22AM +0530, R Veera Kumar wrote:
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

Again, this is not a long-line comment, it is a code line that is
commented out.  Remove it in a patch previous to this one please.

> +				 */
>  
>  				if (bmcast) {
>  					psta = rtw_get_bcmc_stainfo(padapter);
> @@ -124,7 +131,10 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
>  				if (psta) {
>  					struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;
>  
> -					/* DBG_871X("directly forwarding to the rtw_xmit_entry\n"); */
> +					/*
> +					 * DBG_871X("directly forwarding to the
> +					 * rtw_xmit_entry\n");

Same here.

thanks,

greg k-h

