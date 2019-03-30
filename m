X-GM-THRID: 6673915321016909824
X-Received: by 2002:ac8:2f98:: with SMTP id l24mr4682484qta.8.1553934402178;
        Sat, 30 Mar 2019 01:26:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:58c4:: with SMTP id m187ls2032496qkb.7.gmail; Sat, 30
 Mar 2019 01:26:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzpB2dDrI2XQD1/oKc7+RZtTP0A60wGBfK2p03mMjlhRMlUivIW3oNjp9hvs8gMv/7VpWM6
X-Received: by 2002:a37:a993:: with SMTP id s141mr658981qke.1.1553934401628;
        Sat, 30 Mar 2019 01:26:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553934401; cv=none;
        d=google.com; s=arc-20160816;
        b=AwAuSzLdYwDUyFMMDrFT/PNMUl3kDf3y1CjDMAobIGNYZKOuU5bN6nRyG4QZ91QdzO
         eBfkjlZgXVp4NROaYe+SpOkv0tOYnDQbMX81OKr2Fttkrk9fsbu7UWz+k32U9m27kg9g
         AGQPHSxghGeH3UnHegK6ER2WAsaHUbRx1hEjvtRSd21WbOVWzVP7Vr5mamUetIs5b23m
         bBCiJmiaxfk666/zKv8X5064j5xt5Doja7XBSZlEXjk8zWDiB9p9BkOqsRNcSnEkgXWh
         2fCpANKngawfGkBjCRtj/ATeGTRTHHNDoywbfmkAxtOy5GxQepauoaHUbFDuVoTB3IGt
         /3Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Dy6UQoGr+ZPoHi9iadsD0hsDsArJctQ52UnLXpzr0pQ=;
        b=1HSZnrsSCmmDCr/DFk42F9I8VCzudv47e4WA05OpWfhARkjpT1HPkhV21X1BJoqB/z
         OFCa6ERgNu8bpENPM3+XaKOg6Lzn3hLa7n4mpZR9DzO/T6e0/tIfcnGcZTZqtn8uRclg
         i+nMBfdbUazjeEIijzR86SZ5vJrcTOKORmzTBAe7Cs0w28+2Na7g/Ls21fViaJZXSr1z
         aSIVXhiDjtKT3yLzZuc+JlRtU2vdKeNw8BV2UePtx5b+3FkvWCOrqPxEXdRXXhZVAGgW
         juxwaADN+OcxN0Z1dUs4CLCiWZdJm1p2CtPFajbprOO/W/0OxPbBHj6kcPlVAvs6qGzB
         e3sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=m6Y6Dhy7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o59si193057qte.3.2019.03.30.01.26.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 01:26:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=m6Y6Dhy7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.119.166.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AB3552173C;
	Sat, 30 Mar 2019 08:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553934400;
	bh=R/32gTV9XUbldNhzlQ1g6p+NWvUJtOT0U3ormXLj8XU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m6Y6Dhy7xi7qbgzyLkd5SA9QsBHcwrsU096IAqAfsWMOoiX+SyhBpMlvy+buMHlwF
	 Fs/5udZmEnbyDSeivumqAShMa9sbkxsLDD6bM8ZnQOkJkb8gDP1xvUy/V1NPUUqoMQ
	 07d0HMzYdxqxTHAw7QlInXZH6TPY8JFVR3V3MyaA=
Date: Sat, 30 Mar 2019 09:26:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, elder@kernel.org, johan@kernel.org,
	hvaibhav.linux@gmail.com
Subject: Re: [Outreachy kernel] Subject: [PATCH] staging: greybus: line over
 80 characters
Message-ID: <20190330082636.GA24272@kroah.com>
References: <1b8f45c76effdf0b4483c71afd02b2f773812788.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1b8f45c76effdf0b4483c71afd02b2f773812788.camel@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 01:39:56PM -0700, Briana Oursler wrote:
> Replace function call within if-statement with variable to shorten line
> length. Issue found by checkpatch.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  drivers/staging/greybus/arche-platform.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Why is "Subject:" in the middle of your email subject line?

Please fix up and resend properly.

thanks,

greg k-h

