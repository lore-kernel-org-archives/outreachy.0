X-GM-THRID: 6205449459620380672
X-Received: by 10.180.210.71 with SMTP id ms7mr1879375wic.4.1444895239950;
        Thu, 15 Oct 2015 00:47:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.68 with SMTP id n4ls1433223wik.4.canary; Thu, 15 Oct
 2015 00:47:19 -0700 (PDT)
X-Received: by 10.180.107.167 with SMTP id hd7mr1881889wib.6.1444895239604;
        Thu, 15 Oct 2015 00:47:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si447202wib.2.2015.10.15.00.47.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 00:47:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,684,1437429600"; 
   d="scan'208";a="182871853"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Oct 2015 09:47:19 +0200
Date: Thu, 15 Oct 2015 09:47:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723au: rtw_xmit:
 Remove unnecessary tests
In-Reply-To: <CAKHNQQGjoKNPz_M4SmYwHVrgkRvU3poLCeg8QrNt34S1VMyksQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510150946350.2350@hadrien>
References: <20151014103256.GA4491@ubuntu> <20151015064749.GB3134@sudip-pc> <CAKHNQQGOs9OPBZi6Eoy3t7R1ybZf5kmnTUJx9JRxGTmhAhmCjg@mail.gmail.com> <20151015072210.GF3134@sudip-pc> <CAKHNQQGjoKNPz_M4SmYwHVrgkRvU3poLCeg8QrNt34S1VMyksQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Oct 2015, Shivani Bhardwaj wrote:

> On Thu, Oct 15, 2015 at 12:52 PM, Sudip Mukherjee
> <sudipm.mukherjee@gmail.com> wrote:
> > On Thu, Oct 15, 2015 at 12:39:05PM +0530, Shivani Bhardwaj wrote:
> >> On Thu, Oct 15, 2015 at 12:17 PM, Sudip Mukherjee
> >> <sudipm.mukherjee@gmail.com> wrote:
> >> > On Wed, Oct 14, 2015 at 04:02:56PM +0530, Shivani Bhardwaj wrote:
> >> >> The variables which are preceded by NULL tests on them should not be
> >> >> checked again.
> >> >> Semantic patch used:
> >> >> @@ expression E;
> >> >> statement S1, S2, S3; @@
> >> >> if(E==NULL) {... return ...;}
> >> >> else S1
> >> >> - if(E==NULL)
> >> >>   S2
> >> >> - else S3
> >> >>
> >> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >> >> ---
> >> >> Changes in v2:
> >> >>       -Correct the semantic patch and make commit message better.
> >> >>
> >> >>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
> >> >>  1 file changed, 9 deletions(-)
> >> >>
> >> >> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
> >> >> index a4b6bb6..0ea521b 100644
> >> >> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
> >> >> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
> >> >> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
> >> >>
> >> >>       if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
> >> >>               /* encode mic code */
> >> >> -             if (stainfo) {
> >> >>                       u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
> >> >>                                        0x0, 0x0, 0x0, 0x0,
> >> >>                                        0x0, 0x0, 0x0, 0x0,
> >> >
> >> > Now this indention is looking wrong.
> >> >
> >> > regards
> >> > sudip
> >> Is it also supposed to be a part of the same patch or a series should be made?
> >
> > same patch as that indention problem is caused as "if (stainfo) {" is
> > removed. But can the cocci script handle that? maybe you need to modify
> > the indention by hand, and mention that in the commit message.
> >
> > regards
> > sudip
>
> I don't know if cocci script can do that. I'll have to ask Julia.
> Anyway, I'll make the changes by hand.

Coccinelle is supposed to clean up the indentation, but it seems that it
is not.  Could you send me your semantic patch, and I will check on it.

thanks,
julia

