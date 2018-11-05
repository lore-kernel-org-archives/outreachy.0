X-GM-THRID: 6620380698493583360
X-Received: by 2002:a17:906:e82:: with SMTP id p2-v6mr2172507ejf.13.1541427716998;
        Mon, 05 Nov 2018 06:21:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2a93:: with SMTP id l19-v6ls1064770eje.8.gmail; Mon,
 05 Nov 2018 06:21:56 -0800 (PST)
X-Google-Smtp-Source: AJdET5dYncmp60/uKdmafd2roAsSTq7W1aSOye0JsA1rKYa2ws3hKh36Y0l+UZ/fBu+WNGhc09tt
X-Received: by 2002:a17:906:6dc7:: with SMTP id j7-v6mr1758851ejt.10.1541427716285;
        Mon, 05 Nov 2018 06:21:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541427716; cv=none;
        d=google.com; s=arc-20160816;
        b=UsRzK0wHY/qotCuTv7RhkjrgqPxLWMBjU51Qsb7ldqI2GQzgwVZ56l70bFpuDZGpxS
         /8/MOz0ExbF7SBBzE5/kxJBZmAH5H65i4Fy2OicfSyQLajJMnHaAVeMP79/NEYPAMO8R
         tlkhgW5pBz/H1sbkyC78SSzgxiBRLZEwC5AGT5WM9dhTRezp1xOW8j8HdLpagWNLmKLM
         ++aJkpkKk7vH1B0d74f6EOnVWs4MEgSrkuOond3sSQ4ujlXpUA88/kT537buXrVhelMR
         CSYhICLlW6me7VWSr9wZfq2gl0SO6b9uAjbU69aLA1rBkK6PF52PWYylmSSYxD9OlwH2
         dzIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Jwgx6JA214Hf5tlfMkqxG+tt/laCr+5s6WPW2BpyT+I=;
        b=E9S92mZwbRVYCJM7DE8ViAMb0uWoQjN092OI21kjkqfHKxqQCJpIOtTMIFY0nwnMrn
         bGMbLDt4c2r+ry8RPyZzaC5PmL0vA1WItogdSFKW04pTsKL94IudRXWtM9M9wVXkHEQ0
         uR8heXFZ87gQxFuuPSXPvGbaob1gOLhTgrn+YVnSKMrlRN3rM007u0g+NSb4i6/oMVib
         aRYoH+K7GmoH/zocBWzKOUwFi0PW0F8KrRANUQ80DQMzHtJV0EFibCzebjFNiSqQIF3k
         HqDmZru6D0gemWvf/7VFNDfe5G4fGD1ktp11UHm9b5iGceoO0KGmNlU7eCFdSnBDLnAn
         5Egw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n20-v6si796531edt.3.2018.11.05.06.21.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:21:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,468,1534802400"; 
   d="scan'208";a="284388867"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Nov 2018 15:21:55 +0100
Date: Mon, 5 Nov 2018 15:21:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 10/14] staging: greybus: cleanup long
 line in gb_uart_probe()
In-Reply-To: <7fe735d1e4a5d0497711c8a34c95184dfc3c9930.1541427415.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.20.1811051520450.31780@hadrien>
References: <cover.1541427415.git.code@wizofe.uk> <7fe735d1e4a5d0497711c8a34c95184dfc3c9930.1541427415.git.code@wizofe.uk>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Nov 2018, Ioannis Valasakis wrote:

> Clear line over 80 characters warning in gb_uart_probe() by adding
> appropriate lines breaks.
> Reported by checkpatch
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/uart.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
> index b3bffe91ae99..735f70c09823 100644
> --- a/drivers/staging/greybus/uart.c
> +++ b/drivers/staging/greybus/uart.c
> @@ -829,8 +829,8 @@ static int gb_uart_probe(struct gbphy_device *gbphy_dev,
>  	if (!gb_tty)
>  		return -ENOMEM;
>
> -	connection = gb_connection_create(gbphy_dev->bundle,
> -					  le16_to_cpu(gbphy_dev->cport_desc->id),
> +	connection = gb_connection_create(gbphy_dev->bundle, le16_to_cpu
> +					 (gbphy_dev->cport_desc->id),

This is not a good way to make the change.  Put le16_to_cpu in front of
its argument list and move the indentation back to some multiple of tabs
if needed.

julia


>  					  gb_uart_request_handler);
>  	if (IS_ERR(connection)) {
>  		retval = PTR_ERR(connection);
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/7fe735d1e4a5d0497711c8a34c95184dfc3c9930.1541427415.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

