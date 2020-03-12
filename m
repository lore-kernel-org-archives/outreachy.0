X-GM-THRID: 6803023005726277632
X-Received: by 2002:a37:9684:: with SMTP id y126mr8075398qkd.151.1584024974027;
        Thu, 12 Mar 2020 07:56:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6487:: with SMTP id y129ls3021486qkb.10.gmail; Thu, 12
 Mar 2020 07:56:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv7gcuos9Ej1RHoe77XqpNDxXKQCaKhgQPseAs8t49c7BjZW5dHmpb3zInVY9WMt9aLeoU+
X-Received: by 2002:a37:91c3:: with SMTP id t186mr6000429qkd.239.1584024972170;
        Thu, 12 Mar 2020 07:56:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584024972; cv=none;
        d=google.com; s=arc-20160816;
        b=eB7RXbV7/uFFhGfrmFEqPA+xqGsjuvJIl4et3LQmusHRUqp9VeV4PNMphbZX+VI2RO
         RCxTPeSXMzieqPrzz3ykzW7VIuvSb50aSnmR/cTVJ446Dwv9MB8kGEYqmgCFvs76e2Rz
         WAos4fHfirv8DXYwW+2m/Dr3XoH7EHfyd28iwWg6cG5D+d6J3OnKORhsaPIcevXbF1td
         UmM6NcSrTu793hnQ1h6BN+geioozNIMSWaOhXk2V7K9+Q4VE4rAAskXoXc0PnDPl0PuF
         Yj79CuX5FkTBVTiW0ElqNGbJ7JdZgk6AqhuV42YIv1SrjFjJO+F5ZGb6U2mQXxiN3OIn
         DW/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=NsvXc3jE9rmTQwWQ8oncK41WfRIXfveaff3CEv0ytA8=;
        b=lrLo1SXr3wkhcClB3Znlppbu3Lap6hcWoezXBVsFir1Qr86OuOpfAfgK2K2fXz6uLr
         COJkBAGAEndjLtcVxe7IC6kmQStcKQEpP5ClkRpBcg9oZjeem5Lfw0YCZk+x2W9XNVFR
         f9m2srOBtfE3VR1jwpy8c10/piMRZkDpmNkpBcbwWUSvmjyzfDw2Cy4ZrmkT3E3pPWp5
         C6eE1NNKYpqedJkbdOZce1qUGrJrxE57ZILghagAeKvn/OQURbkrjAbOtOB/zE8xSQin
         zQiN7OwPEYSlK3OR2ZPLSye47e//Qg6uZXSwML/QBdWffoAJ5aKhsPV80/x7/Gl9zSVH
         LhcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=GIJbuPsG;
       spf=neutral (google.com: 2607:f8b0:4864:20::444 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 198si287357qkh.7.2020.03.12.07.56.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:56:12 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::444 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=GIJbuPsG;
       spf=neutral (google.com: 2607:f8b0:4864:20::444 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pf1-x444.google.com with SMTP id b72so3378509pfb.11
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 07:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NsvXc3jE9rmTQwWQ8oncK41WfRIXfveaff3CEv0ytA8=;
        b=GIJbuPsGohmyD8fKzLFY3B19OR/ypNH8ZavWBT6pKP5brkCXy4PIlbuwoW6PP6F2H5
         8vQ+FLyw2bF3WPGGWvjdaBHSYB/jX+MtZu6VxbzXLO0dG2hvVgax48O1KyT41giMux7/
         5FNEohzZ5sQkZYN+z5VRpO4h/tD1E/yAXQNC027j9tAhm37pORQGnwMMvJ3+nzq1+w2t
         mYgXlAO8LlakEKZ5pfLntb9QV5R1dyqZ0h6xSAzEfwvqVxbZD+Bb4fpY4SA9X7KmdQ3v
         ucUZiHU9vyHZ4vwukzgCdjUZOjIolsxTJwIYGfy4RIdGwMGVWw7gKNSF+75/kC6+Z70q
         t0qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NsvXc3jE9rmTQwWQ8oncK41WfRIXfveaff3CEv0ytA8=;
        b=b6XZDTKQdfhryNH9dh1Xxwku56DO/i7GoZImsuiXmn/rIzeSDV1Rwn4vdo64kJMR7m
         trhne/y7rVJ71z+rJCatKlOOfM9B22TcJ5q2JndXwHztIpVT1e8d2OSZk6Phjs325qe3
         KQpQWzuvn/WW1RlgbG6XmzCkpLkpQwkwJ1P0RXVtgw7uCsyVm2Ulsh54omlw/D5S2SGP
         EiKgV5NI3bl6W6wOKu0RDL/VRMtG+z1ZN1KUv7ZM6YAgbleOK/0T0FdZM29/27fkO3JV
         NLAVTBwg2I5OPd45qd13Sv/bds8KPHFiJA0Dmig8R3X9VZ0I/s9PSRGa4Y5O/uqmKsIG
         CYFg==
X-Gm-Message-State: ANhLgQ1nNtYYboth/bX1Vc6wz4pMb83JgVH5Rg3TzvTKnfkvtl9wyg1k
	5KV+W13PYjqxgt7d5eJ2fSAcWQ==
X-Received: by 2002:a63:f757:: with SMTP id f23mr8171980pgk.223.1584024971008;
        Thu, 12 Mar 2020 07:56:11 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id f9sm9291670pje.43.2020.03.12.07.56.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 07:56:10 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Thu, 12 Mar 2020 20:26:03 +0530
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/5] staging: comedi: ni_mio_common.c: reformat code
Message-ID: <20200312145603.GE30896@kaaira-HP-Pavilion-Notebook>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-2-kgupta@es.iitr.ac.in>
 <20200312081645.GB11746@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312081645.GB11746@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 09:16:45AM +0100, Greg Kroah-Hartman wrote:
> On Thu, Mar 12, 2020 at 12:13:23AM +0530, Kaaira Gupta wrote:
> > reformat the arguments given to ni_stc_writew() to increase code
> > readability in ni_mio_common.c
> > 
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/comedi/drivers/ni_mio_common.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> > index b72a40a79930..06ed4b1dd875 100644
> > --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> > +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> > @@ -2445,9 +2445,9 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
> >  #endif
> >  
> >  	if (cmd->start_src == TRIG_NOW) {
> > -		ni_stc_writew(dev, NISTC_AI_CMD2_START1_PULSE |
> > -				   devpriv->ai_cmd2,
> > -			      NISTC_AI_CMD2_REG);
> > +		ni_stc_writew(dev, devpriv->ai_cmd2 |
> > +				NISTC_AI_CMD2_START1_PULSE,
> > +				NISTC_AI_CMD2_REG);
> 
> No, the original is correct.  What caused you to want to rewrite this?

It is more readable and gives the same results, hence changed it.

> 
> thanks,
> 
> greg k-h

