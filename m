X-GM-THRID: 6805399652543758336
X-Received: by 2002:a62:e505:: with SMTP id n5mr5313012pff.189.1584548882899;
        Wed, 18 Mar 2020 09:28:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b203:: with SMTP id t3ls6282015plr.1.gmail; Wed, 18
 Mar 2020 09:28:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuFAEYylujhMXVcC3KD48aVein833PsbjO611MzKZ9mUyZGRojo/DktzOY3ufJRQg7eI5rs
X-Received: by 2002:a17:902:26a:: with SMTP id 97mr4848828plc.82.1584548880831;
        Wed, 18 Mar 2020 09:28:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584548880; cv=none;
        d=google.com; s=arc-20160816;
        b=hZ4c7zMeX00DnVL5FJVMvnH1EAbirEyJrZeuJDZfcKK5tfzfkoevl+OGnqnu27u4W0
         INl6uglOlCrj2cSN14jFB9KOpgE0Lh9BB4YcdgdvIwp4tStiATFBv8rKjJYm637ZR582
         8AdXEVLeTJsPyuNKSmAn9d173ptdk33ITeW3AONFwOTKOJ4hdCB8NYgTGiS7dtwWfvf6
         3+9Q2SpOTM87cNopZWFDtW1us0yGhe2/w3D9MlYOiKoLDoqU575Fc9H+W6rCMd92Lbfj
         xD8n8cOTyViuq5mK/q6+qjLZKXJkVcXZy7geWP5r8GbEYh3HSFwsLBVOtnsQs6fz/4/6
         2smQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Vy/zH5CdZ6mgyP3Vva5rDYmvdNqXnmMQt5aUNrCNVUc=;
        b=Zn7kf9w8f6TFF13z3crQ4bcsMlQEEdGcpe/Kcd3Bu9PSnC/EjFwMO5Lu19vsfSqCli
         NTF27yxRLoZGVv4Vp9xC+5gZyzoKhUOAGdVYHsnQCJQrDGViUoePccTvmVIyapGekAME
         UEI8dIpvWbeqxbPwU53ZSTYQKdXCysIzTdvX85n1xSKJnlLoPzWw58RTBRd92YN7EhRO
         Qc7msssC9v0kTJIbOKc6n0g9pzMF3+ZgMnvayDiGBL7SzcY9cTx0ZFOGECAsWNZWeRGA
         I9g3SRm6PHoe+AlAsklFqM/UgKw++Q5vZiTyBV+f6DX4OXDq0qMOs5jZmMgbiytw00wQ
         RVxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="V6EkM5/2";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z7si417215pgz.5.2020.03.18.09.28.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 09:28:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="V6EkM5/2";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1AB1C20719;
	Wed, 18 Mar 2020 16:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584548880;
	bh=A4pAQHEnzpCqsGofcsEs2JfZ9ZWLM+NIgxhwFkDy/1Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V6EkM5/2mn5R3E/Hf8itbABuu0HcYn3fVkU1rkIUMsLYgD67E252oXWc59ubUKFkc
	 pLCkubPz8XHrgKpmUKYRtLY1iZbczcfvVCzmEAt1l/OWSQLHSpqnM3X2bV3UbhAWB7
	 OkF7s7UosAeJ7wmLCq4/wRBvxxjxPROjH7jBmAzg=
Date: Wed, 18 Mar 2020 17:27:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: DEEPAK VARMA <mh12gx2825@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, outreachy-kernel@googlegroups.com,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [PATCH 2/2] staging: iio: adc: ad7280a: Add spaces around
 operators
Message-ID: <20200318162756.GA2901947@kroah.com>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <6703668c512dd665a2299a1f5bf14d99262314f8.1584505215.git.mh12gx2825@gmail.com>
 <20200318060038.GB1594471@kroah.com>
 <35afdc4b-bd59-7851-aa4f-3d8807668931@metafoo.de>
 <20200318151924.GB2862853@kroah.com>
 <20200318162353.GA23226@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200318162353.GA23226@deeUbuntu>

On Wed, Mar 18, 2020 at 09:53:55PM +0530, DEEPAK VARMA wrote:
> On Wed, Mar 18, 2020 at 04:19:24PM +0100, Greg KH wrote:
> > On Wed, Mar 18, 2020 at 04:12:28PM +0100, Lars-Peter Clausen wrote:
> > > On 3/18/20 7:00 AM, Greg KH wrote:
> > > > On Wed, Mar 18, 2020 at 09:58:13AM +0530, Deepak R Varma wrote:
> > > > > Add spaces around operator symbols to improve readability. Warning
> > > > > flagged by checkpatch script.
> > > > > 
> > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > ---
> > > > >   drivers/staging/iio/adc/ad7280a.c | 4 ++--
> > > > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > > > > index 19a5f244dcae..34ca0d09db85 100644
> > > > > --- a/drivers/staging/iio/adc/ad7280a.c
> > > > > +++ b/drivers/staging/iio/adc/ad7280a.c
> > > > > @@ -825,14 +825,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
> > > > >   }
> > > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> > > > > -			     in_voltage-voltage_thresh_low_value,
> > > > > +			     in_voltage - voltage_thresh_low_value,
> > > > >   			     0644,
> > > > >   			     ad7280_read_channel_config,
> > > > >   			     ad7280_write_channel_config,
> > > > >   			     AD7280A_CELL_UNDERVOLTAGE);
> > > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> > > > > -			     in_voltage-voltage_thresh_high_value,
> > > > > +			     in_voltage - voltage_thresh_high_value,
> > > > >   			     0644,
> > > > >   			     ad7280_read_channel_config,
> > > > >   			     ad7280_write_channel_config,
> > > > 
> > > > Did you try building this code?
> > > > 
> > > > It catches everyone...
> > > 
> > > The problem is it builds. The token is stringyfied and
> > > "in_voltage - voltage_thresh_high_value" is a valid string.
> > 
> > Ah, I thought it used to break the build when it happened.  Oh well,
> > it's still a great "trick" to see if people understand C or not :)
> > 
> Yes, it did build. I am sorry but I am not following you fully. Can you
> please let me know if the change I introduced is not good. You may
> please direct me to a document where I can read more about it.

That field is a string, not variables that are being subtracted.

thanks,

greg k-h

