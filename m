X-GM-THRID: 6205299530591633408
X-Received: by 10.112.150.229 with SMTP id ul5mr291126lbb.2.1444801730319;
        Tue, 13 Oct 2015 22:48:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.170 with SMTP id dt10ls48634wib.32.gmail; Tue, 13 Oct
 2015 22:48:49 -0700 (PDT)
X-Received: by 10.194.192.71 with SMTP id he7mr281923wjc.2.1444801729985;
        Tue, 13 Oct 2015 22:48:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q6si843371wif.2.2015.10.13.22.48.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 22:48:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,681,1437429600"; 
   d="scan'208";a="150470998"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2015 07:48:49 +0200
Date: Wed, 14 Oct 2015 07:48:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: rtw_xmit: Remove
 extra NULL tests
In-Reply-To: <20151014005112.GA26569@ubuntu>
Message-ID: <alpine.DEB.2.02.1510140748240.2038@localhost6.localdomain6>
References: <20151014005112.GA26569@ubuntu>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:

> Variables already tested for NULL value are checked again so, the extra
> NULL tests should be removed.
> Semantic patch used:
> 
> @@ expression E; @@
> if(E==NULL) {... return...;}
> - if(E)

This is not a valid semantic patch.  The if needs at least a then branch.

julia


> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
> index a4b6bb6..0ea521b 100644
> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>  
>  	if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
>  		/* encode mic code */
> -		if (stainfo) {
>  			u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
>  					 0x0, 0x0, 0x0, 0x0,
>  					 0x0, 0x0, 0x0, 0x0,
> @@ -792,10 +791,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>  					 *(payload + curfragnum + 6),
>  					 *(payload + curfragnum + 7));
>  			}
> -		} else {
> -			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> -				 "xmitframe_addmic: rtw_get_stainfo23a ==NULL!!!\n");
> -		}
>  	}
>  
>  	return _SUCCESS;
> @@ -934,7 +929,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
>  		/* TODO: fill HT Control Field */
>  
>  		/* Update Seq Num will be handled by f/w */
> -		if (psta) {
>  			psta->sta_xmitpriv.txseq_tid[pattrib->priority]++;
>  			psta->sta_xmitpriv.txseq_tid[pattrib->priority] &= 0xFFF;
>  			pattrib->seqnum = psta->sta_xmitpriv.txseq_tid[pattrib->priority];
> @@ -970,7 +964,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
>  					pattrib->ampdu_en = true;/* AGG EN */
>  				}
>  			}
> -		}
>  	}
>  exit:
>  	return res;
> @@ -1132,7 +1125,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
>  
>  		/* adding icv, if necessary... */
>  		if (pattrib->iv_len) {
> -			if (psta) {
>  				switch (pattrib->encrypt) {
>  				case WLAN_CIPHER_SUITE_WEP40:
>  				case WLAN_CIPHER_SUITE_WEP104:
> @@ -1158,7 +1150,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
>  						       psta->dot11txpn, 0);
>  					break;
>  				}
> -			}
>  
>  			memcpy(pframe, pattrib->iv, pattrib->iv_len);
>  
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014005112.GA26569%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
> 

