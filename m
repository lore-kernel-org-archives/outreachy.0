X-GM-THRID: 6801606424596054016
X-Received: by 2002:a0c:c70b:: with SMTP id w11mr9519233qvi.246.1583650215546;
        Sat, 07 Mar 2020 22:50:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls2567432qkf.1.gmail; Sat, 07
 Mar 2020 22:50:14 -0800 (PST)
X-Google-Smtp-Source: ADFU+vuCV/LkDO4qpUDDP42XfOOzaxQJ+8qarOATYaN+UNOyFmRNxBAVSU0D/+eYXhPJ3wfDd26G
X-Received: by 2002:a05:620a:7ef:: with SMTP id k15mr10195553qkk.297.1583650214456;
        Sat, 07 Mar 2020 22:50:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583650214; cv=none;
        d=google.com; s=arc-20160816;
        b=XDxQYrv44xiU+BADvD04bI+koqd0Xw1QaJ2DpHC3HUQS+a6nMWxP4rVkzUBvHh5Inn
         tikib5pCpvJxCzx9bM8S0Q/d85ZxDbh6oKT/reOUq75OjDcOJ71QAJv7rodJu/DwYJ59
         LbpaztxPOeMgo4wbl0a9Z3K5qwe8c0nFNqbNnwzO3lFcGYg4iosA8FYWU01Df/lF2xI3
         zxVPwWEZ8R/l762EHn2nZKboqjyN8IVIQcpcN4YFosOeudVBRLVqUgieU0qi0Kp3WGFI
         REiX2NHLH4YJ4hgFiXQeR4BkeLx9j6Ab5JEWIKakDjSoIEvCvTUyNG3hh8AwGZWNmtR+
         +IGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gDPtgTlfBJhkPm9u/d26ftQKkZ3TNY+CwoYQ3txYZ1U=;
        b=fV0ABeek8DaVY1fLIdvS8xM7WPE1VZxG36q5l+tPbYQbszTwKn7tWb4TEdkFyWvk7/
         vX+zP9WlPayUvMnX/7lUQF36sSdlo1QTdoirLHC8UOierYrWmoxo8kKhW6UmhbYu7cue
         QXzS5EiJN3Xa/6MYZy9kuP/qqa57DWDQVvIPXqMQ5+d0krSI5h2ghW1wFqy+TalRZH5Y
         AzeEjpUlDDCXp8HcMC+GMtbOnU+Ebp3cQLM2XcNLuEHmYx9ifekdZrsclUYk9mFCGP+L
         y36OynYozz/7YUbuXOaEOOlWv9e88JvujThHbVCfjMXJA1sLfKHRSx0EP6lG8/MlQNLK
         Ohcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MUGrpXND;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e26si338688qka.2.2020.03.07.22.50.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 22:50:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MUGrpXND;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C956D2072A;
	Sun,  8 Mar 2020 06:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583650213;
	bh=z970PgJNMQjbfj0jcWry7Nh6WVIuYU5ezE1G9oQl1Ds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MUGrpXNDe6SIvpirCeAnIDyjOJZfQXkn+BsaPHWtCx645tGmE6l6XmV4WBdFF42fR
	 iPlj1BQuRypYkdAsdsyWxaKJwHfDBuZ/BHEl5E5eIf/taphvWT3umj2mfxHbO5Zk1m
	 V6DaxNLiYPXKEqIitNe0/BL1gYJTxOjyiEXBAaHQ=
Date: Sun, 8 Mar 2020 07:50:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vt6655: device_main: cleanup long line
Message-ID: <20200308065010.GC3983392@kroah.com>
References: <20200307230631.13900-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200307230631.13900-1-lu@pplo.net>

On Sun, Mar 08, 2020 at 12:06:31AM +0100, Lourdes Pedrajas wrote:
> Code cleanup: long line found by checkpatch.
> 
>  Changes to be committed:
> 	modified:   drivers/staging/vt6655/device_main.c

Why are these two lines in the changelog text?


> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/vt6655/device_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 0442f71494b2..88e1284a7743 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -1075,7 +1075,8 @@ static void vnt_interrupt_process(struct vnt_private *priv)
>  			    priv->op_mode == NL80211_IFTYPE_ADHOC) &&
>  			    priv->vif->bss_conf.enable_beacon) {
>  				MACvOneShotTimer1MicroSec(priv,
> -							  (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
> +					(priv->vif->bss_conf.beacon_int -
> +					 MAKE_BEACON_RESERVED) << 10);

Now you have another checkpatch warning :(

THe original is fine, the line-length is a "strong hint" that sometimes
needs to be gone over.

sorry.

greg k-h

