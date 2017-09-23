X-GM-THRID: 6469025072932716544
X-Received: by 10.223.134.175 with SMTP id 44mr99592wrx.11.1506190241715;
        Sat, 23 Sep 2017 11:10:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.149.3 with SMTP id x3ls816482lfd.0.gmail; Sat, 23 Sep 2017
 11:10:39 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAGjMnA8qXk0dR18k/2WKBAx6nve6OZymPW0O3AuU2hd5rdhS4tNDmJ4J4iXjst+iGMRa32
X-Received: by 10.25.162.201 with SMTP id l192mr150095lfe.39.1506190238992;
        Sat, 23 Sep 2017 11:10:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506190238; cv=none;
        d=google.com; s=arc-20160816;
        b=XThMQUbdynaLqpw7y5BfMRQL4nw1kYti0daS2KqdY9J1ziaImoQD3hK8ohNXokRY09
         Zob8cNAW9e9kf2N25zeXJW1EPYyx4aFfCQAi286Izn1cJTO/150RbE+r1JKrfTO7SJqm
         w4wXsdZS/CtnEO+9nx4cf7GpFf6F56aP0IkfuN2FRGqE/DXuh8qCYdbKhZ9tLwpZPXWU
         pIjfqlu8sgYZHEW2Tdy8WeJonY6IdgmXOcwttiOIxDAgbsq+kx5ujUcQ3Vk48WUmqfrO
         2+FtBRzlIYcYtBfFcYUvhT7l75aQvyU3Tz+fFq8CAPiCLMk95JK/TyNDNvqPe7BN+SLA
         yKrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=2j4p0V4tHVREgKgazjmp193we7Br89Y54s0QFLIdCwU=;
        b=GSlKCpFOOJN6iQMl780+piMrzyPV1ruNseBGDsvMMuVpfqf7gl2kdEI1I6LcxYTQ+2
         5x+AsK8TVFWZEWt7+QIwgmfTJ28RqZAu3PZKhpHpQ+C7SYA1SvbOnsF0zZq9EHtMU7Zu
         zUDQGPAfxz0TrUHWMYjthATXKD+5CS0rTfJcZ6aw8HWAV++LU6jKGaW9mpN/vhF7wlLP
         k2rbGLnaYiUuTQOWT8EgM9vUJ4pKuAdchFdTU/5nzZtJMjR8w5tX/JtzhWWeaQ5zTlnE
         6lf+8tilt9Inwqhx+PEGgBw1HPXh2eX3Jh73ALlt6+Dzbm22goxsMshaE2DsOBZRgg0s
         Vb+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l133si200027wmb.3.2017.09.23.11.10.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 11:10:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,430,1500933600"; 
   d="scan'208";a="238495987"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Sep 2017 20:10:38 +0200
Date: Sat, 23 Sep 2017 20:10:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Blank lines aren't
 necessary before a close brace '}'
In-Reply-To: <20170923174900.GA9303@manoharreddy>
Message-ID: <alpine.DEB.2.20.1709232009130.5987@hadrien>
References: <20170923172108.GA8880@manoharreddy> <alpine.DEB.2.20.1709231928150.5987@hadrien> <20170923174900.GA9303@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Sep 2017, Keerthi Reddy wrote:

>  Sat, Sep 23, 2017 at 07:28:36PM +0200, Julia Lawall wrote:
>
> > This is on the same file as your previous patch, so they have to be put in
> > a series.
> Can I update the patch previous patch into a patch set by combining this
> one the previous one?

I'm not sure to completely understand the question.  Each patch should do
only one thing.  These are doing two different things, so they should not
be in the same patch.  You need to make a series, with one being 1/2 and
the next being 2/2.  How to do this is described in the tutorial.

julia

> >
> > On Sat, 23 Sep 2017, Keerthi Reddy wrote:
> >
> > > Before closing the brace, the blank line is not needed. That blank
> > > line has not meaning here. so remove it.
> >
> > This is on the same file as your previous patch, so they have to be put in
> > a series.
> >
> > julia
> >
> > >
> > > Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> > > ---
> > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 1 -
> > >  1 file changed, 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > index 36dc2a0..e7882b2 100644
> > > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > @@ -1111,7 +1111,6 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
> > >  		g_key_gtk_params.key = NULL;
> > >  		kfree(g_key_gtk_params.seq);
> > >  		g_key_gtk_params.seq = NULL;
> > > -
> > >  	}
> > >
> > >  	if (key_index >= 0 && key_index <= 3) {
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170923172108.GA8880%40manoharreddy.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>

