X-GM-THRID: 6335101576926986240
X-Received: by 10.194.74.131 with SMTP id t3mr2165737wjv.21.1475007405136;
        Tue, 27 Sep 2016 13:16:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.175.7 with SMTP id y7ls2088284wme.25.canary; Tue, 27 Sep
 2016 13:16:44 -0700 (PDT)
X-Received: by 10.28.166.132 with SMTP id p126mr350342wme.18.1475007404433;
        Tue, 27 Sep 2016 13:16:44 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s6si1121616wmb.1.2016.09.27.13.16.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 13:16:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,406,1470693600"; 
   d="scan'208";a="194857367"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Sep 2016 22:16:43 +0200
Date: Tue, 27 Sep 2016 22:16:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: gnudevliz@gmail.com, outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] TODO/comment questions
In-Reply-To: <20160927200428.GA20525@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.10.1609272215490.3259@hadrien>
References: <44f080fb-8ee2-4de0-8480-7b21534757ab@googlegroups.com> <20160927200428.GA20525@d830.WORKGROUP>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> > My second question-- one specific comment that is missing an asterisk
> > includes a TODO line. Is it good practice to have a TODO in a comment? I'm
> > not seeing anything about it in the style guide. If it's fine I'll just add
> > an asterisk there and leave it the way it is.
>
> When I "git grep TODO", I see the TODO inside comments a lot.
> Don't know if it's good practice, but certainly common.
> What would the alternative be?

If the developer had something more elaborate in mind, it would indeed
have been nice to have it expressed in a more detailed way.  But at least
it conveys the information that there is something to do here...

julia

