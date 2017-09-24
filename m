X-GM-THRID: 6469106545355390976
X-Received: by 10.28.215.195 with SMTP id o186mr254659wmg.9.1506236932387;
        Sun, 24 Sep 2017 00:08:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.93.193 with SMTP id v62ls1913070lje.7.gmail; Sun, 24 Sep
 2017 00:08:50 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDiCKV254uUKGOrA6ksW/LJ2orZZ/xxIira2yMa1/BkrZeLV5k1zVI7XcG3vxCaQDzN1CcK
X-Received: by 10.25.59.12 with SMTP id i12mr214423lfa.32.1506236930918;
        Sun, 24 Sep 2017 00:08:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506236930; cv=none;
        d=google.com; s=arc-20160816;
        b=eZjwdGf7K/yEXq7Xp8Y+mmj/0onZZ2JNyyQOL11L4hXWlTZhSj+iywaPWuaAfprRbb
         Q/A2KXVMZEmz+lZ20SqIJKOHJIQ0otkZvnw6bhvJNQwpOPFB7zF4oYcFrGdL5BcuVhLT
         NjmPYVKzgbKC6ezeozTlKaaDKX7d7DWqb2BBsyhHWvz54WF02oc56Jm4ZJCEALnQtlvD
         gq2Et2gt/H8UkFilzWOyqTxNLgU0PZ+LMl6z39AxMjWj1+OCvZL/bl+K3XsWoJhwZriQ
         zlWQkNlRNYjcAttzdAQxdMl/pZDxOmlxkDcrKQ6B/7zSFtgtwpaPHU/QFL7qiXpETTcT
         DU9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=uNdZFS1GLy0IpkjXqHCo2ofY9FzPr5/8ktE1YBzlQi8=;
        b=zR0RitV6UHHs81+K6biRqcfrToGpKtSOualKbbIhfs1mCX0h5tCvqSMn4nMt0uCfxJ
         R3IqagxGtAB/1xV+NcyU8NzbefMKRFtTshXc1YsylnAySSFa0tnzbuYdoFiJT24IIJU7
         53/J/A5joaSinqLs1+NPxZV/CLPXr1GLbT8dBNgmOe8x5UpavMX4nVZxZuuRLGfp4cjc
         3LIeadrYauwbctzt+tYHS1WRyCNnNThbqUUWn1zB8JsTh44OL/KEIXTa+qg0UIJJr1wN
         7w9NSj7hS0kTLd0rqqLapRn9NTH7u8V1VHYxROMHkNm9JmnQJXJeKc/u2joCyHWbM/M3
         2Fjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d82si266675wmd.1.2017.09.24.00.08.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Sep 2017 00:08:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,431,1500933600"; 
   d="scan'208";a="292453133"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Sep 2017 09:08:50 +0200
Date: Sun, 24 Sep 2017 09:08:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use __func__
 instead of function name
In-Reply-To: <20170923223708.19952-1-georgiana.chelu93@gmail.com>
Message-ID: <alpine.DEB.2.20.1709240908110.2101@hadrien>
References: <20170923223708.19952-1-georgiana.chelu93@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Sep 2017, Georgiana Chelu wrote:

> Replace the function name from format string with the
> constant __func__ to avoid multiple changes in case
> the name of the function will be modified.

Could you meke the code that you are changing a little more 80-column
friendly?

julia

>
> Issue reported by checkpatch.pl script.
>
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index 3fd5f4102b36..3c764b847249 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -237,25 +237,25 @@ static int recvframe_chkmic(struct adapter *adapter,
>  	stainfo = rtw_get_stainfo(&adapter->stapriv, &prxattrib->ta[0]);
>
>  	if (prxattrib->encrypt == _TKIP_) {
> -		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic:prxattrib->encrypt==_TKIP_\n"));
> -		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic:da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
> -			 prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2], prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
> +		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: prxattrib->encrypt==_TKIP_\n", __func__));
> +		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
> +							       __func__, prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2], prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
>
>  		/* calculate mic code */
>  		if (stainfo != NULL) {
>  			if (IS_MCAST(prxattrib->ra)) {
>  				if (!psecuritypriv) {
>  					res = _FAIL;
> -					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n recvframe_chkmic:didn't install group key!!!!!!!!!!\n"));
> -					DBG_88E("\n recvframe_chkmic:didn't install group key!!!!!!!!!!\n");
> +					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n %s: didn't install group key!!!!!!!!!!\n", __func__));
> +					DBG_88E("\n %s: didn't install group key!!!!!!!!!!\n", __func__);
>  					goto exit;
>  				}
>  				mickey = &psecuritypriv->dot118021XGrprxmickey[prxattrib->key_index].skey[0];
>
> -				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic: bcmc key\n"));
> +				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: bcmc key\n", __func__));
>  			} else {
>  				mickey = &stainfo->dot11tkiprxmickey.skey[0];
> -				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n recvframe_chkmic: unicast key\n"));
> +				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n %s: unicast key\n", __func__));
>  			}
>
>  			/* icv_len included the mic code */
> @@ -273,8 +273,8 @@ static int recvframe_chkmic(struct adapter *adapter,
>  			for (i = 0; i < 8; i++) {
>  				if (miccode[i] != *(pframemic+i)) {
>  					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
> -						 ("recvframe_chkmic:miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
> -						 i, miccode[i], i, *(pframemic+i)));
> +						 ("%s: miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
> +						  __func__, i, miccode[i], i, *(pframemic+i)));
>  					bmic_err = true;
>  				}
>  			}
> @@ -346,7 +346,7 @@ static int recvframe_chkmic(struct adapter *adapter,
>  				}
>  			}
>  		} else {
> -			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chkmic: rtw_get_stainfo==NULL!!!\n"));
> +			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
>  		}
>
>  		skb_trim(precvframe->pkt, precvframe->pkt->len - 8);
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170923223708.19952-1-georgiana.chelu93%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

