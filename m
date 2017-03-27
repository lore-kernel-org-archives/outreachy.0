X-GM-THRID: 6402003753150447616
X-Received: by 10.28.152.70 with SMTP id a67mr727959wme.11.1490650509379;
        Mon, 27 Mar 2017 14:35:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.199.3 with SMTP id x3ls1564765wmf.16.canary-gmail; Mon, 27
 Mar 2017 14:35:08 -0700 (PDT)
X-Received: by 10.28.7.8 with SMTP id 8mr721246wmh.20.1490650508425;
        Mon, 27 Mar 2017 14:35:08 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p144si66246wme.2.2017.03.27.14.35.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 14:35:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,233,1486422000"; 
   d="scan'208";a="218251155"
Received: from 109.236.136.163.wls.msr91gkk3.adsl.fix.edpnet.net (HELO hadrien.local) ([109.236.136.163])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Mar 2017 23:35:07 +0200
Date: Mon, 27 Mar 2017 23:35:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    mawilcox@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] kernel: pid: Change function
 return value to bool.
In-Reply-To: <d9905b6f-434e-4943-8c78-8a35bcddfe24@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703272334420.3204@hadrien>
References: <cover.1490581288.git.rvarsha016@gmail.com> <58d87c7c.c240630a.d8622.c768@mx.google.com> <alpine.DEB.2.20.1703270729300.2488@hadrien> <6874a8e7-7574-487b-9423-89bad7e1145a@googlegroups.com> <alpine.DEB.2.20.1703271003090.3387@hadrien>
 <d9905b6f-434e-4943-8c78-8a35bcddfe24@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1722118619-1490650507=:3204"

--8323329-1722118619-1490650507=:3204
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 27 Mar 2017, Varsha Rao wrote:

>
>
> On Monday, March 27, 2017 at 1:35:06 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Mon, 27 Mar 2017, Varsha Rao wrote:
>
>       >
>       >       On Mon, 27 Mar 2017, Varsha Rao wrote:
>       >
>       >       > Remove unsign cast and add bool as return type for
>       >       pid_before()
>       >       > function.
>       >
>       >       unsign -> unsigned.  But are you sure that the change is
>       >       correct?  For
>       >       example -1 < 1 but (unsigned) -1 > (unsigned) 1.
>       >
>       >
>       >    The change is incorrect. I will make both the differences as absolute
>       >    value, I guess then the change will be correct.
>
>       Not sure.  You would have to provide an argument as to why the change is
>       correct.  Absolute value also requires some computation, while casting
>       requires none.
>
>
> The usage of unsigned is to increase range and consider positive value.
> It would be better to use unsigned int only.
>
> If unsigned int is used, a - base won't exceed MAXUINT value and therefore
> there will be no negative result. As a, b and base are of type int.
> (a - base + MAXUINT) % MAXUINT < (b - base + MAXUINT) % MAXUINT

How do you conclude this?

>
> If abs is considered then the range would decrease.

What is the overall conclusion?

julia

> Thanks,
> Varsha Rao
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d9905b6f-434e-4943-8c78-8a35bcddfe24%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1722118619-1490650507=:3204--

