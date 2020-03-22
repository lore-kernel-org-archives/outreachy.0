X-GM-THRID: 6806929906514001920
X-Received: by 2002:a1c:a9d5:: with SMTP id s204mr21735294wme.172.1584879529197;
        Sun, 22 Mar 2020 05:18:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls705481wrp.6.gmail; Sun, 22 Mar
 2020 05:18:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuq9ueujy35LpDk4B0xOJOIFwhEPWUmwSTYDjYv3XC/CbHjAFY2c5t71UaZ65rgKvKvrxAb
X-Received: by 2002:a5d:4104:: with SMTP id l4mr24641029wrp.55.1584879527740;
        Sun, 22 Mar 2020 05:18:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584879527; cv=none;
        d=google.com; s=arc-20160816;
        b=UFDHUuO1jWJfRPzBWxsp31AfLIKtPlTdLZ8R0JJhAv6CYtqhz0kvBpa1zhBkWBvDqJ
         ZlR2r5arkZ9MUEjbgRbZtDW74k7emTIVpLLT5Dm0yjuVpUa/0tJNfsanIT4tRVX/unjS
         /U0kgWhzMU0uEJ3CtCHuFFHIknHceNvhbfAPhgybQZ5DI0/BJHeSO2TAdbJkD89YGTcc
         QmCzjj3ts0pQXtLmeG/vclhMx4wJvY7nr/7gChh2w4NJHYmwn1/T4OXsO9jHP1lLg+j6
         Y4H4BdS7rgwGCgzfSO1DEGvKxLNvVTSQyfHeZ0M8iRwrwbYOXdTI24La6RUXcRhgsmqh
         Jtdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1J3My3CNWZlz5AEeNtNdmtwNKQqd9G4xo3F35C8iRNo=;
        b=J0nrfIs2KjO3zUdOrXI1d2KdGdsgooegBgCKiPdWUjgw63oV0s0KpBDkA1wvMtrkuj
         V+J/t1eXCDXlQlLTJNtYPf/OYV5U6ArJpuxDsdc8ckre4vozRRf+Vl3d3PuNwywZ1wpd
         B8fOEqM1FsWgNm8SBr8tRzO6PlT3oqMu9Avb+kc0GuK1UxMzlJd9/OwnTuz+fW7zCsyQ
         nrfVoMvtGQ9h1FE2yNc06BmPxjzLQIBQT2CuxlNyngH5J4ilE+LBG3pN5QwEBS5qqWLu
         RvYaLYMQ41o02N0N/w7d2MpVEr+A5G4c4+mR7/cOkL+kekFsW3cfedMGmqfSXalUGeHo
         UZGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b81si398268wmc.2.2020.03.22.05.18.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 05:18:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,292,1580770800"; 
   d="scan'208";a="343196698"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 13:18:47 +0100
Date: Sun, 22 Mar 2020 13:18:46 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Jaroslav Kysela <perex@perex.cz>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: hp: Use netdev_warn().
In-Reply-To: <4c9df138ba2d1f5cb4f1a5a75f507ce0dfdb267f.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003221318320.2325@hadrien>
References: <20200322110035.2756-1-jane.pnx9@gmail.com>   <alpine.DEB.2.21.2003221207570.2325@hadrien>  <32464c2c8a461ea44442cbe866f7b70d3ac4414f.camel@gmail.com>  <alpine.DEB.2.21.2003221228470.2325@hadrien>
 <4c9df138ba2d1f5cb4f1a5a75f507ce0dfdb267f.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Sam Muhammed wrote:

> On Sun, 2020-03-22 at 12:29 +0100, Julia Lawall wrote:
> >
> > On Sun, 22 Mar 2020, Sam Muhammed wrote:
> >
> > > On Sun, 2020-03-22 at 12:09 +0100, Julia Lawall wrote:
> > > >
> > > > On Sun, 22 Mar 2020, Sam Muhammed wrote:
> > > >
> > > > > This replaces printk(KERN_WARNING ..) with netdev_warn(),
> > > > > as the use of printk() isn't preferred when
> > > > > a struct net_device is available.
> > > > >
> > > > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > > > ---
> > > > > Changes in v4:
> > > > > - Make log message more clear.
> > > > >
> > > > > Changes in v3:
> > > > > - Update subject line and log message to be more desriptive.
> > > > >
> > > > > Changes in v2:
> > > > > - Remove " : " from the printing message, netdev_warn() doesn't need it.
> > > > >
> > > > >  drivers/staging/hp/hp100.c | 9 ++++-----
> > > > >  1 file changed, 4 insertions(+), 5 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> > > > > index b89c4dcf53f5..1afd511260d0 100644
> > > > > --- a/drivers/staging/hp/hp100.c
> > > > > +++ b/drivers/staging/hp/hp100.c
> > > > > @@ -469,8 +469,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> > > > >
> > > > >  	eid = hp100_read_id(ioaddr);
> > > > >  	if (eid == NULL) {	/* bad checksum? */
> > > > > -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> > > > > -		       __func__, ioaddr);
> > > > > +		netdev_warn(dev, "bad ID checksum at base port 0x%x\n", ioaddr);
> > > >
> > > > After I apply the patch, I see this as 1 character over 80 characters.
> > > > You could put ioaddr on another line.
> > > >
> > >
> > > Oh, is there a difference between Checkpatch.pl after applying the
> > > patch, and running checkpatch.pl on the file after changing it?
> > > because i didn't have any over 80 characters warning on the range of
> > > lines i modified
> >
> > I don't know.  I didn't run checkpatch.  It's just one character and it's
> > a line with a string, so one of these conditions might make checkpatch
> > ignore the problem.
> >
>
> Sorry about the newbie questions, is there an action i should do about
> the <Acked-by> tag,
> or it gets added automatically?

Greg will take care of it.

julia

>
> Sam
>
> > julia
> >
> > >
> > > Sam
> > >
> > > > julia
> > > >
> > > > >  		goto out2;
> > > > >  	}
> > > > >
> > > > > @@ -478,9 +477,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> > > > >  	for (i = uc = 0; i < 7; i++)
> > > > >  		uc += hp100_inb(LAN_ADDR + i);
> > > > >  	if (uc != 0xff) {
> > > > > -		printk(KERN_WARNING
> > > > > -		       "%s: bad lan address checksum at port 0x%x)\n",
> > > > > -		       __func__, ioaddr);
> > > > > +		netdev_warn(dev,
> > > > > +			    "bad lan address checksum at port 0x%x)\n",
> > > > > +			    ioaddr);
> > > > >  		err = -EIO;
> > > > >  		goto out2;
> > > > >  	}
> > > > > ---
> > > > > 2.20.1
> > > > >
> > > > > --
> > > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322110035.2756-1-jane.pnx9%40gmail.com.
> > > > >
> > >
> > >
> > >
>
>
>

