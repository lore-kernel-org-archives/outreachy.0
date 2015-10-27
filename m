X-GM-THRID: 6209942832976756736
X-Received: by 10.66.147.33 with SMTP id th1mr32405264pab.27.1445932914062;
        Tue, 27 Oct 2015 01:01:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.85 with SMTP id 79ls4218537qgg.22.gmail; Tue, 27 Oct
 2015 01:01:53 -0700 (PDT)
X-Received: by 10.129.83.10 with SMTP id h10mr33777196ywb.6.1445932913550;
        Tue, 27 Oct 2015 01:01:53 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si3938240pbc.1.2015.10.27.01.01.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 01:01:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fv9so224655175pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 01:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KIIAz3AlyaRMlf63D+eUHncOqkpNhLuWGYWeYGSoX8o=;
        b=Hh8o888JVrCVgPeh2Z058KInsOmzN7RftSnAXVSMgrPVfddMB7cp7aEJm9hOQF3eiB
         bZbj/5dLgvc7FoGn5X49T7/6uAAxdPKH7tfuGYR4fyQFhZWKj0ezCyxJZbYypB+1XDQG
         bqyBgLZk1E2mDfYGcNREGJFHF8ZdykhBKkfjg5YmwgTgHVmRl7T+wogR+1OpKk+0qBuF
         7+gmbMtqwTMW67bmKpzfGy4R6Aa55cWIopuIfBqYzWe84V9PlHCrN62kFclgOG2UoCbP
         pHlSHluJJDyr4wlGwxKhlPdQ8bYHrd7/GMOa9k4eE98RcVASYW2nDU2QG7x33cqvRbFA
         IRUw==
X-Received: by 10.68.136.69 with SMTP id py5mr27158634pbb.94.1445932913351;
        Tue, 27 Oct 2015 01:01:53 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.137.63])
        by smtp.gmail.com with ESMTPSA id bz2sm37940362pad.32.2015.10.27.01.01.51
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 01:01:52 -0700 (PDT)
Date: Tue, 27 Oct 2015 13:31:45 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: media: omap4iss:
 Replaces bit shift on 1 with BIT Macro
Message-ID: <20151027080145.GC22738@sudip-pc>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
 <3c4b9cd96e78d3d0d114b697f154f291631fc60f.1445864494.git.amarjargal.gundjalam@gmail.com>
 <alpine.DEB.2.10.1510261544000.2521@hadrien>
 <20151026084806.7473ef61e6f53570ea5f575d@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151026084806.7473ef61e6f53570ea5f575d@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Oct 26, 2015 at 08:48:06AM -0700, Amarjargal Gundjalam wrote:
> On Mon, 26 Oct 2015 15:46:27 +0100 (CET)
> Julia Lawall <julia.lawall@lip6.fr> wrote:
> 
> > > diff --git a/drivers/staging/media/omap4iss/iss_ipipe.h b/drivers/staging/media/omap4iss/iss_ipipe.h
> > > index c22d904..b8c1b8e0 100644
> > > --- a/drivers/staging/media/omap4iss/iss_ipipe.h
> > > +++ b/drivers/staging/media/omap4iss/iss_ipipe.h
> > > @@ -21,7 +21,7 @@ enum ipipe_input_entity {
> > >  	IPIPE_INPUT_IPIPEIF,
> > >  };
> > >
> > > -#define IPIPE_OUTPUT_VP		(1 << 0)
> > > +#define IPIPE_OUTPUT_VP				BIT(0)
> > 
> > Why did the amount of space change?
> 
> I tried to align it with the the others below it.
> 
> > 
> > >
> > >  /* Sink and source IPIPE pads */
> > >  #define IPIPE_PAD_SINK				0
> > > diff --git a/drivers/staging/media/omap4iss/iss_ipipeif.h b/drivers/staging/media/omap4iss/iss_ipipeif.h
> > > index cbdccb9..cf8a47a 100644
> > > --- a/drivers/staging/media/omap4iss/iss_ipipeif.h
> > > +++ b/drivers/staging/media/omap4iss/iss_ipipeif.h
> > > @@ -22,8 +22,8 @@ enum ipipeif_input_entity {
> > >  	IPIPEIF_INPUT_CSI2B
> > >  };
> > >
> > > -#define IPIPEIF_OUTPUT_MEMORY		(1 << 0)
> > > -#define IPIPEIF_OUTPUT_VP		(1 << 1)
> > > +#define IPIPEIF_OUTPUT_MEMORY			BIT(0)
> > > +#define IPIPEIF_OUTPUT_VP			BIT(1)
> > 
> > Here, however, you could take advantage of the opportunity to line them
> > up.  Maybe these are just a problem with tabs and the patch?
> > 
> 
> I did aligned them with tabs, maybe it's just a problem with patch formatting?

They looks aligned after applying.

regards
sudip

