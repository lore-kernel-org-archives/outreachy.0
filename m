X-GM-THRID: 6751912583325810688
X-Received: by 2002:a9d:4aa:: with SMTP id 39mr7744717otm.311.1572113110788;
        Sat, 26 Oct 2019 11:05:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:1710:: with SMTP id j16ls60884oii.0.gmail; Sat, 26 Oct
 2019 11:05:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwqN4oQJYhOw0sW38j4uQSge8DVr9pnxftb9IwBzCCGsPpvVkm8nBKclbqrBJ8hm00/FkdP
X-Received: by 2002:aca:52c2:: with SMTP id g185mr7510085oib.45.1572113109627;
        Sat, 26 Oct 2019 11:05:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572113109; cv=none;
        d=google.com; s=arc-20160816;
        b=hsdVVGgPK7vEH0hHItXa0YGxE2G50yLrXsgsvfNuu2ReEeCndfxYdVkM7ihW/rtXAr
         Cn/Ja3eXqcVRvHqb4r1vh9pcXWG7DG5ODC2xwJlnbSF1efJrA8fBcOlO9dwCAgLPqpTo
         onbpJE52k+R7x8UUlqhfkagCGqgMEnHBknUx+G+PLhF7HBp+OtzMM/1xsexGAYZXhY1g
         NcsXs8HYmxXpmXjX02dvEx5Hd4fDk0DWlaYT9QjIjZBIFNWJNQKS8MUA/41KdWCx6uEb
         CyJWu8pM+iG8qcpc4zMu6HNQ4xqhz5U3Q1tRUiSQlSyFAX2dCW3cMW/2isn6Z3nNYZys
         YRRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/3w7qmbynerzfT5o2zPQNI83uJDpAHWSe8JZlRrPJTY=;
        b=clyu4yiyyYa/vH/O/DR7K//dygDP2wpWxDU+MJYbyb14gK1qOwv/azmx8jfgdTkCrO
         Ggr5/QL8lXfQUEJTElc03NEd1oveBHGmwhDDhw9S1sLG6BsY9+llCDO2ZVeG8gba7Gcf
         v6PXFpnDlFD39/ICe7RMRJqzJbPLiYkYLELBUqkn6JgrO9vamGg1iAemmnIXtP2mL8vZ
         K/XC0ttXAlqQ2gnuUYv4tZi9vqS22DSGXNFy3ZlJfxC2rZjWilXKPdXqjAtQhvr3UORf
         PpHYpCKET9MdvnlL7Qu51AwPXTfceNdIdtrf6tv+QUtmqpQn9vPwbXY38+5V+dQhqhOH
         1p3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bqiciS92;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w205si219123oib.2.2019.10.26.11.05.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:05:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bqiciS92;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 72AAA20663;
	Sat, 26 Oct 2019 18:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572113108;
	bh=etgcI5LiCF7KlUXG0QY0IU1mwTAKTY2Jmd+J7FcUmyY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bqiciS92jKolql4n2q58VrGwsm+3GDw8gVT2LTI4Mforb8M1tkRxuw69b2Y0JiOUD
	 y9xQLz4jfc64Ycj1ojLTrvjo8DeMtaWSFRd1kzzsEGeox9s3e4BnDd5JdQ9mJXwkKI
	 bKp8zcYiz9Tzu9/YxwoG8JIymIDXELCxlgvcSw8k=
Date: Sat, 26 Oct 2019 20:05:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	linux-kernel@vger.kernel.org,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [RESEND PATCH 2/2] staging: rtl8712: Remove lines before a close
 brace
Message-ID: <20191026180506.GC645771@kroah.com>
References: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
 <0bd6b897a5af322cf54d53bb68752d3667a7acb6.1572051351.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0bd6b897a5af322cf54d53bb68752d3667a7acb6.1572051351.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 25, 2019 at 10:10:04PM -0300, Cristiane Naves wrote:
> Fix Blank lines aren't necessary before a close brace '}'. Issue found
> by checkpatch.
> 
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_recv.c | 2 --
>  1 file changed, 2 deletions(-)

What changed from the previous version?  This isn't a "RESEND" it is a
new version, right?  Please properly document that and resend the whole
series.

thanks,

greg k-h

