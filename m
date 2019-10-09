X-GM-THRID: 6744906774126526464
X-Received: by 2002:a1c:b654:: with SMTP id g81mr1071210wmf.172.1570599797781;
        Tue, 08 Oct 2019 22:43:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:20a:: with SMTP id 10ls121746wmi.1.experimental-gmail;
 Tue, 08 Oct 2019 22:43:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz3b0q2fCUipjZPWGG8gFAARXdt6wFL5ueg/kYzM5xG8ITkorKEWeYMUOothsJGqMRbpVdz
X-Received: by 2002:a1c:4805:: with SMTP id v5mr1159121wma.130.1570599795725;
        Tue, 08 Oct 2019 22:43:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570599795; cv=none;
        d=google.com; s=arc-20160816;
        b=Ka0HDondC8ZEdzKOJwhlgu7Op8YhYQDj5RFXcSVbiXf31T9Q7sDEbZp+6eVxgla8Q9
         F/XDUNB4+YM7CC7xhkCIz3dGH6iLHWVN3HpnPfIMUJ6/6MoJlN7q/5vQGV52c4k2Of6B
         E1dC7zkG3SVv8mK2N70y12B8Q18eq5Co7YCAo5IYlLFZzXgRIvZ5YtIcdC6E9QyQzpo1
         QatJZWHNvY4N5SpnA5ibqAmobzzzAtSzHlwxc21o9AiW2S9t9TzRrX4sfNymTY1u0LMq
         Bwp5Ve+/oXbvc/b7jA+DWXl6zNfp9i9+wdlENRfjNKuB99CfWjBBa2Tndm6KFeYUgKZw
         FpVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=39XWDvHu6YdY5UyY/BgbyjmeVNYW7hpfAI2q45pttHY=;
        b=H2VrUnBj7y1IsBk++xQoCOMtDT+2ebp3JLUq+R2vUykvDN2ADlnq+fkUzZKpBKCeLd
         KFw6ubFBg/81Vi+O7Cx6O2Yr9ruu+TC0PCqcM0nafV37S/XPxpPQXxPpVQZck/TBALAK
         81n+cVmh/N7miW5Olt88FOO4wisCB2ZOutTw/FSTa6rW0Tc8VpQS5si6Be5j5pDBpMZ1
         pn9lrMKZtkOqqi70qlmJ/PlszcQS90bW08yc6aRqg+SrXLFz9B45trgTNceyUnB1GRz3
         5ox+bz9xDjCHlKmwwE3fXyg0cBrwppyEebGH8zW73nQgc43UzTSGWi6a/tU5Mq0JOgSZ
         ADbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x8si72443wmk.2.2019.10.08.22.43.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Oct 2019 22:43:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,273,1566856800"; 
   d="scan'208";a="322087219"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 07:43:15 +0200
Date: Wed, 9 Oct 2019 07:43:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8723bs: Replace string
 with identifier
In-Reply-To: <20191008214851.p4w7cbpuldnwkne4@gmail.com>
Message-ID: <alpine.DEB.2.21.1910090742530.3251@hadrien>
References: <20191008214851.p4w7cbpuldnwkne4@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 8 Oct 2019, Javier F. Arias wrote:

> Replace the hardcoded function name with its predefined identifier.
>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
> Changes in v3:
>   - Fixed another typo in the commit message.
> Changes in v2:
>   - Fixed a typo in the commit message.
>
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index 43d663c8486d..349f611d4db2 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -2310,7 +2310,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
>
>  	if (!pxmitframe) {
>  		drop_cnt++;
> -		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: no more pxmitframe\n"));
> +		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: no more pxmitframe\n", __func__));
>  		DBG_COUNTER(padapter->tx_logs.core_tx_err_pxmitframe);
>  		return -1;
>  	}
> @@ -2318,7 +2318,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
>  	res = update_attrib(padapter, *ppkt, &pxmitframe->attrib);
>
>  	if (res == _FAIL) {
> -		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: update attrib fail\n"));
> +		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: update attrib fail\n", __func__));
>  		#ifdef DBG_TX_DROP_FRAME
>  		DBG_871X("DBG_TX_DROP_FRAME %s update attrib fail\n", __func__);
>  		#endif
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191008214851.p4w7cbpuldnwkne4%40gmail.com.
>

