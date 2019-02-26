X-GM-THRID: 6661088091510407168
X-Received: by 2002:a62:ae16:: with SMTP id q22mr8238570pff.147.1551177959374;
        Tue, 26 Feb 2019 02:45:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2c81:: with SMTP id s123ls3297460pgs.6.gmail; Tue, 26
 Feb 2019 02:45:58 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibgt5h+ReYy1ZmO1sSSuQelmZ0p9q1I3XayMkMCz0nqrw6BuiLA7dNYb08bQvcrztY/4XLO
X-Received: by 2002:a62:148e:: with SMTP id 136mr8116850pfu.70.1551177958610;
        Tue, 26 Feb 2019 02:45:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551177958; cv=none;
        d=google.com; s=arc-20160816;
        b=GH+1AnFgD674KIENDjeUESO9RVI5hxswFV3qeTd8uncquGgkFeWeLRM9s6pVUvbF4Z
         0WOyYDkEWSzhMEP/TX63l2X3FxTHB2UnowkqNLYy8/KyAMccGvneIm9II+JRpxSsTejR
         IB7pnOD2OTEmMmgrs77/g9FSCs/eHO6jGOVw8SOd8MX98xwBa87Bjudenwn4U94ehJUR
         yQX8SKHXU5mvxEKdCSaWJDBLrdahwBMT/kV1arqaYGn+BTEuL1oaIgr5aA9SmOuymXkb
         spnCOb89lUstOLFRcq7RZ0AaqDohTxT83TMrt51IFBm8dyWc09yR3jyAClJFOSDQBZLz
         CwpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lVi31G9nxVAkQNbYkKlfrTjncH+p9YhcRd5/HPNp1c8=;
        b=kdzXJqf46pNb2S7kcpqf4OfHhY3ClkcTRsrrVBuNufDF1Fzj/0fAy9dpqS0s5VTimb
         7SbM6LpOA5NqixTo0Nwq+smu6uE+t8OoFaNUKQF+3XFYp7dlMTvW+UcLxJqrkMUr7kW3
         QRpL1bYvSMrFgmieEP+Bn9T20HSKKcjLInBDmE8Ruhdyk2Etmo9QJctSTfjhjJ36ZW4Z
         zUmjc5jK10B4+4IpfZWI1WkQZq6wWK3yUcfw00QfJJXv9/kmA4SdYRGu16je/dYqi8HB
         RLTGKsp25vo8RQJuaqSilRIkR6tKDfzXBlOImw6ZqQQZadcPqsceM3me8qEwdPZHTDcR
         QJYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rCjLn7Ez;
       spf=pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q140si618866pgq.2.2019.02.26.02.45.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 02:45:58 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rCjLn7Ez;
       spf=pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DB0FB2173C;
	Tue, 26 Feb 2019 10:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551177958;
	bh=T75Mq7eVGBtNsQ2JkG/8vGyxPTW1xlVlnjkpJNe3vPQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rCjLn7EzWAzaqlWEoqvUoF4VQNPPftwcOVssmvEKD2v3Bn7PxOrqifzhJmObSPc/p
	 cQn2L7lLNEbOXmRYo2kFp4aVu9H2PSopbQ2P3ITT4jzpLNGXzDFf9Umfm6Qjt+9nng
	 7KEA95pIioeF8x0zlWy1JcnJ9ZvTU/mf+z226Yf0=
Date: Tue, 26 Feb 2019 11:45:55 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder clear <elder@kernel.org>
Subject: Re: [PATCH v3 3/4] Staging: greybus: Use a blank line after
 declarations
Message-ID: <20190226104555.GB20834@kroah.com>
References: <20190225153546.10484-1-bhanusreemahesh@gmail.com>
 <20190225153546.10484-4-bhanusreemahesh@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190225153546.10484-4-bhanusreemahesh@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Feb 25, 2019 at 09:05:45PM +0530, Bhanusree Pola wrote:
> Clean checkpatch.pl issue:
> CHECK: Please use a blank line after function/struct/union/enum declarations
> Insert blank line after declarations in bundle.h and control.h files.
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/greybus/bundle.h  | 1 +
>  drivers/staging/greybus/control.h | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
> index 8734d2055657..4aaf7a0880fd 100644
> --- a/drivers/staging/greybus/bundle.h
> +++ b/drivers/staging/greybus/bundle.h
> @@ -31,6 +31,7 @@ struct gb_bundle {
>  
>  	struct list_head	links;	/* interface->bundles */
>  };
> +
>  #define to_gb_bundle(d) container_of(d, struct gb_bundle, dev)

This is one place where the coding "guidelines" don't make sense.  We do
a lot of #define with container_of right after a structure to make it
obvious that this is to be used with that structure.  It's a common
pattern in the kernel, so this is fine as-is.

thanks,

greg k-h

