Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B3254664
	for <outreachy@lists.linux.dev>; Fri,  8 Mar 2024 10:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709892908; cv=none; b=XeGVbvxboJDED/HZBWFkF6FsyzlSGf1H/Bjq8HCSRGDtKozKtJO85A6niWDQi6hNkCnnidFeYg1Sc2YBORwdVdpZE7qYUgwe2YFDpOVpYDcQU3AWunWgSzaFwm0SfBHbnx2ScgEI29Vq6Q1cdsgXExppaCl9mtZAM3NCOGBdMGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709892908; c=relaxed/simple;
	bh=TVJwbOMgh2JuU/WlxoU465ymROYnPrQ80GURCsPNEHc=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=rXFvZ3JuU/qOIUMKspAZ5b3FRkByuIx61WDf31JSQhTofNulhFM6X8sOecEylxpOju/vOGgTDu5laj7nGTOX/1aIqt+L6OPn7Gx60E5Fg0SmPDJxortIymQVJ3jnMPzTjNkv9T6DcurgzUJSFUnriqHD31A7BuB33Ojh5dueNbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=DnClKvdK; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="DnClKvdK"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=J2n06DnxQQHv7GS0YJ6Q2RfZKv1FQtibXooqmaDXDUc=;
  b=DnClKvdK/3tFhB/LxRjE4M/VCjWVagSvb5u8kn0SQz5U1fvxKkD0HEsP
   kUYX0XLmx4INGrF1WWyFrAgPey9IiFtHKWxWx2jmAN1Vs8VCEENg1KBrH
   5qtEU1GlOGguuO+WYrKOe9KE/D9I238/7t3gkrQPAolRPkTfrbpSO/rBw
   A=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.07,109,1708383600"; 
   d="scan'208";a="155648999"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2024 11:15:01 +0100
Date: Fri, 8 Mar 2024 11:15:01 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: =?ISO-8859-15?Q?Pedro_Guimar=E3es?= <moisespedro15@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: axis-fifo: Fixes parenthesis alignment
In-Reply-To: <ZeqHWuerM_aPsd1U@toolbox>
Message-ID: <c087ff3e-6acd-9355-9e5f-ab69646bb326@inria.fr>
References: <ZeqHWuerM_aPsd1U@toolbox>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1353886061-1709892901=:4140"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1353886061-1709892901=:4140
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT



On Fri, 8 Mar 2024, Pedro Guimarães wrote:

> This patch fixes the checks reported by checkpatch
> for alignment should match open parenthesis
>
> Signed-off-by: Pedro Guimarães <moisespedro15@gmail.com>
> ---
>  drivers/staging/axis-fifo/axis-fifo.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
> index c51818c56dd2..a70af76be7fb 100644
> --- a/drivers/staging/axis-fifo/axis-fifo.c
> +++ b/drivers/staging/axis-fifo/axis-fifo.c
> @@ -376,8 +376,8 @@ static ssize_t axis_fifo_read(struct file *f, char __user *buf,
>  		 */
>  		mutex_lock(&fifo->read_lock);
>  		ret = wait_event_interruptible_timeout(fifo->read_queue,
> -			ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
> -			read_timeout);
> +						       ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
> +						       read_timeout);
>
>  		if (ret <= 0) {
>  			if (ret == 0) {
> @@ -517,9 +517,9 @@ static ssize_t axis_fifo_write(struct file *f, const char __user *buf,
>  		 */
>  		mutex_lock(&fifo->write_lock);
>  		ret = wait_event_interruptible_timeout(fifo->write_queue,
> -			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
> -				 >= words_to_write,
> -			write_timeout);
> +						       ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
> +						       >= words_to_write,
> +						       write_timeout);

I have the impression that it was more readable beforehand.

On the other hand, the placement of >= words_to_write does not seem ideal,
because it is hard to see what exactly is being compared.  Perhaps exploit
the fact that 100 characters are allowed to move that up to the right of
the call to ioread32.

julia

>
>  		if (ret <= 0) {
>  			if (ret == 0) {
> --
> 2.44.0
>
>
>
--8323329-1353886061-1709892901=:4140--
