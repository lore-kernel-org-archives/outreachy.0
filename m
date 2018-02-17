X-GM-THRID: 6523574178803613696
X-Received: by 10.28.91.147 with SMTP id p141mr1661742wmb.31.1518888456278;
        Sat, 17 Feb 2018 09:27:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.138.19 with SMTP id m19ls809502wmd.5.gmail; Sat, 17 Feb
 2018 09:27:35 -0800 (PST)
X-Google-Smtp-Source: AH8x227Rd3PI2tvQaEyZC2fUw+3ZO4o1/cj54KtiUuDN2LWyjnjpoXzw+bJ5kNV1dLafEQp/Zd30
X-Received: by 10.28.160.18 with SMTP id j18mr1602316wme.15.1518888455182;
        Sat, 17 Feb 2018 09:27:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518888455; cv=none;
        d=google.com; s=arc-20160816;
        b=CiQxJO/4sedowYiq2xtgmSGh6lUS3eOd6x8WHJHXH1m5vFYJnyD5VAu4PJFgngBi8j
         yH2jhUTmwIxUv3s1w1JbM9vOsORB48fQa3qFdPLOVjAqeQdhVgzBypSOZxgFURbPhsDx
         r658bH8znZt0AI10lqXPgg4CdUmasta0wFYBL42SQ+G1OVHjjhqDxOnmVum3Rlg8baFo
         Du+J++dt266x2HDvm5yULP1W8MLtBcd9GasCiZM5EGcT+RNPqKTNSehV5YfO/fQ1iVoR
         m4pdsV1PEngEQ+YXgqiBFnDWdgSaXNpRmGZgubGuvzAtZ48NGT+Opp4hWvu9mTK0iBae
         KsAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=VG26o164b9CdyjhNq6UFmmijOSPlxtU/h9EHaSIYiDE=;
        b=L3PQa3kGkJXEVecbC1NtMe3ynu1hh82ih5U3AY+T17YHB/fcdn3axP4t18axJbu7I9
         O7Dmt8S/2IdHsv5vNHSEp1qPH70hT6tuGXdyPEYdmYMWN+kWOXwpDr4crbZJznFcm1Hv
         7DwP8Qmu5gQACUrGHGxoYBMHqBde1+cvuU37BM1OEyD3dwOO8fhV8WICXKbk6kCOvZ7n
         GM6x2KRuqqVTBk/vS8Y6wOj1+34OZrOWuICIK+9NK59wI9xN3dJWQXb12LEqzU1n0XpZ
         hi3CQtSJEMF5xK64q3uf2SnKc7rVOVcGWVf0gQTsV8uRRy0BulaOB0YpdAS3Abw6R6wz
         8FHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s5si188121wra.3.2018.02.17.09.27.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 09:27:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,525,1511823600"; 
   d="scan'208";a="314065256"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2018 18:27:34 +0100
Date: Sat, 17 Feb 2018 18:27:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Move closing
 braces of 'if' statements to end of line
In-Reply-To: <20180217171924.GA4155@gmail.com>
Message-ID: <alpine.DEB.2.20.1802171821480.2205@hadrien>
References: <20180217171924.GA4155@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 17 Feb 2018, Dafna Hirschfeld wrote:

> Move all closing braces to the end of the line.
> Remove braces in single 'if' statement.

It's not really a single if statement, but rather an if with a single
statement in the then branch (or in both branches, as appropriate).

> Break 'if' condition to avoid 80 characters line.
> Issues found with checkpatch.pl

This goes overboard on shortening the commit message line length.  Maybe
you can configure your editor to do the appropriate line break, or at
least show the column number.

>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> index f29e110..4861c80 100644
> --- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> @@ -64,9 +64,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
>  	if (alloc_sz > 0) {
>  		pxmitbuf->pallocated_buf = rtw_zmalloc(alloc_sz);
>  		if (pxmitbuf->pallocated_buf == NULL)
> -		{
>  			return _FAIL;
> -		}

OK

>
>  		pxmitbuf->pbuf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitbuf->pallocated_buf), XMITBUF_ALIGN_SZ);
>  	}
> @@ -90,8 +88,8 @@ void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt)
>  	queue = skb_get_queue_mapping(pkt);
>  	if (padapter->registrypriv.wifi_spec) {
>  		if (__netif_subqueue_stopped(padapter->pnetdev, queue) &&
> -			(pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
> -		{
> +			(pxmitpriv->hwxmits[queue].accnt <
> +			 WMM_XMIT_THRESHOLD)) {

This does not look so nice.  What happens if you move the condition to the
left, such that it starts just to the right of the ( on the preceeding
line.  If needed, you can also drop the parentheses.

>  			netif_wake_subqueue(padapter->pnetdev, queue);
>  		}
>  	} else {
> @@ -177,8 +175,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
>
>  	for (i = 0; i < chk_alive_num; i++) {
>  		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
> -		if (!(psta->state & _FW_LINKED))
> -		{
> +		if (!(psta->state & _FW_LINKED)) {

OK

>  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_fw_linked);
>  			continue;
>  		}
> @@ -187,8 +184,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
>  		if (!memcmp(psta->hwaddr, &skb->data[6], 6)
>  			|| !memcmp(psta->hwaddr, null_addr, 6)
>  			|| !memcmp(psta->hwaddr, bc_addr, 6)
> -		)
> -		{
> +		) {

The close parenthesis on the line with the { is not nice.  Move the whole
thing back to just after the last memcmp call.

>  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_self);
>  			continue;
>  		}
> @@ -249,8 +245,7 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
>  			#endif
>  			)
>  		&& (padapter->registrypriv.wifi_spec == 0)
> -		)
> -	{
> +		) {

Same here.

julia

>  		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
>  			res = rtw_mlcst2unicst(padapter, pkt);
>  			if (res == true) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180217171924.GA4155%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

