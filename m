X-GM-THRID: 1550436007936
X-Received: by 10.152.37.200 with SMTP id a8mr1533235lak.5.1424465204574;
        Fri, 20 Feb 2015 12:46:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.42 with SMTP id cr10ls353088lad.91.gmail; Fri, 20 Feb
 2015 12:46:44 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr1544268lai.4.1424465204192;
        Fri, 20 Feb 2015 12:46:44 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si187185wif.0.2015.02.20.12.46.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 12:46:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,616,1418079600"; 
   d="scan'208";a="100800812"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 21:46:43 +0100
Date: Fri, 20 Feb 2015 21:46:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Gamze POLAT <gamzepolat94@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8712: warning of
 prefer ether_addr_copy
In-Reply-To: <1424464937-8767-1-git-send-email-gamzepolat94@gmail.com>
Message-ID: <alpine.DEB.2.02.1502202145100.2054@localhost6.localdomain6>
References: <1424464937-8767-1-git-send-email-gamzepolat94@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Feb 2015, Gamze POLAT wrote:

> This patch fixes the following checkpatch.pl warnings:
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
> addresses are __aligned(2)

You should explain why the alignment condition is satisfied.  The tool 
pahole (http://linux.die.net/man/1/pahole) may be helpful.

julia

> Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_recv.c | 46 +++++++++++++++++-----------------
>  1 file changed, 23 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
> index 06f15f8..243c8d8 100644
> --- a/drivers/staging/rtl8712/rtl871x_recv.c
> +++ b/drivers/staging/rtl8712/rtl871x_recv.c
> @@ -356,11 +356,11 @@ static sint sta2sta_data_frame(struct _adapter *adapter,
>  			sta_addr = pattrib->src;
>  		}
>  	  } else if (check_fwstate(pmlmepriv, WIFI_MP_STATE) == true) {
> -		memcpy(pattrib->dst, GetAddr1Ptr(ptr), ETH_ALEN);
> -		memcpy(pattrib->src, GetAddr2Ptr(ptr), ETH_ALEN);
> -		memcpy(pattrib->bssid, GetAddr3Ptr(ptr), ETH_ALEN);
> -		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
> -		memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
> +		ether_addr_copy(pattrib->dst, GetAddr1Ptr(ptr));
> +		ether_addr_copy(pattrib->src, GetAddr2Ptr(ptr));
> +		ether_addr_copy(pattrib->bssid, GetAddr3Ptr(ptr));
> +		ether_addr_copy(pattrib->ra, pattrib->dst);
> +		ether_addr_copy(pattrib->ta, pattrib->src);
>  		sta_addr = mybssid;
>  	  } else
>  		ret  = _FAIL;
> @@ -421,12 +421,12 @@ static sint ap2sta_data_frame(struct _adapter *adapter,
>  			return _FAIL;
>  	} else if ((check_fwstate(pmlmepriv, WIFI_MP_STATE) == true) &&
>  		   (check_fwstate(pmlmepriv, _FW_LINKED) == true)) {
> -		memcpy(pattrib->dst, GetAddr1Ptr(ptr), ETH_ALEN);
> -		memcpy(pattrib->src, GetAddr2Ptr(ptr), ETH_ALEN);
> -		memcpy(pattrib->bssid, GetAddr3Ptr(ptr), ETH_ALEN);
> -		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
> -		memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
> -		memcpy(pattrib->bssid,  mybssid, ETH_ALEN);
> +		ether_addr_copy(pattrib->dst, GetAddr1Ptr(ptr));
> +		ether_addr_copy(pattrib->src, GetAddr2Ptr(ptr));
> +		ether_addr_copy(pattrib->bssid, GetAddr3Ptr(ptr));
> +		ether_addr_copy(pattrib->ra, pattrib->dst);
> +		ether_addr_copy(pattrib->ta, pattrib->src);
> +		ether_addr_copy(pattrib->bssid,  mybssid);
>  		*psta = r8712_get_stainfo(pstapriv, pattrib->bssid);
>  		if (*psta == NULL)
>  			return _FAIL;
> @@ -487,28 +487,28 @@ static sint validate_recv_data_frame(struct _adapter *adapter,
>  	pbssid = get_hdr_bssid(ptr);
>  	if (pbssid == NULL)
>  		return _FAIL;
> -	memcpy(pattrib->dst, pda, ETH_ALEN);
> -	memcpy(pattrib->src, psa, ETH_ALEN);
> -	memcpy(pattrib->bssid, pbssid, ETH_ALEN);
> +	ether_addr_copy(pattrib->dst, pda);
> +	ether_addr_copy(pattrib->src, psa);
> +	ether_addr_copy(pattrib->bssid, pbssid);
>  	switch (pattrib->to_fr_ds) {
>  	case 0:
> -		memcpy(pattrib->ra, pda, ETH_ALEN);
> -		memcpy(pattrib->ta, psa, ETH_ALEN);
> +		ether_addr_copy(pattrib->ra, pda);
> +		ether_addr_copy(pattrib->ta, psa);
>  		res = sta2sta_data_frame(adapter, precv_frame, &psta);
>  		break;
>  	case 1:
> -		memcpy(pattrib->ra, pda, ETH_ALEN);
> -		memcpy(pattrib->ta, pbssid, ETH_ALEN);
> +		ether_addr_copy(pattrib->ra, pda);
> +		ether_addr_copy(pattrib->ta, pbssid);
>  		res = ap2sta_data_frame(adapter, precv_frame, &psta);
>  		break;
>  	case 2:
> -		memcpy(pattrib->ra, pbssid, ETH_ALEN);
> -		memcpy(pattrib->ta, psa, ETH_ALEN);
> +		ether_addr_copy(pattrib->ra, pbssid);
> +		ether_addr_copy(pattrib->ta, psa);
>  		res = sta2ap_data_frame(adapter, precv_frame, &psta);
>  		break;
>  	case 3:
> -		memcpy(pattrib->ra, GetAddr1Ptr(ptr), ETH_ALEN);
> -		memcpy(pattrib->ta, GetAddr2Ptr(ptr), ETH_ALEN);
> +		ether_addr_copy(pattrib->ra, GetAddr1Ptr(ptr));
> +		ether_addr_copy(pattrib->ta, GetAddr2Ptr(ptr));
>  		return _FAIL;
>  	default:
>  		return _FAIL;
> @@ -644,7 +644,7 @@ sint r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe)
>  		ptr = recvframe_pull(precvframe, (rmv_len -
>  		      sizeof(struct ethhdr) + (bsnaphdr ? 2 : 0)));
>  
> -	memcpy(ptr, pattrib->dst, ETH_ALEN);
> +	ether_addr_copy(ptr, pattrib->dst);
>  	memcpy(ptr+ETH_ALEN, pattrib->src, ETH_ALEN);
>  	if (!bsnaphdr) {
>  		len = htons(len);
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424464937-8767-1-git-send-email-gamzepolat94%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

