X-GM-THRID: 6526240605789487104
X-Received: by 10.25.239.28 with SMTP id n28mr460667lfh.34.1519549960805;
        Sun, 25 Feb 2018 01:12:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.25.151 with SMTP id 23ls1011976ljz.5.gmail; Sun, 25 Feb
 2018 01:12:39 -0800 (PST)
X-Google-Smtp-Source: AG47ELvrTzHjzyE0Yi5ACqJhGXe76wfBYYANZeJoiiS2wuo1EX4xFRNXNkTHd/OFAoG//qMbJf4g
X-Received: by 10.46.89.91 with SMTP id n88mr401025ljb.35.1519549959201;
        Sun, 25 Feb 2018 01:12:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519549959; cv=none;
        d=google.com; s=arc-20160816;
        b=HUYKdXA2BUsQhMFzh4Lfhn8FaDRqUZt7d5qirTuW0wiIDDI/8K4vtCZk0l3oJYrbfZ
         j/WdiRDsllt4FqsLhSD3pbbi8OGxhn+2MgpIkPBxpjrj9j0pX0hlj26gIvQaqRYoqna4
         uJt6D4CIHjb/8/tQk73GFf2Is0p4WgwUar4S7uc5VegdrjS42ZBYlV/f65/cBSQ2Dxuu
         4mHMSuRbicZWIK6Kjxj49EmUDrmpef4DTmCA2hx5080UJjIrOPf3KD/+8YU3hXUKMJqJ
         rwsKtKY5C9cT7qNdh1Nkl6ORjZSLzRNjmno1jozgqKc1E7DKBVrxTK/XnavNA7f0rwwG
         ziPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=fUu7UWYxzrT6PxjykFCFhbPIuU6S2VwBzTHBCylY7Oc=;
        b=jGB2P5xk5Nl3iLzI2KKXHOJ2Al8fBfYkxV6w2m3GSnC1rfeeOHGMi/2WR7G1KyHFEi
         uQFIDuVmO+gYB6zWBCoVFZCM21jHw8P/fGFgUeNg/JCygv3vygysZqiTqNYTjMYIqLoG
         25TG/VuJ7KtCJzmfDT3ieSCSUIxqWqVUbLspkcH2IBqrHYjnsUtA227KCmOtMROFfsBH
         ccsK6xdYsqZqtP5lRBKsE6s3auE5/qaIzHqwdxt5wgsbrYdGIOQ5/rXVBH80ceoKvRIK
         xfygPnI2KQBZ7m5X/r8EYsSqy1i8eDEGd7ok2GxOvXw8nuRLo1p+F315eT3enBP8m7N4
         iCjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y2si214359ljd.2.2018.02.25.01.12.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2018 01:12:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,392,1515452400"; 
   d="scan'208";a="315182548"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2018 10:12:38 +0100
Date: Sun, 25 Feb 2018 10:12:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192e: use struct
 pointer to get the size of the struct
In-Reply-To: <1519508793-11537-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802251012080.4584@hadrien>
References: <1519508793-11537-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Feb 2018, Santha Meena Ramamoorthy wrote:

> Use pointer to the structure to get the size of the structure in order
> to conform to the Linux kernel coding style. Issue found using
> checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Change in v2:
>  - Use single line when the number of characters is less than 80
> Change in v3:
>  - Improve the subject line and the commit message
> No code change since v2

Actually, the most recent change description should come first.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519508793-11537-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

