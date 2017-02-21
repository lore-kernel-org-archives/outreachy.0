X-GM-THRID: 6389618960460939264
X-Received: by 10.28.63.65 with SMTP id m62mr1313585wma.6.1487707480109;
        Tue, 21 Feb 2017 12:04:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.166 with SMTP id e38ls767595lji.34.gmail; Tue, 21 Feb
 2017 12:04:39 -0800 (PST)
X-Received: by 10.25.212.76 with SMTP id l73mr2821888lfg.13.1487707479420;
        Tue, 21 Feb 2017 12:04:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v70si1203197wmf.0.2017.02.21.12.04.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 12:04:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,190,1484002800"; 
   d="scan'208";a="214262188"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 21:04:17 +0100
Date: Tue, 21 Feb 2017 21:04:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle Challenge Problem 2
In-Reply-To: <CAOCi2DGCD8KvJ6qPyNHh5g1oNKWW+z8dov2dnT1XRO-4Z0y5bQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702212059430.2117@hadrien>
References: <CAOCi2DHM+X0ksQZ2ZBXPkbJu5uv5kerHRpaJaFEG8C36CA72jA@mail.gmail.com> <alpine.DEB.2.20.1702211850270.3448@hadrien> <CAOCi2DGCD8KvJ6qPyNHh5g1oNKWW+z8dov2dnT1XRO-4Z0y5bQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-195296401-1487707457=:2117"

--8323329-195296401-1487707457=:2117
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

> > Did you try, eg
> >
> > e =
> > - (e1 + e2)
> > + e1 + e2
> >
> > ?  This is not a good solution, but it could be good to think about why.
>
> I tried this after reading this mail :). I think it's not a good solution
> becauseof the false positives that it will give. Also for the cases where
> there's no
> space around '+' will be replaced as well which is not the intended use case
> for the patch. And all the cases where we have shifted the operands to avoid
> the 80 character limit, will all be moved on the same line.

Yes, it's all pretty sad :).  One conclusion is that it is better not to
remove code and then add it back.  When you add it back, Coccinelle takes
over the pretty printing, and Coccinelle is not super smart about pretty
printing binary operators.  It does try to do a good job for function
arguments, though.

But you probably noticed that it was changing things that didn't have
parentheses at all, which may be what you mean by false positives.  This is
because of the idea of an isomorphism.  Coccinelle considers that sometimes
people put parentheses and sometimes they don't.  And it is rather tiresome
to have to specify all of the possibilities by hand.  So if you put an
expression with parentheses that is either all annotated with - or that is
all unannotated, then it will consider the possibility that the parentheses
are not there as well.  You can see all of the patterns it is really trying
with spatch --parse-cocci foo.cocci.  But the way you wrote the rules, the
- was only on the (), so it considers that the parentheses are important,
so there is no problem.

julia
--8323329-195296401-1487707457=:2117--

