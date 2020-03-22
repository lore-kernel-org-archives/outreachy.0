X-GM-THRID: 6806929906514001920
X-Received: by 2002:a2e:8609:: with SMTP id a9mr6026405lji.141.1584869601732;
        Sun, 22 Mar 2020 02:33:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:58f1:: with SMTP id v17ls684597lfo.8.gmail; Sun, 22 Mar
 2020 02:33:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtve70ohknSwPG9cjsol2WHDoK/g2BdUNY+n9dWYN5CKI6xbfWFDn/b4YFp3OqNWODXH3FV
X-Received: by 2002:ac2:4307:: with SMTP id l7mr9880015lfh.37.1584869600300;
        Sun, 22 Mar 2020 02:33:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584869600; cv=none;
        d=google.com; s=arc-20160816;
        b=zySz39gq8qSHD+cHjM42pmLCPiimxBh9OW8gtOV3MAVlFWh7jo33r3mP5SGAxNZqk8
         fZy42SuGiJEGeJpYKRHbmlcKtT3qZehSFfNteXCBEEFEYoyZlhrmCTfF3jIZyVHMvB6J
         x7PhWjqgeHxpA/Mjq7HgCfcDnfVJRrb3nKg8Qf3KzbzIyJPi9n2K1PDre3i7HH2bkQEd
         ZqAtRsgi9xS2GIRQ03k4t7sdeqqWlmGXxhEqDD/gSaoEEqpzGoNbzCj9A+LFiNusZIFZ
         FlAkmfQpbHCu3DOVg6VReanuvvrSqV6/jUuyKaI5RjXaZspABiVvVXPjh4XvGw6cpA43
         qrdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=Sv/PbYbgaQOvd9mWoXY4Pv27ArpiP8ib8E+UErXo1IQ=;
        b=JbnEDq15Q+HCZ7Zutncx9oKuKr0gN8ir7gyXhN/wEJ9xEulfXJoWNA8IVUknvl217L
         j2aSmsCjLdik1eER0ni5sweYDd+Wdz+0glp+V278iEx5Ej7jyqaqOtnECGK2YlxQE2B/
         t81qS9IljJtAeMIlOpxQgaVlNTfhDagXWhUM5OfiQIbUaoepHzGKEObHO2bG2xenRbDj
         pZRqRVagFhZf8+QsJvdFcBhangXGRxcZKqekcE4UPMCVO7WuTTqdhPNFK9n5lbI9k4Bf
         kCWheclMe0wC7AHlAnpOi3YqVnm0W+xTpW5C+E5dz2ddhzKHRD4E2zm7YV6reC6jhia9
         ezmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FgXb6ggb;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id m11si497336ljj.2.2020.03.22.02.33.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 02:33:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FgXb6ggb;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id d1so11011770wmb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 02:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Sv/PbYbgaQOvd9mWoXY4Pv27ArpiP8ib8E+UErXo1IQ=;
        b=FgXb6ggbcaYNyYXMIYiTBsCI3irp2QUvRxgudUyYBujBFCJsMn/in/eSXSD5ZlROse
         RAKyynoH7dT2RIJgGef3VZcdW1aMLXKuovnpc9gJCOr88d8p/IY4coWQHmUKc2oAxbjl
         QSSGCiAKXWjwJNWURpCufcmI4XzWmHNcvu40ILPygPWt9ymEMkUWbJPFPnUEQBYoTf4v
         NuUvpOI8g99pruRY6ALx5+C6yjbNcljCf8fDOSLDFhYmg8HnRUkURmh6c8IHHT5AS1RE
         K23fXi8R5ARwP5arUCkTinPLtcwQxgtOlRBVL9oPY+Szq7WK3GyNmPhqpIHKPQj90Et0
         JNRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Sv/PbYbgaQOvd9mWoXY4Pv27ArpiP8ib8E+UErXo1IQ=;
        b=AJJrXvwdZB1cDUeOqgKWZR81VCZ2rsiP6CGWi7Gmgzcpl25243oGS7EtqikPcVSLR7
         pvbXiNnRpeu6oiUZkrjCXsmRp+Gb1L6bMprTJVFNpuZZUsprSPtQVx7NJHr+BRgojSgh
         sCX+7zwRUUnDAaaqFAuSKgbaHrx8hGEBgNMEE+2Eop33H9Lr1j+WSSARwu1Jj2o2ml2F
         +eV+veqwnrgJ5XrCzt6B2qPxrUU6xx5xpYs3Bd5DA4e+zh2dvVMfVT9u5T4yxlZnYN2J
         buf4nyKN1/UjbZ8Dgsz4UDNnpE9fX050fj4YvqVJ4uHXU/SE5OAitOqaNdFR/M+FtJen
         QJHQ==
X-Gm-Message-State: ANhLgQ1iWd6PruUDU2HoQVc23ttO2EaedLU5/t+oVG9cAMmw5sXt0pIK
	6POxqBLlsPhJnwmPbCIQnhYJ3kFKWpo=
X-Received: by 2002:a05:600c:2306:: with SMTP id 6mr20436336wmo.86.1584869599803;
        Sun, 22 Mar 2020 02:33:19 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.132.208])
        by smtp.gmail.com with ESMTPSA id k126sm16671386wme.4.2020.03.22.02.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 02:33:19 -0700 (PDT)
Message-ID: <b4343fc44a1ee33256fbcd87d78b718f7b381b39.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: hp: Use netdev_warn().
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Jaroslav Kysela <perex@perex.cz>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Date: Sun, 22 Mar 2020 05:33:17 -0400
In-Reply-To: <alpine.DEB.2.21.2003221012440.2325@hadrien>
References: <20200322072424.3922-1-jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003221012440.2325@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-22 at 10:13 +0100, Julia Lawall wrote:
> 
> On Sun, 22 Mar 2020, Sam Muhammed wrote:
> 
> > This replaces printk(KERN_WARNING ..) with netdev_warn(),
> > as the use of printk(KERN_<LEVEL> ..) isn't preferred when
> > a struct net_device is available.
> 
> This is better, but it's printk that is not desirable in general, whether
> the KERN_WARNING is there or nor.  So the log message could be simpler,
> thus making it easier for someone who is looking at to see the issue
> quickly.
> 

Okay, i thought id make it more specific, v4?

I have another question about kernel printing messages,
 for messages not specific to a particular device we use pr_warn, ive
got a driver that made a _user-defined_ pr_warn macro in a "driver.h"
and used it across the driver.

shouldn't #include <linux/printk.h> replace this _macro_ ?
that including it in the "driver.h" will recursively include it
_driver-wide_

or its more of "i use one macro and i want to load fast" so they prefer
using their custom pr_warn?

Thank you.
Sam

> julia
> 
> >
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---

> > Changes in v3:
> > - Update subject line and log message to be more clear and descriptive.
> >
> > Changes in v2:
> > - Remove the " : " from the print message, netdev_warn() doesn't need it.
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
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322072424.3922-1-jane.pnx9%40gmail.com.
> >



