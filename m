X-GM-THRID: 6402003753150447616
X-Received: by 10.223.145.199 with SMTP id 65mr1262474wri.0.1490601906703;
        Mon, 27 Mar 2017 01:05:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.144.136 with SMTP id s130ls1101126wmd.18.canary-gmail; Mon,
 27 Mar 2017 01:05:05 -0700 (PDT)
X-Received: by 10.28.7.8 with SMTP id 8mr380521wmh.20.1490601905891;
        Mon, 27 Mar 2017 01:05:05 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x188si609538wmx.0.2017.03.27.01.05.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 01:05:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,229,1486422000"; 
   d="scan'208";a="266323400"
Received: from unknown (HELO hadrien) ([62.119.166.9])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Mar 2017 10:05:02 +0200
Date: Mon, 27 Mar 2017 10:04:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    mawilcox@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] kernel: pid: Change function
 return value to bool.
In-Reply-To: <6874a8e7-7574-487b-9423-89bad7e1145a@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703271003090.3387@hadrien>
References: <cover.1490581288.git.rvarsha016@gmail.com> <58d87c7c.c240630a.d8622.c768@mx.google.com> <alpine.DEB.2.20.1703270729300.2488@hadrien> <6874a8e7-7574-487b-9423-89bad7e1145a@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2144876414-1490601905=:3387"

--8323329-2144876414-1490601905=:3387
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 27 Mar 2017, Varsha Rao wrote:

>
>       On Mon, 27 Mar 2017, Varsha Rao wrote:
>
>       > Remove unsign cast and add bool as return type for
>       pid_before()
>       > function.
>
>       unsign -> unsigned.  But are you sure that the change is
>       correct?  For
>       example -1 < 1 but (unsigned) -1 > (unsigned) 1.
>
>
>    The change is incorrect. I will make both the differences as absolute
>    value, I guess then the change will be correct.

Not sure.  You would have to provide an argument as to why the change is
correct.  Absolute value also requires some computation, while casting
requires none.

julia

>    
>    Regards,
>    Varsha Rao
>    
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/6874a8e7-7574-487b-9423-
> 89bad7e1145a%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2144876414-1490601905=:3387--

