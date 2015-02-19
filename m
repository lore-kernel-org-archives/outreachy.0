X-GM-THRID: 697096470528
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ae4d3b7517c21de2
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.98 with SMTP id zn2mr716482lbb.6.1424364426817;
        Thu, 19 Feb 2015 08:47:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.104 with SMTP id ln8ls164789lac.94.gmail; Thu, 19 Feb
 2015 08:47:06 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr720514lal.3.1424364426367;
        Thu, 19 Feb 2015 08:47:06 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si4199402wib.2.2015.02.19.08.47.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 08:47:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,609,1418079600"; 
   d="scan'208";a="122554297"
Received: from technetium.rsr.lip6.fr ([132.227.76.37])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 17:47:05 +0100
Date: Thu, 19 Feb 2015 17:48:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: navya sri nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: parport: Convert
 simple_strtoul to kstrtoul
In-Reply-To: <CAAJLE+1BsZaDcMkR_VVV+e9VasJSwhnx1umbTEMtroFnGKebYA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1502191747570.3284@hadrien>
References: <1424363402-10346-1-git-send-email-navyasri.tech@gmail.com> <alpine.DEB.2.10.1502191738120.3284@hadrien> <CAAJLE+1BsZaDcMkR_VVV+e9VasJSwhnx1umbTEMtroFnGKebYA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 19 Feb 2015, navya sri nizamkari wrote:

> When the conversion is not successful the final string (whose pointer
> is ep) and the initial string are the same(a parsing error).kstrtoul
> returns a non-zero value for parsing and overflow errors.Maybe I
> should add an addtional check for the return value of kstrtoul to be
> EINVAL.

Probably if it fails for any reason, then you should skip the current
value.  This explanation should be part of the commit message of the
patch.

julia


> On Thu, Feb 19, 2015 at 10:10 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Thu, 19 Feb 2015, Navya Sri Nizamkari wrote:
> >
> >> This patch fixes the following checkpatch.pl warning:
> >>
> >> WARNING: simple_strtoul is obsolete, use kstrtoul instead
> >
> > simple_strtoul and kstrtoul don't have the same functionality.  You have
> > to argue carefully why this change is correct.  That is, under what
> > circumstances does simple_strtoul end up with the value in its second
> > argument being the same as its first argument, and under what
> > circumstances does kstrtoul give a non zero result.
> >
> > julia
> >
> >> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> >> ---
> >>  drivers/staging/media/parport/bw-qcam.c | 4 +---
> >>  1 file changed, 1 insertion(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/parport/bw-qcam.c b/drivers/staging/media/parport/bw-qcam.c
> >> index 67b9da1..1b81244 100644
> >> --- a/drivers/staging/media/parport/bw-qcam.c
> >> +++ b/drivers/staging/media/parport/bw-qcam.c
> >> @@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port)
> >>       if (parport[0] && strncmp(parport[0], "auto", 4) != 0) {
> >>               /* user gave parport parameters */
> >>               for (n = 0; n < MAX_CAMS && parport[n]; n++) {
> >> -                     char *ep;
> >>                       unsigned long r;
> >> -                     r = simple_strtoul(parport[n], &ep, 0);
> >> -                     if (ep == parport[n]) {
> >> +                     if (kstrtoul(parport[n],0,&r)) {
> >>                               printk(KERN_ERR
> >>                                       "bw-qcam: bad port specifier \"%s\"\n",
> >>                                       parport[n]);
> >> --
> >> 1.9.1
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424363402-10346-1-git-send-email-navyasri.tech%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

