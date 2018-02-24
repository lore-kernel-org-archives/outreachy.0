X-GM-THRID: 6526226538878205952
X-Received: by 10.25.203.215 with SMTP id b206mr416793lfg.6.1519506237242;
        Sat, 24 Feb 2018 13:03:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.79 with SMTP id l76ls993786lfe.1.gmail; Sat, 24 Feb
 2018 13:03:55 -0800 (PST)
X-Google-Smtp-Source: AG47ELtbEGFHiws1cZHGuTQZncH+HhqfmBY+8w6k+Y/1UecnMFg2mKUNnT2vKoDrqPdZpESsNPKl
X-Received: by 10.25.123.3 with SMTP id w3mr411169lfc.41.1519506235929;
        Sat, 24 Feb 2018 13:03:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519506235; cv=none;
        d=google.com; s=arc-20160816;
        b=inMAvN1wEAwMvNxlh939gqyK+4jQ+KerfU/4lkHiMeKAfOHVw4kx/Gmj+K+B+Hz98D
         Jg7Rud3cjuj2a75KIHYsSYEoR7pwJH3fOgoPaLkByrPr2qtWjiXASvSgI7a/IAbRSX/i
         XsPmGXZWtgSESQyKd0R1SJA0O28UnPqUZgrnto1vt4m1WNp7O2c8DpczGT67dzVioqjC
         qAuCZ+Ys2oltSMHYrh786d9G/1H4fkNFzsOuknTS+mPSQ2UHcxVZic3pSQ4sSwdUofel
         Cy5STabULNbu0/2HulommVs+O6WJLPFQIXSIxAb1iyLAfz4yzLxHLf38M2uIyGxUQrwF
         jT4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=/Q41j9ILMCS3P53kFPk28ocCOIsbDUgOPh642u6Xh+g=;
        b=m2Z7sg5oO7vIyRLzctsp9yiSyvVnbEWJ91G7sISkQTw7dwJ/7gsosQeS9oLYFKTef+
         7VLbstzWsBZe9CeGzamSuZfF4crulTxA4ZocseUxQY3FewqATc25lAq43+RF1JtgQwPp
         YriEkyVxUJc4rlA9uREeqVP58k0su2Ri6BjhrggxxYbcCIeb3TjfHCn1WJRZ6NdlGRsY
         ZNEnN9iVxaGg3VA6B7uKc0/CkzpxPL2tnEGYGHYecx4nO3sylko0skc60fLksvCVyu3I
         zim2J3OPHoGVmxOxfrpz3SPH/Ftx/H/JNDj9ISfp+pgv4OdsqVwp13unebioEEnRnTPs
         nqLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w7si233010ljw.4.2018.02.24.13.03.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 13:03:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,389,1515452400"; 
   d="scan'208";a="315153902"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2018 22:03:55 +0100
Date: Sat, 24 Feb 2018 22:03:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, garsilva@embeddedor.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: use structure pointer to
 get the size of the structure
In-Reply-To: <1519505516-10389-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802242158200.3243@hadrien>
References: <1519505516-10389-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Sorry for not noticing this before, but the subject line needs to be more
specific than staging.  Use git log --oneline on the file to see what
others have done before.

On Sat, 24 Feb 2018, Santha Meena Ramamoorthy wrote:

> Use pointer to the structure to get the size of the structure.

It would also be good to say why this is a good idea.  The code remains
correct even if the type changes.

Also, it looks liek you have not followed the get_maintainer call
suggested in the tutorial.  Greg is the only maintainer listed on this
code.

julia

> Issue
> found using checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
> Change in v2:
>  - Use single line when the number of characters is less than 80
>  drivers/staging/rtl8192e/rtllib_wx.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
> index 03fbff0..74d4d2d 100644
> --- a/drivers/staging/rtl8192e/rtllib_wx.c
> +++ b/drivers/staging/rtl8192e/rtllib_wx.c
> @@ -371,8 +371,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
>  		struct lib80211_crypt_data *new_crypt;
>
>  		/* take WEP into use */
> -		new_crypt = kzalloc(sizeof(struct lib80211_crypt_data),
> -				    GFP_KERNEL);
> +		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
>  		if (new_crypt == NULL)
>  			return -ENOMEM;
>  		new_crypt->ops = lib80211_get_crypto_ops("R-WEP");
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519505516-10389-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

