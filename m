X-GM-THRID: 6250910328324882432
X-Received: by 10.194.24.233 with SMTP id x9mr1055321wjf.0.1455466189055;
        Sun, 14 Feb 2016 08:09:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.20 with SMTP id r20ls597289lfg.61.gmail; Sun, 14 Feb
 2016 08:09:48 -0800 (PST)
X-Received: by 10.112.201.104 with SMTP id jz8mr1306833lbc.13.1455466188538;
        Sun, 14 Feb 2016 08:09:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c143si362672wmd.1.2016.02.14.08.09.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 08:09:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,446,1449529200"; 
   d="scan'208";a="203053632"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 17:09:48 +0100
Date: Sun, 14 Feb 2016 17:09:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Parenthesize complex
 values in macros
In-Reply-To: <CANnt6X=xgYovBN0CW3j-MUW7iuaoaWRP3VPHO5m=jMx3=3rJKw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602141709220.2066@localhost6.localdomain6>
References: <20160214034355.GA24997@janani-Inspiron-3521> <alpine.DEB.2.02.1602140833030.2039@localhost6.localdomain6> <CANnt6X=xgYovBN0CW3j-MUW7iuaoaWRP3VPHO5m=jMx3=3rJKw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1759664687-1455466188=:2066"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1759664687-1455466188=:2066
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 14 Feb 2016, Janani Ravichandran wrote:

> 
> 
> 
> 
> Are these used anywhere?  Grepping for a few of them didn't turn up
> anything. 
> 
> No, Julia, these don't seem to be used anywhere. They are just defined.
>  
>       But maybe they provide useful information about the device that
>       should be preserved.
> 
> True.
>         
> 
>       In summary, I'm missing to see what kind of C
>       expression has the form e1:e2, and I wonder if this is intended
>       to be part
>       of something else that will break when you add the parentheses.
> 
> 
> I added the parentheses as checkpatch recognized it as a complex
> expression and suggested the parentheses.
> I might have made a mistake. In that case, please ignore this patch :)

Checkpatch does not know all that much about the syntax of C.

julia
--8323328-1759664687-1455466188=:2066--

