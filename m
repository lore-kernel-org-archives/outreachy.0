X-GM-THRID: 7024064041486123008
X-Received: by 2002:a19:c1c2:: with SMTP id r185mr3936309lff.275.1635426402023;
        Thu, 28 Oct 2021 06:06:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:bc0e:: with SMTP id b14ls618605ljf.6.gmail; Thu, 28 Oct
 2021 06:06:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzjxHHBtWCkCmIF9JVhpxFksWjTGlIInMwDC4jFQ+Kysdx2/hicUBwAvO1pHtXUHDccZUhJ
X-Received: by 2002:a2e:3908:: with SMTP id g8mr4786114lja.370.1635426400277;
        Thu, 28 Oct 2021 06:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635426400; cv=none;
        d=google.com; s=arc-20160816;
        b=pMXhunbKY7gIdDZWcqoXGUjtV2ijZdUI3AgDGBT+20MYEsVXHeN6S9ndG2X/XO4tDW
         Bjg81hqKsPZeEVPmYqNhYYnw+N8nfNfh5vpkWRlri+wGiJQp+zHaCEHF0mW+c1xxU2kR
         HUsiS6TrORKxvd3nkjhoV0LlKSBZDBkSrtPgxNxCJROqbminN0ns8ny/NzWkGHyhT0h3
         9LeBXGTVEfEK4rugl0gHrMgn06nuN08t9K04i4WqOlmj7CKEUiolC7R6glwhdoQiPqcF
         9m81dLz7AB3jTtPmWPUBkA9htWHo0qX3PwqGTAW2DMRN2CumYGEO5IrZjZWYd3ky2jRH
         JdoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=I8VkGykVTi2ax4ulQLdwf9XFqc0QpY/kAUFrndgAkLU=;
        b=i1eSKiSgdavinuEmWheutMJA85kw5eKVAj4uuJZe5a7HOgpK86jZ8ypa+8EZZbhCua
         L43wnRl9yhbRD2Ocy56QOeGQCjaPkDAQV1tBw8neA6wdguOl6M4YSRH8o/Owog645tfk
         V/BJXeK51at3aE/UqaMEubfMiwUAO5Nff/GwcZmQnArQN312aQ1RfX3zA0cuMOeBAGFh
         XOJPPPxDDS1Ftl4/i2gKmf+gqIRek+8KKZp5Da0EymVDDZQIo8BlKRaeVvLEOlZksTqX
         +GsLjYofgnhuFrx/JxCyKwoFJKtxcwBLosZmOjSl4IwjwQqc3IcDQHLi9b8ph6syRAnJ
         zCow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q8si207908ljg.7.2021.10.28.06.06.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Oct 2021 06:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AoJA77qFbk/eKvKQepLqE9ceALOsnbusQ8zAX?=
 =?us-ascii?q?PiFKOH9om6Oj5qWTdZgguyMc6wxwZJhfo6HjBEDoexq1nvRICO8qXItKNzOLhI?=
 =?us-ascii?q?LHFuxfBPPZrAHdJw=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="397636735"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2021 15:06:38 +0200
Date: Thu, 28 Oct 2021 15:06:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, Karolina Drobnik <karolinadrobnik@gmail.com>, 
    Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/7] staging: vt6655: Rewrite conditional
 in AL7320 initialization
In-Reply-To: <1683328.aCfAWUeHFl@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2110281505170.9518@hadrien>
References: <cover.1635415820.git.karolinadrobnik@gmail.com> <948406a3e7d23f1cdf866aa4448d9428bdd32512.1635415820.git.karolinadrobnik@gmail.com> <1683328.aCfAWUeHFl@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Oct 2021, Fabio M. De Francesco wrote:

> On Thursday, October 28, 2021 12:35:35 PM CEST Karolina Drobnik wrote:
> > Use conditional operator to determine which table for AL7320
> > initialization should be used. Use `data` temporary value to
> > store this value.
> >
> > Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> > ---
> >  drivers/staging/vt6655/rf.c | 11 ++++-------
> >  1 file changed, 4 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> > index afd202ea3356..af4eb7eb8e7d 100644
> > --- a/drivers/staging/vt6655/rf.c
> > +++ b/drivers/staging/vt6655/rf.c
> > @@ -716,13 +716,10 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv,
> unsigned char rf_type,
> >  		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
> >  			return false;
> >
> > -		if (channel <= CB_MAX_CHANNEL_24G) {
> > -			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
> > -				MACvSetMISCFifo(priv, idx++,
> al7230_init_table[i]);
> > -		} else {
> > -			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
> > -				MACvSetMISCFifo(priv, idx++,
> al7230_init_table_a_mode[i]);
> > -		}
> > +		data = (channel <= CB_MAX_CHANNEL_24G) ?
> > +			al7230_init_table :
> al7230_init_table_a_mode;
>
> As far as I know by reading some Greg K-H's replies to other developers, this
> "<test> ? <true> : <false>" style is not well accepted here.
>
> I'd prefer to see an explicit "if-else" statement because with that style you
> sacrifice readability and gain nothing here.

Actually, I liked the ?: usage in this case.  We are making an alias, and
it is one thing or another.  One can easily see that the same variable is
assigned in both cases.

Othes could have another opinion, though.

julia


>
> > +		for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
> > +			MACvSetMISCFifo(priv, idx++, *(data++));
>
> Again, as Julia pointed out, "*data++" and "*(data++)" are syntactically
> correct instructions but are not required here. I'm also pretty sure that, by
> not reusing that index, you're adding additional unnecessary instructions to
> the resulting assembly code (unless the compiler is able to optimize it).
>
> "*foo++" and the like are powerful and compact instructions, but you should
> use them in other, more suitable contexts.
>
> Thanks,
>
> Fabio
>
>
> >
> >  		MACvSetMISCFifo(priv, idx++,
> al7230_channel_table0[channel - 1]);
> >  		MACvSetMISCFifo(priv, idx++,
> al7230_channel_table1[channel - 1]);
> > --
> > 2.30.2
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/
> outreachy-kernel/
> 948406a3e7d23f1cdf866aa4448d9428bdd32512.1635415820.git.karolinadrobnik%40gmail.com.
> >
>
>
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1683328.aCfAWUeHFl%40localhost.localdomain.
>

