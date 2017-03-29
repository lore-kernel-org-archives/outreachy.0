X-GM-THRID: 6402923058008424448
X-Received: by 10.157.15.39 with SMTP id 36mr401000ott.62.1490803206141;
        Wed, 29 Mar 2017 09:00:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.32 with SMTP id m32ls5737249iod.52.gmail; Wed, 29 Mar
 2017 09:00:05 -0700 (PDT)
X-Received: by 10.36.70.78 with SMTP id j75mr383973itb.34.1490803205085;
        Wed, 29 Mar 2017 09:00:05 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si1213738pfb.7.2017.03.29.09.00.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 09:00:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so3213666pgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 09:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=M41x8sUKmB0imGixxvICC4DicRx1fBB3BGdHm1nPce4=;
        b=Qs+lv5VYyNd95wwxo/69SLz9CSwT2zsP6HhUbIdSmouy8UTukZJn6vbliwoeVsW4g+
         eG+VCoTFD+h72bK6lVpRfrTaeM35YF/Hq5y3jX7gvfwDKAdF9uUPDrDXuYI5In0hCqUC
         XegAHKCiKOq32YAtpgnd/RzuYMuZYHHs/u1wJa8BOpuqhZ9Td4ckAZIVebDrx/JbAvsT
         qANHj/RGBfwVGVDB+TjoPjQCvp937+y27O1ah2EDOtCxVd2QPAYRdrhnsY1ZEzbfRLMG
         c5kA+duN/0oLb7DuqZf7UT3iDM+hfTQcLCFpDtU7hcPLDdv3QwCAb6uePWRZ9jFKX5kW
         wdfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=M41x8sUKmB0imGixxvICC4DicRx1fBB3BGdHm1nPce4=;
        b=KApspDHcvTRfTe6QbiNqGmvS2v0wb1i0YjOHXECmOkQ7lBvrMVFkHKAEOA3onv59kE
         WLrqYGn3uRETX332KAn0S6ksgg264fKFWk/FVNmJk3ey3vkzeM3mw6EQZ7mt9IV9UY/4
         MqzEQKqzxrK99aQ0FherHTpRG81doCEPRLr39X55nZO3EB+Dr8DANimLnxxQeExghXyn
         eYPuB2vOCBF0huXN7Ju1wdXm9DjlsmlF/yd84J0FEr484LuHtRv5huK2g/8gjYBkDLe7
         oK76p532KZAiDneOh48kF4C3GUTr9GoXl+fSqcUMU2XLgfLHLWY0hE6fhbScr9Ve8DG2
         ZuOw==
X-Gm-Message-State: AFeK/H2irYKHAr5XOabZj3l1qIYk0Vt082ao2qwGYfzCz649xeDic9AKswUAYCO+EuHRXw==
X-Received: by 10.84.202.163 with SMTP id x32mr1381125pld.67.1490803204736;
        Wed, 29 Mar 2017 09:00:04 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id s21sm14354517pgg.65.2017.03.29.09.00.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 09:00:04 -0700 (PDT)
Date: Wed, 29 Mar 2017 09:00:03 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: jic23@kernel.org, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] iio: accel: bma180: Set up buffer
 timestamps for non-zero values
Message-ID: <20170329160002.GA21819@d830.WORKGROUP>
References: <20170329141131.GA23646@singhal-Inspiron-5558>
 <20170329151658.GB20663@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170329151658.GB20663@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 29, 2017 at 08:16:58AM -0700, Alison Schofield wrote:
> On Wed, Mar 29, 2017 at 07:41:31PM +0530, simran singhal wrote:
> > Use the iio_pollfunc_store_time parameter during triggered buffer set-up
> > to get valid timestamps.
> > 
> > Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> 
> Hi Simran,
> I guess you knew I'd recognize this one ;)
> 
> My first thought were - "Wow that was a short and sweet description!
> Is that all I said when I made similar patches?"  So, I went back
> in history and sure enough - that is all I said in the changelog.
> 
> But I knew I had thought more about it than that changelog showed.
> So, I went back to the mailing list and found the patchset cover
> sheet where I had placed the greater explanation and options.
> 
> Note to myself: don't bury too much stuff in cover letters!
> 
> Note to you: Defects do repeat themselves so your method of hunting
> is fine.  If you haven't done it already, add the step where you go
> find the mailing list discussion of the patch.  That can be helpful.
> 
> Here's a link to the patchset on linux-iio:
> http://marc.info/?l=linux-iio&m=146825066822274&w=2
> 
> The piece of interest is:
> Alternative change would be to use iio_get_time_ns() directly in the
> push_to_buffers call in the handler.  We can do this if you are not
> one of those "devices (who) need a timestamp grabbed as soon as possible
> after the trigger" (from iio_poll_func definition)

Looked at driver.  It's already doing the above mentioned call
to iio_get_time_ns() in the trigger handler.  So, it seems this
change is not needed.

alisons

> 
> This is all just FYI for you now.
> 
> Leave the patch for the reviewers to comment.
> 
> Thanks,
> alisons
> 
> > ---
> >  drivers/iio/accel/bma180.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/iio/accel/bma180.c b/drivers/iio/accel/bma180.c
> > index efc6773..4ae5c80 100644
> > --- a/drivers/iio/accel/bma180.c
> > +++ b/drivers/iio/accel/bma180.c
> > @@ -762,7 +762,7 @@ static int bma180_probe(struct i2c_client *client,
> >  			goto err_trigger_free;
> >  	}
> >  
> > -	ret = iio_triggered_buffer_setup(indio_dev, NULL,
> > +	ret = iio_triggered_buffer_setup(indio_dev, iio_pollfunc_store_time,
> >  			bma180_trigger_handler, NULL);
> >  	if (ret < 0) {
> >  		dev_err(&client->dev, "unable to setup iio triggered buffer\n");
> > -- 
> > 2.7.4
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170329141131.GA23646%40singhal-Inspiron-5558.
> > For more options, visit https://groups.google.com/d/optout.

