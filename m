X-GM-THRID: 6666132758820028416
X-Received: by 2002:a17:906:14c2:: with SMTP id y2mr2642851ejc.11.1552116887901;
        Fri, 08 Mar 2019 23:34:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:32c1:: with SMTP id k1ls2304925ejk.9.gmail; Fri, 08
 Mar 2019 23:34:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqztbleS5dChD3wGxHJVKu7b3JtUpo29OAia+jddWINuok6hhsuK7/kcZnFlD3Y5K4E6eK2S
X-Received: by 2002:a17:906:938b:: with SMTP id l11mr2638930ejx.8.1552116887129;
        Fri, 08 Mar 2019 23:34:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552116887; cv=none;
        d=google.com; s=arc-20160816;
        b=tCpEemfw7mm8+eVDBHDLonQSvruZzkFAvlXB8LvvO0ksxIeMh99YFHXru6sbvI+Bnv
         HjqfN9R1v42FoBiElUByxb4AT7Rh+6c+OwBeWWREd9flHld67GBhT3cAcYfw/So/ra+b
         l8i2Mm8qTG2qNtwKLNXTSWtJc0k69uobnOBAik+bsyn8H6b/HOikyJNwULk7WawMESBZ
         /Nyz41Yi18pwdBFnmfBG/W4NjD/dqJjecZUuCz2TMUTh/YhsuDWzbJJbx+FWjbriWvEn
         OC4KzjacMrX0MpGkdBYt34yIzr2RaFy9RHun6lx7OmV6LiR05MExIx4ykFdqOG3a2wES
         TJwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=T8epu60ycgTJbcywY/buuz1W3/hzF8vHpbBaSzJqTb4=;
        b=q4DjvTSJFjNWesWF4Cexu2SMb3PYPohCVJBJwXRopp0iFo9Zs9ru7LAo9br1u4m5Zy
         X36v2D1jg12RcWxP0HbL8ZC8lSfOkjjkFulCdnz+X5ymJwl3GXoVk7dEsKSQL0wE4quo
         VKKscGx7rBgZCXFiDeruwRXbdZGvvjBv5Y3RXBe1jLKNTQmpquXG36UKF7BTu0pImqIQ
         V+PXgz3nsZzR5sFgQpZYorNkq5jcK2Qp8c0YOfxn42uF4lyunjywgSF5tmMk3F/lqohl
         MsnFQdvNuR6TNdY+CM/yPPGWF+gy0SCmzJ4vsCvhTIAxCxS1Vyg1fybqvLvH/DR6zgyQ
         Zotg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r37si494591edd.2.2019.03.08.23.34.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 23:34:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,459,1544482800"; 
   d="scan'208";a="298639147"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 08:34:46 +0100
Date: Sat, 9 Mar 2019 08:34:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: idebleenasen@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Coccinelle project
In-Reply-To: <af41fd98-fc3e-4651-9fd5-fb1ec47a886d@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903090833460.2558@hadrien>
References: <alpine.DEB.2.21.1903082215570.2518@hadrien> <af41fd98-fc3e-4651-9fd5-fb1ec47a886d@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-668529742-1552116886=:2558"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-668529742-1552116886=:2558
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 8 Mar 2019, idebleenasen@gmail.com wrote:

> On Saturday, March 9, 2019 at 2:49:40 AM UTC+5:30, Julia Lawall wrote:
>       Hello,
>
>       If you are interested in working on the Coccinelle project,
>       please check
>       my kernelnewbies page:
>
>       https://kernelnewbies.org/JuliaLawall
>
>       That should have everything you need to get started: a link to a
>       tutorial,
>       links to some examples, and some exercises to do.  All of the
>       exercises
>       currently are relevant to staging drivers, although I note that
>       some of
>       them are currently relevant at only a few places in the code.
>
>       Please feel free to try Coccinelle once you have some accepted
>       patches.
>
>       Let me know if you have any questions or run into any
>       difficulties.
>
>       julia
>
>  
> Can I start working on Coccinelle?

At the moment, your only patches in Greg's staging tree are about lines
over 80 characters.  Please get accepted some patches that affect code
first.

julia
--8323329-668529742-1552116886=:2558--

