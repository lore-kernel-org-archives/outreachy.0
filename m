X-GM-THRID: 6660473635314073600
X-Received: by 2002:a37:aa90:: with SMTP id t138mr22371845qke.6.1550764892291;
        Thu, 21 Feb 2019 08:01:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:27d6:: with SMTP id n205ls1287837qkn.9.gmail; Thu, 21
 Feb 2019 08:01:31 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYwKgGcw/+ay72aeRLRHBpxDrBU+aXKNnP7Es5kMpvfnIjbYrmQHfRL5uc9NWC33Gd7bmcB
X-Received: by 2002:a37:9547:: with SMTP id x68mr12839500qkd.41.1550764891719;
        Thu, 21 Feb 2019 08:01:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550764891; cv=none;
        d=google.com; s=arc-20160816;
        b=OFBN+PVsuRkXs4dPvGt2fyI0JsH6UJ8QDho3MiN+1Gqobr9hhtr3PKT4Rqbn7Dp/3x
         9TJtJ6R2Ve+o3FWezA1QgYCG70h6+2sgJf0r8KJ+OxYJEcLIFRboX9+zEcQEWRyGuwEH
         5NjZrh4/CmFmFSDs7hsE3is4PWdbkAlZ7t+LV2zIKkT7BD25yz9J+ggui1KW/AmHZbQ3
         0GPp/0OobMCIEnCGDIOeeXGq/qqB+oyvlDUEgqob5C4YxOp7UUsbZwoonfhyRsD+hWUo
         CjAljH38xJpJ7fW80x1YNeAtNXzO/++BeqtLstW0K0Z31t1dhrDz34iDmnN7Uhb5e+ez
         z2xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=egmk6C827S90/GOK/Rv+lL+tcxV00aAu5YJIsuHNep8=;
        b=qodievimddcnGVrZXeJI0RlJhcoYWoFsJgLXCoiHSyrr0LF0aRffWt4z9pdtdCy59H
         F9DDfJQ3gApoS7rz789JvY6vtCyKUC4f3fuAubxCo2yx3YcNg5EtLq3+95E3W/ZnNEEW
         N3REypuHMiqwiYWsXOCDFQ/z2T+nwfV7gYuhq+ouyXS9K9nKDXUzgwIMFRXg8cu0m4QY
         ZECDhr2tsGNq8+N0zNeE+P3SexOKv8p2F6kVJ3NANSLttwEd46mVbu//LQSL57EUA0QH
         bkwmKmcxofVuGjEt/jUELHqpSqweDiPVaFE8JpZ5VjluyhZv6KAqQVfQIYFVesW7va0R
         y4oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pPvahVd8;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e12si60761qtg.5.2019.02.21.08.01.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 08:01:31 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pPvahVd8;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 41E7E2083E;
	Thu, 21 Feb 2019 16:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550764890;
	bh=cvdr77L1NUQvEH8lQ/W9MFiRIm2AfzxKh8+hGML+BaQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pPvahVd8hhJ5xFhKbTMyAfFKess7N9bYUzkae2JFOAgTHcxUPrZGEgavW2OvYA5zx
	 49Rv+3lVjLK0AIhacaLYYuXORa+jxfG2N93M4LznKRuz47MlQEpylCuepu8ifdC3pU
	 BftZb7iaK2D4IxWBCRwPZX2n2/ZAf82RRVNVd5Xw=
Date: Thu, 21 Feb 2019 17:01:27 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/3] Staging: fbtft: Fix Various Checkpatch issues
Message-ID: <20190221160127.GC23121@kroah.com>
References: <20190221151918.GA1764@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190221151918.GA1764@bhanusree-MacBookAir>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Feb 21, 2019 at 08:49:18PM +0530, Bhanusree Pola wrote:
> This series cleans the following checkpatch.pl issues:
> 
> CHECK: Extra blank line not required before closing brace '}'
> WARNING:EXPORT_SYMBOL(foo); should follow its function/variable
> WARNING:line over 80 characters
> 
> Bhanusree Pola (3):
>   Staging: fbtft: Remove extra blank line before '}'
>   Staging: fbtf: Declare Exprot symbols immediately
>   Staging: fbtft: Fix line over 80 characters warning
> 
>  drivers/staging/fbtft/fbtft-core.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)

Your patches are not "threaded", like I asked for last time.  How are
you sending these out?  git send-email should do it automatically.

thanks,

greg k-h

