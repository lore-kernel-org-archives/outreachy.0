Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6732595
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 14:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="Bqryf7BC"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ZrPiUhzx3wHuOMkLsMIbiz9/CmgM2e/uUAbRA0F39nQ=;
  b=Bqryf7BCQG6M//V91W0fmHLwhltI4Xf6lUlgc5d1/TfEOCNprt6pNrKX
   ZbvEjW7fnrfK3JoP+et9jLn+priTNsPgkQEKvU1D44jTYihUzNx830DLj
   vPvMOrFufNJizqm9cG8wIkGS88USyWgPq2pdoeeUGPA2uZBkVGAjfzE46
   w=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,261,1694728800"; 
   d="scan'208";a="70050986"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2023 15:22:37 +0100
Date: Sun, 29 Oct 2023 15:22:35 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dorine Tipo <dorine.a.tipo@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: Re: [PATCH]
In-Reply-To: <20231029133826.4576-1-dorine.a.tipo@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310291522180.3136@hadrien>
References: <20231029133826.4576-1-dorine.a.tipo@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 29 Oct 2023, Dorine Tipo wrote:

> Fix unnecessary parentheses in drivers/staging/octeon/ethernet.c
>
> The commit addresses the following code style issue reported by checkpatch:

There is no subject line on this one.

julia


>
> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index 8e1f4b987a25..349308edbc9e 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -248,7 +248,7 @@ static int cvm_oct_common_change_mtu(struct net_device *dev, int new_mtu)
>
>  	dev->mtu = new_mtu;
>
> -	if ((interface < 2) &&
> +	if (interface < 2 &&
>  	    (cvmx_helper_interface_get_mode(interface) !=
>  		CVMX_HELPER_INTERFACE_MODE_SPI)) {
>  		int index = INDEX(priv->port);
> @@ -294,7 +294,7 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
>  	struct octeon_ethernet *priv = netdev_priv(dev);
>  	int interface = INTERFACE(priv->port);
>
> -	if ((interface < 2) &&
> +	if (interface < 2 &&
>  	    (cvmx_helper_interface_get_mode(interface) !=
>  		CVMX_HELPER_INTERFACE_MODE_SPI)) {
>  		union cvmx_gmxx_rxx_adr_ctl control;
> @@ -346,7 +346,7 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
>  	union cvmx_gmxx_prtx_cfg gmx_cfg;
>  	int interface = INTERFACE(priv->port);
>
> -	if ((interface < 2) &&
> +	if (interface < 2 &&
>  	    (cvmx_helper_interface_get_mode(interface) !=
>  		CVMX_HELPER_INTERFACE_MODE_SPI)) {
>  		int i;
> --
> 2.25.1
>
>
>
