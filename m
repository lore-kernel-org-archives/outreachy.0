X-GM-THRID: 6339053517033963520
X-Received: by 10.194.175.166 with SMTP id cb6mr550242wjc.15.1476249117312;
        Tue, 11 Oct 2016 22:11:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.25.69 with SMTP id 66ls77344wmz.21.gmail; Tue, 11 Oct 2016
 22:11:56 -0700 (PDT)
X-Received: by 10.28.87.73 with SMTP id l70mr69640wmb.1.1476249116640;
        Tue, 11 Oct 2016 22:11:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w124si45009wmf.3.2016.10.11.22.11.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 22:11:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,332,1473112800"; 
   d="scan'208";a="240401617"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Oct 2016 07:11:56 +0200
Date: Wed, 12 Oct 2016 07:11:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
In-Reply-To: <5a2e45cf-903e-41c4-91d8-37d45aea9ce7@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1610120710390.3282@hadrien>
References: <20161008112506.GA12694@euri> <alpine.DEB.2.10.1610081940270.3259@hadrien> <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com> <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com> <alpine.DEB.2.10.1610091553500.5891@hadrien>
 <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com> <alpine.DEB.2.10.1610112221080.3192@hadrien> <5a2e45cf-903e-41c4-91d8-37d45aea9ce7@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1950946370-1476249116=:3282"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1950946370-1476249116=:3282
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 11 Oct 2016, Varsha Rao wrote:

>
>       The above code is not a proper macro definition.  What is the
>       actual
>       change that you made?  You can see this by doing git diff on
>       the file.
>        
>
>
>     I have posted the patch by making the changes

Posted it where?  If it is on the mailing list, I no longer have easy
access to it.  Please send it again in response to this message.

thanks,
julia

> and  but git diff won't
> give information on from where it is imported . Since it is not macro
> definition , it has to be defined   
>     somewhere. My question is how to locate the definition of it to remove
> the macro completely? For that I have tried using grep and gcc -dN -E but
> could not locate using them.
>
>     Varsha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/5a2e45cf-903e-41c4-91d8
> -37d45aea9ce7%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1950946370-1476249116=:3282--

