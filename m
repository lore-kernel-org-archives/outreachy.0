X-GM-THRID: 6805399652543758336
X-Received: by 2002:a05:6830:1d7:: with SMTP id r23mr4145621ota.181.1584544373668;
        Wed, 18 Mar 2020 08:12:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ec0a:: with SMTP id k10ls2738237oih.8.gmail; Wed, 18 Mar
 2020 08:12:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtujZoL4+l70AFnp6UtTlNPkj9BpgcBNEuBghr7Snx+8HxNnORtWM90WmnMUBXYEzxJFMBg
X-Received: by 2002:a54:4e13:: with SMTP id a19mr3616297oiy.108.1584544372636;
        Wed, 18 Mar 2020 08:12:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584544372; cv=none;
        d=google.com; s=arc-20160816;
        b=OxdKu1Iyyr4DDWd/fecAUQGDvC5VkGf7rqsTeFvFo/2hSxyYBjVbTKm0hYqQwcNnkr
         A1dGmH8xSEGtUK6am4v82rYMpVInU30zkYGM8puRFaRK8xrRkQwhmBVXmTT6e5Kdwk/z
         bjnLFeVhS/TPYS69fJkaU+kYBYcPbF+xs3AbvhxWN0V9H7afjsxxoN/Feuf/vVr3eDto
         p8EoJnhP+VC0lK0nSUZOs22vyyQzIodN0qZoJWgSkeBVq8QTK7GS+IRn5Eau33JoXY5H
         GZyc/D6dtvmoxBenEe+eEd+mpf/kFW6dreuQnQh7+PcBCnm8qHOkoCblfPcz+jg8sqq2
         Ukog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wF8CFYJRZh0RDbh41QGHox+AieZTHYsKPH2kgQaSb8Q=;
        b=VSfRl8nnwAh6ezdZeNnC62reEaMMT3p1AQRWeHV5B6YJMRbgVDgBSIbxYMQWeVqyW7
         xUYsGLmLBioGd4p8nzXm2q81oNZYU/oeNBJ0n6TggB0H2UAQUc1JIkmMzHaQMvuk/fWW
         MbZLuBhooaj1qan+n8gU11NFZikuS+RkpZAzY7SGFIskTuwr8w4l9+Kp4Eqzw9ImTs9y
         UN8KLGXhzCVwTuAQAAbnyE72UVfW1LESD8PkXhcFsaOxYmqGSMj0DOUq0RZNsHHGmxNb
         fv/LG/L52jXWkR1nue7KAEJ0Qoc9/c7uKouBTFk4/+XF7CtCCgTrCak2Ohv0OmdI4B0o
         O6Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KGChfQgZ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a63si424216oib.4.2020.03.18.08.12.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 08:12:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KGChfQgZ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id mj6so1462427pjb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 08:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wF8CFYJRZh0RDbh41QGHox+AieZTHYsKPH2kgQaSb8Q=;
        b=KGChfQgZNR4RjX+ojB8Znn8PEZ21Gn9PNZxpMBd/BlsB0tpg303AptQ4L/r5g+6fOO
         LGhmRc3Y+UOgg2mC8cXWrTv6noFZ4e8JDpRZh4ojf4fb61p4K4Kc5ICthPzIlF9zVmyr
         1/7xtoI0q7J0VYlTznffnvsIzqbMv/BjC47YRZtKuOiVA0dCtazgxE0PeDTrCMTY+6pJ
         Hvagdl86HPhGDObVZ4NWbqTBn8PxGqIs6orKk1VR0qLXjAdmEDuyz+rPcFg5QBWtU9zv
         5FyDJAEcomR8DYAlX7eyFk/NjETlhyl8a89Y7yNpLS66vFYSUbeoLkdvcTY0ocdm/7Zi
         Fe6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wF8CFYJRZh0RDbh41QGHox+AieZTHYsKPH2kgQaSb8Q=;
        b=OESATc+FiWGvylWvr3XLdxK2QsvBwhFo4XfC9VBaTJzhGIy4vGfGm+HTy1fsrT8b0a
         5LXG1aITadZzcrxDyTjBaMW1IaYRuRr7O1V80dFmHDH6Ei7ns6BNrF5C/r/0efpxCi29
         6d6bkJ7HDfenZKHRfqWlTjm5V3OvcKnx49GxUm+JensKgsDeHic7yNo1jeef0q+kCTqI
         cN8sZewtxsP/HBjaq8a4Kd0cMTp5XtvDvLgq4kITBPSmH+hdHAOudclO6JjHT3RX1ogY
         fjPq8UJ+Afa2lXc3hg7CDjzpY0lOl1Kiiu6ad8oegWt+5EJz5CpprUahn6BoOf5S/gjD
         1ukg==
X-Gm-Message-State: ANhLgQ33ptghEoRjyJnkhIy52F47Qf+MfPYbukbCJdMjEAj2PKdZpNmx
	1KqCLQv3T3KS2OGkvZkthvA=
X-Received: by 2002:a17:90a:7f06:: with SMTP id k6mr5118122pjl.78.1584544371950;
        Wed, 18 Mar 2020 08:12:51 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id b133sm6550212pga.43.2020.03.18.08.12.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 08:12:51 -0700 (PDT)
Date: Wed, 18 Mar 2020 20:42:45 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, stefan.popa@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH 1/2] staging: iio: adc: ad7192: Reformat lines crossing
 80 columns
Message-ID: <20200318151244.GB22841@deeUbuntu>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>
 <20200318060004.GA1594471@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200318060004.GA1594471@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 18, 2020 at 07:00:04AM +0100, Greg KH wrote:
> On Wed, Mar 18, 2020 at 09:56:59AM +0530, Deepak R Varma wrote:
> > Macro arguments are computed at the time of macro invocation. This makes
> > the lines cross 80 column width. Add variables to perform the
> > calculations before hand and use these new variable in the macro calls
> > instead.
> > 
> > Also re-indent enum members to address checkpatch warning / check messages.
> 
> When you say "also" in a changelog description, that's a huge hint the
> patch needs to be broken up.
> 
> And that is what needs to happen here.
> 
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >  drivers/staging/iio/adc/ad7192.c | 15 ++++++++-------
> >  1 file changed, 8 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> > index bf3e2a9cc07f..0265f6607d75 100644
> > --- a/drivers/staging/iio/adc/ad7192.c
> > +++ b/drivers/staging/iio/adc/ad7192.c
> > @@ -156,8 +156,8 @@
> >   */
> >  
> >  enum {
> > -   AD7192_SYSCALIB_ZERO_SCALE,
> > -   AD7192_SYSCALIB_FULL_SCALE,
> > +	AD7192_SYSCALIB_ZERO_SCALE,
> > +	AD7192_SYSCALIB_FULL_SCALE,
> 
> Because this has nothing to do with the subject, please make it a
> separate patch.
> 

Okay. Got your point. I was thinking since this is a clean up patch I can include both
the changes for the same file in a single patch. No problem; I will
correct and send in a v2.

Thank you,
Deepak.


> thanks,
> 
> greg k-h

