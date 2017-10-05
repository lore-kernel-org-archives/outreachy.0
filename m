X-GM-THRID: 6473122698379657216
X-Received: by 10.223.142.227 with SMTP id q90mr1576414wrb.32.1507185365564;
        Wed, 04 Oct 2017 23:36:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.182.5 with SMTP id f5ls2005956wre.8.gmail; Wed, 04 Oct
 2017 23:36:04 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDVgoHS+prSGRAAHD9mw95gQ9syubRpSpO25T4mj4k8CX9luYAWOAqminoVehHwO9ZTuRS+
X-Received: by 10.223.157.134 with SMTP id p6mr2371166wre.14.1507185364652;
        Wed, 04 Oct 2017 23:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507185364; cv=none;
        d=google.com; s=arc-20160816;
        b=koI7MFZZHrTtUUabpsu+b2Cd1UuHHg8G56MNc9RB8/jAna7layQOAlY+P/bf1Czl7/
         B7WtXEg8TFqIoE9gAu1XeQXYjy1M259sh1vXY1wL+UYUwAxSV4dqJhuULmYgAs4V1N8u
         SomyfIb4YVu7rAOrDdAGkhh40BHhBvZZtn3D4sVe0rn1INjKs1EkbVVAhlcwogfOGrsx
         1VbnrW0OHwBdPrScvMYU/zWZxP9mIpR1pFz7xVAoM/gl20qdnLThjqXi8VMRlCpyO4pj
         2wMWum++7n0dAc6yhm6UdsC5ufVEPx4xYt32rMzSw8UzhNS7yDVtGWreg8UH4c3Xzd7E
         Adhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=OejVKW4kpdRnt1NjIucbCY/JOVQmr3PQlIVXqXDwnrE=;
        b=h0v7RhXwouVX+1Lm3poI+Lm6nM0FhJR93TODHsf0mQMrX7i4EO/p4RNJq3YL0SpbAJ
         W48yxoxqD1gLI+eVwzLewPlW2RVXKZn+ckEAlFHVnv3dqj3Xh7chT0BGp923xq30mbda
         Lg3Wdj52QM33ZQZlCxbtWqWUJ91q0dDCYfLw+F9MZ/YsrjS2jMB3OgQ672kyxdrNk9UW
         j5EX8OmDyqf1bT98WhBhsYpKVGWmgCXENz7EfW1Rg7zfO1ToiVVA0sDQ0KSx4dsO4I1x
         mQhzV/jvu1p1KbvTZwzZ5FIN8UnGQ+byvghG/AfWbF9mo3hzkR5AMBf6TRMMx5CfsUdd
         4dKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p70si1845246wma.1.2017.10.04.23.36.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 23:36:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,480,1500933600"; 
   d="scan'208";a="239792172"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Oct 2017 08:36:03 +0200
Date: Thu, 5 Oct 2017 08:36:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: pablo@netfilter.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] nftables: Change size_t len to size_t
 size
In-Reply-To: <20171005032543.GA28390@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1710050835510.2292@hadrien>
References: <20171004182138.GA24970@meghana-HP-Pavilion-Notebook> <alpine.DEB.2.20.1710042213520.2358@hadrien> <20171005032543.GA28390@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 5 Oct 2017, Meghana Madhyastha wrote:

> On Wed, Oct 04, 2017 at 10:15:00PM +0200, Julia Lawall wrote:
> >
> >
> > On Wed, 4 Oct 2017, Meghana Madhyastha wrote:
> >
> > > Change the variable name from size_t len to
> > > size_t size in the sprintf functions for
> > > consistency.
> >
> > It looks like a lot of changes.  Is size_t size already used in a lot of
> > other places?
>
> size_t size is used in most of the other places (in more places than size_t
> len in other parts of the codebase) so Pablo had asked me to convert size_t
> len to size_t size.

OK.

julia

>
> Regards,
> Meghana
>
> > Try to make log messages the use more of the horizontal space.
> >
> > julia
> >
> > >
> > > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > > ---
> > >  src/expr/counter.c   | 12 ++++++------
> > >  src/expr/ct.c        |  8 ++++----
> > >  src/expr/dup.c       | 16 ++++++++--------
> > >  src/expr/exthdr.c    | 14 +++++++-------
> > >  src/expr/fib.c       |  8 ++++----
> > >  src/expr/fwd.c       | 12 ++++++------
> > >  src/expr/hash.c      |  8 ++++----
> > >  src/expr/immediate.c | 12 ++++++------
> > >  src/expr/limit.c     | 12 ++++++------
> > >  src/expr/log.c       |  8 ++++----
> > >  src/expr/masq.c      | 14 +++++++-------
> > >  src/expr/match.c     |  8 ++++----
> > >  src/expr/meta.c      | 14 +++++++-------
> > >  src/expr/numgen.c    |  8 ++++----
> > >  src/expr/objref.c    | 14 +++++++-------
> > >  src/expr/payload.c   | 10 +++++-----
> > >  src/expr/queue.c     | 24 ++++++++++++------------
> > >  src/expr/quota.c     | 12 ++++++------
> > >  src/expr/redir.c     | 18 +++++++++---------
> > >  src/expr/reject.c    | 12 ++++++------
> > >  src/expr/rt.c        | 12 ++++++------
> > >  src/expr/target.c    |  8 ++++----
> > >  22 files changed, 132 insertions(+), 132 deletions(-)
> > >
> > > diff --git a/src/expr/counter.c b/src/expr/counter.c
> > > index 5c196d4..4de6b92 100644
> > > --- a/src/expr/counter.c
> > > +++ b/src/expr/counter.c
> > > @@ -151,28 +151,28 @@ static int nftnl_expr_counter_export(char *buf, size_t size,
> > >  	return nftnl_buf_done(&b);
> > >  }
> > >
> > > -static int nftnl_expr_counter_snprintf_default(char *buf, size_t len,
> > > +static int nftnl_expr_counter_snprintf_default(char *buf, size_t size,
> > >  					       const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_counter *ctr = nftnl_expr_data(e);
> > >
> > > -	return snprintf(buf, len, "pkts %"PRIu64" bytes %"PRIu64" ",
> > > +	return snprintf(buf, size, "pkts %"PRIu64" bytes %"PRIu64" ",
> > >  			ctr->pkts, ctr->bytes);
> > >  }
> > >
> > > -static int nftnl_expr_counter_snprintf(char *buf, size_t len, uint32_t type,
> > > +static int nftnl_expr_counter_snprintf(char *buf, size_t size, uint32_t type,
> > >  				       uint32_t flags,
> > >  				       const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_counter_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_counter_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_counter_export(buf, len, e, type);
> > > +		return nftnl_expr_counter_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/ct.c b/src/expr/ct.c
> > > index 021a277..396bee0 100644
> > > --- a/src/expr/ct.c
> > > +++ b/src/expr/ct.c
> > > @@ -314,18 +314,18 @@ nftnl_expr_ct_snprintf_default(char *buf, size_t size,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_ct_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_ct_snprintf(char *buf, size_t size, uint32_t type,
> > >  		       uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_ct_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_ct_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_ct_export(buf, len, e, type);
> > > +		return nftnl_expr_ct_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/dup.c b/src/expr/dup.c
> > > index e2171f4..f67331b 100644
> > > --- a/src/expr/dup.c
> > > +++ b/src/expr/dup.c
> > > @@ -147,38 +147,38 @@ static int nftnl_expr_dup_export(char *buf, size_t size,
> > >  	return nftnl_buf_done(&b);
> > >  }
> > >
> > > -static int nftnl_expr_dup_snprintf_default(char *buf, size_t len,
> > > +static int nftnl_expr_dup_snprintf_default(char *buf, size_t size,
> > >  					   const struct nftnl_expr *e,
> > >  					   uint32_t flags)
> > >  {
> > > -	int remain = len, offset = 0, ret;
> > > +	int remain = size, offset = 0, ret;
> > >  	struct nftnl_expr_dup *dup = nftnl_expr_data(e);
> > >
> > >  	if (e->flags & (1 << NFTNL_EXPR_DUP_SREG_ADDR)) {
> > > -		ret = snprintf(buf + offset, len, "sreg_addr %u ", dup->sreg_addr);
> > > +		ret = snprintf(buf + offset, size, "sreg_addr %u ", dup->sreg_addr);
> > >  		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
> > >  	}
> > >
> > >  	if (e->flags & (1 << NFTNL_EXPR_DUP_SREG_DEV)) {
> > > -		ret = snprintf(buf + offset, len, "sreg_dev %u ", dup->sreg_dev);
> > > +		ret = snprintf(buf + offset, size, "sreg_dev %u ", dup->sreg_dev);
> > >  		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
> > >  	}
> > >
> > >  	return offset;
> > >  }
> > >
> > > -static int nftnl_expr_dup_snprintf(char *buf, size_t len, uint32_t type,
> > > +static int nftnl_expr_dup_snprintf(char *buf, size_t size, uint32_t type,
> > >  				   uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_dup_snprintf_default(buf, len, e, flags);
> > > +		return nftnl_expr_dup_snprintf_default(buf, size, e, flags);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_dup_export(buf, len, e, type);
> > > +		return nftnl_expr_dup_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/exthdr.c b/src/expr/exthdr.c
> > > index 11766fa..12f49d8 100644
> > > --- a/src/expr/exthdr.c
> > > +++ b/src/expr/exthdr.c
> > > @@ -317,37 +317,37 @@ static int nftnl_expr_exthdr_export(char *buf, size_t len,
> > >  	return nftnl_buf_done(&b);
> > >  }
> > >
> > > -static int nftnl_expr_exthdr_snprintf_default(char *buf, size_t len,
> > > +static int nftnl_expr_exthdr_snprintf_default(char *buf, size_t size,
> > >  					      const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_exthdr *exthdr = nftnl_expr_data(e);
> > >
> > >  	if (e->flags & (1 << NFTNL_EXPR_EXTHDR_DREG))
> > > -		return snprintf(buf, len, "load%s %ub @ %u + %u%s => reg %u ",
> > > +		return snprintf(buf, size, "load%s %ub @ %u + %u%s => reg %u ",
> > >  				op2str(exthdr->op), exthdr->len, exthdr->type,
> > >  				exthdr->offset,
> > >  				exthdr->flags & NFT_EXTHDR_F_PRESENT ? " present" : "",
> > >  				exthdr->dreg);
> > >  	else
> > > -		return snprintf(buf, len, "write%s reg %u => %ub @ %u + %u ",
> > > +		return snprintf(buf, size, "write%s reg %u => %ub @ %u + %u ",
> > >  				op2str(exthdr->op), exthdr->sreg, exthdr->len, exthdr->type,
> > >  				exthdr->offset);
> > >
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_exthdr_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_exthdr_snprintf(char *buf, size_t size, uint32_t type,
> > >  			   uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_exthdr_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_exthdr_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_exthdr_export(buf, len, e, type);
> > > +		return nftnl_expr_exthdr_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/fib.c b/src/expr/fib.c
> > > index cbadeef..cb62020 100644
> > > --- a/src/expr/fib.c
> > > +++ b/src/expr/fib.c
> > > @@ -233,18 +233,18 @@ static int nftnl_expr_fib_export(char *buf, size_t size,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_fib_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_fib_snprintf(char *buf, size_t size, uint32_t type,
> > >  			 uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_fib_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_fib_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_fib_export(buf, len, e, type);
> > > +		return nftnl_expr_fib_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/fwd.c b/src/expr/fwd.c
> > > index 38923df..9b5e555 100644
> > > --- a/src/expr/fwd.c
> > > +++ b/src/expr/fwd.c
> > > @@ -128,11 +128,11 @@ static int nftnl_expr_fwd_export(char *buf, size_t size,
> > >  	return nftnl_buf_done(&b);
> > >  }
> > >
> > > -static int nftnl_expr_fwd_snprintf_default(char *buf, size_t len,
> > > +static int nftnl_expr_fwd_snprintf_default(char *buf, size_t size,
> > >  					   const struct nftnl_expr *e,
> > >  					   uint32_t flags)
> > >  {
> > > -	int remain = len, offset = 0, ret;
> > > +	int remain = size, offset = 0, ret;
> > >  	struct nftnl_expr_fwd *fwd = nftnl_expr_data(e);
> > >
> > >  	if (e->flags & (1 << NFTNL_EXPR_FWD_SREG_DEV)) {
> > > @@ -144,18 +144,18 @@ static int nftnl_expr_fwd_snprintf_default(char *buf, size_t len,
> > >  	return offset;
> > >  }
> > >
> > > -static int nftnl_expr_fwd_snprintf(char *buf, size_t len, uint32_t type,
> > > +static int nftnl_expr_fwd_snprintf(char *buf, size_t size, uint32_t type,
> > >  				   uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_fwd_snprintf_default(buf, len, e, flags);
> > > +		return nftnl_expr_fwd_snprintf_default(buf, size, e, flags);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_fwd_export(buf, len, e, type);
> > > +		return nftnl_expr_fwd_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/hash.c b/src/expr/hash.c
> > > index 066c790..6a52308 100644
> > > --- a/src/expr/hash.c
> > > +++ b/src/expr/hash.c
> > > @@ -285,18 +285,18 @@ static int nftnl_expr_hash_export(char *buf, size_t size,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_hash_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_hash_snprintf(char *buf, size_t size, uint32_t type,
> > >  			 uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_hash_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_hash_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_hash_export(buf, len, e, type);
> > > +		return nftnl_expr_hash_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/immediate.c b/src/expr/immediate.c
> > > index aba84ea..5cdad03 100644
> > > --- a/src/expr/immediate.c
> > > +++ b/src/expr/immediate.c
> > > @@ -229,11 +229,11 @@ nftnl_expr_immediate_export(char *buf, size_t size, const struct nftnl_expr *e,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_immediate_snprintf_default(char *buf, size_t len,
> > > +nftnl_expr_immediate_snprintf_default(char *buf, size_t size,
> > >  				      const struct nftnl_expr *e,
> > >  				      uint32_t flags)
> > >  {
> > > -	int remain = len, offset = 0, ret;
> > > +	int remain = size, offset = 0, ret;
> > >  	struct nftnl_expr_immediate *imm = nftnl_expr_data(e);
> > >
> > >  	ret = snprintf(buf, remain, "reg %u ", imm->dreg);
> > > @@ -259,18 +259,18 @@ nftnl_expr_immediate_snprintf_default(char *buf, size_t len,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_immediate_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_immediate_snprintf(char *buf, size_t size, uint32_t type,
> > >  			      uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch(type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_immediate_snprintf_default(buf, len, e, flags);
> > > +		return nftnl_expr_immediate_snprintf_default(buf, size, e, flags);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_immediate_export(buf, len, e, type);
> > > +		return nftnl_expr_immediate_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/limit.c b/src/expr/limit.c
> > > index 8e1f02a..3927dbf 100644
> > > --- a/src/expr/limit.c
> > > +++ b/src/expr/limit.c
> > > @@ -229,29 +229,29 @@ static const char *limit_to_type(enum nft_limit_type type)
> > >  	}
> > >  }
> > >
> > > -static int nftnl_expr_limit_snprintf_default(char *buf, size_t len,
> > > +static int nftnl_expr_limit_snprintf_default(char *buf, size_t size,
> > >  					     const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_limit *limit = nftnl_expr_data(e);
> > >
> > > -	return snprintf(buf, len, "rate %"PRIu64"/%s burst %u type %s flags 0x%x ",
> > > +	return snprintf(buf, size, "rate %"PRIu64"/%s burst %u type %s flags 0x%x ",
> > >  			limit->rate, get_unit(limit->unit), limit->burst,
> > >  			limit_to_type(limit->type), limit->flags);
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_limit_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_limit_snprintf(char *buf, size_t size, uint32_t type,
> > >  			  uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch(type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_limit_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_limit_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_limit_export(buf, len, e, type);
> > > +		return nftnl_expr_limit_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/log.c b/src/expr/log.c
> > > index 161327b..48abc9c 100644
> > > --- a/src/expr/log.c
> > > +++ b/src/expr/log.c
> > > @@ -298,18 +298,18 @@ static int nftnl_expr_log_export(char *buf, size_t size,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_log_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_log_snprintf(char *buf, size_t size, uint32_t type,
> > >  			uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch(type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_log_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_log_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_log_export(buf, len, e, type);
> > > +		return nftnl_expr_log_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/masq.c b/src/expr/masq.c
> > > index 1c75ee9..76d3eea 100644
> > > --- a/src/expr/masq.c
> > > +++ b/src/expr/masq.c
> > > @@ -171,15 +171,15 @@ static int nftnl_expr_masq_export(char *buf, size_t size,
> > >  	return nftnl_buf_done(&b);
> > >  }
> > >
> > > -static int nftnl_expr_masq_snprintf_default(char *buf, size_t len,
> > > +static int nftnl_expr_masq_snprintf_default(char *buf, size_t size,
> > >  					    const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_masq *masq = nftnl_expr_data(e);
> > >
> > >  	if (e->flags & (1 << NFTNL_EXPR_MASQ_FLAGS))
> > > -		return snprintf(buf, len, "flags 0x%x ", masq->flags);
> > > +		return snprintf(buf, size, "flags 0x%x ", masq->flags);
> > >  	if (e->flags & (1 << NFTNL_EXPR_MASQ_REG_PROTO_MIN)) {
> > > -		return snprintf(buf, len,
> > > +		return snprintf(buf, size,
> > >  				"proto_min reg %u proto_max reg %u ",
> > >  				masq->sreg_proto_min, masq->sreg_proto_max);
> > >  	}
> > > @@ -187,18 +187,18 @@ static int nftnl_expr_masq_snprintf_default(char *buf, size_t len,
> > >  	return 0;
> > >  }
> > >
> > > -static int nftnl_expr_masq_snprintf(char *buf, size_t len, uint32_t type,
> > > +static int nftnl_expr_masq_snprintf(char *buf, size_t size, uint32_t type,
> > >  				    uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_masq_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_masq_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_masq_export(buf, len, e, type);
> > > +		return nftnl_expr_masq_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/match.c b/src/expr/match.c
> > > index af659b3..431c339 100644
> > > --- a/src/expr/match.c
> > > +++ b/src/expr/match.c
> > > @@ -195,21 +195,21 @@ static int nftnl_expr_match_export(char *buf, size_t size,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_match_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_match_snprintf(char *buf, size_t size, uint32_t type,
> > >  			  uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_match *match = nftnl_expr_data(e);
> > >
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return snprintf(buf, len, "name %s rev %u ",
> > > +		return snprintf(buf, size, "name %s rev %u ",
> > >  				match->name, match->rev);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_match_export(buf, len, e, type);
> > > +		return nftnl_expr_match_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/meta.c b/src/expr/meta.c
> > > index b5c27e6..95e84ad 100644
> > > --- a/src/expr/meta.c
> > > +++ b/src/expr/meta.c
> > > @@ -216,17 +216,17 @@ static int nftnl_expr_meta_json_parse(struct nftnl_expr *e, json_t *root,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_meta_snprintf_default(char *buf, size_t len,
> > > +nftnl_expr_meta_snprintf_default(char *buf, size_t size,
> > >  				 const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_meta *meta = nftnl_expr_data(e);
> > >
> > >  	if (e->flags & (1 << NFTNL_EXPR_META_SREG)) {
> > > -		return snprintf(buf, len, "set %s with reg %u ",
> > > +		return snprintf(buf, size, "set %s with reg %u ",
> > >  				meta_key2str(meta->key), meta->sreg);
> > >  	}
> > >  	if (e->flags & (1 << NFTNL_EXPR_META_DREG)) {
> > > -		return snprintf(buf, len, "load %s => reg %u ",
> > > +		return snprintf(buf, size, "load %s => reg %u ",
> > >  				meta_key2str(meta->key), meta->dreg);
> > >  	}
> > >  	return 0;
> > > @@ -249,18 +249,18 @@ static int nftnl_expr_meta_export(char *buf, size_t size,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_meta_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_meta_snprintf(char *buf, size_t size, uint32_t type,
> > >  			 uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_meta_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_meta_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_meta_export(buf, len, e, type);
> > > +		return nftnl_expr_meta_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/numgen.c b/src/expr/numgen.c
> > > index 9b5b1b7..83c493a 100644
> > > --- a/src/expr/numgen.c
> > > +++ b/src/expr/numgen.c
> > > @@ -221,18 +221,18 @@ static int nftnl_expr_ng_export(char *buf, size_t size,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_ng_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_ng_snprintf(char *buf, size_t size, uint32_t type,
> > >  		       uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_ng_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_ng_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_ng_export(buf, len, e, type);
> > > +		return nftnl_expr_ng_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/objref.c b/src/expr/objref.c
> > > index b4b3383..340dc67 100644
> > > --- a/src/expr/objref.c
> > > +++ b/src/expr/objref.c
> > > @@ -219,32 +219,32 @@ static int nftnl_expr_objref_export(char *buf, size_t size,
> > >  	return nftnl_buf_done(&b);
> > >  }
> > >
> > > -static int nftnl_expr_objref_snprintf_default(char *buf, size_t len,
> > > +static int nftnl_expr_objref_snprintf_default(char *buf, size_t size,
> > >  					      const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_objref *objref = nftnl_expr_data(e);
> > >
> > >  	if (e->flags & (1 << NFTNL_EXPR_OBJREF_SET_SREG))
> > > -		return snprintf(buf, len, "sreg %u set %s id %u ",
> > > +		return snprintf(buf, size, "sreg %u set %s id %u ",
> > >  				objref->set.sreg, objref->set.name, objref->set.id);
> > >  	else
> > > -		return snprintf(buf, len, "type %u name %s ",
> > > +		return snprintf(buf, size, "type %u name %s ",
> > >  				objref->imm.type, objref->imm.name);
> > >  }
> > >
> > > -static int nftnl_expr_objref_snprintf(char *buf, size_t len, uint32_t type,
> > > +static int nftnl_expr_objref_snprintf(char *buf, size_t size, uint32_t type,
> > >  				      uint32_t flags,
> > >  				      const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_objref_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_objref_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_objref_export(buf, len, e, type);
> > > +		return nftnl_expr_objref_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/payload.c b/src/expr/payload.c
> > > index 897fc77..d61e854 100644
> > > --- a/src/expr/payload.c
> > > +++ b/src/expr/payload.c
> > > @@ -285,30 +285,30 @@ static int nftnl_expr_payload_export(char *buf, size_t size, uint32_t flags,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_payload_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_payload_snprintf(char *buf, size_t size, uint32_t type,
> > >  			    uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_payload *payload = nftnl_expr_data(e);
> > >
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > >  		if (payload->sreg)
> > > -			return snprintf(buf, len, "write reg %u => %ub @ %s header + %u csum_type %u csum_off %u csum_flags 0x%x ",
> > > +			return snprintf(buf, size, "write reg %u => %ub @ %s header + %u csum_type %u csum_off %u csum_flags 0x%x ",
> > >  					payload->sreg,
> > >  					payload->len, base2str(payload->base),
> > >  					payload->offset, payload->csum_type,
> > >  					payload->csum_offset,
> > >  					payload->csum_flags);
> > >  		else
> > > -			return snprintf(buf, len, "load %ub @ %s header + %u => reg %u ",
> > > +			return snprintf(buf, size, "load %ub @ %s header + %u => reg %u ",
> > >  					payload->len, base2str(payload->base),
> > >  					payload->offset, payload->dreg);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_payload_export(buf, len, flags, e, type);
> > > +		return nftnl_expr_payload_export(buf, size, flags, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/queue.c b/src/expr/queue.c
> > > index e0fb785..acb42e9 100644
> > > --- a/src/expr/queue.c
> > > +++ b/src/expr/queue.c
> > > @@ -172,41 +172,41 @@ nftnl_expr_queue_json_parse(struct nftnl_expr *e, json_t *root,
> > >  #endif
> > >  }
> > >
> > > -static int nftnl_expr_queue_snprintf_default(char *buf, size_t len,
> > > +static int nftnl_expr_queue_snprintf_default(char *buf, size_t size,
> > >  					     const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_queue *queue = nftnl_expr_data(e);
> > > -	int ret, remain = len, offset = 0;
> > > +	int ret, remain = size, offset = 0;
> > >  	uint16_t total_queues;
> > >
> > >  	if (e->flags & (1 << NFTNL_EXPR_QUEUE_NUM)) {
> > >  		total_queues = queue->queuenum + queue->queues_total - 1;
> > >
> > > -		ret = snprintf(buf + offset, len, "num %u", queue->queuenum);
> > > +		ret = snprintf(buf + offset, size, "num %u", queue->queuenum);
> > >  		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
> > >
> > >  		if (queue->queues_total && total_queues != queue->queuenum) {
> > > -			ret = snprintf(buf + offset, len, "-%u", total_queues);
> > > +			ret = snprintf(buf + offset, size, "-%u", total_queues);
> > >  			SNPRINTF_BUFFER_SIZE(ret, remain, offset);
> > >  		}
> > >
> > > -		ret = snprintf(buf + offset, len, " ");
> > > +		ret = snprintf(buf + offset, size, " ");
> > >  		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
> > >  	}
> > >
> > >  	if (e->flags & (1 << NFTNL_EXPR_QUEUE_SREG_QNUM)) {
> > > -		ret = snprintf(buf + offset, len, "sreg_qnum %u ",
> > > +		ret = snprintf(buf + offset, size, "sreg_qnum %u ",
> > >  			       queue->sreg_qnum);
> > >  		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
> > >  	}
> > >
> > >  	if (e->flags & (1 << NFTNL_EXPR_QUEUE_FLAGS)) {
> > >  		if (queue->flags & (NFT_QUEUE_FLAG_BYPASS)) {
> > > -			ret = snprintf(buf + offset, len, "bypass ");
> > > +			ret = snprintf(buf + offset, size, "bypass ");
> > >  			SNPRINTF_BUFFER_SIZE(ret, remain, offset);
> > >  		}
> > >  		if (queue->flags & (NFT_QUEUE_FLAG_CPU_FANOUT)) {
> > > -			ret = snprintf(buf + offset, len, "fanout ");
> > > +			ret = snprintf(buf + offset, size, "fanout ");
> > >  			SNPRINTF_BUFFER_SIZE(ret, remain, offset);
> > >  		}
> > >  	}
> > > @@ -232,18 +232,18 @@ static int nftnl_expr_queue_export(char *buf, size_t size,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_queue_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_queue_snprintf(char *buf, size_t size, uint32_t type,
> > >  			  uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_queue_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_queue_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_queue_export(buf, len, e, type);
> > > +		return nftnl_expr_queue_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/quota.c b/src/expr/quota.c
> > > index c247b0a..e9cc708 100644
> > > --- a/src/expr/quota.c
> > > +++ b/src/expr/quota.c
> > > @@ -169,29 +169,29 @@ static int nftnl_expr_quota_export(char *buf, size_t size,
> > >  	return nftnl_buf_done(&b);
> > >  }
> > >
> > > -static int nftnl_expr_quota_snprintf_default(char *buf, size_t len,
> > > +static int nftnl_expr_quota_snprintf_default(char *buf, size_t size,
> > >  					       const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_quota *quota = nftnl_expr_data(e);
> > >
> > > -	return snprintf(buf, len,
> > > +	return snprintf(buf, size,
> > >  			"bytes %"PRIu64" consumed %"PRIu64" flags %u ",
> > >  			quota->bytes, quota->consumed, quota->flags);
> > >  }
> > >
> > > -static int nftnl_expr_quota_snprintf(char *buf, size_t len, uint32_t type,
> > > +static int nftnl_expr_quota_snprintf(char *buf, size_t size, uint32_t type,
> > >  				       uint32_t flags,
> > >  				       const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_quota_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_quota_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_quota_export(buf, len, e, type);
> > > +		return nftnl_expr_quota_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/redir.c b/src/expr/redir.c
> > > index 9fb634a..b58635c 100644
> > > --- a/src/expr/redir.c
> > > +++ b/src/expr/redir.c
> > > @@ -173,26 +173,26 @@ static int nftnl_expr_redir_export(char *buf, size_t size,
> > >  	return nftnl_buf_done(&b);
> > >  }
> > >
> > > -static int nftnl_expr_redir_snprintf_default(char *buf, size_t len,
> > > +static int nftnl_expr_redir_snprintf_default(char *buf, size_t size,
> > >  					     const struct nftnl_expr *e)
> > >  {
> > > -	int ret, remain = len, offset = 0;
> > > +	int ret, remain = size, offset = 0;
> > >  	struct nftnl_expr_redir *redir = nftnl_expr_data(e);
> > >
> > >  	if (nftnl_expr_is_set(e, NFTNL_EXPR_REDIR_REG_PROTO_MIN)) {
> > > -		ret = snprintf(buf + offset, len, "proto_min reg %u ",
> > > +		ret = snprintf(buf + offset, size, "proto_min reg %u ",
> > >  			       redir->sreg_proto_min);
> > >  		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
> > >  	}
> > >
> > >  	if (nftnl_expr_is_set(e, NFTNL_EXPR_REDIR_REG_PROTO_MAX)) {
> > > -		ret = snprintf(buf + offset, len, "proto_max reg %u ",
> > > +		ret = snprintf(buf + offset, size, "proto_max reg %u ",
> > >  			       redir->sreg_proto_max);
> > >  		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
> > >  	}
> > >
> > >  	if (nftnl_expr_is_set(e, NFTNL_EXPR_REDIR_FLAGS)) {
> > > -		ret = snprintf(buf + offset, len, "flags 0x%x ",
> > > +		ret = snprintf(buf + offset, size, "flags 0x%x ",
> > >  			       redir->flags);
> > >  		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
> > >  	}
> > > @@ -201,18 +201,18 @@ static int nftnl_expr_redir_snprintf_default(char *buf, size_t len,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_redir_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_redir_snprintf(char *buf, size_t size, uint32_t type,
> > >  			  uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_redir_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_redir_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_redir_export(buf, len, e, type);
> > > +		return nftnl_expr_redir_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/reject.c b/src/expr/reject.c
> > > index 1e6fdf5..01bafb4 100644
> > > --- a/src/expr/reject.c
> > > +++ b/src/expr/reject.c
> > > @@ -137,12 +137,12 @@ nftnl_expr_reject_json_parse(struct nftnl_expr *e, json_t *root,
> > >  #endif
> > >  }
> > >
> > > -static int nftnl_expr_reject_snprintf_default(char *buf, size_t len,
> > > +static int nftnl_expr_reject_snprintf_default(char *buf, size_t size,
> > >  					      const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_reject *reject = nftnl_expr_data(e);
> > >
> > > -	return snprintf(buf, len, "type %u code %u ",
> > > +	return snprintf(buf, size, "type %u code %u ",
> > >  			reject->type, reject->icmp_code);
> > >  }
> > >
> > > @@ -161,18 +161,18 @@ static int nftnl_expr_reject_export(char *buf, size_t size,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_reject_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_reject_snprintf(char *buf, size_t size, uint32_t type,
> > >  			   uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_reject_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_reject_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_reject_export(buf, len, e, type);
> > > +		return nftnl_expr_reject_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/rt.c b/src/expr/rt.c
> > > index 10cb1e2..408b9a9 100644
> > > --- a/src/expr/rt.c
> > > +++ b/src/expr/rt.c
> > > @@ -173,13 +173,13 @@ static int nftnl_expr_rt_json_parse(struct nftnl_expr *e, json_t *root,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_rt_snprintf_default(char *buf, size_t len,
> > > +nftnl_expr_rt_snprintf_default(char *buf, size_t size,
> > >  			       const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_rt *rt = nftnl_expr_data(e);
> > >
> > >  	if (e->flags & (1 << NFTNL_EXPR_RT_DREG)) {
> > > -		return snprintf(buf, len, "load %s => reg %u ",
> > > +		return snprintf(buf, size, "load %s => reg %u ",
> > >  				rt_key2str(rt->key), rt->dreg);
> > >  	}
> > >  	return 0;
> > > @@ -200,18 +200,18 @@ static int nftnl_expr_rt_export(char *buf, size_t size,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_rt_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_rt_snprintf(char *buf, size_t size, uint32_t type,
> > >  		       uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return nftnl_expr_rt_snprintf_default(buf, len, e);
> > > +		return nftnl_expr_rt_snprintf_default(buf, size, e);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_expr_rt_export(buf, len, e, type);
> > > +		return nftnl_expr_rt_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > diff --git a/src/expr/target.c b/src/expr/target.c
> > > index 3c58b03..524b378 100644
> > > --- a/src/expr/target.c
> > > +++ b/src/expr/target.c
> > > @@ -195,21 +195,21 @@ static int nftnl_rule_exp_target_export(char *buf, size_t size,
> > >  }
> > >
> > >  static int
> > > -nftnl_expr_target_snprintf(char *buf, size_t len, uint32_t type,
> > > +nftnl_expr_target_snprintf(char *buf, size_t size, uint32_t type,
> > >  			   uint32_t flags, const struct nftnl_expr *e)
> > >  {
> > >  	struct nftnl_expr_target *target = nftnl_expr_data(e);
> > >
> > > -	if (len)
> > > +	if (size)
> > >  		buf[0] = '\0';
> > >
> > >  	switch (type) {
> > >  	case NFTNL_OUTPUT_DEFAULT:
> > > -		return snprintf(buf, len, "name %s rev %u ",
> > > +		return snprintf(buf, size, "name %s rev %u ",
> > >  				target->name, target->rev);
> > >  	case NFTNL_OUTPUT_XML:
> > >  	case NFTNL_OUTPUT_JSON:
> > > -		return nftnl_rule_exp_target_export(buf, len, e, type);
> > > +		return nftnl_rule_exp_target_export(buf, size, e, type);
> > >  	default:
> > >  		break;
> > >  	}
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171004182138.GA24970%40meghana-HP-Pavilion-Notebook.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171005032543.GA28390%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

