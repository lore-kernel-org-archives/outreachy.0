X-GM-THRID: 6749942525265444864
X-Received: by 2002:a17:907:20e7:: with SMTP id rh7mr768420ejb.150.1572064856181;
        Fri, 25 Oct 2019 21:40:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:a956:: with SMTP id hh22ls2572091ejb.6.gmail; Fri,
 25 Oct 2019 21:40:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzMzWRlntC+gewzWdo12ZSoO+J/dvP0HBULEvPk0BopUWdmcq3oFay67Cg1Ss3fzz08ww4U
X-Received: by 2002:a17:906:f54:: with SMTP id h20mr6814358ejj.55.1572064855267;
        Fri, 25 Oct 2019 21:40:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572064855; cv=none;
        d=google.com; s=arc-20160816;
        b=B3UkXwEBeoJuJuWZdk/SUWCnxgXkDmpQhIhdZ01yo5IFWL6v6M8UBf3YNQFiTnWX1E
         fnXnnWfx3vxcjCmTgO8WHs5G0kptben/09a32UzowKtFH6QRfW1lsQS8wD0G/7hRHEe3
         macn1bpgtgFMNo9dE1z9bl7rzGbTZ5/umd0/euctyGiEGQW0cHGLkKad4RJkFkySZ9rT
         pdN1BfZ7mExaPx1Q7O3ExP8FT38ngzpcXDvJfGOea4LDb4bAHYMc259W15dFBvzxIqa1
         A40KvCvO1NqslbIIY9yH9HIDq20JVTvOFM23mxM8JBc8U+90UfTqkIdUN7jZQd6ijDLD
         0xdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=LDg8z9IdGrHHoUzgUekMisRLas0kMz8LwULiJyNZJRQ=;
        b=fzhOZr8NSM4TQklJh9PYffGJVUp80WJHUQjo6etRHjfxFUzmX5WRIRrDCROrnnNigM
         6YVl3TXe6T6MvsLqIwHhnmr87H8LrTQquPNracH6snT0AweglH2UqyPZ98LLqEjkaV40
         9IC7gcUWJY48RGRa/bOmSOeomXa2nk4ngjwLyPCiGcGtBdbb/ohyiJrT4cZ+8ZuSOpoq
         s5tUjfVvJYKOlvfGtnvxHo0U2xoQxxf7BofXsRm4AmcxE3+A3vcCmxLEwN9IhJjN51ff
         fyzFPdwtgA1nxLiQFy9p/8BfHA+SZQn+ZMSxoD5lANVWGD/IPywCnbmVYzqxfnIwb45J
         mRiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r3si199183eds.2.2019.10.25.21.40.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 21:40:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,230,1569276000"; 
   d="scan'208";a="408354237"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Oct 2019 06:40:54 +0200
Date: Sat, 26 Oct 2019 06:40:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
cc: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>, 
    Todd Poynor <toddpoynor@google.com>, Ben Chan <benchan@chromium.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: gasket: Fix line
 ending with a '('
In-Reply-To: <20191025233909.GA1599@cristiane-Inspiron-5420>
Message-ID: <alpine.DEB.2.21.1910260640340.2559@hadrien>
References: <20191025233909.GA1599@cristiane-Inspiron-5420>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 25 Oct 2019, Cristiane Naves wrote:

> Fix line ending with a '('
>
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/gasket/gasket_ioctl.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
> index 240f9bb..d1b3e9a 100644
> --- a/drivers/staging/gasket/gasket_ioctl.c
> +++ b/drivers/staging/gasket/gasket_ioctl.c
> @@ -34,8 +34,8 @@ static int gasket_set_event_fd(struct gasket_dev *gasket_dev,
>
>  	trace_gasket_ioctl_eventfd_data(die.interrupt, die.event_fd);
>
> -	return gasket_interrupt_set_eventfd(
> -		gasket_dev->interrupt_data, die.interrupt, die.event_fd);
> +	return gasket_interrupt_set_eventfd(gasket_dev->interrupt_data,
> +					    die.interrupt, die.event_fd);
>  }
>
>  /* Read the size of the page table. */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191025233909.GA1599%40cristiane-Inspiron-5420.
>

