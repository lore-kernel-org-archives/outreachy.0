X-GM-THRID: 6810510356795883520
X-Received: by 2002:a7b:c002:: with SMTP id c2mr13374128wmb.123.1586004904373;
        Sat, 04 Apr 2020 05:55:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6302:: with SMTP id i2ls2576023wru.4.gmail; Sat, 04 Apr
 2020 05:55:03 -0700 (PDT)
X-Google-Smtp-Source: APiQypI0C6FKk9KZiugckgZ5w8V1eFw/7NrmJrFTEjqgl5D5c/I5La7OPRROjeW839R1FNZn8RM0
X-Received: by 2002:adf:ed42:: with SMTP id u2mr15067016wro.175.1586004902977;
        Sat, 04 Apr 2020 05:55:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586004902; cv=none;
        d=google.com; s=arc-20160816;
        b=EmJjaldCKhDUa7iTSIgRUCQ1084e/O7rjRJvDR5xdZTyTztaLZD98dML8aczb6ICbQ
         fB/ucamWzpblURjUeZvD+8D2GGb78baUd3/LPfBNXn0bZLgZshgPGbRiqet1KmeYZOxu
         86/Swrovxeef529biO5mSdzrHgMx7GnLxsYhS7637+prDjogx1EXLlxE4kGVqBfSJ7+N
         gyRgIOku8H4k942KkeIjUdtMnoQnDwaSdQD87WSJzqRqPxFd5c0f8LajUz6NNoJZzeY2
         rufrL7nMtV62LdgueJFYJrm5BbCMYdWRUM+qi95CF1etYt1blizmINL4rVU7CeQJVfoY
         EhDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7tiB+M+6MnfM39ReqpQEgMQYIcAkzNwTMDpPm0fcPSo=;
        b=NHUTDC4UJllcSChkXbz5QzssagjpN0TJBWQXWw6G+kiKJapCLFvlTfas4E+yo+GYs0
         fEzPRTT9PVJa6BsaZibYWo4wGJ9dphKwpYK1nMIY+5M1Ss7FJvfxJ9gWZWwZ6PSvrtH6
         itQ2fYSPvY0xXLCAsAPARzAJ62ohf0LYWFMhf5+qpge/iGS/X1y0uj1z3VIcEPQnKPMm
         UTC0FLzC4pDRDTKZeNPcsCOObAA1BN5GwxzjgTwE1NuEweXUgCZRO/SYhRcPazgRQKiP
         NtHO1817Hy4eneP/vvkziCrd/Oi9CPo6vfBB3MA28HVh9xGcGIqRvJ1mC4at5dk9GNSW
         aq0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y83si512520wmb.1.2020.04.04.05.55.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Apr 2020 05:55:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,343,1580770800"; 
   d="scan'208";a="443808710"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Apr 2020 14:55:02 +0200
Date: Sat, 4 Apr 2020 14:55:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Stefano Brivio <sbrivio@redhat.com>, 
    Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: omap4iss: Use
 BIT() macro
In-Reply-To: <bace205763db970618b1d1541133826a874b1e21.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2004041451060.2354@hadrien>
References: <20200331225817.14834-1-jane.pnx9@gmail.com>  <20200401045531.5de93729@elisabeth> <bace205763db970618b1d1541133826a874b1e21.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
> > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
> > > -#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
> > > +#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			BIT(12)
> > >  #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)
> >
>
> Hi Stefano,
> honestly i'am confused about how is there a difference between BIT(x)
> and (1 << x)

In the original code you have a bunch of things shifted to the left by 12
bits.  3 0 1 and 2.  They all look the same, and one can think about a
little region of bits some of which can be on and some of which can be off.
If you put BIT(12) in one case you don't see that.

For example, if you had

1 + 100
2 + 100
3 + 100
104
5 + 100

How easy is it to check that you have a sequence of 5 numbers?  It's really
easy to add a single digit integer to 100, but probably you had to think
just a little extra bit when you came to 104, because it's not following
the same pattern.

julia

