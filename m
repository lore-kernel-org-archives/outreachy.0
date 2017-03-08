X-GM-THRID: 6394986223504457728
X-Received: by 10.25.203.151 with SMTP id b145mr682605lfg.17.1488958900077;
        Tue, 07 Mar 2017 23:41:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.73 with SMTP id y9ls284263ljd.8.gmail; Tue, 07 Mar 2017
 23:41:39 -0800 (PST)
X-Received: by 10.25.151.69 with SMTP id z66mr644202lfd.12.1488958899474;
        Tue, 07 Mar 2017 23:41:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l138si256022wmg.0.2017.03.07.23.41.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 23:41:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,262,1486422000"; 
   d="scan'208";a="215969758"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 08:41:38 +0100
Date: Wed, 8 Mar 2017 08:41:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: bcm2835-camera: remove
 get_msg_context() and release_msg_context()
In-Reply-To: <cover.1488948214.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703080841250.2108@hadrien>
References: <cover.1488948214.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2017, Aishwarya Pant wrote:

> This patch replaces in mmal-vchiq.c:
>         - get_msg_context(..) with a kzalloc at the caller
> 	- release_msg_context(..) with a kfree at the caller
>
> Aishwarya Pant (2):
>   staging: bcm2835-camera: replace get_msg_context() with kzalloc
>   staging: bcm2835-camera: replace release_msg_context() with kfree


Haven't you sent these before?

julia

>
>  .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 29 ++++------------------
>  1 file changed, 5 insertions(+), 24 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1488948214.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

