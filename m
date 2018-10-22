X-GM-THRID: 6614961709570326528
X-Received: by 2002:a62:67d8:: with SMTP id t85-v6mr21737984pfj.11.1540196855787;
        Mon, 22 Oct 2018 01:27:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6ac2:: with SMTP id f185-v6ls7687277pgc.8.gmail; Mon, 22
 Oct 2018 01:27:35 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60OunLNKBhZmedroWR5SLND72f14rMbYljQiB3tK4OHGEE2lGisXSDkmiyW80wWNLVMLdAT
X-Received: by 2002:a62:f243:: with SMTP id y3-v6mr1795733pfl.9.1540196855090;
        Mon, 22 Oct 2018 01:27:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540196855; cv=none;
        d=google.com; s=arc-20160816;
        b=sfF+Q33PC6xGyzO+V4JMATobbRT0qaeVACb3mFJVmBC2wAMvIkwPEprRBUTGvyWlMQ
         ks50jLZsu9HnidD15Hc/q3WaoRUrmzb0hByK3sBqo/UE3WJ+5jOsZnJmuYbhW7HkaFpl
         kUsy7Z4TLFp64zXV+aSPwdSKKMiAwwB5Ne83EGMopsvodStZFK1tpLNjS27QXMbj6G6K
         QGMnr/P13w1+ICx+iRQ5TSQWVeXbaKIPaxozUJBeLULTWlalFBzpCatgDMz47hyDsLWK
         1rMj1zv+u+vZFxgiXs/k4GqCjXLVrxg69SICWxDhgVLMoXwZBylJbg290KJJ24ZK3xjk
         0cPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=S25A6E9ZUzQiIUGdLYSZlA+583TRM9jGLG4fEK20bAU=;
        b=GfG711ZbfU7CHd7rBXJa7J2XroROwFfiWhQGO/KtJ3TDZ/AbbQaRuhiv4aYt9t+YHH
         dwXy7Nb3E4x16bZ4c4JSDk/auFaIt7nrH4c5QBYQIA8L96ANBaSVIzxfWAcAphLBqOeK
         s2xEb9XMZKShcfa9mSbbkVt+IdPJkaDzqdTg98pKoVnymJreEp6jXGlyGimp2mNo3OWP
         mDSlYOnofIY1sEbRquBrbR6GixhDty+zilgGvfUUgx1T5hc4+HUSWz2VoBh5mvd9+CrU
         6mbn/HuD90xDQJX+DVRCz9hu+qFJnCwLIf9wKLGizvjUlm7mq30fjTc3soKwZjgp1BjU
         B+4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LHlDgZWs;
       spf=pass (google.com: domain of srs0=cj3g=nc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=CJ3g=NC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=CJ3g=NC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b27-v6si1522038pfj.5.2018.10.22.01.27.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 01:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=cj3g=nc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LHlDgZWs;
       spf=pass (google.com: domain of srs0=cj3g=nc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=CJ3g=NC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (unknown [185.7.230.214])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 37A6D20779;
	Mon, 22 Oct 2018 08:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540196854;
	bh=bD9zPREgzz5V/DbL1DDgnOhUzeMXJx8QBS07JI/p1dY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LHlDgZWsIHNxDiGalZXTlBbR8kyCKDa5K9qAnt8HRCRZ+XQHseqXUbKZUg5V7QDhq
	 3ezWehpArercyjlkokDIlrwEMRvr/HwxvEVRHj7yD1e6z4lj3f1gOkSn1nvXuGXdT9
	 cp3ORgLaPk9AP0CmhzAf8KGsV3hpzWs0SZvpDkxw=
Date: Mon, 22 Oct 2018 09:27:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Maya Nakamura <m.maya.nakamura@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtlwifi: Remove an extra pair of braces
Message-ID: <20181022082732.GD7068@kroah.com>
References: <20181021234946.GA2183@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181021234946.GA2183@k-vBox>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sun, Oct 21, 2018 at 04:49:49PM -0700, Maya Nakamura wrote:
> Remove an extra pair of braces. Issue found while reviewing one of
> Coccinelle's semantic patch results for returnvar.cocci.
> 
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> index 4bf86e5a451f..90a41c64c0c2 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> @@ -484,9 +484,7 @@ static u8 odm_query_rx_pwr_percentage(s8 ant_power)
>  
>  s32 odm_signal_scale_mapping(struct phy_dm_struct *dm, s32 curr_sig)
>  {
> -	{
> -		return curr_sig;
> -	}
> +	return curr_sig;
>  }


Why is this function needed at all?  Can't it just be removed and only
use the curr_sig parameter where it is called?

thanks,

greg k-h

