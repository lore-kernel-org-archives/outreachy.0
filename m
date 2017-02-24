X-GM-THRID: 6387816856867045376
X-Received: by 10.25.150.212 with SMTP id y203mr676879lfd.30.1487969189680;
        Fri, 24 Feb 2017 12:46:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.155.194 with SMTP id d185ls525725lfe.2.gmail; Fri, 24 Feb
 2017 12:46:28 -0800 (PST)
X-Received: by 10.25.167.5 with SMTP id q5mr631586lfe.18.1487969188324;
        Fri, 24 Feb 2017 12:46:28 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p185si210004wme.1.2017.02.24.12.46.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 12:46:28 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,201,1484002800"; 
   d="scan'208";a="214643437"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 21:46:18 +0100
Date: Fri, 24 Feb 2017 21:46:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2 3/3] staging: rtl8192u: Prefer
 using the BIT macro
In-Reply-To: <e1cde734-003d-4b3d-bba0-d37f5edd8e2b@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702242145060.2152@hadrien>
References: <20170217175059.GA26957@singhal-Inspiron-5558> <20170224171613.GA376@kroah.com> <e1cde734-003d-4b3d-bba0-d37f5edd8e2b@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2027297004-1487969178=:2152"

--8323329-2027297004-1487969178=:2152
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 24 Feb 2017, SIMRAN SINGHAL wrote:

>
>
> On Friday, February 24, 2017 at 10:46:21 PM UTC+5:30, gregkh wrote:
>       On Fri, Feb 17, 2017 at 11:20:59PM +0530, simran singhal wrote:
>       > Replaces left shift operation (1 << d) by BIT(x) macro.
>       >
>       > Fix the checkpatch.pl issue:
>       > CHECK: Prefer using the BIT macro replacing
>       >
>       > Signed-off-by: simran singhal <singhal...@gmail.com>
>       > ---
>       >  
>       >  V2:
>       >    -modified patch message.
>       >
>       >  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 140
>       ++++++++++++-------------
>       >  1 file changed, 70 insertions(+), 70 deletions(-)
>
>       The last chunk of this patch did not apply, please fix up and
>       resend.
>
>       thanks,
>
>       greg k-h
>
>
>   Can you please elaborate what's the problem with the last chunk of this
> patch and 
>   to be more precise what do you mean by "last chunk of this patch". I am
> not getting 
>   what's the problem with this patch.

I would say "hunk" rather than "chunk", but he probably means the code
from the last @@ @@ to the end.

The best thing is to just pull the most recent version of the kernel and
see what happens when you try to apply your patch.

julia
--8323329-2027297004-1487969178=:2152--

