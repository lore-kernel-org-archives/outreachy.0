X-GM-THRID: 6206976986922876928
X-Received: by 10.180.10.202 with SMTP id k10mr3347109wib.2.1445175143183;
        Sun, 18 Oct 2015 06:32:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.77.80 with SMTP id a77ls513904lfb.70.gmail; Sun, 18 Oct
 2015 06:32:22 -0700 (PDT)
X-Received: by 10.112.159.4 with SMTP id wy4mr5863437lbb.15.1445175142361;
        Sun, 18 Oct 2015 06:32:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h2si355909wiy.0.2015.10.18.06.32.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 06:32:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,697,1437429600"; 
   d="scan'208";a="183318171"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Oct 2015 15:32:22 +0200
Date: Sun, 18 Oct 2015 15:32:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_osc: Add check
 on a variable
In-Reply-To: <CAKHNQQEJLf1LXOZr7KS=BdC8riOXdjg6jgfDMfV8OK2uXvpJww@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510181529260.2614@hadrien>
References: <20151018132030.GA30680@ubuntu> <alpine.DEB.2.10.1510181523580.2614@hadrien> <CAKHNQQEJLf1LXOZr7KS=BdC8riOXdjg6jgfDMfV8OK2uXvpJww@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 18 Oct 2015, Shivani Bhardwaj wrote:

> On Sun, Oct 18, 2015 at 6:54 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Sun, 18 Oct 2015, Shivani Bhardwaj wrote:
> >
> >> Variable rc is not tested for negative values and hence a check should
> >> be included. Also, a check for variable val should be introduced.
> >>
> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >> ---
> >>  drivers/staging/lustre/lustre/osc/lproc_osc.c | 4 +++-
> >>  1 file changed, 3 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
> >> index cdc7f88..c4d44e7 100644
> >> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
> >> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
> >> @@ -61,7 +61,9 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
> >>       unsigned long val;
> >>
> >>       rc = kstrtoul(buffer, 10, &val);
> >> -     if (rc < 0)
> >> +     if (rc)
> >
> > If rc is never > 0, then why do you want to change rc < 0 to just rc?
> >
> > julia
> >
>
> Because in case rc=0, it will be success and we don't need to return.
> This patch is a fix up on earlier patch as suggested by Greg.

I don't follow.  When there was rc < 0, there would also not be a return.
There are three cases: rc < 0, rc = 0, rc > 0.  If you put rc < 0 you will
get a return on rc < 0 only.  And if you put rc you will get a return on
rc < 0 and rc > 0, but rc is never > 0 (you have said - I don't check), so
with rc you will also only get a return when rc < 0.  Putting rc is a bit
more concise.  But putting rc < 0 makes it more clear that what is going
on is an error check.  And I guess it is the code that was there
previously, so it is what the developer preferred,

julia

>
> >> +             return rc;
> >> +     if (val > 1)
> >>               return -ERANGE;
> >>
> >>       /* opposite senses */
> >> --
> >> 2.1.0
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151018132030.GA30680%40ubuntu.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQEJLf1LXOZr7KS%3DBdC8riOXdjg6jgfDMfV8OK2uXvpJww%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

