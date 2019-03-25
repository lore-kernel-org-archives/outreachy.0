X-GM-THRID: 6672382238734155776
X-Received: by 2002:a81:56d7:: with SMTP id k206mr3735122ywb.305.1553544754281;
        Mon, 25 Mar 2019 13:12:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:19c6:: with SMTP id 189ls5202000ybz.3.gmail; Mon, 25 Mar
 2019 13:12:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzbQxnHjbtYI7bgc6iAD75j4oHjDuhizr3ne/eOYRS9cn50a/sHaN5HGcmxwaGITsEv6JDI
X-Received: by 2002:a25:e08d:: with SMTP id x135mr23114429ybg.123.1553544753359;
        Mon, 25 Mar 2019 13:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553544753; cv=none;
        d=google.com; s=arc-20160816;
        b=sCz8/vJQjBAcMXC5ABqjo8ygoPv7sGbBTrJvjQn1zrirk6GMmLrpDXOXbyvcKbjVgm
         //Ag+Qnx4F6c3EgNKu9GN1VpyQ+IWdhIntIFe0JBRiLuLtAIOApmyodo+c9OOMjWJ6nf
         JEx8WmHVrowyUbSsLvrzyIqWjKTOKqSudOb436Tqyb1iGk3Mkg3FCSmkukN2DJmywh+s
         EGEBf0ASNjNW4F9/ECrSkaN/jGHAF1WQ+o6BPzhuTrXv1oXDSFYEUzkBPueRKP+aNNdg
         btHoG17U67IapEDEAX9E0rFMYyVkDiYtyeXfOW2ZCSvgtmcUbRma9GEhHr+TGo+cmkFp
         YbWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=u+3l+kbkBrUmqOdmIHAdzGdmrBjT+ooJgjDBfw4yhmk=;
        b=x7nFol2n98H17P5lPq6EhTlorRUuKKfyLmBla8SAdWE5OMt7fsmWE5TXy5ei763Y1/
         9VBpOgaGEU4MB/j5rNrudd3/eTmiTpLYdVWY/71xCL3e/RFuPVsI1wjwxIxJdL3MnoW1
         Pe9EZeqgkmMOphs+HsqPiTIZwHjrxmebJdQqNUob+W9toqrCxqSHOH7RjvqCCkeD0cLo
         TrQyCVoNskLXkarqVPyHLTOLjWmK3XZkXBJrbMr0Js0bknOzQry23LXn7aFWRLlTjdMI
         dN8HCEwXMHsAOmXtZPz4NHTFdNAMSovMtSsL/cFKNujj4gXVvhENHP/WpiQPlynQX1ru
         opow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dqUem0Ai;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e23si1295522ybb.1.2019.03.25.13.12.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 13:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dqUem0Ai;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [218.237.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3AD662087C;
	Mon, 25 Mar 2019 20:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553544752;
	bh=47wPkY1izvyHwqRhbPC38JDU8rbMdi2kbQaM0vv1HkY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dqUem0AioMZM+/4cFux2JRnCisasnmSOJrGllsieQGPNuK5NzCeI2xDWoLrGs7Vto
	 Lg2tvdgWp2zPJqr8tMoA/OBC5x8SoMqAI1ggUToS4al/zl2H7jOIgGM7rXEIS15vJ/
	 50cEISRUPvRCPbMm79TPOO3Bf62jQmFdAOyiWmmk=
Date: Tue, 26 Mar 2019 04:26:58 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: Re: [PATCH] staging: tegra-vde: Add comment for the lock declaration
Message-ID: <20190325192658.GC14506@kroah.com>
References: <20190325173033.16011-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190325173033.16011-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 25, 2019 at 05:30:33PM +0000, Jules Irenge wrote:
> Add comment for the lock declaration to fix checkpatch warning
> Issue found by checkpatch.pl warning:
> "CHECK: struct mutex definition without comment".
> ---
>  drivers/staging/media/tegra-vde/tegra-vde.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/tegra-vde/tegra-vde.c b/drivers/staging/media/tegra-vde/tegra-vde.c
> index a5020dbf6eef..78ad78e03d12 100644
> --- a/drivers/staging/media/tegra-vde/tegra-vde.c
> +++ b/drivers/staging/media/tegra-vde/tegra-vde.c
> @@ -59,7 +59,7 @@ struct tegra_vde {
>  	void __iomem *ppb;
>  	void __iomem *vdma;
>  	void __iomem *frameid;
> -	struct mutex lock;
> +	struct mutex lock; /* generic mutex lock for tegra-vde driver */

Also, we know this is a lock, but what we don't know is _what_ it does :)

You need a much better explaination than this, sorry.  I don't recommend
this being a good "first patch" unless you really know this specific
driver's codebase.

thanks,

greg k-h

