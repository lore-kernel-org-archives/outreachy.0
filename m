X-GM-THRID: 6463987902323884032
X-Received: by 10.46.31.2 with SMTP id f2mr904749ljf.31.1505150189897;
        Mon, 11 Sep 2017 10:16:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.163 with SMTP id y35ls1208600wmh.23.gmail; Mon, 11 Sep
 2017 10:16:28 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4sGwK4HTnu18PEj1bG/GHappqAgAq84snRqYD7q8iUJDu9n0kQcUfQAOmCqD6KEXQrYztF
X-Received: by 10.223.166.240 with SMTP id t103mr667809wrc.31.1505150188778;
        Mon, 11 Sep 2017 10:16:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505150188; cv=none;
        d=google.com; s=arc-20160816;
        b=ydAHTPqRVeUHKgVx5Z/k7C029bZI2BgCEQCNaOJw3F78lVXptG40vgqs/EvdnmaFu1
         /G+MevQAdsxlfmojkJcqnF78aaUdUlYJdPKhuJT1IVtVdsFfjy1A6U+vwg/tyvdJgtQt
         PegnacC1u1SeTaj5V21UCcyRfzEdIBNjlu8czZVUppp1posbGwF9o+pW4gBB+J5kgz9A
         yhCSvSGXs8a+/+04i3HKjHLlMvlSgQSAhL35I5w9AjheQbSDbcrBfCaEQ0l5Algh+/7v
         giB1JS3F5Xf2ksTVAqBwE0a1acBCCw0zZPhztmSaUllpfSH91AjtiU5lVr92O5mK77Vg
         eEtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=c6gHsU7+uiHymTj2wicTXc2Sv6nmzCNRDRIGL5v90sM=;
        b=Abi6FnZRQFARwm/SHw0YUfVuXJAjdlKPdlRpmh9mePg+m8h/x6gmRLVLfQogBfEKQ9
         72Q4skZ/M3C/LtlerEPtWo7+IPTSyLZPWhxRRjusVb2AOxzk1cfxhRQIBZlV5jliVqQF
         XhziyrG7/5keMVKzWaQdQrngRcbgUbqmIfqhZolIYzvRdzW8wP7G7k57H69eXvMqkb4/
         OYyDYoiasvj9fDoX5xTduM2y7oBoD8gwvjlToAMZsUOtq1NHV3H810B70cpUcemQ/XTo
         sCGpl9c7mVbNK1X9rfC/s9g8U96BC20Y+Vyoz8/gciurIwRFp7MyZp/mdqs1/Ix6yOSd
         gqFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p200si440446wmg.4.2017.09.11.10.16.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:16:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,378,1500933600"; 
   d="scan'208";a="290551537"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 19:16:28 +0200
Date: Mon, 11 Sep 2017 19:15:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: vc04_services:
 bcm2835-camera: Add blank line after declarations
In-Reply-To: <20170911171458.GA28700@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709111915220.16190@hadrien>
References: <20170910033412.GA26296@meghana-HP-Pavilion-Notebook> <20170911162847.GA26750@kroah.com> <20170911171458.GA28700@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Sep 2017, Meghana Madhyastha wrote:

> On Mon, Sep 11, 2017 at 09:28:47AM -0700, Greg Kroah-Hartman wrote:
> > On Sun, Sep 10, 2017 at 09:04:12AM +0530, Meghana Madhyastha wrote:
> > > This patch adds a blank line after declarations. This enhances readability.
> > >
> > > Problem found using checkpatch.
> > >
> > > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > > ---
> > >  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > > index 4360db6..7a7b00e 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > > +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > > @@ -1982,6 +1982,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
> > >  	struct vchiq_mmal_instance *instance;
> > >  	static VCHI_CONNECTION_T *vchi_connection;
> > >  	static VCHI_INSTANCE_T vchi_instance;
> > > +
> > >  	SERVICE_CREATION_T params = {
> > >  		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
> > >  		.service_id		= VC_MMAL_SERVER_NAME,
> >
> > checkpatch is wrong here :(
> Sorry about that. So should this be dropped altogether or should I continue removing the typedefs?

The existing patch should be dropped.  But eliminating typedefs for
structures is good.

julia


>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170911171458.GA28700%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

