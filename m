X-GM-THRID: 2698279649280
X-Received: by 10.180.39.164 with SMTP id q4mr1116165wik.5.1424684475562;
        Mon, 23 Feb 2015 01:41:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.184.134 with SMTP id eu6ls496639wic.50.canary; Mon, 23 Feb
 2015 01:41:15 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr646316wiy.6.1424684475102;
        Mon, 23 Feb 2015 01:41:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si637784wib.2.2015.02.23.01.41.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:41:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,629,1418079600"; 
   d="scan'208";a="100975513"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 10:41:14 +0100
Date: Mon, 23 Feb 2015 10:41:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniel Baluta <daniel.baluta@intel.com>
cc: Vatika Harlalka <vatikaharlalka@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove unnecessary
 variable
In-Reply-To: <CAEnQRZBevBPsNHoewcJfkx9SUjG=9otF7QOz1A-Rtt=EfErPxQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1502231040130.2479@hadrien>
References: <20150223091613.GA4359@gmail.com> <CAEnQRZBevBPsNHoewcJfkx9SUjG=9otF7QOz1A-Rtt=EfErPxQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Daniel Baluta wrote:

> On Mon, Feb 23, 2015 at 11:16 AM, Vatika Harlalka
> <vatikaharlalka@gmail.com> wrote:
> > Remove unnecessary variable and replace its uses with previously
> > defined variable.
>
> Hi Vatika,
>
> A good commit message should always try to explain why the change is needed.
> In this case you could say:
>
> We only need the last 8 bits from offset, so we can directly operate
> on offset variable
> instead of introducing unneeded newoffset.

How is the number of bits used relevant?  They are both u32 variables.

thanks,
julia

