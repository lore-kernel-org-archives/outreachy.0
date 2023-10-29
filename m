Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F0A6AA0
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 11:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="I3N57mme"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=IHje0CMpXZJqVpCNSOonZyYbxCotjytDZ2GwPzH03ss=;
  b=I3N57mmeaeUuONNBgvQVERH+GwWgagRiAVkI0yDYU0beiF/z9kyGsx2a
   auGZuV5t4uFarAE64JKDT8tpo1YJ2A8WlWLAVEbqd7svJ1RpijHdcfRnf
   1/ucUOBzkwyTy9Ln54R0/663r1t2d4tmC/VkEaqqQaJ1Zw3q3PSBUJcCe
   Y=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,261,1694728800"; 
   d="scan'208";a="133747545"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2023 12:31:49 +0100
Date: Sun, 29 Oct 2023 12:31:49 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dorine Tipo <dorine.a.tipo@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: Remove multiple blank lines
In-Reply-To: <20231029102420.19388-1-dorine.a.tipo@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310291230190.3136@hadrien>
References: <20231029102420.19388-1-dorine.a.tipo@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 29 Oct 2023, Dorine Tipo wrote:

> Fix multiple blank lines warning


Now the signed off by is gone.

Please send the patch to yourself first and be sure that it is correct in
every way (right format and applies cleanly to the kernel).  To check that
the format is correct, please look at the examples in the tutorial and the
patches in the mailing list archives that have been submitted by other
applicants.

thanks,
julia

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
