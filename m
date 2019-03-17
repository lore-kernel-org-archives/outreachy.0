X-GM-THRID: 6669413684549255168
X-Received: by 2002:a25:1607:: with SMTP id 7mr428545ybw.51.1552846709792;
        Sun, 17 Mar 2019 11:18:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:7008:: with SMTP id l8ls3448268ywc.3.gmail; Sun, 17 Mar
 2019 11:18:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSnRv8QT2bGjaOStl6T43x/9jvcatb9cPKshLGJINeeRVz37M0Ixeo+y3KtrEVphO9OEoA
X-Received: by 2002:a81:3cd7:: with SMTP id j206mr7193521ywa.11.1552846709197;
        Sun, 17 Mar 2019 11:18:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552846709; cv=none;
        d=google.com; s=arc-20160816;
        b=OqsWNgpBuMA1ygPpnzWP5I0Dzax/7VGt/jS+/qT/o7cAxvcxswPMgXTvUdWQERqJ50
         e/aNgB/q2fO5p4Z3HktTnQCXXC7vsr20sAOIYkMvksvN9wEfFkO2h3fxODKzdnIKMIRk
         ScXnxqm8ijjlFywpQ+cVU+meM4pDzRsJAq2iKG+HpcDnaaMaObqtmTVet0XCmN/KvSXB
         D1aMOnbmtJxsIdssw9D6VYQp9MyPHLZvw20RNVKdjJOfHwMOIzUrn+JMSTBl+S3HKFVT
         6Hm+gbBeSGWytxkrtUkb7yOWsPw2vRM8WElS6mH6xq+cpJ3xPQvlkFoKfBvTYDZSjkgy
         /4uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0jr7z5+dC+G8cEosSo8EvL8VnCewkDF0hK+aMzFqW4s=;
        b=ksEW2OXK5GpYkylcbZSARcTTMPZ6ebzrfzl+iFoQ0F0KTTfYqcHRLRnH3QG7ApKpfz
         3dCfUgl2ijlbQMm7PZEIvE7vrjdZ7rdQrMDGZTZKSn7/knrk5MCg+RaH7Tmh+n3eCBHL
         ys1gXmBV5G6GYCeY+nnq8Hm390hF9ht3p7J9oWHAkSybhKGV47BXQV9DkwzwFhdBJknp
         Op4A3KUa3eufYsuOnM8YF9ZG4jMbwFhyTreNZXieuab52FfxYCNP8ami/DADuigWi7fH
         jgbv/s5R/e/6Q3QOYG7XxrU/enplCycysf/Kwg8WUQAWnlGZzp4A0yByFlBhTCy5OLqr
         Pbww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XbLA5eyX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r128si507585ywd.0.2019.03.17.11.18.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 11:18:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XbLA5eyX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9EBAF20872;
	Sun, 17 Mar 2019 18:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552846708;
	bh=UpqUT+9qbbq2b85nQ6yCtfPfILHQRte8vZCTUxCQqGM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XbLA5eyXot9YxsFTHNbJfYLJrz/83uTzZ+Vp0x63JM9/xaFv/v6AwzNsmJA01O/Q8
	 7SWdF06rqsQC9TvXMSyPF0jWTZc7Lpd1JfvWr5vcjig/OEMn5gkn3kYqVJkpypa/Bt
	 srJGqQUIrhOYuTlSJaOnto5o89XFhIXA15ymfI/4=
Date: Sun, 17 Mar 2019 19:18:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: gasket: gasket_interuppt.c: Fix string split
 issue.
Message-ID: <20190317181825.GA3482@kroah.com>
References: <20190317173107.3814-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190317173107.3814-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 11:01:07PM +0530, Sanjana Sanikommu wrote:
> Remove string " across the line.
> Issue found by checkpatch.pl semantic patch results for rtw_ap.c
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/gasket/gasket_interrupt.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> index ff61b782df30..da517c2990ea 100644
> --- a/drivers/staging/gasket/gasket_interrupt.c
> +++ b/drivers/staging/gasket/gasket_interrupt.c
> @@ -97,8 +97,8 @@ static void gasket_interrupt_setup(struct gasket_dev *gasket_dev)
>  		 * modify-write and shift based on the packing index.
>  		 */
>  		dev_dbg(gasket_dev->dev,
> -			"Setting up interrupt index %d with index 0x%llx and "
> -			"packing %d\n",
> +			"Setting up interrupt index %d with index 0x%llx and
> +			packing %d\n",

That did not do what you think it did :(

Are you familiar with how C treats strings?

thanks,

greg k-h

