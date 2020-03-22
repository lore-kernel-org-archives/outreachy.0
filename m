X-GM-THRID: 6806929906514001920
X-Received: by 2002:a2e:9ed6:: with SMTP id h22mr11198216ljk.211.1584876579165;
        Sun, 22 Mar 2020 04:29:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:10c2:: with SMTP id k2ls1620716lfg.9.gmail; Sun, 22
 Mar 2020 04:29:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtzbLkZLeoX+F9J7g6A2g+AFl1cD9sT7wQtcOTgIfCPpItWLRXKjV2NEIuWCayvdQLPKG1M
X-Received: by 2002:a19:8c3:: with SMTP id 186mr6685849lfi.27.1584876577394;
        Sun, 22 Mar 2020 04:29:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584876577; cv=none;
        d=google.com; s=arc-20160816;
        b=GUuBEh9sEPStzhXAk3biMnJHQF22l1cfG+zkL++ACMWXnUoru33po85ZPZbOctBAI4
         amCYvel2CmZzxDmrGSzkSqytnBkwh09rQ/reWSdGDjYypsc5imp+mLpC7ige8CQ9npxD
         E3L6tBzlX4Cd6mK/xPaaF/+Y8UletCNsm1OhDFWjWax2MraB6+9MEBfdqQrR8fDs9iUm
         l3i6w1UvQwoylWAZuDAPZGBKvPL/nVEe3kxzNW3faAH9zypYgU0Xw53gbmDwuhRUHkBB
         zyiMJ9TtQ1RKAvEQRIc38HXmgJxt6jWGB1Xz3aos7sM92mR91tYl6LVusIg08KY1nV3U
         AJ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=xS9n69haF2fzYWSAF4d4kQ4evADJhPaF9tSjuHubOVE=;
        b=kIPbrVHEB6NRdWvTExm7hswkzhb+qT9qGHMx7301FCQpzrDXJ55L7brkJvBbRHoad6
         GWS4OFiG3daoKYNFVJc+ltrpQQhzj92v/lQ92gX3vGX3SdI8eC0AVxoyjnq7bT8gbI7S
         bGEOA8XEa501fs1yzpCs83roCNn93qhTl55f2iLKutojxyPbiRl5dhWhiiixmfkSlhNa
         t75emJRu0+SKBb+GqeGS1S40vXMo+seUQCA4ei+/i/LgoyNHt8jDbgDUpIk/9qPiX8wz
         wU0AMg75v+KqqbapQNTnW6PC60K1HQzSiz0JU5hyredMquTjUeosJ8vyVjNtgEZRJXRf
         KhIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a21si806994lff.3.2020.03.22.04.29.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 04:29:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,292,1580770800"; 
   d="scan'208";a="343195372"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 12:29:36 +0100
Date: Sun, 22 Mar 2020 12:29:36 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Jaroslav Kysela <perex@perex.cz>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: hp: Use netdev_warn().
In-Reply-To: <32464c2c8a461ea44442cbe866f7b70d3ac4414f.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003221228470.2325@hadrien>
References: <20200322110035.2756-1-jane.pnx9@gmail.com>  <alpine.DEB.2.21.2003221207570.2325@hadrien> <32464c2c8a461ea44442cbe866f7b70d3ac4414f.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Sam Muhammed wrote:

> On Sun, 2020-03-22 at 12:09 +0100, Julia Lawall wrote:
> >
> > On Sun, 22 Mar 2020, Sam Muhammed wrote:
> >
> > > This replaces printk(KERN_WARNING ..) with netdev_warn(),
> > > as the use of printk() isn't preferred when
> > > a struct net_device is available.
> > >
> > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > ---
> > > Changes in v4:
> > > - Make log message more clear.
> > >
> > > Changes in v3:
> > > - Update subject line and log message to be more desriptive.
> > >
> > > Changes in v2:
> > > - Remove " : " from the printing message, netdev_warn() doesn't need it.
> > >
> > >  drivers/staging/hp/hp100.c | 9 ++++-----
> > >  1 file changed, 4 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> > > index b89c4dcf53f5..1afd511260d0 100644
> > > --- a/drivers/staging/hp/hp100.c
> > > +++ b/drivers/staging/hp/hp100.c
> > > @@ -469,8 +469,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> > >
> > >  	eid = hp100_read_id(ioaddr);
> > >  	if (eid == NULL) {	/* bad checksum? */
> > > -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> > > -		       __func__, ioaddr);
> > > +		netdev_warn(dev, "bad ID checksum at base port 0x%x\n", ioaddr);
> >
> > After I apply the patch, I see this as 1 character over 80 characters.
> > You could put ioaddr on another line.
> >
>
> Oh, is there a difference between Checkpatch.pl after applying the
> patch, and running checkpatch.pl on the file after changing it?
> because i didn't have any over 80 characters warning on the range of
> lines i modified

I don't know.  I didn't run checkpatch.  It's just one character and it's
a line with a string, so one of these conditions might make checkpatch
ignore the problem.

julia

>
> Sam
>
> > julia
> >
> > >  		goto out2;
> > >  	}
> > >
> > > @@ -478,9 +477,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> > >  	for (i = uc = 0; i < 7; i++)
> > >  		uc += hp100_inb(LAN_ADDR + i);
> > >  	if (uc != 0xff) {
> > > -		printk(KERN_WARNING
> > > -		       "%s: bad lan address checksum at port 0x%x)\n",
> > > -		       __func__, ioaddr);
> > > +		netdev_warn(dev,
> > > +			    "bad lan address checksum at port 0x%x)\n",
> > > +			    ioaddr);
> > >  		err = -EIO;
> > >  		goto out2;
> > >  	}
> > > ---
> > > 2.20.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322110035.2756-1-jane.pnx9%40gmail.com.
> > >
>
>
>

