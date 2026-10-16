Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E892931EF
	for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 12:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792152802; cv=none; b=tRv7Z/kZV1tjKWSd43vbFpUUBbLgbks98HrhEe/7teS4wah5OapDR/VVxUoSE4yVbxIgt6XkE7F0BFF+4QtEELHsZViu9JAJQBzuE2QAMSm8CgXJogCkEFAkzH0p76Cq5GeLdU5vtgUVfwBvUL+P9StoAN4HNDHijdHAvaet+Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792152802; c=relaxed/simple;
	bh=Mx0wqJ7A4/h9Ql2ArrulIvzt0tEVBDR21LMEYmTFbCc=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=J6ReiOXEPvRAlpzjtDoxefhY/PkJ6Hu11XUnW/dKmYFgLf3LcZXmS15lyH3t3/cZm/ihjJY9Z829k+uOB5HH5HHWLoX61qvGSVnPLVwbQD6iyu3npIh2FywgcEBbOuCcgESn6SC69pszAjsCEICPfs0wSyLzYBt1Kx4HD/5MW6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=eDyzAl/Z; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="eDyzAl/Z"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=w68yW1E7yp2Ad4/lWeoL5ewCAJTpn/2qLPUd5xLY7eQ=;
  b=eDyzAl/Z+VBcm0uuRZm55Gqul4+fgzbSzfAOOOKF0Oux9P2QemM85AfP
   Iv0CpiZ6gl2vRgGFjHs+VI5abhOlNkE2cOaOV4WdXoWrfwKboPUYcASnh
   WFDIAQWZ/QhorjOJHgJ934yNmUHLgH3HT/prYu1qaQNMZibAHvs+2GciQ
   Q=;
X-CSE-ConnectionGUID: STAnb7KVRTyk4u4o9gw1gQ==
X-CSE-MsgGUID: 4Bp/FAvzQOCXjLNlohrwcw==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,161,1787004000"; 
   d="scan'208";a="300562800"
Received: from static.host-68-71-1-178.nrbn.ca (HELO hadrien) ([68.71.18.178])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Oct 2026 14:13:16 +0200
Date: Fri, 16 Oct 2026 08:13:14 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Temitope obabi <obabitemitope765@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2] staging: fbtft: Fix alignment in tinylcd driver
In-Reply-To: <20261016120745.3134-1-obabitemitope765@gmail.com>
Message-ID: <9519becf-4ab1-5c1d-51cc-21e7fdb8fe11@inria.fr>
References: <20261016120745.3134-1-obabitemitope765@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 16 Oct 2026, Temitope obabi wrote:

> Align the continuation line with the open parenthesis.

Did you send a v1 of this to the list?

julia

>
> Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
> ---
>  drivers/staging/fbtft/fb_tinylcd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/fbtft/fb_tinylcd.c b/drivers/staging/fbtft/fb_tinylcd.c
> index afa8f1c740c5..d58b1247262b 100644
> --- a/drivers/staging/fbtft/fb_tinylcd.c
> +++ b/drivers/staging/fbtft/fb_tinylcd.c
> @@ -38,7 +38,7 @@ static int init_display(struct fbtft_par *par)
>  	write_reg(par, 0xE5, 0x00);
>  	write_reg(par, 0xF0, 0x36, 0xA5, 0x53);
>  	write_reg(par, 0xE0, 0x00, 0x35, 0x33, 0x00, 0x00, 0x00,
> -		       0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
> +		  0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
>  	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);
>  	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
>  	fsleep(250);
> --
> 2.53.0
>
>
>
