X-GM-THRID: 6806472827203485696
X-Received: by 2002:a6b:3112:: with SMTP id j18mr11025802ioa.127.1584773623292;
        Fri, 20 Mar 2020 23:53:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:c9d1:: with SMTP id k17ls2077146ilq.9.gmail; Fri, 20 Mar
 2020 23:53:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtYEBes5Fj0GZbdWKzmM+AK0a/SYhcYbnmkeLDn/bta2sADGdHLCewZ+sY3B9UTUDsownc6
X-Received: by 2002:a92:b704:: with SMTP id k4mr11640083ili.31.1584773622204;
        Fri, 20 Mar 2020 23:53:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584773622; cv=none;
        d=google.com; s=arc-20160816;
        b=vZGfislaJjcGIQ7prDnu26y2ZD9cc1A5OaG8ePosQQ118KuPNZTiqi+6M52qFJdnt/
         nt0uMIaFbQdblxOQxfgvH+tqPM1chADxwzIHDkH2TanKgx5G6muwEzh++aLYBzwjokSm
         UIciHXs5+9GzYI8Q1F8fWC7wFFmRXgYYOLEyxAQwbUI6PErHNiaPzd/UEaP6HdK/ngvO
         4qnw00mph666gL+AcoeHx6FTND8bx6yeKZimE4HgmmbjXPLGDqL6f9fohWjzp7GCvypF
         Pl3qS/WHAaNElnRgHVTcknJQmwJK/BX58hxDoqltmimPkHNWUHAJiSAAF8PTKlkSlkNG
         bTiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jMbV6gmLtjAI9WG2ybfmxHb5mS8rJddOS0xKHV1JpD8=;
        b=ESn11JDih5GplLSuO5MpSV9+I0h8JC0hK4N6zNzfZcJTB3Uj3ZpUwIzkx+U2DlDrHb
         zIqyF84d7gUDynYl8s+UYDTIGnTEtnoJaShSyX7f4FvO0tbYPuxt8m4WSRYqCffOTPkV
         FfKkoH0Uz7J5baZFBVsNJnK6RvRTdoVVfzEC0IwBgVtpAGgiHsJpEfKOBqOJaxEcyTvI
         ZCpIimKxbqzXukHRVRg++xhWnnveGc3JSM5dLXOhMhe6yASNmfuPHMWOiiOcKoDxvcbq
         Tb1MBBh6k9QMRv3xQqL3gqTLps5+u6Sc+8X8629sGSQbXWajB6iCLOOhFX0/Pvc79xxj
         cMeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u4eTm0IF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s201si526106ilc.0.2020.03.20.23.53.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 23:53:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u4eTm0IF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0A4B5206F9;
	Sat, 21 Mar 2020 06:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584773621;
	bh=X+voXQ7Ddf3Ir0eAbdVgymJD+KXE9LhpJs7o4spepSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u4eTm0IFK8Stn5LFWkBbugUaYJhLSXV0SO2aGz4Jtn/x7Cap7J926HxcNDP+f6eDX
	 18l3E+N0lTTc/HTRruXsxZj/7BXISK3R/3a/SdcRC9KSKRvXVjG9Jl7BDVlTRy212a
	 TPf5jVJE+9y9NItzOpILJrWRmZ6APKdStwT+Tr1U=
Date: Sat, 21 Mar 2020 07:53:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: quoted string split
 across lines
Message-ID: <20200321065339.GB849159@kroah.com>
References: <20200321015044.GA18620@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200321015044.GA18620@siyah2>

On Sat, Mar 21, 2020 at 04:50:44AM +0300, Gokce Kuler wrote:
> Quoted string merge to upper line
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 551cd52..6487b3a 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -2931,8 +2931,7 @@ static struct pci_driver hp100_pci_driver = {
>   */
>  
>  MODULE_LICENSE("GPL");
> -MODULE_AUTHOR("Jaroslav Kysela <perex@perex.cz>, "
> -              "Siegfried \"Frieder\" Loeffler (dg1sek) <floeff@mathematik.uni-stuttgart.de>");
> +MODULE_AUTHOR("Jaroslav Kysela <perex@perex.cz>,Siegfried \"Frieder\" Loeffler (dg1sek) <floeff@mathematik.uni-stuttgart.de>");

The string is not identical to the original one, please fix that up and
resubmit.

thanks,

greg k-h

