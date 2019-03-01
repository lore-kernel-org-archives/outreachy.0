X-GM-THRID: 6663286701018841088
X-Received: by 2002:a25:3881:: with SMTP id f123mr1859971yba.19.1551427391855;
        Fri, 01 Mar 2019 00:03:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:4986:: with SMTP id w128ls1235608ywa.7.gmail; Fri, 01
 Mar 2019 00:03:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqxK+T9CN5YVnqtcG/5RJLxYL5Dnm/LpRzFxOuUpWFu2AB85e2I3qxCsBar8V7FeamK+hVhB
X-Received: by 2002:a81:9ac5:: with SMTP id r188mr1604876ywg.3.1551427391408;
        Fri, 01 Mar 2019 00:03:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551427391; cv=none;
        d=google.com; s=arc-20160816;
        b=N+hnxnKfxJFc91OJeeRFxmnxVH2RRBgdI43E1yA7eagtpD5UlMl+Agom0L//wGW97m
         sr8qMp+eIS3h/vxtLi8yaiImyA/wkcyD5cQ2H4Hwt8lVAFUehqAjNJ12fnxJ2QGuXGli
         lNGYtNARjSUU1aY6N1M9RJPnx4ZCSmgWPxDE5oWF3SGzu0jU0VtCYze/B0vwR6nUKU75
         qwpLRALpfAJ32JV/Jz1ozUI9fQR5UUqRTNH5SCPjPBb/lma/WxgcXOjM+pNfMk/wfyKj
         5GIs75gX/Oyk7MOrdmUPSfQBEnAT/FDopB1wQsv5Wtm77PK5gJgpqqkB6CVxYIIsCcuH
         qTrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MjzQPOfqPBID2BKdXNUK5gT6Pvhb+tulZuStPAK5iYc=;
        b=mMji87HFRh0Q4z1ngMPlRDI7HayhmMqrmGj4rZyp5wtPj7a55chZCmxNxAuzZNARMp
         s3hFelEsion8JqPF2od6KcS0y1/G3+1And5Rdq53oyUuFyM/I0vFR15RdSeaF87qE7Fw
         OgY/ynEVqmwszCRMTe07NGFotRBw47KyRiJLzcNfJsuGMV0Um4A8MRhTNgLZQcnR1NHd
         5FQJnTV0fLoYw+Mpgb5hiG5GaMYQ1z4Brw6Qzsy1LvAnB+4NYB7KoUW5wD503PEjLQIY
         G0ANpESgalPo5UhR6A/SzYlTDIOnS7hQJehLnbDgJtmdTTtH1rmcIUrJkGGkp8elXATa
         EsCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jRUTtsto;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j16si939472ywa.2.2019.03.01.00.03.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 00:03:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jRUTtsto;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 114DD2087E;
	Fri,  1 Mar 2019 08:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551427390;
	bh=jm04HugA5sGRtpzHe/tT2NvnZlwVQNXAfZqdE4FFAfA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jRUTtstoR3VN8qeMwJtlm7tpRcvHJMH9aZE+HvJFwOEHaNZ5ayOhTXQsaIXcR5SxX
	 7KTxE0c5WVQsI1sbvOOmG40d6tAeqjN6ybZCZd/Iy2TOVO+dimaoO2HrfOzCPDOFB+
	 +5z82dTjC0Ooz++8GEHG+9v6f8YgQRtFTdBxHXVI=
Date: Fri, 1 Mar 2019 09:03:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/3] staging: rtl8712: rename bSuspended to suspended
Message-ID: <20190301080308.GG13643@kroah.com>
References: <20190301051505.55407-1-himadri18.07@gmail.com>
 <20190301051505.55407-3-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190301051505.55407-3-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 01, 2019 at 10:45:05AM +0530, Himadri Pandya wrote:
> Fix checkpatch.pl warning: Avoid CamelCase by renaming struct variable
> bSuspended to suspended.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/rtl8712/drv_types.h     | 2 +-
>  drivers/staging/rtl8712/usb_intf.c      | 4 ++--
>  drivers/staging/rtl8712/usb_ops_linux.c | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index ac00aa64c7bf..855d22603420 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -147,7 +147,7 @@ struct _adapter {
>  	struct mp_priv  mppriv;
>  	s32	driver_stopped;
>  	s32	surprise_removed;
> -	s32	bSuspended;
> +	s32	suspended;

And here as well, 'bool'.

thanks,

greg k-h

