X-GM-THRID: 6211494140664872960
X-Received: by 10.194.189.81 with SMTP id gg17mr2017280wjc.5.1446229267678;
        Fri, 30 Oct 2015 11:21:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.79.6 with SMTP id d6ls220776lfb.47.gmail; Fri, 30 Oct 2015
 11:21:07 -0700 (PDT)
X-Received: by 10.112.134.129 with SMTP id pk1mr1978022lbb.24.1446229267127;
        Fri, 30 Oct 2015 11:21:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s134si110481wmb.3.2015.10.30.11.21.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 11:21:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,219,1444687200"; 
   d="scan'208";a="185259782"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Oct 2015 19:21:06 +0100
Date: Fri, 30 Oct 2015 19:21:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: dir: Add
 __user annotations
In-Reply-To: <CA+5yK5GyT0XnvxR8tRQ859_0yyqtLzDE4tiTER=8sTjpEBAkaA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510301920270.2364@hadrien>
References: <20151030172932.GA27324@amitoj-Inspiron-3542> <alpine.DEB.2.10.1510301845500.2364@hadrien> <CA+5yK5HzVQj9=c20DaW-s24MjyS2N8zi3kAogTX1bHDVS870Tw@mail.gmail.com> <alpine.DEB.2.10.1510301912480.2364@hadrien>
 <CA+5yK5GyT0XnvxR8tRQ859_0yyqtLzDE4tiTER=8sTjpEBAkaA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> > Maybe it would have been good to put a comment under the --- explaining
> > that you were solving part of the problem, but hoped to do the rest later.
> >
> > I was worried that a problem was getting swept under the rug, and by doing
> > the easy cases, you were removing the motivation for people to look at the
> > more complex cases, but if sparse continues to complain about the other
> > cases after your patch, then maybe it's OK.
> >
> > julia
> >
>
> If you prefer, I can send a v2 mentioning that I've solved part of the problem.

Even though it doesn't have any impat on the final patch, it could be a
good idea anyway.

julia

