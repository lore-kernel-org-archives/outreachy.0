X-GM-THRID: 6747989817758318592
X-Received: by 2002:adf:dc44:: with SMTP id m4mr3131419wrj.203.1571138954275;
        Tue, 15 Oct 2019 04:29:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:dccc:: with SMTP id x12ls6785573wrm.3.gmail; Tue, 15 Oct
 2019 04:29:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxNlV/5KBf2hnlh4SVxP77OAp9gnQd/7zfx1OyWtKAKz5RXAfmKbOVClrVdsTT6hl3ykAJu
X-Received: by 2002:adf:ee4f:: with SMTP id w15mr11685521wro.378.1571138953409;
        Tue, 15 Oct 2019 04:29:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571138953; cv=none;
        d=google.com; s=arc-20160816;
        b=apdJ0438MWHZS9NUtNvrEBl8yc1TQQYsuTP+qX+ZBL9iznixxyFBcR7qshcc0guh+y
         sClcZoXx/9YuCyLPnp5TrxVwOtDslTMn9U9Q+/cyzTPW6NfTTv9NLG5VSNwx3uMY1R+/
         X8GbyIah5WAhpJ9ilYzGcbkqHgIIX/dzaoY0Mqv2oTNEGP/HcFIR2+iUvwAgCiGyAK+9
         QWSbvb6F2Wv8DCiENy+BXuFWOQhbC8IkAGBK3HyMcWIqZIphpW3ZzYef2L3ZlWUzKLRC
         42BPCaNZG3z5D0pEbJnf3D2ySetMGxhAmAuQVPlRSMDUE4lZNN9XdBDlRn+iRUiXB7w2
         aEGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=6LW0xA9W7mSiGy7WT/B1kxeXljLUq+zPAa3kLGxP00w=;
        b=k3jBNOaOz2Abi+HeodRH9ZS7tSgUSBK78fTtXT1ajM89IJF2+Q+XHEIt843aZHrvvW
         Y+X/XSBjTLfvf4lp/KK3NTX4nQzdfeUAhie/nDTpxvJ6MyhEv37cxqsHPSOl/dn6wq3n
         1GBdB6WSVOtOsfrhU4HnvHOY6CjkRCfqkkYXVFM3JHBL89tSK+T0YdSpB3B5heicB2uU
         kliEhBN2v3hXGn8B7i5iqeWDyYsWaxzRRlvX9OSsZDFc2pvTF/MpjElXU+3KK+IfS7Fs
         XaN8AFXsvFsUhVmbIt7uGt4zc+wd56KGx6/33s2ojzacsu/E9us7ZY4buVkMhRLm8v1X
         4WGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m1si701793wrs.0.2019.10.15.04.29.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Oct 2019 04:29:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,299,1566856800"; 
   d="scan'208";a="322762634"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2019 13:29:12 +0200
Date: Tue, 15 Oct 2019 13:29:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Wambui Karuga <wambui.karugax@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: remove casts to
 pointers in kfree
In-Reply-To: <20191015112637.20824-1-wambui.karugax@gmail.com>
Message-ID: <alpine.DEB.2.21.1910151328500.2818@hadrien>
References: <20191015112637.20824-1-wambui.karugax@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 15 Oct 2019, Wambui Karuga wrote:

> Remove unnecessary casts in pointer types passed to kfree.
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 3030ae5b6b6d..71fcb466019a 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -2155,7 +2155,7 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
>
>  	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
>  	if (!psetauthparm) {
> -		kfree((unsigned char *)pcmd);
> +		kfree(pcmd);
>  		res = _FAIL;
>  		goto exit;
>  	}
> @@ -2238,7 +2238,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
>  	if (enqueue) {
>  		pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
>  		if (!pcmd) {
> -			kfree((unsigned char *)psetkeyparm);
> +			kfree(psetkeyparm);
>  			res = _FAIL;  /* try again */
>  			goto exit;
>  		}
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191015112637.20824-1-wambui.karugax%40gmail.com.
>

