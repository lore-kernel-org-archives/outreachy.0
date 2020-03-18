X-GM-THRID: 6805399652543758336
X-Received: by 2002:a63:fc52:: with SMTP id r18mr4932506pgk.96.1584544723552;
        Wed, 18 Mar 2020 08:18:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:150:: with SMTP id 77ls13127458pgb.0.gmail; Wed, 18 Mar
 2020 08:18:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vshGEdhT+J0ZBrJ+w7GcFk5A4FfX7ECltPR4tgmhGwlshCQBsaia7UvWa+Mz0sccN4d/MOA
X-Received: by 2002:a62:3888:: with SMTP id f130mr4702563pfa.141.1584544721929;
        Wed, 18 Mar 2020 08:18:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584544721; cv=none;
        d=google.com; s=arc-20160816;
        b=Cuedv2RrrrLqlhN+7j2+DNNrwXDDuSQlcW4dcn++9hCQb++9fDRCxqc+WpVC2guYZP
         VNfcir2kJ44+2GL0x1KOVCsrK9l9uQAiBHLA9m3+YvHx5wzsy1OXwprWdHafnpnUhgh2
         UbsHrFgDDbyUzXQLi6iFhFTFFrZfsuuJaxPVDk1QPBPzyRyMrkFoMZ8lKQmYovBEGaP/
         5FPR84Go7uwuWlqUW3ze3zjmC36zMV6J3TZdClTqUk8a3h8/o+DIm/ocAVO+3pM10eTN
         3t/p9pQeCK8059qdbV3xbnV68QcPgph/ccuv61Qs6zNVWN8p60INKGHQq1sn8F9dtEPp
         jBvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0JyljRdiFJWpnUunqcsUJ7qa0jaNLsCU3QGf/F0TO2w=;
        b=E9KdkyWVVb59JFThar7Vj5uYYDFL0FCvICoZyP4APDVabkk/CipSVotaz7gUHVNQxF
         OWlnjvVVuZZulq8G5Qug83WVl57V2Ah2AeQ8KFvX1vRXQ8+Rjn/XF96EnqpvJI6n1PiM
         CIus1pEKdhI6uCcTanjE5QrdJoJGuu8c0fJc5oAUSd3JGpKHr710J4LZA7OInkkanDfn
         v9XM6jYXAYlcYxhLlKD/7TdZyWBELb5sjBmjRlODDYOGsMjqgrxJLt+Y3e27XzjHxlfo
         anA7Vt0cH/PXOwH96lUBODuYrQMw00Sqd+ihrxDjOoU1+zvS3DhAdseFPswDmJEFeJX3
         rGag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AwWNdmn5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a141si293294pfd.5.2020.03.18.08.18.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 08:18:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AwWNdmn5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1D05820770;
	Wed, 18 Mar 2020 15:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584544721;
	bh=F859fJ/sB++ZOHd4fXzaKvxObov5lRC7ze365VuxEY8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AwWNdmn5mmGh0ZvImbWDnv3Hkh70cweWqZaVOkg+dslhUTa55JL2rf0tQORnhleYi
	 qz2izubutup4j2ksBypOptievKIVcVxFa20LtuCZDMOLGKMCpeJDtIt1JKOL8z74DY
	 SN9yMlbXqTw9YtaLn87CzubEts5qdi7XUuzQLvcM=
Date: Wed, 18 Mar 2020 16:18:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: DEEPAK VARMA <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, stefan.popa@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH 1/2] staging: iio: adc: ad7192: Reformat lines crossing
 80 columns
Message-ID: <20200318151839.GA2862853@kroah.com>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>
 <20200318060004.GA1594471@kroah.com>
 <20200318151244.GB22841@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200318151244.GB22841@deeUbuntu>

On Wed, Mar 18, 2020 at 08:42:45PM +0530, DEEPAK VARMA wrote:
> On Wed, Mar 18, 2020 at 07:00:04AM +0100, Greg KH wrote:
> > On Wed, Mar 18, 2020 at 09:56:59AM +0530, Deepak R Varma wrote:
> > > Macro arguments are computed at the time of macro invocation. This makes
> > > the lines cross 80 column width. Add variables to perform the
> > > calculations before hand and use these new variable in the macro calls
> > > instead.
> > > 
> > > Also re-indent enum members to address checkpatch warning / check messages.
> > 
> > When you say "also" in a changelog description, that's a huge hint the
> > patch needs to be broken up.
> > 
> > And that is what needs to happen here.
> > 
> > > 
> > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > ---
> > >  drivers/staging/iio/adc/ad7192.c | 15 ++++++++-------
> > >  1 file changed, 8 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> > > index bf3e2a9cc07f..0265f6607d75 100644
> > > --- a/drivers/staging/iio/adc/ad7192.c
> > > +++ b/drivers/staging/iio/adc/ad7192.c
> > > @@ -156,8 +156,8 @@
> > >   */
> > >  
> > >  enum {
> > > -   AD7192_SYSCALIB_ZERO_SCALE,
> > > -   AD7192_SYSCALIB_FULL_SCALE,
> > > +	AD7192_SYSCALIB_ZERO_SCALE,
> > > +	AD7192_SYSCALIB_FULL_SCALE,
> > 
> > Because this has nothing to do with the subject, please make it a
> > separate patch.
> > 
> 
> Okay. Got your point. I was thinking since this is a clean up patch I can include both
> the changes for the same file in a single patch. No problem; I will
> correct and send in a v2.

From my patch bot which would have normally triggered on this patch had
it not been part of the outrechy project:


- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.



