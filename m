X-GM-THRID: 6663345238466101248
X-Received: by 2002:a2e:8555:: with SMTP id u21mr200302ljj.4.1552466260014;
        Wed, 13 Mar 2019 01:37:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4352:: with SMTP id o18ls121938lfl.11.gmail; Wed, 13 Mar
 2019 01:37:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxt8YrffznLBgiB/NtNqB65a49JnCQgb4/zN+iLfR3hKUoXgFR8dRM9Eq9v+eKZ2z0dO07A
X-Received: by 2002:a19:da19:: with SMTP id r25mr2515508lfg.4.1552466259049;
        Wed, 13 Mar 2019 01:37:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552466259; cv=none;
        d=google.com; s=arc-20160816;
        b=UMRpC+ZuKxmGAYhIAKT5L2Hx5K7Cqwvv/ZkaHXkJRPzcqjG/7+zXahzRde3XcB5jH7
         zytFxocD7d0SjJzpWcI8WIT/ktEC0LwImhKA0Gq08vJPbFSLvV5XV+GCmSJxU5KdDrsE
         ZP/HrcSGSolbeqxef95CAZHXJGUuzM6Y16RHMa+e3AUOr0+23YQCHbfqYYFR/1TSXs5U
         jXVklYlv94DXBrcJ13sHf2NtUb8oXHCS7WezCYBFwb2UQbU/4fDyyuOlpNOxSjhPMQ82
         JdIRUS3/edW5r7Q/8kAOawVMVZi/KY5vXhcjPwz0pukzrkBT60yRHxn5GQsDZgoLO8/f
         dk7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=DzNrIxk7gHYEYcW29+XT/NwCZxvpPuI3j4M6KbuAUe0=;
        b=nv4zy3Xwm/+pUJUDPg1exUv1qovvTs/HzOb7qJj+aLxRxCaCmYerP8VzYMMMe1Adef
         CH/zPBng/ClZpH1vYnbvjxM+TviDN6HQLkCO0j9ZoS0Kyj1AvSP6k7ZNB5pjwJotPFDC
         Yg9nRNfVZJAbnCL8EPHX2Kruo5UDmveyiR1/JmG6EmKFHlPZRCYOQzNXluefOnf/KNRT
         d2N8a1R9kw2VOfAfiECGZPtVE1ygIkN6Eqi2TD+1F2dY971DTJWVdGP1NlUCXLfWDmJr
         myD6Bf0sGN2iyY/ZZMmBz+9B8x32bYssdLTwzgkYvpyomV4YFj8ChP68qepEjwpkny25
         jIUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m16si472164lfl.0.2019.03.13.01.37.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 01:37:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,474,1544482800"; 
   d="scan'208";a="299072870"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2019 09:37:37 +0100
Date: Wed, 13 Mar 2019 09:37:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wentao Cai <etsai042@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCHv2] Staging: fpgaboot: Delete
 newline at the end of Kconfig
In-Reply-To: <6289455c-2178-4baf-b1ae-899b7c19fa2a@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903130936430.3309@hadrien>
References: <20190301090225.9475-1-etsai042@gmail.com> <20190301090849.GA29599@kroah.com> <6289455c-2178-4baf-b1ae-899b7c19fa2a@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1388173598-1552466257=:3309"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1388173598-1552466257=:3309
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 13 Mar 2019, Wentao Cai wrote:

>
>
> On Friday, March 1, 2019 at 1:08:53 AM UTC-8, gregkh wrote:
>       > On Fri, Mar 01, 2019 at 05:02:25PM +0800, Wentao Cai wrote:
>       > > Delete the newline at the end of a Kconfig file, to silence the
>       > > checkpatch warning:
>       > > WARNING: please write a paragraph that describes the config symbol
>       > > fully.
>       > 
>       > That is not the way to fix this warning :)
>       > 
>       > You need to actually write a paragraph, not delete an empty line.
>       > 
>
> Hi, greg, I wonder if it is ok to solve this problem by adding this?
>
> Say Y if you want to include this driver in the kernel.
> To compile this driver as a module, choose M here.  The module will be called gs_fpgaboot.ko.
>
> Also I have a stupid question. I've just reinstall my system, so I can't revise my previous patches through git log. 
> If I want to revise those patches, should I still send them with a [PATCH vn] version or just with [PATCH]?

The version number is from the recipient's point of view.  So it doesn't
matter if you are revising your previos patch or creating it again from
scratch.

julia


>
> Thanks,
>
> Wentao
>
>       > thanks,
>       > 
>       > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6289455c-2178-4baf-b1ae-899b7c19fa2a%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1388173598-1552466257=:3309--

