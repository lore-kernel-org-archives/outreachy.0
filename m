X-GM-THRID: 6746399399110246400
X-Received: by 2002:a05:651c:237:: with SMTP id z23mr8713039ljn.214.1570773672963;
        Thu, 10 Oct 2019 23:01:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5201:: with SMTP id m1ls595210lfb.3.gmail; Thu, 10 Oct
 2019 23:01:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxqSMdRIIIk9/9fwCeuq7XGuG16LHRGbLZHKHJw7SlnVIlwspnn9XmS6zCinSIp1gQ936yw
X-Received: by 2002:a19:ee0f:: with SMTP id g15mr7935450lfb.23.1570773672012;
        Thu, 10 Oct 2019 23:01:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570773672; cv=none;
        d=google.com; s=arc-20160816;
        b=LeDncwdkKvjJ6cO7Py6vMm9LqBNbqKqbo0sP0AwxtnrGXFYRAl9gkLTd0bS/lIA/jW
         XCynDYBReotOC5tvIEFYFo150FYyZESyjAxO9Hp4KrLw84k5tAAEkth/r607OXYDB2Db
         0gT524QurZEBdWdBrhk6LsT7iJyIc981LJz0HR/OQVSZQekoiCuhCYgN/P1Dl+dl+mwh
         xVGwT729ZB3mEzsznYuYsyvPeJ/cJ7wIgfEUFgQ33AMILoMcNRV61pvBXxF8w8DZcGzQ
         2DoqM60cKHfIxuF1KwVkiHfXpp+Z1hcBjTb6UdrGFr4TdEGHoSEzXqbiGxIdUAMDagVV
         Bgwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=vqqnfONZ81EfU4gImoAafBxp7E8PaVmEQc+8VYyjX98=;
        b=oLG9XeUTfmXM0lcXP6mdwCqsamtwLlQBtnoaibfNT+duqfTpjQ/8SuPyNlfQBAU3F9
         nF3D0Lrf2P9xveRjo6zCrU+5PKXozQerLDnmcf4nCSFG+Uq1fzdsjiRe8Fs+Y3wkoJaG
         h669AqPQHhVV+IJUW87uuOuHJ10sPca0qs+9vvDdVrLDiXezRsmGCLv5QMtq3GGJKmHf
         ewAJa61xNhP3CriFNQFH8cnrxCOB8K4m2IuNerHMYO8z0mRFCFDxczIqCgQFHuBPir9U
         5Pm71UWHrfsDAOLhxn2qouod1+J7zFlod0M6sBP37PbsbGtNJQvJQWeOUZcMyY7YDNrg
         hzHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a9si94148lfk.5.2019.10.10.23.01.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 23:01:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,283,1566856800"; 
   d="scan'208";a="405695832"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Oct 2019 08:00:28 +0200
Date: Fri, 11 Oct 2019 08:00:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: rtl8723bs: Replace string
 with identifier
In-Reply-To: <b2ff6a52a7140480c9fdb6486a6ac6b4eb51203b.1570768179.git.jarias.linux@gmail.com>
Message-ID: <alpine.DEB.2.21.1910110759580.2662@hadrien>
References: <cover.1570768179.git.jarias.linux@gmail.com> <b2ff6a52a7140480c9fdb6486a6ac6b4eb51203b.1570768179.git.jarias.linux@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 10 Oct 2019, Javier F. Arias wrote:

> Replace the hardcoded function names with the corresponding
> predefined identifiers.

It could have been better to address the 80 character issues first, to
make this patch more understandable.

julia


> Issue found by checkpatch.
>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_security.c | 22 +++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
> index 5ffaf9bfa6e8..4c92a3abb2c8 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_security.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_security.c
> @@ -303,8 +303,8 @@ void rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
>  		*((u32 *)crc) = le32_to_cpu(getcrc32(payload, length-4));
>
>  		if (crc[3] != payload[length-1] || crc[2] != payload[length-2] || crc[1] != payload[length-3] || crc[0] != payload[length-4]) {
> -			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_wep_decrypt:icv error crc[3](%x)!=payload[length-1](%x) || crc[2](%x)!=payload[length-2](%x) || crc[1](%x)!=payload[length-3](%x) || crc[0](%x)!=payload[length-4](%x)\n",
> -						crc[3], payload[length-1], crc[2], payload[length-2], crc[1], payload[length-3], crc[0], payload[length-4]));
> +			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s:icv error crc[3](%x)!=payload[length-1](%x) || crc[2](%x)!=payload[length-2](%x) || crc[1](%x)!=payload[length-3](%x) || crc[0](%x)!=payload[length-4](%x)\n",
> +						__func__, crc[3], payload[length-1], crc[2], payload[length-2], crc[1], payload[length-3], crc[0], payload[length-4]));
>  		}
>
>  		WEP_SW_DEC_CNT_INC(psecuritypriv, prxattrib->ra);
> @@ -695,7 +695,7 @@ u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
>  				return _FAIL;
>  			}
>  */
> -			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_tkip_encrypt: stainfo!= NULL!!!\n"));
> +			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
>
>  			if (IS_MCAST(pattrib->ra))
>  				prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
> @@ -853,7 +853,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
>
>  			TKIP_SW_DEC_CNT_INC(psecuritypriv, prxattrib->ra);
>  		} else {
> -			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_tkip_decrypt: stainfo == NULL!!!\n"));
> +			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo == NULL!!!\n", __func__));
>  			res = _FAIL;
>  		}
>
> @@ -1543,7 +1543,7 @@ u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
>
>  	/* 4 start to encrypt each fragment */
>  	if (pattrib->encrypt == _AES_) {
> -		RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_encrypt: stainfo!= NULL!!!\n"));
> +		RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
>
>  		if (IS_MCAST(pattrib->ra))
>  			prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
> @@ -1834,10 +1834,10 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
>  	/* compare the mic */
>  	for (i = 0; i < 8; i++) {
>  		if (pframe[hdrlen+8+plen-8+i] != message[hdrlen+8+plen-8+i]) {
> -			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("aes_decipher:mic check error mic[%d]: pframe(%x) != message(%x)\n",
> -					i, pframe[hdrlen+8+plen-8+i], message[hdrlen+8+plen-8+i]));
> -			DBG_871X("aes_decipher:mic check error mic[%d]: pframe(%x) != message(%x)\n",
> -					i, pframe[hdrlen+8+plen-8+i], message[hdrlen+8+plen-8+i]);
> +			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s:mic check error mic[%d]: pframe(%x) != message(%x)\n",
> +					__func__, i, pframe[hdrlen+8+plen-8+i], message[hdrlen+8+plen-8+i]));
> +			DBG_871X("%s:mic check error mic[%d]: pframe(%x) != message(%x)\n",
> +					__func__, i, pframe[hdrlen+8+plen-8+i], message[hdrlen+8+plen-8+i]);
>  			res = _FAIL;
>  		}
>  	}
> @@ -1868,7 +1868,7 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
>  	if (prxattrib->encrypt == _AES_) {
>  		stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
>  		if (stainfo != NULL) {
> -			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_decrypt: stainfo!= NULL!!!\n"));
> +			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
>
>  			if (IS_MCAST(prxattrib->ra)) {
>  				static unsigned long start;
> @@ -1926,7 +1926,7 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
>
>  			AES_SW_DEC_CNT_INC(psecuritypriv, prxattrib->ra);
>  		} else {
> -			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_decrypt: stainfo == NULL!!!\n"));
> +			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo == NULL!!!\n", __func__));
>  			res = _FAIL;
>  		}
>  	}
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b2ff6a52a7140480c9fdb6486a6ac6b4eb51203b.1570768179.git.jarias.linux%40gmail.com.
>

