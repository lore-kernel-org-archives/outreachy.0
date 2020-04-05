X-GM-THRID: 6811652718511259648
X-Received: by 2002:ad4:4101:: with SMTP id i1mr3313344qvp.172.1586070930033;
        Sun, 05 Apr 2020 00:15:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:b48:: with SMTP id m8ls7113213qti.4.gmail; Sun, 05 Apr
 2020 00:15:29 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ01/j9Qk03ftC5YHWvKmrGJK5qDUtKS4+4lPr2az+rDepZnJ1zhMqKUg6pSCFP0Xe0IBi5
X-Received: by 2002:ac8:37f8:: with SMTP id e53mr15541542qtc.280.1586070929025;
        Sun, 05 Apr 2020 00:15:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586070929; cv=none;
        d=google.com; s=arc-20160816;
        b=NIiFcWbR9Fu9hRh89MsqLURc6dopjC8UiXcS+4I7tFT+luuX79THtxhUzqHFhceXoO
         gYLwFdfuNytmMahLOhYF5XFYpXjZiqyYaIGnwJ2RUNcjW1QxYaVpI3Axj7Gh9AdHq+Ev
         5t5dpLY2aLi64mz4wf9+P3yU0FblAtxR6qGxt+WmBXDj/wd0gSYx6sKrbCGSNnExVwnz
         RR8/VTfvHH4GhpAvUvIY4HT76tY7yCTFsfTVxYAxOJmgIklU8MIgAHykEj/IVCAmzYt3
         ojYM6EBGYG4UbcfWIAqplczRDSo3Kw8yrJJ/bzqkG1+JkyPHao22Ai6lZxdVzAYM6tKa
         QZ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/hPxShXL4kvjO+zgBb1/i6XdwMGp13dAWGjmF/tpLkc=;
        b=UMfYzirXSdvGNdEnmpmDcYYBJc/v5hxzGIRRBO+JgYodiOBo0bA4QTg7bnC1ouXfQ0
         eZRi4rbSo+AkpbYDYa5uaPldoEt5tbdv0kAFakFUrt7Y9lcs4nXuGPDcuKPKog/qeCFI
         mPYa92NIKFN7KxBxSJjhYFpIpnmTeO2KDkSH6A/SPLX2j9Ifv9ZlRCMAui9Qu6T+6Nu3
         fAUmj8iTl+A5MHBh0dEi+NKl60HYmfnqsBGTnL0fBkGIyBF8ozMg318gtKuGT4kas6Hp
         ZXPb1JAqkROkO2Hfb8BgEodui5tQgE0mRkQaL0ALOx+nS4ShM6+TGoY7mTej4qklL4it
         QwSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0dEiABtY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y81si742089qka.6.2020.04.05.00.15.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Apr 2020 00:15:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0dEiABtY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 23361206F8;
	Sun,  5 Apr 2020 07:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1586070927;
	bh=z4rHASaIX4QS6BmbRUgSFCZM7mO+kPij+pGjEsmy4YU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0dEiABtYzhjM62c+HXuDZzxaM+Bt/oBdYnqyiiwbvMZTb1xwoJQ0MNJdWV+D+TvlP
	 0Z5Lh+Gq85OG1IH5e3ulMsmd3xHSbpCW31C9P6JlybGZlrpHne1222PRoZYgwOoJgJ
	 2gOuXYlfSV5Of6/OlOR8YhXiEFWO5IA33qvSEqNg=
Date: Sun, 5 Apr 2020 09:15:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, elder@kernel.org, johan@kernel.org,
	mgreer@animalcreek.com, vaibhav.sr@gmail.com
Subject: Re: [PATCH] staging: greybus: quoted string split across lines
Message-ID: <20200405071517.GA1547921@kroah.com>
References: <20200404005122.GA6315@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200404005122.GA6315@siyah2>

On Sat, Apr 04, 2020 at 03:51:22AM +0300, Gokce Kuler wrote:
> Quoted string merge to upper line.
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/greybus/audio_manager_sysfs.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
> index ab882cc..d7216e9 100644
> --- a/drivers/staging/greybus/audio_manager_sysfs.c
> +++ b/drivers/staging/greybus/audio_manager_sysfs.c
> @@ -18,8 +18,7 @@ static ssize_t manager_sysfs_add_store(struct kobject *kobj,
>  	struct gb_audio_manager_module_descriptor desc = { {0} };
>  
>  	int num = sscanf(buf,
> -			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "
> -			"vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
> +			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",

No, try breaking this line by putting the "s " on the next line, so
there is only quoted string there.

thanks,

greg k-h

