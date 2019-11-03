X-GM-THRID: 6753896393761357824
X-Received: by 2002:a2e:3304:: with SMTP id d4mr14823391ljc.142.1572770441622;
        Sun, 03 Nov 2019 01:40:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:86c6:: with SMTP id n6ls1466338ljj.5.gmail; Sun, 03 Nov
 2019 01:40:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx02//lCHH2AgE+0aOBDcds8oScbbu0PU5Zma9OwqbczvalcPoI+b4JqQNJqn9nSURr0nIT
X-Received: by 2002:a2e:2a43:: with SMTP id q64mr8629274ljq.242.1572770440840;
        Sun, 03 Nov 2019 01:40:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572770440; cv=none;
        d=google.com; s=arc-20160816;
        b=RnVceXCdkjG3d9+nfe3M52UxtCBA+WuBBzeaQKsip/Lqu5kEA7pSEmDIw1vWLX7zph
         TsToQgWr1opkr8QeCCf9B1YTPzmkfe7ixYKP8ClP305psnJBS8svAdEkkmZKMJ6Cw56v
         J9NyI9DT627ZzIHArwBAIXcQJ50KBwp7U0LoHVf8Nj3KX/0MrEZT/mFexb0VmsCCY2tP
         x/mqTEP5qKAtyyiPuswrEilp0QsjteoWE08LOS+wSgeYKopZz5P7pk9pRj6AJZUoY8Iz
         fq/HBDo9rSPzBsS+p56/jMxp8mjSxdkwW+1JgmGwYmQXC+wDTewD5pquOvHSENBFV7id
         mz/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pAXe/sqGYeq3a5gQl4IY4Pa2xQZ6j9uw9pRlsm1Bz8g=;
        b=lXLXmwweulWyQqdIFE8ukNNcVwMUu9uvUd/D6LAC2UBXUQkY/yFK9aYsLjqFfkFLef
         wbhDGtjiZSMgXhu+RRA/gDbGbEiMorf+6xpnkGV5695ouJHt0nqRd6y9ltaE40Yssf6V
         CztFjM81OesYPhsOwr1cdkCeeT/xY0MVXqN6g9SCEoBUxJIUt/A8wDEeK+EWK+QCdTEC
         kG0wT5jq2XbK2yyX1uaoZlbMTqqvt+cMCckSZlGFtdJ8jZb2WUcUL9wUwtdWLftSN5/3
         P4YUWFF1l9onR2gCpxrZ3P4amQgVakpTJhEi3L9HrPvyNzWBQSpWFjjXpaZZqTKPbBtA
         XL4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z3si811667lfe.4.2019.11.03.01.40.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 01:40:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,262,1569276000"; 
   d="scan'208";a="410040684"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2019 09:40:17 +0100
Date: Sun, 3 Nov 2019 09:40:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Stefan Wahren <wahrenst@gmx.net>
cc: Jamal Shareef <jamal.k.shareef@gmail.com>, 
    outreachy-kernel@googlegroups.com, eric@anholt.net, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v5 07/10] staging: vc04_services:
 Renames remote use callback
In-Reply-To: <afd4d5df-06c8-4cfb-ead0-7ce3e3acd2bd@gmx.net>
Message-ID: <alpine.DEB.2.21.1911030939170.2744@hadrien>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com> <5ea44f2d87ff127023dffb70da182e32faac39e8.1572755439.git.jamal.k.shareef@gmail.com> <alpine.DEB.2.21.1911030843440.2744@hadrien> <afd4d5df-06c8-4cfb-ead0-7ce3e3acd2bd@gmx.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Nov 2019, Stefan Wahren wrote:

> Hi Julia,
>
> Am 03.11.19 um 08:45 schrieb Julia Lawall:
> >
> > On Sat, 2 Nov 2019, Jamal Shareef wrote:
> >
> >> Renames remote use callback function pointer to match kernel style.
> >>
> >> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> >> ---
> >>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> >> index 6f3d3b00066d..869ca218c515 100644
> >> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> >> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> >> @@ -93,7 +93,7 @@ struct vchiq_config {
> >>  };
> >>
> >>  typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
> >> -typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
> >> +typedef void (*vchiq_remote_callback)(void *cb_arg);
> >>
> >>  extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
> >>  extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
> >> @@ -136,7 +136,7 @@ extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service
> >>  	enum vchiq_service_option option, int value);
> >>
> >>  extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
> >> -	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
> >> +	vchiq_remote_callback callback, void *cb_arg);
> >>  extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
> >>
> >>  extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
> >
> > Are any of these definitions actually useful?  It is suspicious to change
> > a prototype without changing the corresponding definition, but grep
> > suggests that there is none (and no use either).  And likewise no
> > definition or use of the other two functions that we see here.
>
> on the Raspberry Pi the roles of vc04_services are the following ones:
> Linux (on the ARM cores) implements the client side as an open source
> driver (this one) and the VC4 closed source firmware (on the VPU)
> implements the server side. Both sides share a common code base. So it's
> very likely that there are interface functions which are only
> implemented on the server side.

Thanks for the explanation.  Should they be dropped?  Normally, the kernel
doesn't like code that is not reachable by any kernel code.  But perhaps
for function prototypes it doesn't matter, since they are not executable.

julia

