X-GM-THRID: 6394401254530875392
X-Received: by 10.46.77.69 with SMTP id a66mr312955ljb.11.1488907268665;
        Tue, 07 Mar 2017 09:21:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.74.84 with SMTP id x81ls15230lfa.29.gmail; Tue, 07 Mar 2017
 09:21:07 -0800 (PST)
X-Received: by 10.46.22.68 with SMTP id 4mr297394ljw.14.1488907267815;
        Tue, 07 Mar 2017 09:21:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t131si77642wmf.1.2017.03.07.09.21.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:21:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,258,1486422000"; 
   d="scan'208";a="215919449"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 18:20:52 +0100
Date: Tue, 7 Mar 2017 18:20:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 0/4] staging: bcm2835-audio: fix
 coding style issues
In-Reply-To: <cover.1488906373.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703071820080.3150@hadrien>
References: <cover.1488906373.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Aishwarya Pant wrote:

> This patchset makes the following changes:
>         - Replace kmalloc and memset with kzalloc
> 	- Replace null return value with PTR_ERR values
> 	- Propagate the PTR_ERR values forward instead of a hardcoded
> 	  value for easier debugging
> 	- Replace if (success) else { } after kmalloc with if(error)
> 	  to fail fast. Fix memory leak when queue_work fails.
>
> Changes in v3:
> 	- Fix memory leak when queue_work fails
> 	- Add __func__ to debug logs

It could be helpful to indicate in which patch of the series the changes
have occurred.

julia

> Changes in v2:
>         - Return error value -EBUSY instead of -1 when queue_work()
> 	  fails
>
> Aishwarya Pant (4):
>   staging: bcm2835-audio: Replace kmalloc with kzalloc
>   staging: bcm2835-audio: replace null with error pointer value
>   staging: bcm2835-audio: propagate PTR_ERR value instead of -EPERM
>   staging: bcm2835-audio: use conditional only for error case
>
>  .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 98 +++++++++++-----------
>  1 file changed, 50 insertions(+), 48 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1488906373.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

