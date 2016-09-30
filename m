X-GM-THRID: 6336076827441758208
X-Received: by 10.129.124.196 with SMTP id x187mr100899ywc.51.1475232845490;
        Fri, 30 Sep 2016 03:54:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.202 with SMTP id z68ls590668ota.47.gmail; Fri, 30 Sep
 2016 03:54:05 -0700 (PDT)
X-Received: by 10.237.59.118 with SMTP id q51mr298815qte.64.1475232845093;
        Fri, 30 Sep 2016 03:54:05 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id f12si4431795pfk.0.2016.09.30.03.54.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 03:54:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id u78so13910525pfa.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 03:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Wuij2avjSh3r7MYK4FB1xa25IVFtXO+BpcnI3n/5IX8=;
        b=vlkBEFkOSpBa9jn1UymCJHtmJc2uVvmKHk7Xt55vGEOJMZ6UDOUnhg4O0RWfv11CSA
         w+rwxCZc+cK+RMLOk/TDsvB+WhoTTbrMLr5Zwn+22C2JopFKB2bsKWYIie/YrrO3VIke
         GZ9h5nzhL4OD8dajDQB+sfLgLSo1LvEfaYKX6OpRKqxQaYeeyOELie6PYMU0qNQoCh6C
         cX5eAjQQaYqT8CSEM0BoXU+GoN3wOYX1XpMdOCqwAElNRU97L+ZYdIIjLlkoNX1LCLsZ
         i4Dy7Ftve8j4Y9IaJeeBJfp8l+8eMU2uwzTTwhJ5GVQFdGpx38EAoj5HximBG95zY/oW
         rSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=Wuij2avjSh3r7MYK4FB1xa25IVFtXO+BpcnI3n/5IX8=;
        b=EGkIQ4LfmE9zxCzk5KtLEGN1C2YA5I2qkrHJUiIIVqXZ+3tFhwTetbmpppTPd8TRN2
         KA096lQ1nlnp5HW1wyv7hnDKjHxb/a168hjmRbdJlfL2Eclgl3ATDgH6mkDfQmzSNrJ9
         8TSND4snoHKnXS/nAvP6gL4oNykQEvJ6bHzGP7wWjFTI0E2mnN89FnRNWifvytg+DPW4
         4Gb4eEYPKOD+zgpLhUOO/Yis9nGqE1o6GIapvTguPF0mHhgpNcLvjWo/ooUcYW8YuMC3
         lcHHZCz+50WtGp6SwZqQCNR4ew+C7ihSbhxM0ZGtGCudQ78hEbeiUZo/axYNeajvg1/m
         m+Wg==
X-Gm-Message-State: AA6/9RlYHY6y26Pm/2EyPUyAFT0c/kXfQRDFa6mxsSpJhfHmpyAGI2Hs/FcAi4L9SWFivw==
X-Received: by 10.98.207.130 with SMTP id b124mr10526907pfg.113.1475232844541;
        Fri, 30 Sep 2016 03:54:04 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.26])
        by smtp.gmail.com with ESMTPSA id 19sm26953937pfk.58.2016.09.30.03.54.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 30 Sep 2016 03:54:03 -0700 (PDT)
Date: Fri, 30 Sep 2016 18:53:56 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: Daniel Baluta <daniel.baluta@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: ad7192 small task 1
Message-ID: <20160930105354.GB3206@Socrates-DK>
Mail-Followup-To: Alison Schofield <amsfield22@gmail.com>,
	Daniel Baluta <daniel.baluta@gmail.com>,
	outreachy-kernel@googlegroups.com
References: <20160929155112.GA7009@Socrates-DK>
 <006091a2-210b-4e20-9632-197ce7894d64@gmail.com>
 <CAM=phmjgezWqnb-65qU6+m=ymp98jp_nHFvD0qC8wwLmeEy6Bw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAM=phmjgezWqnb-65qU6+m=ymp98jp_nHFvD0qC8wwLmeEy6Bw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 29, 2016 at 10:36:50PM -0700, Alison Schofield wrote:
> Ok...well I'll reply back via non-mutt also ;) I didn't get to look at it
> today. I'll try tomorrow.
> 
> I don't mind previewing it, but you are also welcome to post it, as Sandhya
> did today. You would write your outstanding questions below the ---
> 
> Alison

OK. Submitted it to maintainers separately and cc'ing the outreachy mailing
list on this thread so that the other applicants can benefit from the answers.

Recap:
> > Datasheet (if needed):
> > http://www.analog.com/media/en/technical-documentation/
> > data-sheets/AD7192.pdf
> >
> > Questions:
> > * How do I know the proper IIO_VAL_INT* to return? _raw_fmt may have
> > something
> > to do but it's fuzzy to me.
> >
> > * How do I know which val (between val and val2) to manipulate in the
> > read/write
> > hooks? I understand this has something to do with the precision of data
> > and from what I see it's mostly val.

Thanks,
Eva

