X-GM-THRID: 6249299693524746240
X-Received: by 10.28.128.204 with SMTP id b195mr653219wmd.7.1455032655196;
        Tue, 09 Feb 2016 07:44:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.194 with SMTP id f185ls435112lfg.48.gmail; Tue, 09 Feb
 2016 07:44:14 -0800 (PST)
X-Received: by 10.25.29.211 with SMTP id d202mr4102868lfd.7.1455032654643;
        Tue, 09 Feb 2016 07:44:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w10si523933wmw.3.2016.02.09.07.44.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:44:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,421,1449529200"; 
   d="scan'208";a="164060337"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 16:44:13 +0100
Date: Tue, 9 Feb 2016 16:44:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rdma: Use kcalloc instead
 of kzalloc
In-Reply-To: <CANnt6XnH0s-XfQj38bDg2AieeTy4dBoY7mgW_q=PoAb5tRw9ow@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602091643480.2578@hadrien>
References: <20160209201046.GA6794@janani-Inspiron-3521> <alpine.DEB.2.10.1602091622220.2578@hadrien> <CANnt6XnH0s-XfQj38bDg2AieeTy4dBoY7mgW_q=PoAb5tRw9ow@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1691200273-1455032652=:2578"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1691200273-1455032652=:2578
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 9 Feb 2016, Janani Ravichandran wrote:

>
>
> On Tue, Feb 9, 2016 at 10:23 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>       On Tue, 9 Feb 2016, Janani Ravichandran wrote:
>
>       > Use kcalloc rather than kzalloc when multiplied with size to
>       prevent
>       > integer overflows. This change also makes code nicer to read.
>       >
>       > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
>       > ---
>       > Changes since v1:
>       >  * Removed unneeded parentheses around kzalloc's first
>       parameter
>
>       You don't have to send a v3 for this, but it would be nicer to
>       put a blank
>       line between this comment and the diffstat information.
>
>       I wonder though if GFP_KERNEL would now fit on the same line
>       with the
>       rest?
>
> It actually does, Julia, the statement ends at column 79 if when I fit
> GFP_KERNEL on the same line. Do I make this change and send a v3?

Yes.

julia
--8323329-1691200273-1455032652=:2578--

