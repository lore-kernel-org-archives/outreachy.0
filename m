X-GM-THRID: 6249498218591158272
X-Received: by 10.194.201.234 with SMTP id kd10mr4592542wjc.6.1455094472313;
        Wed, 10 Feb 2016 00:54:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.69 with SMTP id g66ls45659lfi.47.gmail; Wed, 10 Feb 2016
 00:54:31 -0800 (PST)
X-Received: by 10.25.15.161 with SMTP id 33mr4582038lfp.0.1455094471646;
        Wed, 10 Feb 2016 00:54:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w10si638991wmw.3.2016.02.10.00.54.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:54:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="164154041"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 09:54:29 +0100
Date: Wed, 10 Feb 2016 09:54:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Modify boolean
 assignment
In-Reply-To: <207e6b2c-07b0-48a8-a414-37c59ed7a3e6@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1602100954070.2486@hadrien>
References: <20160210082412.GA2645@janani-Inspiron-3521> <alpine.DEB.2.02.1602100825150.2050@localhost6.localdomain6> <207e6b2c-07b0-48a8-a414-37c59ed7a3e6@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-426508276-1455094467=:2486"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-426508276-1455094467=:2486
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 9 Feb 2016, Janani Ravichandran wrote:

>
>
> On Wednesday, 10 February 2016 02:26:38 UTC-5, Julia Lawall wrote:
>       On Wed, 10 Feb 2016, Janani Ravichandran wrote:
>
>       > Boolean variables should be assigned true/false rather than
>       1/0.
>       > This patch makes such a correction.
>
>       A change like this should be made consistently, so it is a
>       little
>       surprising to see only one such change.  Is this the only place
>       where the
>       variable is initialized?  
>
> Within this file, this is the only instance of initialization of the
> variable where 1 is
>  used instead of true. All others use true/false. I sent this to resolve
> that
> inconsistency :)
>       If so, you could say that.  if not, then you
>       could explain that all of the other initialization places
>       already have
>       boolean values, in some way or another.
>
> Do I send a v2 explaining this?

I think it could be helpful.

julia

>
>       julia
>
>       >
>       > Signed-off-by: Janani Ravichandran <janani....@gmail.com>
>       > ---
>       >  drivers/staging/unisys/visorhba/visorhba_main.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c
>       b/drivers/staging/unisys/visorhba/visorhba_main.c
>       > index 5a78409..e93bb1d 100644
>       > --- a/drivers/staging/unisys/visorhba/visorhba_main.c
>       > +++ b/drivers/staging/unisys/visorhba/visorhba_main.c
>       > @@ -1062,7 +1062,7 @@ static int visorhba_resume(struct
>       visor_device *dev,
>       >                  return -EINVAL;
>       >  
>       >          if (devdata->serverdown &&
>       !devdata->serverchangingstate)
>       > -                devdata->serverchangingstate = 1;
>       > +                devdata->serverchangingstate = true;
>       >  
>       >          visor_thread_start(&devdata->threadinfo,
>       process_incoming_rsps,
>       >                             devdata, "vhba_incming");
>       > --
>       > 2.5.0
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20160210082412.GA2645%40
>       janani-Inspiron-3521.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/207e6b2c-07b0-48a8-a414-
> 37c59ed7a3e6%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-426508276-1455094467=:2486--

