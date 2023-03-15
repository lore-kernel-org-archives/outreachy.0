Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201422F27
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 09:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=A9nIvihzjCoWKmbV2SNFaFm4Xur3CqFYoHDE8qKeAEM=;
  b=GkNZ97+IpjxOQkyVKZlx3TFZgnTZd4AT+R+1+pgjgkQz71KoKXDXOUmY
   bTWBMT0PC5AzjYzzIC9QqXHRtZE8nVS0tDCSYyhRu9lbfNkpNfPmbDL7g
   2IgC/d7iqT4nvrW7rrQguvwDINg+pMOdkaHAi6GIyfmvBHKr55jpoUDmp
   w=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,262,1673910000"; 
   d="scan'208";a="50234360"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2023 10:20:00 +0100
Date: Wed, 15 Mar 2023 10:19:59 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] Ask for help finding cleanups
In-Reply-To: <212018e0-dac0-adfd-ad63-2520933dece1@gmail.com>
Message-ID: <124d2ef9-6f1d-2652-c88d-161f1bc06443@inria.fr>
References: <ZBEIAKymniRkamjr@aschofie-mobl2> <212018e0-dac0-adfd-ad63-2520933dece1@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Here is a possible suggestion of something to do.

There is a macro called container_of that extracts a structure that
surrounds another structure (you may find it interesting to look at the
definition of this macro).

In the staging tree, there are some definitions like:

#define to_lm3554(p_sd)	container_of(p_sd, struct lm3554, sd)

These are often in header (.h) files, but you may want to check .c files
too.

It is not great to have such a thing as a macro, because from looking at
the definition one cannot tell what type it applies to.

One can get the same benefit from an efficiency point of view by making an
inline function (concretely, typically a static inline function, because
the definition only needs to be visible in the current file, or in the
case of a header file in the file that includes the header file).

So the idea is to convert these macros into function definitions.

The possible challenge is that a function takes an argument of a specific
type and returns a value of a specific type.  In this case, there is
always the possibility that the macro is being used because the arguemnt
has different types at different call sites.  So you need to check all the
call sites, find the type of the argument, and check that that same type
is used at all call sites.

julia
