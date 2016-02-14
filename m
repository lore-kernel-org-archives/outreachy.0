X-GM-THRID: 6250919415582294016
X-Received: by 10.66.231.4 with SMTP id tc4mr12210429pac.14.1455465989809;
        Sun, 14 Feb 2016 08:06:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.104 with SMTP id x8ls127036igr.18.gmail; Sun, 14 Feb
 2016 08:06:29 -0800 (PST)
X-Received: by 10.107.168.139 with SMTP id e11mr12592275ioj.32.1455465989039;
        Sun, 14 Feb 2016 08:06:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id k15si744013igt.3.2016.02.14.08.06.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 08:06:28 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,446,1449529200"; 
   d="scan'208";a="164671440"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 17:06:26 +0100
Date: Sun, 14 Feb 2016 17:06:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Include KERN_
 facility level for printk()
In-Reply-To: <CANnt6XnNYcWCBabrvQgmQ81LnLdW5Ph9jMj4ds90-2Sf=Ag43A@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602141705390.2066@localhost6.localdomain6>
References: <20160214041910.GA25485@janani-Inspiron-3521> <alpine.DEB.2.02.1602140827100.2039@localhost6.localdomain6> <CANnt6XnNYcWCBabrvQgmQ81LnLdW5Ph9jMj4ds90-2Sf=Ag43A@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-339056814-1455465986=:2066"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-339056814-1455465986=:2066
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 14 Feb 2016, Janani Ravichandran wrote:

> 
> 
> 
>       >       else
>       > -             printk("Debug-level enabled\n");
>       > +             printk(KERN_INFO "Debug-level enabled\n");
> 
>       You shouldn't add new uses of printk.  I would think checpatch
>       would have
>       complained about this. 
> 
> Hi Julia, I made this change as there was a checkpatch warning about KERN_
> facility level
> not being there in the printk() statements.
>  
>       I don't know what kind of driver this is, but
>       check whether pr_info, dev_info, or netdev_info would be
>       appropriate.
> 
> This is a wireless device by Atmel. So I guess, netdev_info fits better.
> Do I make that change instead? Let me know :)

Yes, I think it would be better to go to the right thing all at once.  
Your previous fix would just convert one checkpatch error into another.

julia

> 
> Janani.
>         If
>       neither of the last to can be used, pr_info is certainly
>       possible.
> 
>       julia
> 
>       >
>       >       return count;
>       >  }
>       > --
>       > 2.5.0
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20160214041910.GA25485%4
>       0janani-Inspiron-3521.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
> 
> 
> 
> 
--8323328-339056814-1455465986=:2066--

