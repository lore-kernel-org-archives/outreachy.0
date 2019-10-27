X-GM-THRID: 6749323707377778688
X-Received: by 2002:a17:90a:aa81:: with SMTP id l1mr306116pjq.73.1572159956610;
        Sun, 27 Oct 2019 00:05:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8dc2:: with SMTP id j2ls4262828pfr.8.gmail; Sun, 27 Oct
 2019 00:05:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4DezJ6IzBUVUAqKHXlYplh1KnDEHQs29NB28IMoCCsKCpmbeFGcma3YDJwTKcthoGdWBA
X-Received: by 2002:aa7:8249:: with SMTP id e9mr14216558pfn.19.1572159955597;
        Sun, 27 Oct 2019 00:05:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572159955; cv=none;
        d=google.com; s=arc-20160816;
        b=Jo7oZ6aNP9IehW3psmTTmUlw5Kvu0gfPiL4T39xYQNCcRivn0Sl31z73IweHnFcpem
         5azrD2SPjOpSG9vVOVvqsms4O13OnQmleJZwHTcaKxPt1mpM4ukRGxqsqsgS3sFXCdMM
         apl+xfPjzFAtBnvGHtoHR3SzB3bwlXBqfJpwU0S0S5gtK7rWy83NoY61dNNPXRjdDozf
         nalHrba1aq5CN2bUEFHl5v3x3/4R8bP/Xu4fSyvPTgcchiar8ltPFrw1Gs7kVFnbbBb5
         Sh0H2vLXVPtBMiqtcJ2faiogWkh5qkXnbdjiQrJ5yVYy0f+lNy/LuCo3YBvqEmnXyIyP
         JMCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=UrmZ36jTRp6brDEDUqdzexZPzUvcwh4A2f9mDVstVE8=;
        b=FoPSlgPCTKRN1zcgWWFLc3JOgz/wxpsf2+1oyCh8iWVQ813OsZga1guD40f38wEZ+3
         Nvzg5F/vSRijIoi/+8Jhl6ifI71XDvaZebZIx8GOApnmnep+CxRcpxtJJADIcQy1O395
         25Gu5TxmoBgld9BqxRj+pAX9/tdsXUvwF/j5ssQy/RG7zJBwgdaM86B9v4fEJYFu/CJc
         Xc4HKXGLjXozi7mcdPUNQ+0/jnXHWU63m4UShL+xg5JgtdTwOJ8GL2P75b43MXVXhVdP
         UQOptupHVuZIwC8ySYVRDesZnVdIgCeCzyVMKTbMpUnmDsLKcV32RTBJnYVJTouigdaN
         ttpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gJ+KBCMS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t71si273777pjb.2.2019.10.27.00.05.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2019 00:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gJ+KBCMS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D016B20873;
	Sun, 27 Oct 2019 07:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572159955;
	bh=Jl1y4Z/ipRELzKI/eMv/PK2HtKgieEbOsROMF3ylMCA=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=gJ+KBCMScx/MIsLBIi8Bmwy7iXSD73jZsPajm5U/jX9WL+TyWJ9KflbbUTliY3zfg
	 rUD3Toxh/sMamah78QxB927JBl2AVbK7Ijt2pjWopq7LNlba0PcsF1HkpmtXSGHqMM
	 tgzPrzRJCoHLHVr30P1eBmzRJ0FJ7qReTQtLufUQ=
Date: Sun, 27 Oct 2019 08:05:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH v3 1/2] staging: rtl8723bs: Fix line over 80
 characters.
Message-ID: <20191027070553.GB1703830@kroah.com>
References: <cover.1572144163.git.jarias.linux@gmail.com>
 <6186e531d4cc59bed09329b2c9c4cac7352702bf.1572144163.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6186e531d4cc59bed09329b2c9c4cac7352702bf.1572144163.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sat, Oct 26, 2019 at 09:46:35PM -0500, Javier F. Arias wrote:
> Fix line over 80 characters by wrapping arguments in function call.
> Suggested-by: Julia Lawall <julia.lawall@lip6.fr>.
> 
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>

Need a blank line before the "Suggested-by:" and not after it.

> ---
> Changes in V2:
>         - Edit the commit message to use the Suggested-by tag.
> 
>  drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> index c514cb735afd..0c2f3b2d4326 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> @@ -188,7 +188,9 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
>  
>  		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
>  
> -		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));
> +		ODM_CmnInfoUpdate(&pHalData->odmpriv,
> +				  ODM_CMNINFO_BT_ENABLED,
> +				  ((bBtDisabled == true)?false:true));

Why does this have to be 3 lines and not 2?

thanks,

greg k-h

