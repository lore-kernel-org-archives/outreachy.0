X-GM-THRID: 6206976986922876928
X-Received: by 10.112.14.4 with SMTP id l4mr3879812lbc.20.1445177999808;
        Sun, 18 Oct 2015 07:19:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.82.3 with SMTP id g3ls495994lfb.10.gmail; Sun, 18 Oct 2015
 07:19:59 -0700 (PDT)
X-Received: by 10.112.145.227 with SMTP id sx3mr979307lbb.12.1445177999231;
        Sun, 18 Oct 2015 07:19:59 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q6si332835wif.2.2015.10.18.07.19.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 07:19:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,697,1437429600"; 
   d="scan'208";a="150927867"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Oct 2015 16:19:58 +0200
Date: Sun, 18 Oct 2015 16:19:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_osc: Add check
 on a variable
In-Reply-To: <CAKHNQQFtPSq5TRrFrGq4gqOPC_oWxOZqdUsPdSaVp0DVux1OBg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510181618100.2614@hadrien>
References: <20151018132030.GA30680@ubuntu> <alpine.DEB.2.10.1510181523580.2614@hadrien> <CAKHNQQEJLf1LXOZr7KS=BdC8riOXdjg6jgfDMfV8OK2uXvpJww@mail.gmail.com> <alpine.DEB.2.10.1510181529260.2614@hadrien>
 <CAKHNQQFtPSq5TRrFrGq4gqOPC_oWxOZqdUsPdSaVp0DVux1OBg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> > I don't follow.  When there was rc < 0, there would also not be a return.
> > There are three cases: rc < 0, rc = 0, rc > 0.  If you put rc < 0 you will
> > get a return on rc < 0 only.  And if you put rc you will get a return on
> > rc < 0 and rc > 0, but rc is never > 0 (you have said - I don't check), so
> > with rc you will also only get a return when rc < 0.  Putting rc is a bit
> > more concise.  But putting rc < 0 makes it more clear that what is going
> > on is an error check.  And I guess it is the code that was there
> > previously, so it is what the developer preferred,
> >
> > julia
> >
>
> What you say is perfectly fine. But, earlier code mentioned 'if (rc)'
> only [developer version]. I changed that to 'if(rc<0)' along with some
> other changes that I got wrong. I've been asked to provide a fix up.
> If you say, I can change it to rc<0. Yes, it would be more precise.
> I've consulted Arnd about the positive values. It is never going to
> happen. Please suggest?

OK, thanks for the explanation.  If the code was originally if (rc), it
would probably be reasonable to leave it as is.  I was thrown off by the
fact that there was a - on rc < 0 in the proposed patch.  Did Greg apply
an incorrect one that you now have to fix up?

julia

