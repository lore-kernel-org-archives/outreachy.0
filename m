X-GM-THRID: 6466263123755008000
X-Received: by 10.25.195.206 with SMTP id t197mr379693lff.40.1505554514443;
        Sat, 16 Sep 2017 02:35:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.83.70 with SMTP id h67ls381489lfb.31.gmail; Sat, 16 Sep
 2017 02:35:12 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDR/URPSvtHJd2LzUF8R117OzAxB5UjtFYMOr6PGUHikLWvpDMv6ZBc4wQk0vRo+qg/akuw
X-Received: by 10.25.18.223 with SMTP id 92mr406092lfs.11.1505554512899;
        Sat, 16 Sep 2017 02:35:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505554512; cv=none;
        d=google.com; s=arc-20160816;
        b=0sWQT8wXl8tZc06MO9e0u3LGhVrdotB/WjTSiLpy5TzsXUw3wUEbSWRlzX2pck+xEO
         hG37Fdjd1kY982iS33SJ99yiOiJasQ9oPYgs2IK2+gMsBEFxlIBTyeAwN/sh00OK9QiS
         2edFIvWs8pNMfItKKNIuERab8de/2OQ9B8r/9dpz3Ksk3w1rZnnl23JUIu09U+jlCAD9
         mi0NTqtN5FGJjFQp4n0fNzZqeQYkR3Eb2dGe76BtzwkQnx8OvyIJqNX4FSG6NYOvFc52
         rJGtl4st4aBugOtU4gIsC3k0+JTNmuvxkwpEVJuUS6r2RnvdrqDi/PxTneVtQ1WYBFF9
         ehhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Y+pYdS8ZTGDE77cikiWwwLn84J3cDNDXZR1BD2pgVhs=;
        b=hNmrtnbY6dUf/TGnjqmxYATheMr3npFnbsdsE2GnpSAgYuIeOF41GKTnkpFK8aBLb6
         NZAme4IQ0OaUEkTltBqnp/j7zPnzg127yjsul2Igs0AG6VKcd5mAiThe1wS4uaBzd2Nb
         y7hMmgTNP2oL4kaCk5gjBod1kLBxsKn3xrxdRlb5UR3VKiFjtN4tUrLlJtQabcjCMuZy
         UK6tcTEV/PQSK/0XXfsJ+cpByE5bxLK2mWFN0l3nx2PO9JkBhNOJzugqN4wKGGxcmnWh
         zfYurcH+mtK6+07EwRHvq0SsvXZuMiJ4czjzBw4SPWBhPTJG1wO8x7IxwS0e7lz8aBzD
         2/Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b130si139277wme.0.2017.09.16.02.35.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 02:35:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,402,1500933600"; 
   d="scan'208";a="237713177"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 11:35:12 +0200
Date: Sat, 16 Sep 2017 11:35:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Aastha Gupta <aastha.gupta4104@gmail.com>, 
    outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-usb: add comment
 for struct mutex definition
In-Reply-To: <1505551165.14664.1.camel@perches.com>
Message-ID: <alpine.DEB.2.20.1709161134380.2943@hadrien>
References: <1505544199-13800-1-git-send-email-aastha.gupta4104@gmail.com>  <alpine.DEB.2.20.1709160948260.2943@hadrien>  <CAHXiS5-uqsTyjXv3KjnGnL9T7hKfEnMPL+RW-CXQE+U-oDFq2Q@mail.gmail.com>  <alpine.DEB.2.20.1709161020120.2943@hadrien>
 <1505551165.14664.1.camel@perches.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Joe Perches wrote:

> On Sat, 2017-09-16 at 10:23 +0200, Julia Lawall wrote:
> > On Sat, 16 Sep 2017, Aastha Gupta wrote:
> > > On Sat, Sep 16, 2017 at 1:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > > > On Sat, 16 Sep 2017, Aastha Gupta wrote:
> > > >
> > > > > This patch fixes following checkpatch.pl checks:
> > > > > CHECK: struct mutex definition without comment
> []
> > > > > diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
> []
> > > > > @@ -122,7 +122,7 @@ struct most_dev {
> > > > >       bool is_channel_healthy[MAX_NUM_ENDPOINTS];
> > > > >       struct clear_hold_work clear_work[MAX_NUM_ENDPOINTS];
> > > > >       struct usb_anchor *busy_urbs;
> > > > > -     struct mutex io_mutex;
> > > > > +     struct mutex io_mutex; /* synchronize I/O with disconnect */
> > > >
> > > > Why did you choose this comment?
> > > >
> > > > julia
> > >
> > > The use of this struct mutex was mentioned before in the code.
> >
> > I see that it is just in the doc of the same structure.  I'm not sure that
> > a double comment is needed in this case. I wonder if checkpatch
> > should/could be extended to address this.
>
> I think that's not feasible.
>
> checkpatch is a patch context based check and wouldn't
> necessarily know that the mutex is documented elsewhere.

OK.  It doesn't keep any history?  The kerneldoc is before the structure
field declaration.

julia

