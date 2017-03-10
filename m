X-GM-THRID: 6395910423688773632
X-Received: by 10.99.222.21 with SMTP id f21mr9995973pgg.23.1489165715150;
        Fri, 10 Mar 2017 09:08:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.232 with SMTP id k37ls3327456ote.15.gmail; Fri, 10 Mar
 2017 09:08:34 -0800 (PST)
X-Received: by 10.129.92.197 with SMTP id q188mr8909019ywb.148.1489165714584;
        Fri, 10 Mar 2017 09:08:34 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y203si1469930pfb.0.2017.03.10.09.08.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 09:08:34 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so11399358pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 09:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zaP1RctqYLPB3dw4su4Ukr2So82CjP3o/vvzyCr/tQU=;
        b=fpHAMLOKQ3KViOxtfVO4X9XApF0lKrKixmZAJkxU4vV9pKIIY3dHJ55Hzq6QnDweXY
         pTnJLPVBhntPQBhv07KOo6gqurjbK4PVkuVqSEA3cLRSMeBr91/ajg7C0+FlL+C6uMSg
         L5/E+xzRXcVsQ9CXy9yradaLW5FUjut/SVWcveHQBEMTDxXUBCexFPl+Pu77KX2Om2yP
         Yxei5bqQhSciYk8ZhasaeJsQloIETMRutqWxAFryShrJdheOSMJF/jW/L39AhoBk/bVY
         OAMHNr69MFKzZO73tTi8pTrrxoN7dWPWydM2okf7OFycJyo1tpn6O7tHGJi/l4tPFs7S
         fXRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zaP1RctqYLPB3dw4su4Ukr2So82CjP3o/vvzyCr/tQU=;
        b=RJs2Jp0/DpuAX8Jcq9pCv9ypQ9L9nCSxRhOXbGfPRWb9QCNnYv4oSqsQelG1o6kGGZ
         JuZgy4Zq/1oLFSDpAQD7pHb67PbqdpB6j1gytEgwds8yJTV+rTPf3bXzNFKNt6KAk0n3
         GZrCN3tycgL3QbZNJvFAC5E4xoVzRD9Y1BCDBiIsyLTbCi0iUlc7dwWEWY3lCCXpCcFE
         Xy0ft49N353VI2h5WhaJoecaYhI/GE2OkFnXYgRXdOBMAVycUBjmLXzqcXz28yhtz6In
         MQC0C44Sl04g8NXchid979/lk1tdfgba6j46NfVXI8vfcV1EWBIpKjx43MZW4U+VwoAy
         yP8g==
X-Gm-Message-State: AMke39nNhqORGYL4blW7o9UsovCAkUM4/N2Vwy5Y/rgAt2Z1bN3yCDONxFr7zVL+0V4Mbg==
X-Received: by 10.98.88.133 with SMTP id m127mr22330825pfb.155.1489165714277;
        Fri, 10 Mar 2017 09:08:34 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id e70sm19737322pfh.84.2017.03.10.09.08.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 09:08:33 -0800 (PST)
Date: Fri, 10 Mar 2017 22:38:23 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: bcm2835-camera: remove
 anonymous field declarations
Message-ID: <20170310170823.GA6474@aishwarya>
References: <cover.1489163547.git.aishpant@gmail.com>
 <a7acfee24fab685d28cc5bb088b2fe4288a4aa81.1489163547.git.aishpant@gmail.com>
 <alpine.DEB.2.20.1703101750400.3356@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703101750400.3356@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Mar 10, 2017 at 05:50:54PM +0100, Julia Lawall wrote:
> On Fri, 10 Mar 2017, Aishwarya Pant wrote:
> 
> > Anonymous field declarations are error prone. This patch replaces
> > anonymous declarations with explicit field declarations for typedef
> > SERVICE_CREATION_T in vchiq_mmal_init(..)
> 
> Were you able to compile this file?

I delete the *.o files from the drivers and compiled them with the
allyesconfig. No errors.

> 
> julia
> 
> >
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > ---
> >  .../vc04_services/bcm2835-camera/mmal-vchiq.c        | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > index 803095e..88b379f 100644
> > --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > @@ -1977,16 +1977,16 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
> >  	static VCHI_CONNECTION_T *vchi_connection;
> >  	static VCHI_INSTANCE_T vchi_instance;
> >  	SERVICE_CREATION_T params = {
> > -		VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
> > -		VC_MMAL_SERVER_NAME,
> > -		vchi_connection,
> > -		0,		/* rx fifo size (unused) */
> > -		0,		/* tx fifo size (unused) */
> > -		service_callback,
> > -		NULL,		/* service callback parameter */
> > -		1,		/* unaligned bulk receives */
> > -		1,		/* unaligned bulk transmits */
> > -		0		/* want crc check on bulk transfers */
> > +		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
> > +		.service_id		= VC_MMAL_SERVER_NAME,
> > +		.connection		= vchi_connection,
> > +		.rx_fifo_size		= 0,
> > +		.tx_fifo_size		= 0,
> > +		.callback		= service_callback,
> > +		.callback_param		= NULL,
> > +		.want_unaligned_bulk_rx = 1,
> > +		.want_unaligned_bulk_tx = 1,
> > +		.want_crc		= 0
> >  	};
> >
> >  	/* compile time checks to ensure structure size as they are
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a7acfee24fab685d28cc5bb088b2fe4288a4aa81.1489163547.git.aishpant%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

