X-GM-THRID: 6391984177458184192
X-Received: by 10.28.193.10 with SMTP id r10mr28776wmf.7.1488264503324;
        Mon, 27 Feb 2017 22:48:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls28816ljd.25.gmail; Mon, 27 Feb 2017
 22:48:22 -0800 (PST)
X-Received: by 10.25.157.14 with SMTP id g14mr74002lfe.28.1488264502803;
        Mon, 27 Feb 2017 22:48:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si1007976wmh.1.2017.02.27.22.48.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 22:48:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,218,1484002800"; 
   d="scan'208";a="214945790"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 07:48:22 +0100
Date: Tue, 28 Feb 2017 07:48:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Problem with coccinelle.
In-Reply-To: <c2f9d539-fe98-4541-b86c-f71555d44020@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702280747380.2078@hadrien>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com> <c2f9d539-fe98-4541-b86c-f71555d44020@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-743489564-1488264502=:2078"

--8323329-743489564-1488264502=:2078
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 27 Feb 2017, Varsha Rao wrote:

> Hello,
>
> Within /usr/lib64/coccinelle/
> I have the following files:
> ocaml  spatch  spatch.opt  standard.h  standard.iso
>
> So did I follow any wrong step or is something missing?

This seems likely fine.  How did you get to this situation?  Did you
install it from your package manager or did you compile it on your
machine.  When you run spatch, does it work?

julia

>
> Thanks,
> Varsha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/c2f9d539-fe98-4541-b86c-
> f71555d44020%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-743489564-1488264502=:2078--

