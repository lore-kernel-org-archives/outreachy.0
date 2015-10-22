X-GM-THRID: 6208143559134019584
X-Received: by 10.112.144.105 with SMTP id sl9mr3329457lbb.3.1445503368149;
        Thu, 22 Oct 2015 01:42:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.126.5 with SMTP id mu5ls576026wib.17.gmail; Thu, 22 Oct
 2015 01:42:47 -0700 (PDT)
X-Received: by 10.180.10.202 with SMTP id k10mr8029364wib.2.1445503367675;
        Thu, 22 Oct 2015 01:42:47 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cm6si81991wib.1.2015.10.22.01.42.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:42:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,181,1444687200"; 
   d="scan'208";a="151402122"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Oct 2015 10:42:46 +0200
Date: Thu, 22 Oct 2015 10:42:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniel Baluta <daniel.baluta@gmail.com>
cc: Navya Sri Nizamkari <navyasri.tech@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] Staging: xgifb: Add space between
 ; and variable name
In-Reply-To: <CAEnQRZBqVWVHtc_pRUemU-6qZMmbD90TzuGsWe-5Xuh63mXG2A@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510221041590.2607@hadrien>
References: <cover.1445445320.git.navyasri.tech@gmail.com> <b2831ecccc09c2e69d330c453f911d8a0ae61e0f.1445445320.git.navyasri.tech@gmail.com> <CAEnQRZBqVWVHtc_pRUemU-6qZMmbD90TzuGsWe-5Xuh63mXG2A@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 22 Oct 2015, Daniel Baluta wrote:

> On Wed, Oct 21, 2015 at 7:48 PM, Navya Sri Nizamkari
> <navyasri.tech@gmail.com> wrote:
> > This patch fixes the checkpatch.pl error:
> >
> > ERROR: space required after that ';'
> >
> > Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> > ---
> >  drivers/staging/xgifb/vb_init.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
> > index ea358a0..6204a98 100644
> > --- a/drivers/staging/xgifb/vb_init.c
> > +++ b/drivers/staging/xgifb/vb_init.c
> > @@ -10,7 +10,7 @@ static const unsigned short XGINew_DDRDRAM_TYPE340[4][2] = {
> >         { 16, 0x45},
> >         {  8, 0x35},
> >         {  4, 0x31},
> > -       {  2, 0x21} };e
> > +       {  2, 0x21} }; e
>
> Hmm, something went wrong here :)
>
> Please edit the file and remove 'e' after ';'. Otherwise, your code
> wouldn't even compile.

Also, this seems to be a patch on top of your previous patch, whereas your
corrected patches should be on top of the current state of Greg's tree.

julia

>
> thanks,
> Daniel.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAEnQRZBqVWVHtc_pRUemU-6qZMmbD90TzuGsWe-5Xuh63mXG2A%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

