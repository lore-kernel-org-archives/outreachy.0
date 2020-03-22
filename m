X-GM-THRID: 6806929906514001920
X-Received: by 2002:a7b:c20d:: with SMTP id x13mr7164566wmi.52.1584876221915;
        Sun, 22 Mar 2020 04:23:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls929063wrp.11.gmail; Sun, 22 Mar
 2020 04:23:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt3M7uyj6488LtYI0BBkWFOWXKf9FhP9Vt/YRolYJpt1gCnbsDX3upWGSRMXHDnMWt5EhBT
X-Received: by 2002:a5d:4104:: with SMTP id l4mr24374160wrp.55.1584876220356;
        Sun, 22 Mar 2020 04:23:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584876220; cv=none;
        d=google.com; s=arc-20160816;
        b=ZPLkJlTKyyyZW5ozUvlAk4G4DsHxYp9cRNBxuG8y+u6KvLGW51wemCTWvlNY9pZkbe
         mgIaIjt4TN3iCGhbQmbNZr7VVoOMh75Ug0Eq+exwJ6/VMDrbA4215JvXRwJjfbevZ/df
         EzreN3lJdSCitVehbZc4J3/4rXHl8GyXMusXvYGfOfoP7Srep754N960jEvH11TsrsIb
         Pt0xUIGUFTyiyWqbDRZN/XVczXBfeLhClqYUAmGXidESZGeimsdWdrSMoJy2BcIbISZh
         wxIGJ07nBv/dNjp6HZaRIET5c71f8QBe7CIVZB/b7yKn5CYYMc1vP4TUNjtBxuS7RKaS
         9l+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=p8k8DS9cXgjCNNvMRvj3PevyG3cLehYQUCbjQYFq+/U=;
        b=HUNLQOosZBv1WrnbInQOFnAihu3dEv9MjVwNqGi03b4rgdjlETRvQUJIJ8+gUNp5kd
         3wKPOtV+mNkXMws9N93TloWcOO9OsfH0itWi+GS7wvyAcv5+Y7Me+y36gEppR0nY91HZ
         WiV2lVxIXrffRzA72OouWngw6yJOcU7N9pXiuV+sJZbEaMKefRpEKLfOveyJ2ABduBHN
         gKzw5zvfR2lt8PykgOMILS5skrJbe5QDbirbgBRn7RFjQE9gKY2y+GMMmFhTiuYnsDVi
         7RlUboEc/Q05wydMSIPZCDfOjIxKuPtpxtK6N3kNn1UL/XjSOJXTtGmrkzB5W7qVAXHk
         1tQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dcOm+18N;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b81si394655wmc.2.2020.03.22.04.23.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 04:23:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dcOm+18N;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id 31so6957557wrs.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 04:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=p8k8DS9cXgjCNNvMRvj3PevyG3cLehYQUCbjQYFq+/U=;
        b=dcOm+18NPrgIhSQEFybuNqrmWWBD/4e3F0IHPU3DEVdt5HSC3IuIoZ++YDXTfOTnsV
         sbT2zEJg4vnl08S3zSUo3cXqbRsxHrrHuZ8jPyGn03IqbJP/FGlFeWLtf85/7xm0wTlq
         YZVi8y6nIC27+vC0anXdY8XpP1wllSc77qaD2r/S5MFASyVGlfDkEwM73gixsuQngRR3
         9gMb5BJjPzSZSxQPYe7e8zXIBq7Uz0bUYLxbWldr5F9IVn83U6ZqY9TUlNeMN4MiSoPb
         ZFxvOZT10b8S0lnEYMGm1w14rCmxp13q1EelAMCuBnXv1fdxw0NzFHP4vE4myqole4/5
         U9Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=p8k8DS9cXgjCNNvMRvj3PevyG3cLehYQUCbjQYFq+/U=;
        b=YmIXx9GK5XiVtSAtAUZue4L59pse8JTmy54OkUM+UUBlZoAWlz2dUyvgUHRMY2rGgh
         T1Maf/pb1447BqUvuLxLrg0gdyTJBJmPTZgHFxuoVX0an5KU1AkI0N1HITa/X7LZ8FFy
         x76hyfVlfVrdlrFiF9Mx0jdWKErU3EyM0ygeubI7hYt9krZKry2RohihBduIMJ3+VAgt
         x9dckG7jncrD4Oh5y62dDhZApaFmQc4v3xHSxohI5qfe6g/LOLNua4c5IdXYac8vOeuI
         35jf4bUEy2q+K/SHS9dMeJAuSXNAIEZCGxo4If1eC0G23IJOOA96zSdo5ZpwGzQU3b+E
         rOQA==
X-Gm-Message-State: ANhLgQ0YBbrUqiGgQ81nClcZjnXA0QxruIKCGU3yjG3Qdvsko3xDKnbH
	za2kZf6ET/N8wRKDa84bCW0dP8rOpws=
X-Received: by 2002:adf:9d8a:: with SMTP id p10mr10164605wre.190.1584876220002;
        Sun, 22 Mar 2020 04:23:40 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.132.208])
        by smtp.gmail.com with ESMTPSA id i1sm17669843wrq.89.2020.03.22.04.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 04:23:39 -0700 (PDT)
Message-ID: <32464c2c8a461ea44442cbe866f7b70d3ac4414f.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: hp: Use netdev_warn().
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Jaroslav Kysela <perex@perex.cz>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Date: Sun, 22 Mar 2020 07:23:37 -0400
In-Reply-To: <alpine.DEB.2.21.2003221207570.2325@hadrien>
References: <20200322110035.2756-1-jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003221207570.2325@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-22 at 12:09 +0100, Julia Lawall wrote:
> 
> On Sun, 22 Mar 2020, Sam Muhammed wrote:
> 
> > This replaces printk(KERN_WARNING ..) with netdev_warn(),
> > as the use of printk() isn't preferred when
> > a struct net_device is available.
> >
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> > Changes in v4:
> > - Make log message more clear.
> >
> > Changes in v3:
> > - Update subject line and log message to be more desriptive.
> >
> > Changes in v2:
> > - Remove " : " from the printing message, netdev_warn() doesn't need it.
> >
> >  drivers/staging/hp/hp100.c | 9 ++++-----
> >  1 file changed, 4 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> > index b89c4dcf53f5..1afd511260d0 100644
> > --- a/drivers/staging/hp/hp100.c
> > +++ b/drivers/staging/hp/hp100.c
> > @@ -469,8 +469,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> >
> >  	eid = hp100_read_id(ioaddr);
> >  	if (eid == NULL) {	/* bad checksum? */
> > -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> > -		       __func__, ioaddr);
> > +		netdev_warn(dev, "bad ID checksum at base port 0x%x\n", ioaddr);
> 
> After I apply the patch, I see this as 1 character over 80 characters.
> You could put ioaddr on another line.
> 

Oh, is there a difference between Checkpatch.pl after applying the
patch, and running checkpatch.pl on the file after changing it?
because i didn't have any over 80 characters warning on the range of
lines i modified

Sam

> julia
> 
> >  		goto out2;
> >  	}
> >
> > @@ -478,9 +477,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> >  	for (i = uc = 0; i < 7; i++)
> >  		uc += hp100_inb(LAN_ADDR + i);
> >  	if (uc != 0xff) {
> > -		printk(KERN_WARNING
> > -		       "%s: bad lan address checksum at port 0x%x)\n",
> > -		       __func__, ioaddr);
> > +		netdev_warn(dev,
> > +			    "bad lan address checksum at port 0x%x)\n",
> > +			    ioaddr);
> >  		err = -EIO;
> >  		goto out2;
> >  	}
> > ---
> > 2.20.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322110035.2756-1-jane.pnx9%40gmail.com.
> >



