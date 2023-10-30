Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6215C1C32
	for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 06:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="qk/91t/7"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=IpioJBHD4qnWVn3iP5DIFY54QqmXimgI9Jx8RPaduXk=;
  b=qk/91t/7yK51gvInh1A48EgY6pNb0GBTx1hLVd70Ioq/YAeECrhOm054
   UCkS2MCFo/q0+gPy9kyZQwnBa529hbb0iVQ7QRLnbRU7dAVZGpGcHuUz1
   VeMZ/cOpqBcy9+gyvKK5Kx7sJUfQWn8dRP/ypN9inufpcehY3pjqC7/De
   w=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,262,1694728800"; 
   d="scan'208";a="133817999"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2023 07:25:17 +0100
Date: Mon, 30 Oct 2023 07:25:18 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dorine Tipo <dorine.a.tipo@gmail.com>
cc: outreachy@lists.linux.dev, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: vme: enhance the help paragraphs for clarity
In-Reply-To: <20231029180346.8570-1-dorine.a.tipo@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310300725070.3533@hadrien>
References: <20231029180346.8570-1-dorine.a.tipo@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 29 Oct 2023, Dorine Tipo wrote:

> - Revise the help paragraphs to fully describe the config symbol
>
> These changes were made to enhance the clarity of the help text, ensuring
> users can better understand the configuration options, their purposes, and
> their relevance to their specific hardware setups.

Where did you get the information from?

julia

>
> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> ---
>  drivers/staging/vme_user/Kconfig | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vme_user/Kconfig b/drivers/staging/vme_user/Kconfig
> index d65cc5510649..65a3e769090d 100644
> --- a/drivers/staging/vme_user/Kconfig
> +++ b/drivers/staging/vme_user/Kconfig
> @@ -4,6 +4,11 @@ menuconfig VME_BUS
>  	depends on PCI
>  	help
>  	  If you say Y here you get support for the VME bridge Framework.
> +          The VME Bridge Framework provides a set of tools and drivers
> +          for VMEbus systems, allowing seamless integration of VME devices
> +          with your PCI-enabled hardware. Select 'Y' to enable this feature
> +          if you have VMEbus-based hardware or intend to use VME devices in
> +          your system.
>
>  if VME_BUS
>
> @@ -14,7 +19,10 @@ config VME_TSI148
>  	depends on HAS_DMA
>  	help
>  	 If you say Y here you get support for the Tundra TSI148 VME bridge
> -	 chip.
> +	 chip. This bridge chip provides compatibility for VMEbus systems, allowing
> +         communication with various VME devices. If you have hardware that
> +         includes the Tundra TSI148 VME bridge, or if you plan to use VME
> +         devices with your system, choose 'Y' to enable this feature.
>
>  config VME_FAKE
>  	tristate "Fake"
> --
> 2.25.1
>
>
>
