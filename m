X-GM-THRID: 6257896431456092160
X-Received: by 10.112.209.6 with SMTP id mi6mr846851lbc.15.1457071947572;
        Thu, 03 Mar 2016 22:12:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.194 with SMTP id f185ls42699lfg.48.gmail; Thu, 03 Mar
 2016 22:12:26 -0800 (PST)
X-Received: by 10.112.227.73 with SMTP id ry9mr847034lbc.10.1457071946521;
        Thu, 03 Mar 2016 22:12:26 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v68si62953wmd.1.2016.03.03.22.12.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2016 22:12:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,534,1449529200"; 
   d="scan'208";a="166871966"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Mar 2016 07:12:25 +0100
Date: Fri, 4 Mar 2016 07:12:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: fbtft: Do not use same
 argument more than once in bit operation.
In-Reply-To: <1457054762-3682-1-git-send-email-amsfield22@gmail.com>
Message-ID: <alpine.DEB.2.02.1603040711320.2062@localhost6.localdomain6>
References: <alpine.DEB.2.02.1603032053480.2061@localhost6.localdomain6> <1457054762-3682-1-git-send-email-amsfield22@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 3 Mar 2016, Alison Schofield wrote:

> The reason may be that author is trying to
> to explicitly reflect the register settings.
> 
> Considering this code...
> 
> static int init_display(struct fbtft_par *par)
> {
> .................snip........................
> 
> 	/* Set temperature compensation */
>         write_reg(par, 0x24 | (temp & 0x03));
> 
>         /* Set panel loading */
>         write_reg(par, 0x28 | (load & 0x03));
> 
>         /* Set pump control */
>         write_reg(par, 0x2C | (pump & 0x03));
> 
>         /* Set inverse display */
>         write_reg(par, 0xA6 | (0x01 & 0x01));
> 
>         /* Set 4-bit grayscale mode */
>         write_reg(par, 0xD0 | (0x02 & 0x03));
> 
> In the first 3 commands temp,load,pump are vars &'d with a mask.
> In the last 2 commands 0x01 and 0x02 are hardcoded values &'d with a mask.
> Sometimes that hardcoded value just happens to be the same as its mask.
> I might even guess that this author knew it was redundant, but
> that the compiler would reduce all of that for him anyway.
> 
> you can see the register definitions here if you want to get to
> very bottom of this ;)
> http://lcdhype.condense.de/index.php?act=Attach&type=post&id=6112&index=0
> 
> I wonder if it is better to define all those hardcode values for even
> more clarity.

That would certainly be nice, at least the ones on the left of the &.  
Then one might not even need the comments any more.

julia

