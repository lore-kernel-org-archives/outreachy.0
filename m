X-GM-THRID: 6671577370158170112
X-Received: by 2002:ac2:4554:: with SMTP id j20mr7713614lfm.112.1553352654097;
        Sat, 23 Mar 2019 07:50:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5085:: with SMTP id f5ls1175107lfm.13.gmail; Sat, 23 Mar
 2019 07:50:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzyiPdI1z9PEAGzqBo0btkaW4iWCdp0+g2RU8J03GDjY/I0esJ97rKlrKz4gAS6Pfvp5Bmv
X-Received: by 2002:a19:95cf:: with SMTP id x198mr7764001lfd.73.1553352653276;
        Sat, 23 Mar 2019 07:50:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553352653; cv=none;
        d=google.com; s=arc-20160816;
        b=JiphSauBMS3sYFJhQEcoPc/NE8+1+Ore7IlUFly7xOqYqo227aN33V+dhK7O5YBbFA
         sVlrPQhQAMNMp+vYLURnAzG9E1JjItkN4FV/pzDUvmRGRvSNx+680Zfi0RqXbdBRFqIM
         ST6aLGwmGVDizT6sqTyK177t7/2XnumscWge47Uj2CegsuTYnQ3GloapV1X8u0yzykMW
         ZNBfo+egMngPBaDnwK9/vN3M36s2kubKmDjV+s+5+hJ4oxHjEQZ6wSb7f+jgPb81gDQR
         QIg1QwCqW3zXxUVLovvp+O3Cd5mggQOjbparEiiVKZqv4ZgI8YM5QexCuF6OwMG2yvzi
         5//A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cvMWTzuKuukqVN389cdJFQGNUfBpwti5DqrheosCjDg=;
        b=DKXCPK4zZcD/RGR8MM/N3i9Yt37kAJx7e8hbN+MKwP1pGEuvgEgSb0X117MvwFGmkD
         PtFv595SbiFdXPwJ3a/iVtQiWVfAhXN3OkOAzBljLgW2r4Nykg0dKVgYkgswp9detFNX
         7AZUf4JxAaFcz52+2DsqolnlTG3wFPhH1JvCuHRqmbw2WWg6oUibgN3F08MdEcTbtoFP
         DfJdd7Mgq/XoSihCfny9WlD2Op+t0bghtVYc1TyGc3Q8k9LXAwMUc8diACvfI/VIDdK3
         P/t281PvQIe48S4N7WmrNE5hm9dlbVHxFg5TBS0YqBfOKol+RZrz7dHw8KrKWLn1vKIr
         lRQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f10si250821ljk.2.2019.03.23.07.50.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 07:50:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300486048"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 15:50:51 +0100
Date: Sat, 23 Mar 2019 15:50:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: include: Fix a
 space issue
In-Reply-To: <245673de-1d54-4183-8b92-0e95c6fe1596@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903231550180.2566@hadrien>
References: <20190323132716.904-1-vatsalanarang@gmail.com> <alpine.DEB.2.21.1903231434020.2566@hadrien> <245673de-1d54-4183-8b92-0e95c6fe1596@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1680139624-1553352652=:2566"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1680139624-1553352652=:2566
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 23 Mar 2019, Vatsala Narang wrote:

> >
>       > -        struct adapter * adapter;
>       > +        struct adapter *adapter;
>       >
>       >          u8 *pbuf;
>       >          u8 *pallocated_buf;
>
>       It looks like there are more opportunities for improving this
>       file, by
>       getting rid of the "p"s on these names.
>
>       julia
>
>       okay ,can I make this change in v2 of same patch or else should
>       I make it a patchset?

It's a different issue, so a patch set (which would be v2 because it would
contain this patch again) would be better.

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/245673de-1d54-4183-8b92-
> 0e95c6fe1596%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1680139624-1553352652=:2566--

