X-GM-THRID: 6884574355610664960
X-Received: by 2002:a2e:8985:: with SMTP id c5mr3682318lji.406.1602941747032;
        Sat, 17 Oct 2020 06:35:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls1819685lff.1.gmail; Sat, 17 Oct
 2020 06:35:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwym2CwgXMI287HO3fexP9Y6UAF4YWpwpX5HY3aD6p8LzR348xxTMhw23dch3eEsM6FsoyG
X-Received: by 2002:a05:6512:324f:: with SMTP id c15mr3217339lfr.357.1602941744609;
        Sat, 17 Oct 2020 06:35:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602941744; cv=none;
        d=google.com; s=arc-20160816;
        b=T6cviXzB4C79Z/3nEqKrzXRiNyDzMJEXlGOGKy6iYnwr0TflH0O9mPLChQKTt0ihvX
         /dEu1I9PfCVEvWkFxNKwRqG+kxAjrH8JEiwJefoASSaQVHy5WqIVnmFwYJxigpI1TJY9
         1UyM3xS4ax64w3/daH3U8lVgdhXcGktp/mbfbfErJn8P1NvLTggLqHSyBBajZukGPyKB
         V9EnVCYh9+o+ibA1e4IMISrttGERIq5drmVYdWdJN12LPSKom8OjPdtZvjVuBCcyqs9v
         D7HJ/ZmGxOJkhdAs+Dfmu0CSeukAyWgPo3yFyRoI0znMUTZMvKp2mAvwCw4VbT9GFgpQ
         vmsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=yezrlhYRYOpawhvjigKDxGMjeCgwtBgp82dyU0mfPgs=;
        b=KzWURrMEMuqbkYMJReh9D9GXaVbl2YNCFj9RP6Sy6RqEHrC8edMcfuoJ7BWzCq7OwD
         wj0oR8ctc2P8wCMR5VDTqBpbjUEqw8Mh+3Qzr9OQmoeOqiMSeNfGTRX8rOkRGCno7jSr
         MhW7cr8u+BYwiTpuIvYpDY7Yv5ku1BTf4WR0QgXKcli4Ke2fQVFxb0ObGzUYAxowU3JI
         swOGWeMpRGXYZXgIRmKBxnEb+YiENEc6LlxG3UVGY4WwLi+5it1IP4Xfe6xhG87G+9G7
         pfwovDfEWF1mTenj+yaN+C/eipesOnjBiLKVancuWuYwTE++eWewl8znAedyhCtuBo88
         zddQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a16si186083lfr.5.2020.10.17.06.35.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2020 06:35:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,386,1596492000"; 
   d="scan'208";a="362068737"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2020 15:35:43 +0200
Date: Sat, 17 Oct 2020 15:35:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: julia.lawall@inria.fr, outreachy-kernel@googlegroups.com
Subject: Re: Need help with Coccinelle
In-Reply-To: <20201017130431.GA71138@ubuntu204>
Message-ID: <alpine.DEB.2.22.394.2010171535090.9440@hadrien>
References: <20201017130431.GA71138@ubuntu204>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 17 Oct 2020, Deepak R Varma wrote:

> Hello Julia,
> I have installed Coccinelle and tried to used it. However, I am not
> seeing any useful outcome of running the Coccinelle commands. For
> example, I ran the following test but did not see either an error or
> output. Can you please suggest what may be wrong here?
>
> make coccicheck COCCI=scripts/coccinelle/api/err_cast.cocci MODE=patch M=drivers/gpio/ j=8
>
> Please check for false positives in the output before submitting a patch.
> When using "patch" mode, carefully review the patch before submitting it.

I think that there is just no opportunity for this rule in this code.

julia

