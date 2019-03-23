X-GM-THRID: 6671625526346514432
X-Received: by 2002:a5d:4987:: with SMTP id r7mr9929280wrq.280.1553359290055;
        Sat, 23 Mar 2019 09:41:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4081:: with SMTP id o1ls2665226wrp.7.gmail; Sat, 23 Mar
 2019 09:41:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwhYthTTUUDTSNm4hcEwMfYKJrsyaK9RNifHoKXqrVuNA/7fzBYLas7vmTumENRbGcZUEl0
X-Received: by 2002:a5d:510b:: with SMTP id s11mr10717057wrt.131.1553359289295;
        Sat, 23 Mar 2019 09:41:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553359289; cv=none;
        d=google.com; s=arc-20160816;
        b=0xjmtm4Xh9R+BVRHG0COjsiI2Uqsn84dWM6QPuHXmtqcmmjOAxvVfb2fB2OOabopdI
         IU8KaHH7jmR1O0e+uC+TndzE8Yu7WNhrdxn14cC5iqIdprtAm4i84nFoLS2tJZnbzFtl
         aZvDyVDxs+m+NsVP5py5Vjheaec60AMXItEsaGdQdZXUoUqpOeBHLVeslr6oGyvgnAge
         JvrOIRNpwfT7/gG+Rb2MeoOZaPsKpHjA/B0iUiD3F+ab9r5j7YFauHNJsiF9Dfy0ic78
         C5yf7JzGozL3oYZkXRutHacxiKBsNgbnNFkfUaz9miSEowjaH1TOO/iJ3y93twKQ52By
         S7+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=DxBEXHSzKHs8l7WEZ9xzeDVsHf3fnGRuMHvwzqVk9uk=;
        b=lPYYWF0jRkxxp7OwnH+t8iSvyVr3eoFHq7uVsm1829hAosXA8wDlM29PtCjYo80wUe
         a1yK0eqkP6+6iaBhLcMCFJKwHyDNE31uPnfRcwPHsS0/y+t6T89VoyxYxZHNkVUAjDLQ
         sOOCq9QbM313XVtEeZaP23/gbv3tqbEYIuo4/p0swppN6x52UOKYgDBg58PL+I+a45/J
         JSvRVghEzkVC57HTmdZNga98zut4CAHBj8BwJ2F2m9IhNatovNCN3jxROQCGDoxfWKVg
         To+7Qoe+tYebtrFGniut3X5hNH38prqq/vzJzcUoBfkbBFGUSjhGlyTJNEdj+PE+G6bl
         iEZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z129si488866wmc.2.2019.03.23.09.41.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 09:41:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375427618"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 17:41:28 +0100
Date: Sat, 23 Mar 2019 17:41:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: rtl8712: change type of
 variables
In-Reply-To: <1553358841-3093-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903231740540.5660@hadrien>
References: <1553358841-3093-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Mar 2019, Payal Kshirsagar wrote:

> It would be better to declare variables having boolean value as bool
> rather than u8. Change variable type u8 to type bool.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_efuse.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
> index 3ff64e2..dde1255 100644
> --- a/drivers/staging/rtl8712/rtl8712_efuse.c
> +++ b/drivers/staging/rtl8712/rtl8712_efuse.c
> @@ -23,9 +23,9 @@
>  /* reserve 3 bytes for HW stop read */
>  static int efuse_available_max_size = EFUSE_MAX_SIZE - 3 /*0x1FD*/;
>
> -static void efuse_reg_ctrl(struct _adapter *padapter, u8 power_on)
> +static void efuse_reg_ctrl(struct _adapter *padapter, bool power_on)
>  {
> -	u8 tmpu8 = 0;
> +	bool tmpu8 = 0;

tmpu8 is not a boolean.  A boolean value is either true or false.

julia

>
>  	if (power_on) {
>  		/* -----------------e-fuse pwr & clk reg ctrl ---------------
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553358841-3093-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

