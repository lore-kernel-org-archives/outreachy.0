X-GM-THRID: 6389618960460939264
X-Received: by 10.25.17.102 with SMTP id g99mr351800lfi.6.1487699689474;
        Tue, 21 Feb 2017 09:54:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.70 with SMTP id x6ls773556ljd.21.gmail; Tue, 21 Feb 2017
 09:54:48 -0800 (PST)
X-Received: by 10.25.204.15 with SMTP id c15mr1643119lfg.5.1487699688964;
        Tue, 21 Feb 2017 09:54:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h62si889244wme.2.2017.02.21.09.54.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 09:54:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,190,1484002800"; 
   d="scan'208";a="261507101"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 18:54:48 +0100
Date: Tue, 21 Feb 2017 18:54:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle Challenge Problem 2
In-Reply-To: <CAOCi2DHM+X0ksQZ2ZBXPkbJu5uv5kerHRpaJaFEG8C36CA72jA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702211850270.3448@hadrien>
References: <CAOCi2DHM+X0ksQZ2ZBXPkbJu5uv5kerHRpaJaFEG8C36CA72jA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1437137421-1487699683=:3448"

--8323329-1437137421-1487699683=:3448
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 21 Feb 2017, Gargi Sharma wrote:

> Hi,
>
> Here's my coccinelle script to parentheses around the right hand side of an
> assignment.
>
> @@ expression e, e1, e2; @@  
> e =  
> -(  
>         e1 + e2
> -)  
>  
> @@ expression e, e1, e2; @@  
> e =  
> -(  
>         e1 - e2  
> -)
>  
> @@ expression e, e1;
> contant c; @@  
> e =  
> -(  
>         e1 << c  
> -)
>  
> @@ expression e, e1;
> constant c; @@  
> e =  
> -(  
>         e1 >> c  
> -)

It looks reasonable.  I don't think you need to restrict the right side of
>> and << to constants, though.

Also, the whole thing can actually be much shorter, because there is a
"binary operator" metavariable type.  So you could say:

@@
binary operator bop = {+,-,>>,<<};
expression e, e1, e2;
@@

e =
- (
  e1 bop e2
- )

Although, your version is probably more readable, because "bop" doesn't
really look like a binary operator.

Did you try, eg

e =
- (e1 + e2)
+ e1 + e2

?  This is not a good solution, but it could be good to think about why.

julia

> thanks,
> gargi
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DHM%2BX0ksQZ2ZBXPk
> bJu5uv5kerHRpaJaFEG8C36CA72jA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1437137421-1487699683=:3448--

