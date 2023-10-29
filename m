Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C3D33D6
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 11:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="kOOzGuxk"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=1qLgiijpSs2u+pIlDYwTSJ9hkAGJ8bzf5SI7XycKjio=;
  b=kOOzGuxknVixB/mR/G6zRqdIwBAFYp1gWraPMl6zVlqknbGmzW/RYKbz
   QK0ZxSz+ylxm+UKOj4uyQdJADAXlQhIs69dfuAKJpE0CAU04xAKcAzWFh
   eqKys/R3fSu+jW1kuM7WeTGtZQf39kgtNjuyJ7g0boIVWoZzBPe9339WH
   c=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,261,1694728800"; 
   d="scan'208";a="70045914"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2023 12:10:34 +0100
Date: Sun, 29 Oct 2023 12:10:33 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dorine Tipo <dorine.a.tipo@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
In-Reply-To: <20231029094713.18818-1-dorine.a.tipo@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310291208360.3136@hadrien>
References: <20231029094713.18818-1-dorine.a.tipo@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The signed off by came out in the place of the subject line.  What did you
do to create the patch?

It could be good to try sending it to yourself first, to be sure that
everything is ok.  Please reread the Submit a patch section of the first
patch tutorial.

thanks,
julia

On Sun, 29 Oct 2023, Dorine Tipo wrote:

> Fix multiple blank lines warning
> ---
>  drivers/staging/vt6655/rxtx.h | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/rxtx.h b/drivers/staging/vt6655/rxtx.h
> index a67757c9bb5c..be1e5180d57b 100644
> --- a/drivers/staging/vt6655/rxtx.h
> +++ b/drivers/staging/vt6655/rxtx.h
> @@ -19,7 +19,6 @@
>  #define DEFAULT_MSDU_LIFETIME_RES_64us	8000 /* 64us */
>  #define DEFAULT_MGN_LIFETIME_RES_64us	125  /* 64us */
>
> -
>  /*---------------------  Export Definitions -------------------------*/
>
>  /*---------------------  Export Variables  --------------------------*/
> --
> 2.25.1
>
>
>
