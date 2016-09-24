X-GM-THRID: 6333973265710579712
X-Received: by 10.194.172.9 with SMTP id ay9mr649278wjc.2.1474746955460;
        Sat, 24 Sep 2016 12:55:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.18 with SMTP id h18ls1809839ljh.52.gmail; Sat, 24 Sep
 2016 12:55:53 -0700 (PDT)
X-Received: by 10.46.9.131 with SMTP id 125mr663818ljj.14.1474746953754;
        Sat, 24 Sep 2016 12:55:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w79si123124wmw.0.2016.09.24.12.55.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 12:55:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,389,1470693600"; 
   d="scan'208";a="194536239"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Sep 2016 21:55:29 +0200
Date: Sat, 24 Sep 2016 21:55:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Sandhya Bankar <bankarsandhya512@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] drivers: iio: light: Fix sparse
 warnings
In-Reply-To: <20160924185107.GA3190@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.10.1609242153100.3119@hadrien>
References: <20160924185107.GA3190@d830.WORKGROUP>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 24 Sep 2016, Alison Schofield wrote:

> On Sat, Sep 24, 2016 at 04:21:01PM +0100, Jonathan Cameron wrote:
> > On 24/09/16 13:12, Sandhya Bankar wrote:
> > > Fixing below warnings:
> > >
> > > drivers/iio/light/max44000.c:217:18: warning: cast to restricted __be16
> > > drivers/iio/light/max44000.c:217:18: warning: cast to restricted __be16
> > > drivers/iio/light/max44000.c:217:18: warning: cast to restricted __be16
> > > drivers/iio/light/max44000.c:217:18: warning: cast to restricted __be16
> > >
> > > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > This is really just papering over the problem.
> > A better solution would be to introduce a __be16 local variable to do
> > the initial read into.  Then put it in regval via that be16_to_cpu
> > call.
> >
> > Jonathan
>
>
> CC'ing outreachy-kernel@googlegroups.com since this is an Outreachy
> task, and others will benefit from Jonathan's feedback to be sure that
> we type the data correctly when it enters the system.
>
> Sandhya, There are a few other patches from you in linux-iio that didn't
> go to the Outreachy group. Probably not worth bouncing at this point.
> Others can find them in linux-iio.  CC group on all future postings.

Yes, please.  All patches, staging or not, should be sent to the
outreachy-kernel mailing list.

On the other hand, some non-patch small tasks may be better just discussed
with the relevant mentor, to allow others to do the same task.  Ask
mentors what they prefer, if it is not clear.

julia

>
> Outreachy applicant patch creation reminders:
>  - use git log commands to decide on the commit path
>  - commit message says what is changing
>  - changelog says why it is changing
>  - changelog makes a reference to the tool used to find the
>    issue and states the warning addresed.
>
> Goal is not to fix checkpatch, sparse, 'insert-your-favorite-tool' warnings.
> Goal is to correct the valid coding issues that these tools report.
>
> alisons
>
>
>
>
>
> > > ---
> > >  drivers/iio/light/max44000.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/iio/light/max44000.c b/drivers/iio/light/max44000.c
> > > index 6511b20..1ea9af9 100644
> > > --- a/drivers/iio/light/max44000.c
> > > +++ b/drivers/iio/light/max44000.c
> > > @@ -214,7 +214,7 @@ static int max44000_read_alsval(struct max44000_data *data)
> > >  	if (ret < 0)
> > >  		return ret;
> > >
> > > -	regval = be16_to_cpu(regval);
> > > +	be16_to_cpus(&regval);
> > >
> > >  	/*
> > >  	 * Overflow is explained on datasheet page 17.
> > >
> >
> > --
> > To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160924185107.GA3190%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>

