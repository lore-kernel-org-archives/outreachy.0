X-GM-THRID: 4714696540160
X-Received: by 10.180.8.67 with SMTP id p3mr680664wia.7.1425061639714;
        Fri, 27 Feb 2015 10:27:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.105 with SMTP id o9ls179697wic.38.gmail; Fri, 27 Feb
 2015 10:27:19 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr684005wib.4.1425061639388;
        Fri, 27 Feb 2015 10:27:19 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si204346wia.0.2015.02.27.10.27.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 10:27:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,661,1418079600"; 
   d="scan'208";a="101579335"
Received: from unknown (HELO hadrien.local) ([88.128.80.16])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 19:27:18 +0100
Date: Fri, 27 Feb 2015 19:27:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Refactor loop to
 increase compactness
In-Reply-To: <CAHjTdYebB4CS1V5mTMLwr_zhYbD=Ud6cc+be53W87k71J0_dcQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1502271926260.3793@hadrien>
References: <20150227180728.GA22813@gmail.com> <alpine.DEB.2.10.1502271913560.3793@hadrien> <CAHjTdYebB4CS1V5mTMLwr_zhYbD=Ud6cc+be53W87k71J0_dcQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 27 Feb 2015, Vatika Harlalka wrote:

> My understanding was that since the inner nested else
> and the outer else were doing the same thing, we could
> make it more compact by assigning it before-hand and only
> updating the values when required.

I agree that the transformation is correct.  But I think that the result
could be confusing.

Good effort to think about these things though :)

julia

