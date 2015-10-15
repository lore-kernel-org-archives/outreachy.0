X-GM-THRID: 6205449459620380672
X-Received: by 10.180.208.7 with SMTP id ma7mr2474236wic.5.1444925471408;
        Thu, 15 Oct 2015 09:11:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.74 with SMTP id p10ls399635wia.13.gmail; Thu, 15 Oct
 2015 09:11:11 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr7125347wia.7.1444925470993;
        Thu, 15 Oct 2015 09:11:10 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c7si1102912wiy.3.2015.10.15.09.11.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 09:11:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,686,1437429600"; 
   d="scan'208";a="150682012"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Oct 2015 18:11:10 +0200
Date: Thu, 15 Oct 2015 18:11:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723au: rtw_xmit:
 Remove unnecessary tests
In-Reply-To: <CAKHNQQGOs9OPBZi6Eoy3t7R1ybZf5kmnTUJx9JRxGTmhAhmCjg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510151810300.2350@hadrien>
References: <20151014103256.GA4491@ubuntu> <20151015064749.GB3134@sudip-pc> <CAKHNQQGOs9OPBZi6Eoy3t7R1ybZf5kmnTUJx9JRxGTmhAhmCjg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 15 Oct 2015, Shivani Bhardwaj wrote:

> On Thu, Oct 15, 2015 at 12:17 PM, Sudip Mukherjee
> <sudipm.mukherjee@gmail.com> wrote:
> > On Wed, Oct 14, 2015 at 04:02:56PM +0530, Shivani Bhardwaj wrote:
> >> The variables which are preceded by NULL tests on them should not be
> >> checked again.
> >> Semantic patch used:
> >> @@ expression E;
> >> statement S1, S2, S3; @@
> >> if(E==NULL) {... return ...;}
> >> else S1
> >> - if(E==NULL)
> >>   S2
> >> - else S3
> >>
> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >> ---
> >> Changes in v2:
> >>       -Correct the semantic patch and make commit message better.
> >>
> >>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
> >>  1 file changed, 9 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
> >> index a4b6bb6..0ea521b 100644
> >> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
> >> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
> >> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
> >>
> >>       if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
> >>               /* encode mic code */
> >> -             if (stainfo) {
> >>                       u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
> >>                                        0x0, 0x0, 0x0, 0x0,
> >>                                        0x0, 0x0, 0x0, 0x0,
> >
> > Now this indention is looking wrong.
> >
> > regards
> > sudip
> Is it also supposed to be a part of the same patch or a series should be made?

Same.  The removal caused the indentation problem, so the same patch
should fix it up.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQGOs9OPBZi6Eoy3t7R1ybZf5kmnTUJx9JRxGTmhAhmCjg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

