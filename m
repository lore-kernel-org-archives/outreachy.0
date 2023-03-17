Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53306AC0
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 14:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Jb9PVNKaeT9l0KM5ARV2w1SKcAO1enxfU6tcgEsehL4=;
  b=cU+Vu1/i4a2vUdHIZPSSrdL6HuoV5fteDdysr3gdjoaGTBJFz4Zs2L2m
   0HWVj47/i+RKnDqZOZq8erED4d4o/gDgCCBO3Hvt7U5+N53QiHnwEg6/G
   Ny01/UZQBeu6OTd4glXA8LVXViyF3wr/GwJN09JgreoiTloX9GDbiRGfA
   4=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,268,1673910000"; 
   d="scan'208";a="97787193"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 15:34:32 +0100
Date: Fri, 17 Mar 2023 15:34:32 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Mark Heim <questioneight@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: a bit more trouble
In-Reply-To: <20230317142806.GA44040@pikachu-Z97-D3H>
Message-ID: <1af78bd7-a52-6df-57f6-164141a2952f@inria.fr>
References: <20230317042159.GA423927@pikachu-Z97-D3H> <alpine.DEB.2.22.394.2303170656220.3105@hadrien> <20230317142806.GA44040@pikachu-Z97-D3H>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Yes, I think I got that down. I finished a patch that is slightly
> more complicated than editing whitespace, but I have no idea
> if I'm on the right track or if I'm still off course.

It could be better to start with something extremely simple, to be sure to
do everything in the proper manner.

julia
