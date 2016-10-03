X-GM-THRID: 6337361071288877056
X-Received: by 10.46.0.228 with SMTP id e97mr18079lji.23.1475533046628;
        Mon, 03 Oct 2016 15:17:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.140.132 with SMTP id o126ls1676154wmd.22.gmail; Mon, 03 Oct
 2016 15:17:25 -0700 (PDT)
X-Received: by 10.28.206.131 with SMTP id e125mr50676wmg.5.1475533045971;
        Mon, 03 Oct 2016 15:17:25 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si1327586wmr.2.2016.10.03.15.17.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 15:17:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,291,1473112800"; 
   d="scan'208";a="195500634"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2016 00:17:23 +0200
Date: Tue, 4 Oct 2016 00:17:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com
Subject: Re: [Outreachy kernel] trailing comma in parameter list
In-Reply-To: <20161003215732.GA4343@localhost>
Message-ID: <alpine.DEB.2.10.1610040016140.3215@hadrien>
References: <20161003215732.GA4343@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 3 Oct 2016, Elizabeth Ferdman wrote:

> A question just came up after seeing this checkpatch error:
>
> ERROR: space prohibited before that close parenthesis ')'
> #71: FILE:
> /home/lizadev/git/kernels/staging/drivers/staging/fbtft/fbtft-bus.c:71:
> +define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, )
>
> I'm wondering why there's a comma after the last parameter. I found
> something about variadic macros on gcc.gnu.org. Not seeing how that
> applies here though...

II haven't looked at the definition, but I would guess it is something
that can be empty.

>
> I wonder if taking out that space would be a problem.

I think that the space improves readability.

julia

> -liz
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161003215732.GA4343%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

