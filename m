X-GM-THRID: 6390646039699783680
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.25.18.219 with SMTP id 88mr572051lfs.29.1487960958437;
        Fri, 24 Feb 2017 10:29:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.28.81 with SMTP id c78ls488457lfc.50.gmail; Fri, 24 Feb
 2017 10:29:17 -0800 (PST)
X-Received: by 10.25.167.5 with SMTP id q5mr564558lfe.18.1487960957455;
        Fri, 24 Feb 2017 10:29:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h62si128892wme.2.2017.02.24.10.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 10:29:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,201,1484002800"; 
   d="scan'208";a="214636712"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 19:29:16 +0100
Date: Fri, 24 Feb 2017 19:29:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Questions regarding BUG macro.
In-Reply-To: <32dfda0b-6ce2-40f2-bf35-789c0c31b4cc@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702241928020.3089@hadrien>
References: <e34c38a0-18ca-4d80-ba2a-113d74689185@googlegroups.com> <20170224144809.GA8962@kroah.com> <32dfda0b-6ce2-40f2-bf35-789c0c31b4cc@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-566885705-1487960950=:3089"

--8323329-566885705-1487960950=:3089
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 24 Feb 2017, Varsha Rao wrote:

>
>
> On Friday, February 24, 2017 at 8:18:17 PM UTC+5:30, gregkh wrote:
>       On Fri, Feb 24, 2017 at 04:10:30AM -0800, Varsha Rao wrote:
>       >
>       > What is the functionality of unreachable() ?
>
>       It tells the compiler that it will never execute this.
>
>       > Isn't the do while loop unnecessary in the given definition ?
>
>       Not at all, why do you think it would be?
>
>
>    Since there are only two macro calls and no local variables are used,
> can't it be like this:
>  
>    #define BUG() (_BUG_OR_WARN(0), unreachable())

I think that this form of code is not common (or not used at all) in the
kernel.  It does not make the purpose very clear - it looks like it is
probably intended to be an argument list.

julia

>
>   I understand that  do while is used, when there are multiple statements.
>  
>       > #define BUG()                               
>       >     do {                               
>       >         _BUG_OR_WARN(0);                   
>       >         unreachable();                       
>       >     } while (0)
>       >
>       > Found the above definition at
>       staging/arch/avr32/include/asm/bug.h
>       > Also what is the difference between unreachable() and
>       unlikely()?
>
>       unlikely is a hint to the compiler that the statement vare
>       rarely
>       happens.  unreachable tells the compiler that this code will
>       never be
>       run, due to something stopping the CPU before it can happen.
>
>       Never use either of these in your code unless you really know
>       what you
>       are doing.  Never use unlikely() unless you can measure the
>       difference
>       of it being used and not being used, because almost always
>       humans get it
>       wrong, CPUs are very good at guessing what should happen.
>
>     Thank you for the explanation.
>  
>       hope this helps,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/32dfda0b-6ce2-40f2-bf35-
> 789c0c31b4cc%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-566885705-1487960950=:3089--

