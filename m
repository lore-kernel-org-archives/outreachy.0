Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE70A15BE
	for <outreachy@lists.linux.dev>; Sat,  9 Mar 2024 16:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710002758; cv=none; b=UN291ipP2Gmt+B+KSHPq1u9z7yiLjdRIpP+rIbhaRqvXgWWRqKWmldqeK0Svcxchc7aJscmYX8YEO1Mfxb67i+xgJlSFpEXcVpHs7BUW1NaVKSScABMZeMCsSKmq2QUFrJzF8EU+Z9agZ6fXoF2LYj2H245xnv+eaS2VCXbW0eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710002758; c=relaxed/simple;
	bh=eLuosXwCaBLjYtp64jGN/cd9CDwmjw0QCj2l+jSjLws=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=PZaMui5t91hutxtPYHBPNWEjVEBjssnHNnrqccluYnF891rOBzfYHaZPw/QZBcmLqN0mCltkr0urnQv+vPzMq7Os3jzAznYsckZVTWsGVdEtW9CxpDfVzgaMTCwSg1FjfSsPyHTgl4OBzFgje+RxsR3kSgudXA72wLZUmjfZ6hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=d9LrBqy9; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="d9LrBqy9"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=iHglrqco7NK1cU0EAjB2+PeLaGOeUuFJ6QofZaWNIIE=;
  b=d9LrBqy9irjXbrg0y6+m6Pup/lmk3bxhCiHAvtuAw9cHO/SEnkZ7RIPB
   CH6LmlTcC8xhtz/SDEpyaRfGtnDpD8kjJWkb6EIDsY5TTmi30W0Xn/8EH
   19MLpJCeBlQ0jyoV+M7/2B2Dzy8uaMTtP5xsznqNJP6ShU0bv295BRI3F
   8=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.07,112,1708383600"; 
   d="scan'208";a="155828611"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2024 17:45:47 +0100
Date: Sat, 9 Mar 2024 17:45:46 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Pedro_Guimar=E3es?= <moisespedro15@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: Re: [PATCH v2] staging: axis-fifo: Fixes parenthesis alignment
In-Reply-To: <ZeyRCcO8JFHI90lK@toolbox>
Message-ID: <alpine.DEB.2.22.394.2403091743490.3311@hadrien>
References: <ZeyRCcO8JFHI90lK@toolbox>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1347038236-1710002747=:3311"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1347038236-1710002747=:3311
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT



On Sat, 9 Mar 2024, Pedro Guimarães wrote:

> This patch fixes the checks reported by checkpatch
> for alignment should match open parenthesis
>
> Signed-off-by: Pedro Guimarães <moisespedro15@gmail.com>
> ---
>  drivers/staging/axis-fifo/axis-fifo.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
> index c51818c56dd2..600d81043946 100644
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
> +						       ioread32(fifo->base_addr +
> +							       XLLF_TDFV_OFFSET) >= words_to_write,
> +						       write_timeout);

Actually, I suggested to ignore the checkpatch warning, and only put the
>= thing on the line before.

In general, splitting the arguments of binary operators such as + and >=
makes the code hard to read.

Also, I received this message twice (or at least two messages that looked
very similar).  Try not to do this, because then the recipient has to
spend time checking whether they are the same or what are the differences
between them.

thanks,
julia
--8323329-1347038236-1710002747=:3311--
