X-GM-THRID: 6801528463992815616
X-Received: by 2002:ac2:529c:: with SMTP id q28mr5122680lfm.59.1583604607030;
        Sat, 07 Mar 2020 10:10:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:3cd:: with SMTP id f13ls1064736ljp.4.gmail; Sat, 07
 Mar 2020 10:10:05 -0800 (PST)
X-Google-Smtp-Source: ADFU+vsIGxLRsK71FgTHfAZT0As8kDaV3Fv6oERKFSQ9f6p4FBHNueqNs6C6LFwsKmJ/Np+tR8GT
X-Received: by 2002:a2e:b4a4:: with SMTP id q4mr5351461ljm.208.1583604605351;
        Sat, 07 Mar 2020 10:10:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583604605; cv=none;
        d=google.com; s=arc-20160816;
        b=0V1M0fXtW4dbS6ey7lDnqv4kXH7STy0K8zQrgHqhW0kbVgszxtRc0kbP5WbItjDEV6
         BhsYSlaD4gRo78y0VIVqpkfbwXBYzq0cry59FJlzVbGfuUAANM/28J+hc7StjSUMw9Eu
         wnpTxDNyDE2IICYan9aNKsb/NoocvImpqg4cVpXWEIR9caMioMO3T6VclwZLXMDHp7Ty
         zNP1bWu3AbBMjo52p7r29aa1+xSchXv61gIihjVkkyjfwdst+rDPBG8Y6cg4znZEHLwx
         nBlDBLOqYgAZUEkRCqak45pijnqXWzPedlageS7m0Gny0VjDqr86SfNHBlMsb5qVzEWf
         rIRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2VNsNGeFWOup1vRMPCAnfgh1dDvlf8RH9eXejF0hqvQ=;
        b=XRyznTxnf1TVQLdy9In1ZQzMjrSSmD14QhA3AcjtjT8GJVI5LEttm6FcvnY0Qk8GXw
         9Sm731aCCA1wgfQnHxUrLqhKGPYEZYcC9HLZCuNs+9Mh2scpUXGeDOPn4/onfWrgLW2O
         NT/f/qajLhfrr5uNKYBk6vuIXqdQKEMn7DHkPrgw3Fr8jUXKj8cX1w+0fEhp/IOfvoAz
         Lzsn2GhCEx/t/OYhASj/zitFCz/pestX11o+T95LTtHJ2uzL1UDTt3xQ+5ioRKSrff6h
         LkEP9PE8/WR7fRR86FVk5LLaFQVAXiqRqxXGKG2bJHEjln1t/s6CQ/MdVOss4imFD5LZ
         1v2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j11si269322lfe.4.2020.03.07.10.10.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 10:10:05 -0800 (PST)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,527,1574118000"; 
   d="scan'208";a="341614840"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2020 19:10:04 +0100
Date: Sat, 7 Mar 2020 19:10:04 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] New here
In-Reply-To: <20200307180359.GA24478@supernova>
Message-ID: <alpine.DEB.2.21.2003071909240.2294@hadrien>
References: <20200307180359.GA24478@supernova>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 7 Mar 2020, Lourdes Pedrajas wrote:

> Hi, I'm a new applicant for this 2020, newbie programmer too. For me is the
> first time participating in a large project like this.
>
> While reading kernelnewbies wiki, it says: 'drivers/staging contains both
> drivers that are on their way into the kernel and those that are on theirway
> out of the kernel.' How to know which of them are in their way out? I tried a
> git grep, but maybe there is a better way to know it. Thank you!

You can use git log to check whether there has been much activity of a
file recently.  If so, it's probably fine to work on the file too.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200307180359.GA24478%40supernova.
>

