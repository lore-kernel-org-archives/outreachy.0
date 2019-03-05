X-GM-THRID: 6664915605845442560
X-Received: by 2002:a25:3881:: with SMTP id f123mr1458824yba.19.1551797226733;
        Tue, 05 Mar 2019 06:47:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:60c1:: with SMTP id u184ls2332582ybb.3.gmail; Tue, 05
 Mar 2019 06:47:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqxaHf7ERUb7Q3N0hhEaUADg/Cy0pjXfcIDVlp4DkS0h6wSAmemqU5Vprb7J5NixWjU4/wfm
X-Received: by 2002:a25:4d88:: with SMTP id a130mr1376950ybb.36.1551797225801;
        Tue, 05 Mar 2019 06:47:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551797225; cv=none;
        d=google.com; s=arc-20160816;
        b=wLGVvA3N3RR7CGGEjNkIj9mvpbY+zsMRjgi2Aeom8FFGglpzGEpvEUzrEdjlVMq14S
         CbP23/Xb9gcA9vayJCVIaL8tU4qFey9Q6coCr1G3W5gDwIh+wH9geHrhwrMoSLGT93a6
         1c+Cfi5wf1mmpst7yEGMK+poa3FuQn+aOcJzR140nkWs7GTLmQM/MTiQOhNK+h3j8iAL
         xR4gQDVWgsfBO19fsCgzHpO+aE9Cr0C2wRhvLC155wxcrchRrDxo0ZX8fKe+tA7NkUi1
         YMSY5Ra0DNKUaGYhsaAor0pauosLnR30ucaSidgVW5ehp8YaxS+AB3s/1mdTO9pb88Pa
         xUag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2XuWQJAUPSP8S/ZkTcOcm/Yk7S4oFk1o+4hv+TExGPE=;
        b=IWCUwZ0+i3a3OM8AfxCy50bbgMQEO+Un0vFQ8T/XRCzGKTtR2zaGayhkki541MuB4H
         hpz86cFub+wXLCL5QwKmESAEeYILi4jfVoBhhZm8xWwpg1Uod6rjYG1w3ZjTIBF9qAOP
         IY6B+z9Ry2TBY/+kOxwC6q+iR4QrnATazMHkhoY3E73sRcQYyGJHhqm4+JCi9U0kSSdg
         qJFu9xeIWq8SAGH9nf3AbMbJUCGyv3rFwsA91j8VH9VyX9JC2ITicBIMFHXUxfMiXFie
         GHOfLyN77V832KFpjMC5+Fj+lxeA37vS64bX7qQ9W80R1G5tUCVbBOqTfkWZbmUr0Jqz
         XGiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gN+1+voa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w7si440168ybk.0.2019.03.05.06.47.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 06:47:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gN+1+voa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3A1D020842;
	Tue,  5 Mar 2019 14:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551797224;
	bh=SC2LmPSCVgxYC6oulykvXRihCzXkMjFloQxnzt8GCo0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gN+1+voa9zSPI9ShillVTyQw2/wAYJjflcE6786Wa61XXuzQ4s/lpjWvR2U4izUCw
	 krJ3iUDgvU2oQKgYNmYrXYgbOBZS0vgaoawhd/pL1ZGDzAvnM6DAp8ixjZ/trSJOtZ
	 cvlQzumw3Jnmi/kl0JlVsiVLggFq0qUX1dtrHWV8=
Date: Tue, 5 Mar 2019 15:47:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vt6655: Avoid camelcase
Message-ID: <20190305144701.GA18638@kroah.com>
References: <20190305143241.14118-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190305143241.14118-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 02:32:41PM +0000, Jules Irenge wrote:
> Fix coding style issues detected by checkpatch.pl.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c | 522 +++++++++++++++---------------
>  drivers/staging/vt6655/baseband.h |  36 +--
>  2 files changed, 279 insertions(+), 279 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index b4cdc0b7fee7..05b15dcd1ea0 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -12,20 +12,20 @@
>   * Date: Aug.22, 2002
>   *
>   * Functions:
> - *      BBuGetFrameTime        - Calculate data frame transmitting time
> + *      BBUGETFRAMETIME        - Calculate data frame transmitting time

So to "avoid" camel case, you just made the functions and variable all
upper case?  That's not how we name variables in the kernel, please read
the coding style rules for what these should look like.

thanks,

greg k-h

