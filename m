X-GM-THRID: 6330674938515554304
X-Received: by 10.46.1.75 with SMTP id 72mr2179795ljb.10.1474012390843;
        Fri, 16 Sep 2016 00:53:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.196 with SMTP id g65ls429513lji.22.gmail; Fri, 16 Sep
 2016 00:53:10 -0700 (PDT)
X-Received: by 10.46.5.140 with SMTP id 134mr2175361ljf.6.1474012390236;
        Fri, 16 Sep 2016 00:53:10 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si468600wmg.3.2016.09.16.00.53.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 00:53:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,343,1470693600"; 
   d="scan'208";a="193628976"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 09:53:09 +0200
Date: Fri, 16 Sep 2016 09:53:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
cc: Rehas Sachdeva <aquannie@gmail.com>, outreachy-kernel@googlegroups.com, 
    Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/5] staging: sm750fb: Add blank
 line after declarations
In-Reply-To: <20160916074813.GA20608@kroah.com>
Message-ID: <alpine.DEB.2.10.1609160952460.3049@hadrien>
References: <cover.1473975000.git.aquannie@gmail.com> <fa0e9f0f8ad81718bc561337284d7aa6f6a5ffca.1473975000.git.aquannie@gmail.com> <20160916074813.GA20608@kroah.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 Sep 2016, Greg Kroah-Hartman wrote:

> On Fri, Sep 16, 2016 at 03:02:21AM +0530, Rehas Sachdeva wrote:
> > It is preferred to add a blank line after function, struct, union and enum
> > declarations for better readability. Issue detected by checkpatch.
> >
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > ---
> >  drivers/staging/sm750fb/ddk750_chip.h    | 3 +++
> >  drivers/staging/sm750fb/ddk750_display.h | 1 +
> >  drivers/staging/sm750fb/ddk750_mode.h    | 2 ++
> >  drivers/staging/sm750fb/ddk750_power.h   | 1 +
> >  drivers/staging/sm750fb/sm750_cursor.c   | 3 +++
> >  5 files changed, 10 insertions(+)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
> > index 0891384..5ef8aad 100644
> > --- a/drivers/staging/sm750fb/ddk750_chip.h
> > +++ b/drivers/staging/sm750fb/ddk750_chip.h
> > @@ -14,6 +14,7 @@ typedef enum _logical_chip_type_t {
> >  	SM750,
> >  	SM750LE,
> >  }
> > +
> >  logical_chip_type_t;
>
> Please look at what the C code is doing here, does this change now make
> sense?  Why add a blank line in the middle of a typedef definition?
>
> Yes, the code isn't the best, but this is not the correct fix for this
> issue, remember checkpatch is a dumb script, sometimes it tells you the
> totally wrong thing to do, you always have to look at, and understand,
> the code before you change it.
>
> sorry, I can't take this patch,

Rehas,

Maybe you could get rid of the typedef instead.

julia

