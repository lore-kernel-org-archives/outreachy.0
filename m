X-GM-THRID: 6339138687062769664
X-Received: by 10.129.77.87 with SMTP id a84mr7714363ywb.30.1476010600393;
        Sun, 09 Oct 2016 03:56:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.39 with SMTP id 39ls2482830ioh.39.gmail; Sun, 09 Oct
 2016 03:56:37 -0700 (PDT)
X-Received: by 10.66.123.101 with SMTP id lz5mr5957234pab.108.1476010597790;
        Sun, 09 Oct 2016 03:56:37 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a62si1642602vke.2.2016.10.09.03.56.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 03:56:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,466,1473112800"; 
   d="scan'208";a="196133931"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 12:56:35 +0200
Date: Sun, 9 Oct 2016 12:56:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org, forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Replace dwIoBase by
 iobase
In-Reply-To: <e6b02b9a-d35b-4945-b6a6-1a5a8c964f1d@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1610091256090.3462@hadrien>
References: <20161008165532.GA26251@euri> <alpine.DEB.2.10.1610081936330.3259@hadrien> <e6b02b9a-d35b-4945-b6a6-1a5a8c964f1d@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1381195233-1476010596=:3462"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1381195233-1476010596=:3462
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 8 Oct 2016, Varsha Rao wrote:

>
>
>       You should preserve the alignment of the different comments.
>
>
>       I have made the changes in the patch but it is overridden on sent.

Not sure what you mean.  Probably your mail client is misconfigured in
some way then?

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/e6b02b9a-d35b-4945-b6a6-
> 1a5a8c964f1d%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1381195233-1476010596=:3462--

