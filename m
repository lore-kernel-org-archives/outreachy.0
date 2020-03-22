X-GM-THRID: 6806929906514001920
X-Received: by 2002:a19:1d6:: with SMTP id 205mr3068285lfb.80.1584879280996;
        Sun, 22 Mar 2020 05:14:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:804c:: with SMTP id p12ls2252751ljg.5.gmail; Sun, 22 Mar
 2020 05:14:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuWi3UmMA0mydcI4xXJS7X4jyxhqZ7BW76QhUAXKebXjBdyjI+Ut9RCgixqRfknejkFJOR2
X-Received: by 2002:a2e:8119:: with SMTP id d25mr10950222ljg.39.1584879279477;
        Sun, 22 Mar 2020 05:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584879279; cv=none;
        d=google.com; s=arc-20160816;
        b=ee+lAmMkdoBciTIBlp27JL5+nYURRR8s18I8YfmnKV83rnyROT59hbpPaWSdqu620H
         8m1azXj90ZXMezpO9BfwPVaqHn4Vig87DSSRAbPgaPBaewSiOqsXW6OFfe78jzv30OuM
         yDI/02x9RMVSF8gnsH7wtYZiiP3apphFQgNwH5ZDdL9CuSZQFBL6juVhn1GY22N9ROFE
         /jbPYu+PowRv4TsKk7VRCR+MRVAmPX8HNPRy2aULLabK2enXAJXff1trIRq814T8y2lK
         dIwsXgD5jzvAjS4JXZ5eM++1gJaUJuYzLNtGYtW98+Sp9eYo5qj+rkRMc+MnMBkYwMGs
         Ja4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=9+HeCnyunsXPTYQUt+UYkMhDiwcSQGMmVeATjUH1aJ0=;
        b=R/rWOOIy6goWIwyNz3smr/ZYEobek7h0C0e/ViUF7iKRKlToD17yrxy9bs0kXFruLJ
         1EINs04KxxmZ8czDclZk9hWsB7NhOC0LTxUDFqPjEYm8+f24aHBqhbGV5sz7feZiN44b
         BLKiWx9+FUadbsU1c/qfJ3MBO33ge3GUThrZ5yEEcTysxq86cqK+dpHKRRY684QWlFY+
         aDDPP+RwLeuMbIanG5LFVMdFQcVi/R+O+8eOhFr9uZdj4SQGbw25y+fgRJ3O9EUOLYYx
         +WC1mk6uBfzjM8MTytTCKK5VwoXGw0FQ8/ZlRyvdwsxye2S6ohsAAAF2wumEet82kilB
         nEHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZOenhpdz;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a21si813595lff.3.2020.03.22.05.14.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 05:14:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZOenhpdz;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id m17so4096644wrw.11
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 05:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=9+HeCnyunsXPTYQUt+UYkMhDiwcSQGMmVeATjUH1aJ0=;
        b=ZOenhpdzdrwP2m7gpzCglEg+5Si7YrBJB11Tsmt4wpVoxEwjNNJ6IsaNfVZdIB2q0s
         yVYZD0YRQcikGrBRrXyfHQdzn4YmpupXuuPJD/QRhXQzMcOrAlAg005O1njTnwQHP9KN
         nKmG0BXAEuGldYNUH9z+bFwQUsl8xWTHlF8SJKVM2zD94gIw6DwGtjQmSNyPzFOj1XMx
         eRb+1dAf+2dimbTt8w8rE5LBN3fC6BjH7IgXHjJTpTzYu9i7giEFH1f73kUqoJUgkvR0
         /ZC0cFD+cX+AU0aDV+AcABrJhJdVHGbPMrUMi+RMXL8K1smzn6vXRWq4VaAgk2gN78d8
         1U7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=9+HeCnyunsXPTYQUt+UYkMhDiwcSQGMmVeATjUH1aJ0=;
        b=fweo2WoIrmjZShr/k4rWrB+k/Wd+cfv/gFR4vKlpUrwyWeqGGnqqtBmZxJFVHLGJbm
         dYrW7LGZvqKrmndGRK4JED6h7PyKdRDRdkNZykyC1PCYdFGOO9S2KHJRENQbpcY2EZp0
         uSqZn773neioT0RMsGMOpCnWPLn4Jkf3LDZ4PLNlOwNm5A+qJ95MEPWQSXbPe3VMzOUV
         B470RNn3zKOZWY2ypEjjnHYXATq27sK2YnSn/0nSmTbuTgBcAAxogEG3IupWSRWx2ubV
         rD81Vofy03fEEUrdI2rugTMMykovBLVIdXfOoEhBJNlEYuB3crWPeEPnWbKlMcFxjDR4
         VSFA==
X-Gm-Message-State: ANhLgQ0z2WlSRLIA5OOWagPbUMOPS7k5yGeqU78i05pnxuefBcVeyCBq
	GVLcjnIh9ohKakdJyuo7G6ZMyGASmY4=
X-Received: by 2002:adf:f04c:: with SMTP id t12mr12361207wro.227.1584879278908;
        Sun, 22 Mar 2020 05:14:38 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.132.208])
        by smtp.gmail.com with ESMTPSA id s15sm19655524wrr.45.2020.03.22.05.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 05:14:37 -0700 (PDT)
Message-ID: <4c9df138ba2d1f5cb4f1a5a75f507ce0dfdb267f.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: hp: Use netdev_warn().
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Jaroslav Kysela <perex@perex.cz>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Date: Sun, 22 Mar 2020 08:14:35 -0400
In-Reply-To: <alpine.DEB.2.21.2003221228470.2325@hadrien>
References: <20200322110035.2756-1-jane.pnx9@gmail.com>
	  <alpine.DEB.2.21.2003221207570.2325@hadrien>
	 <32464c2c8a461ea44442cbe866f7b70d3ac4414f.camel@gmail.com>
	 <alpine.DEB.2.21.2003221228470.2325@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-22 at 12:29 +0100, Julia Lawall wrote:
> 
> On Sun, 22 Mar 2020, Sam Muhammed wrote:
> 
> > On Sun, 2020-03-22 at 12:09 +0100, Julia Lawall wrote:
> > >
> > > On Sun, 22 Mar 2020, Sam Muhammed wrote:
> > >
> > > > This replaces printk(KERN_WARNING ..) with netdev_warn(),
> > > > as the use of printk() isn't preferred when
> > > > a struct net_device is available.
> > > >
> > > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > > ---
> > > > Changes in v4:
> > > > - Make log message more clear.
> > > >
> > > > Changes in v3:
> > > > - Update subject line and log message to be more desriptive.
> > > >
> > > > Changes in v2:
> > > > - Remove " : " from the printing message, netdev_warn() doesn't need it.
> > > >
> > > >  drivers/staging/hp/hp100.c | 9 ++++-----
> > > >  1 file changed, 4 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> > > > index b89c4dcf53f5..1afd511260d0 100644
> > > > --- a/drivers/staging/hp/hp100.c
> > > > +++ b/drivers/staging/hp/hp100.c
> > > > @@ -469,8 +469,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> > > >
> > > >  	eid = hp100_read_id(ioaddr);
> > > >  	if (eid == NULL) {	/* bad checksum? */
> > > > -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> > > > -		       __func__, ioaddr);
> > > > +		netdev_warn(dev, "bad ID checksum at base port 0x%x\n", ioaddr);
> > >
> > > After I apply the patch, I see this as 1 character over 80 characters.
> > > You could put ioaddr on another line.
> > >
> >
> > Oh, is there a difference between Checkpatch.pl after applying the
> > patch, and running checkpatch.pl on the file after changing it?
> > because i didn't have any over 80 characters warning on the range of
> > lines i modified
> 
> I don't know.  I didn't run checkpatch.  It's just one character and it's
> a line with a string, so one of these conditions might make checkpatch
> ignore the problem.
> 

Sorry about the newbie questions, is there an action i should do about
the <Acked-by> tag, 
or it gets added automatically?

Sam

> julia
> 
> >
> > Sam
> >
> > > julia
> > >
> > > >  		goto out2;
> > > >  	}
> > > >
> > > > @@ -478,9 +477,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> > > >  	for (i = uc = 0; i < 7; i++)
> > > >  		uc += hp100_inb(LAN_ADDR + i);
> > > >  	if (uc != 0xff) {
> > > > -		printk(KERN_WARNING
> > > > -		       "%s: bad lan address checksum at port 0x%x)\n",
> > > > -		       __func__, ioaddr);
> > > > +		netdev_warn(dev,
> > > > +			    "bad lan address checksum at port 0x%x)\n",
> > > > +			    ioaddr);
> > > >  		err = -EIO;
> > > >  		goto out2;
> > > >  	}
> > > > ---
> > > > 2.20.1
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322110035.2756-1-jane.pnx9%40gmail.com.
> > > >
> >
> >
> >



