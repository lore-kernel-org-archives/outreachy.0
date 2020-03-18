X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:90a:25c8:: with SMTP id k66mr5156290pje.90.1584544769732;
        Wed, 18 Mar 2020 08:19:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ff15:: with SMTP id f21ls13918652plj.0.gmail; Wed,
 18 Mar 2020 08:19:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuVfS/iIzbgK+UD9X9ERp2B9jFKe09ZuTPoynFIUuQ6OCtX+x1cLcZlphXYznQUasEsvto9
X-Received: by 2002:a17:902:bd89:: with SMTP id q9mr4527646pls.236.1584544768292;
        Wed, 18 Mar 2020 08:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584544768; cv=none;
        d=google.com; s=arc-20160816;
        b=dWdxL4PoeoRt0CAlb5C+hqk6gqwFUprC7jTooaLdBNiJU8mPP+hW0r0tl2MHaacx+9
         4pbnE4EptqVcKcpMIEby8MC42BfYvdJqOzw3k1JLHome1uN5vFVgofTBwelzTPWNreM5
         XyLFAzzAZb0Y1Cj3t7/lkm50B2UMeKKq2OK5fJX2rA6cgzX/ty/jM/sjssO3JVcBmJ6d
         dNuofDviwsOHI/h80JZK6xgctAZ2pWgGZJB058WHQZ5LW9nXhdvNqk5wTFQdDEnn85Uh
         l3AjT5eUgCNfMEq8an6NDLXNWdcKZLHuLXQp4ab3ixnfCIuIuOxGRlHjRRzTrOL397W8
         /Ocw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MGXWr5nkEn4FRkRgvOst+a0HwmxSRb80bdHPdkX2wsI=;
        b=MRjgNsRUAGijY3X/4H1hYNJLO8sCeh9g2ge+EBx0VHbp9J/3QAyvSv92v8Dpp5bjG1
         L4doWFJ2SmAImu+p8XYciKNRi0c/anIfqGaSPxpJ4EmPQ1xnHPa6u55Ek8f+sJ3xMigS
         usuvP7RsiYP4Tbl1jhhidNdK8lFyHLyQgWV0sFFFwZVUSqYTugNeX8AXcts+3iQtIwxF
         UfoOB+aOKQkxvtNa0QU6Lx/YyUe+/klAkiKvJt/cCFaZjSn6eL1BG/AYs5Cwr4eyf1ie
         nQOQ9rgtlg5ZqctoIAiTYBLbVFGpLjbGkqmRvRG80gn+C/Cgmz3LeL33Kgrtu/9F6r1j
         59Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="DM/UFrVy";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q66si439521pfq.3.2020.03.18.08.19.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 08:19:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="DM/UFrVy";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B3D2320757;
	Wed, 18 Mar 2020 15:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584544768;
	bh=O3sFf4pylIltl1MSb6cyEp6cT9cnjfUiA8TDrdSTS5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DM/UFrVygjTBJBMWDPpMMgTzLnEXUrTUN0T7Yvhv9Yh27+wOP/7PKaTugtsbLmabQ
	 b2gpva4FDOSoZ1V1s9vQdy5aM98iCNtfQnYemBC98DnJh0JId4UPG7OzD8UQ9pIu/g
	 Jpklxdn+LABdS8Qhfv9dP8trklj6bvxK9NHfrmLk=
Date: Wed, 18 Mar 2020 16:19:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Deepak R Varma <mh12gx2825@gmail.com>,
	outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, Michael.Hennerich@analog.com,
	stefan.popa@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [PATCH 2/2] staging: iio: adc: ad7280a: Add spaces around
 operators
Message-ID: <20200318151924.GB2862853@kroah.com>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <6703668c512dd665a2299a1f5bf14d99262314f8.1584505215.git.mh12gx2825@gmail.com>
 <20200318060038.GB1594471@kroah.com>
 <35afdc4b-bd59-7851-aa4f-3d8807668931@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <35afdc4b-bd59-7851-aa4f-3d8807668931@metafoo.de>

On Wed, Mar 18, 2020 at 04:12:28PM +0100, Lars-Peter Clausen wrote:
> On 3/18/20 7:00 AM, Greg KH wrote:
> > On Wed, Mar 18, 2020 at 09:58:13AM +0530, Deepak R Varma wrote:
> > > Add spaces around operator symbols to improve readability. Warning
> > > flagged by checkpatch script.
> > > 
> > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > ---
> > >   drivers/staging/iio/adc/ad7280a.c | 4 ++--
> > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > > index 19a5f244dcae..34ca0d09db85 100644
> > > --- a/drivers/staging/iio/adc/ad7280a.c
> > > +++ b/drivers/staging/iio/adc/ad7280a.c
> > > @@ -825,14 +825,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
> > >   }
> > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> > > -			     in_voltage-voltage_thresh_low_value,
> > > +			     in_voltage - voltage_thresh_low_value,
> > >   			     0644,
> > >   			     ad7280_read_channel_config,
> > >   			     ad7280_write_channel_config,
> > >   			     AD7280A_CELL_UNDERVOLTAGE);
> > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> > > -			     in_voltage-voltage_thresh_high_value,
> > > +			     in_voltage - voltage_thresh_high_value,
> > >   			     0644,
> > >   			     ad7280_read_channel_config,
> > >   			     ad7280_write_channel_config,
> > 
> > Did you try building this code?
> > 
> > It catches everyone...
> 
> The problem is it builds. The token is stringyfied and
> "in_voltage - voltage_thresh_high_value" is a valid string.

Ah, I thought it used to break the build when it happened.  Oh well,
it's still a great "trick" to see if people understand C or not :)

thanks,

greg k-h

