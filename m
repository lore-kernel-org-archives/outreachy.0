X-GM-THRID: 6663286701018841088
X-Received: by 2002:a6b:f215:: with SMTP id q21mr2081783ioh.25.1551427376552;
        Fri, 01 Mar 2019 00:02:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:41a6:: with SMTP id b38ls2245957itd.2.canary-gmail; Fri,
 01 Mar 2019 00:02:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqzDq0LiFfSh/Qdtb6KbDdP6+YvqcAEm+bLZH90y2g0105PoCu1kY7+4nuRaB1mC4UCPFG9q
X-Received: by 2002:a24:7d8a:: with SMTP id b132mr2364173itc.20.1551427375808;
        Fri, 01 Mar 2019 00:02:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551427375; cv=none;
        d=google.com; s=arc-20160816;
        b=SDC+t1akVV8iBQA805EmOGwqizG6JAozzq5xFJqgokrsF0XRm/CzHKP4Hl2L+4sKB8
         AM2TCpagugzCMrpZJ0QqlufXQQKGUzlm/rW4MuLD3cx0TFOOe8N4fcu14pv3PnKMgRhW
         bfvAbYOOdtYtT10/URv+uPi+OpeXvF2DRwpK5lXTTxziaDN+DYkxqCMqojN+oAzGBkmc
         3qY61109vbV0YT20No7bXZS0LJ6elbSm9ry4Ij5bqZ/bhSGRKF2QiTxwzWiAUqOC2aWF
         f4kl3nQldT6KlgMvhPM6H2yhAVUVbyObPnLS5foqbr2uvh+eYVr71MaOB/jwxfFuDkC+
         8YQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3j5X/uysOnhRbKuQSI8TPQ04UkrLAd7rWNbzZzYaNCk=;
        b=AbhiOHKtk7aGZVksQE8dfBhq41IEvvYmgbbC3lwApjz+n251GjFdMJEqxGWtnaeo65
         ClJ3KK4QgNSybxg3j81xh9BzDzSPIPGsoMb+a+xBFgEglCq362DHIyXmS711xPdrhBrJ
         RDfqUgcn3z0sHGrUFrxqcliO5xkmW8iQMZOE/i7LtsEA8CnWbZeSOvuDS9AajqZZZ/qB
         Sux7wQbX9C1XTry+NJEhLD7EWoYR9NpeBGbBg8i9sb9D2NmOQvsLUzVT3q/sKwUOAmKz
         LxladMQ8DaMtHphENfe/EbHla8NJ2myS7LEUKT1NRSwYfWMaczJOwTI6PCB1WYnd6ptw
         3sWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CeQcD6WZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y7si1132511iof.5.2019.03.01.00.02.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 00:02:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CeQcD6WZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6E1702087E;
	Fri,  1 Mar 2019 08:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551427374;
	bh=HOVWVBBmLVIkmPSLFqJSmMdRqbjXQfdZHSXqat1h6KY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CeQcD6WZ32Gjl6qXXBpWdCcUDwtjb42jiA/xrQSEF1xt8VvLFQx7+4mvIZY/k0AL+
	 zkoIMsRP8/3wkxpZS5ryR+VjLPB6GyB7ZpRtlMS6Nj6C+j1Be/IucLBQ+57zOKF74D
	 x5luiUav1eLYCBUP3NErS83PkmROW6DLx899Uj+Q=
Date: Fri, 1 Mar 2019 09:02:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/3] staging: rtl8712: rename bSurpriseRemoved to
 surprise_removed
Message-ID: <20190301080252.GF13643@kroah.com>
References: <20190301051505.55407-1-himadri18.07@gmail.com>
 <20190301051505.55407-2-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190301051505.55407-2-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 01, 2019 at 10:45:04AM +0530, Himadri Pandya wrote:
> Fix checkpatch.pl warning: Avoid CamelCase by renaming struct variable
> bSurpriseRemoved to surprise_removed.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/rtl8712/drv_types.h       |  2 +-
>  drivers/staging/rtl8712/os_intfs.c        |  2 +-
>  drivers/staging/rtl8712/rtl8712_cmd.c     |  4 ++--
>  drivers/staging/rtl8712/rtl8712_io.c      |  4 ++--
>  drivers/staging/rtl8712/rtl8712_led.c     |  6 +++---
>  drivers/staging/rtl8712/rtl8712_recv.c    | 10 +++++-----
>  drivers/staging/rtl8712/rtl871x_eeprom.c  | 23 +++++++++++------------
>  drivers/staging/rtl8712/rtl871x_mlme.c    |  6 +++---
>  drivers/staging/rtl8712/rtl871x_pwrctrl.c |  4 ++--
>  drivers/staging/rtl8712/usb_intf.c        |  6 +++---
>  drivers/staging/rtl8712/usb_ops_linux.c   | 16 ++++++++--------
>  11 files changed, 41 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index 60c5ed55ab04..ac00aa64c7bf 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -146,7 +146,7 @@ struct _adapter {
>  	struct	led_priv	ledpriv;
>  	struct mp_priv  mppriv;
>  	s32	driver_stopped;
> -	s32	bSurpriseRemoved;
> +	s32	surprise_removed;

Same as before 'bool' please.

thanks,

greg k-h

