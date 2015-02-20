X-GM-THRID: 739037413376
X-Received: by 10.112.64.171 with SMTP id p11mr1442373lbs.12.1424453878830;
        Fri, 20 Feb 2015 09:37:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.72 with SMTP id lm8ls320210lac.3.gmail; Fri, 20 Feb
 2015 09:37:58 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr1446444lan.1.1424453878390;
        Fri, 20 Feb 2015 09:37:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si150341wib.3.2015.02.20.09.37.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 09:37:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,616,1418079600"; 
   d="scan'208";a="100787106"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 18:37:57 +0100
Date: Fri, 20 Feb 2015 18:37:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3] Convert simple_strtoul to
 kstrtoul
In-Reply-To: <c4bae1a8-b908-47ae-b7e5-e293248a7691@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1502201837441.2375@hadrien>
References: <1424369465-12930-1-git-send-email-navyasri.tech@gmail.com> <c4bae1a8-b908-47ae-b7e5-e293248a7691@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1096393274-1424453873=:2375"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1096393274-1424453873=:2375
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 20 Feb 2015, Navya Sri Nizamkari wrote:

> Hi,
>   Is this patch alright? Now, there are now additional warnings introduced
> by  the change I made.

What warnings?

julia

>
> On Thursday, February 19, 2015 at 11:40:18 PM UTC+5:30, Navya Sri Nizamkari
> wrote:
>       This patch fixes the checkpatch.pl warning:
>       simple_strtoul is obsolete, use kstrtoul instead.
>
>       When the string is not converted(parsing error), the strings
>       pointed to by ep and parport[n] are the same. This parsing error
>       results in kstrtoul returning a non-zero value.
>
>       Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
>       ---
>       Changes in v3:
>          -Removed few changes made in previous commit which were
>       introducing new checkpatch.pl warnings.
>
>        drivers/staging/media/parport/bw-qcam.c | 4 +---
>        1 file changed, 1 insertion(+), 3 deletions(-)
>
>       diff --git a/drivers/staging/media/parport/bw-qcam.c
>       b/drivers/staging/media/parport/bw-qcam.c
>       index 67b9da1..6c9b400 100644
>       --- a/drivers/staging/media/parport/bw-qcam.c
>       +++ b/drivers/staging/media/parport/bw-qcam.c
>       @@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport
>       *port)
>                if (parport[0] && strncmp(parport[0], "auto", 4) != 0)
>       {
>                        /* user gave parport parameters */
>                        for (n = 0; n < MAX_CAMS && parport[n]; n++) {
>       -                        char *ep;
>                                unsigned long r;
>       -                        r = simple_strtoul(parport[n], &ep, 0);
>       -                        if (ep == parport[n]) {
>       +                        if (kstrtoul(parport[n], 0, &r)) {
>                                        printk(KERN_ERR
>                                                "bw-qcam: bad port
>       specifier \"%s\"\n",
>                                                parport[n]);
>       --
>       1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/c4bae1a8-b908-47ae-b7e5-
> e293248a7691%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1096393274-1424453873=:2375--

