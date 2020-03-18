X-GM-THRID: 6805647461769543680
X-Received: by 2002:a1c:7405:: with SMTP id p5mr5516409wmc.73.1584564225382;
        Wed, 18 Mar 2020 13:43:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6748:: with SMTP id l8ls4322278wrw.2.gmail; Wed, 18 Mar
 2020 13:43:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt3SD5BM+JM089nWD/pTv2s3x63o1X/1T0nHTwLNv6317FkgCdcr16IKc1p5pHggFbb1BzM
X-Received: by 2002:a05:6000:1212:: with SMTP id e18mr8020442wrx.371.1584564223942;
        Wed, 18 Mar 2020 13:43:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584564223; cv=none;
        d=google.com; s=arc-20160816;
        b=sU+O9NjNFHJ2V+lnB2IdFNoCANpIoaU2H4Qi3w00juhiOcs6ufEPdKqmKV9dMD/TkO
         vogVvbWdn97L6rsaT6rxzP2GUTD6G12TamtgR4xL6Q9CfM6esKygTDlx9DHtmdhFbcUJ
         ieWpGmHnbgyIPG+n5/s7kDcCj+ppdvRxz1K8YdJ538NRP3c8kt+KNpLPNsNJ+j7x9lNL
         kymz7k2KeafL1/NsXP8r7dwjSNSS6lL/2oBDFtgKg3ia/OeIBwV8MIE300RvCOofwPbe
         t1oHjRRcq1CUE9BIgshMdaiXH5tyuRSNAck7b4+3ka9SBTV7qGdfGeWn3BsQZynQjqxL
         r9rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2pumth9j86R9jJ+g6t/lG+7jEJWl8vnbTauv6BcqoWY=;
        b=V28VFwyIbdhaaTshwiXK6cd/AmUV4m1pBAeasOCZSVjkDAWWgIXOft2mbvfcU/dOtp
         BOceAGXOZSeOtX47Wo32qP1Ha0R54Gp+FAPsdKQdnC1Z21QR1Go587KYFHu7x/JSI8Zm
         Mz5vQ6iDJoVC3wNQwOkzhaoGjE3Sd0tVAaKeDb90b96ZV053KPtZr85Y1L9N1GiyEK+9
         bc/3ZUvnRHdVQnU4aNlvL594ojaaLmqBEH11DEYSPj70N1Pw8VACffL5zdOZI4menpwO
         26+mx60a7zWtWBD38KIsrqokS8NN91mS0xZPs5sUf2vQ3AaNkk7m4+redfZxISTYR20g
         Irmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a18si3952wra.0.2020.03.18.13.43.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:43:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,568,1574118000"; 
   d="scan'208";a="342856612"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2020 21:43:43 +0100
Date: Wed, 18 Mar 2020 21:43:42 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Elemenate anomalies
 in driver's coding style.
In-Reply-To: <40b9ab7772e7c2de78e2c674b1ecda2f94fb8ecd.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003182141030.2979@hadrien>
References: <20200318202747.4218-1-jane.pnx9@gmail.com>  <alpine.DEB.2.21.2003182131510.2979@hadrien> <40b9ab7772e7c2de78e2c674b1ecda2f94fb8ecd.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 18 Mar 2020, Sam Muhammed wrote:

> On Wed, 2020-03-18 at 21:33 +0100, Julia Lawall wrote:
> >
> > On Wed, 18 Mar 2020, Sam Muhammed wrote:
> >
> > > This driver maintains a coding style of declaring variables
> > > and assigning values to them in separate lines.
> > > There are anomalies, elemenate them.
> >
> > I think I was not clear.  When I suggested to do only one thing, rather
> > than starting with a series, I meant that you should do one or the other
> > of the things in your previous patch, but not both.  If you make multiple
> > changes to a file, they must be in a series, or Greg won't know in what
> > order to apply them.
> >
> > julia
> >
> >
>
> Oh, so this patch should have this one _logical_ change only?
> so i resend as v2? or resend as a new patch?
> sorry it's a bit confusing.

You have sent two patches on the same file.  Each one indeed does have
only one change.  But since they are affecting the same file, to submit
both of them, you have to make a series, to indicate the other in which
they are applied.

Since this is your first patch, I would suggest to forget about this patch
and forget about the series, and just get the patch with the blank lines
accepted.

That one needs to be a v3 now, because you have sent two previous
versions.  As compared to v2 you are just adding the versioning
information.  As compared to v1 you are dropping the declaration splitting
change to only do one thing.

julia


>
> Sam
>
> > >
> > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > ---
> > >  drivers/staging/qlge/qlge_dbg.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> > > index 1795533cbd3a..8bf592812518 100644
> > > --- a/drivers/staging/qlge/qlge_dbg.c
> > > +++ b/drivers/staging/qlge/qlge_dbg.c
> > > @@ -496,7 +496,8 @@ static int ql_get_mpi_shadow_regs(struct ql_adapter *qdev, u32 *buf)
> > >  static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
> > >  			   u32 offset, u32 count)
> > >  {
> > > -	int i, status = 0;
> > > +	int i;
> > > +	int status = 0;
> > >
> > >  	for (i = 0; i < count; i++, buf++) {
> > >  		status = ql_read_mpi_reg(qdev, offset + i, buf);
> > > --
> > > 2.20.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200318202747.4218-1-jane.pnx9%40gmail.com.
> > >
>
>
>

