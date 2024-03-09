Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4284C1F614
	for <outreachy@lists.linux.dev>; Sat,  9 Mar 2024 17:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710006833; cv=none; b=TjTA1n7/Sy2inIn+WkNgM9TC9xsLKwfPlmC+aqZSqpe6W/nASwCn48HasAh5pO5O7K/cGazKDhLflccQj1/g1fPk3AWz6Ltis8ucOhFSFCiRBKKrkHo+IgwZY5MWxSnFCaYTO8utCmSaTopHKV31YVCMBNgraRiSB+tRFvouEqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710006833; c=relaxed/simple;
	bh=4UrlqWvZ6Ynp2O/+RSkgVGyYVDIhYhjOMPTSk4ZE4NA=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=bYUkoyigVsdgOPTWO/YaBJuhkTlf7gwU+5zDkjoV1ZruGZW0dllePpjQFSIFQAIcRsQKW0qlr3/20C69Gh1IlkQonjrz+J3KiiyO1cNEolagdN9Gvfypio9TLaUuazm0iorNmvIZSbvWjud/zXb/M9f5b8wQ4wcbyMKBf8l+2YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=lNvT8fj1; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="lNvT8fj1"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=zAbgwDjkU8Ej1q56FjuSgolDiph/7g4si0rYD80DUjA=;
  b=lNvT8fj1wG3+CQvj0+1yjcU8cBB9mOiBcFtgycQQFgWYo4v2TN8bxful
   NAdby3rQNvIxmhZlo8zviytpvYMg1kpNplQkK4FzvdveRfWkSOLcN3+qZ
   KHFyB5Rmx5RbWu7D+l9/1oWJ9EDtlrA83int0zlqMA2nPCQJ2fpQEgj3I
   0=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.07,113,1708383600"; 
   d="scan'208";a="155831448"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2024 18:53:47 +0100
Date: Sat, 9 Mar 2024 18:53:46 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Pedro_Guimar=E3es?= <moisespedro15@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: Re: [PATCH v3] staging: axis-fifo: Fixes parenthesis alignment
In-Reply-To: <Zeygvtuf82OLsNcs@toolbox>
Message-ID: <alpine.DEB.2.22.394.2403091853240.3311@hadrien>
References: <Zeygvtuf82OLsNcs@toolbox>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-223474622-1710006827=:3311"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-223474622-1710006827=:3311
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT



On Sat, 9 Mar 2024, Pedro Guimarães wrote:

> This patch fixes the checks reported by checkpatch
> for alignment should match open parenthesis
>
> Signed-off-by: Pedro Guimarães <moisespedro15@gmail.com>
> ---
>  drivers/staging/axis-fifo/axis-fifo.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
> index c51818c56dd2..77a3f831fc65 100644
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
> @@ -517,8 +517,7 @@ static ssize_t axis_fifo_write(struct file *f, const char __user *buf,
>  		 */
>  		mutex_lock(&fifo->write_lock);
>  		ret = wait_event_interruptible_timeout(fifo->write_queue,
> -			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
> -				 >= words_to_write,
> +			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET) >= words_to_write,
>  			write_timeout);
>
>  		if (ret <= 0) {

Actually, I think that both could stay with their current indentation, for
symmetry.

julia
--8323329-223474622-1710006827=:3311--
