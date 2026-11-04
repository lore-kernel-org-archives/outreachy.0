Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.83
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793783787;
	b=5GCwLxoyYpVhazZ5nIoRd3lUDgABbS4C5j9Bg9y+jzC+ovKzCsvPP3bVkMQ936eIpOZa
	 0bJoYqdT7W816dDYUBn8QOu3De6vxisn/HlbeoUNATKlcTYeZjDQYE5M2T2FMd27hSooj
	 E6s5kiiEpo/I+Ohn1Ynb9TaQSh6leDzLJk49DBUKkm02T8gDOfbyRO8N7XcGRQXynWjqu
	 QDGj0G2dhvgo/8OWs1fOK7qfp6f0zoGdfdQ1S53bgsE2kKey3Ig7AmOyMOkeBTznuz8Xg
	 YvM2wsqAqBXD1N8lQvaCEd6Ga3qpnb+Qfu1X1jWB0YechogTO81baiJuVkKqJ9fU7gw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793783787;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:In-Reply-To:Message-ID:
	 References:MIME-Version:Content-Type;
	bh=Suu7C4YCAPCnFUTSYA4AvLzdfHr6FN1W0kSVxzfHRRA=;
	b=zeHRFwzuaXSMApTy8O+2GMv59A9ONEjr97IKNX0Jr92HawCuHF5+YO/I6Xc2uFCS4f3Q
	 GyBhqNUBxT0zRU2Nt9fd7MBAMoM5TSxaCWdDf4mGIf3UNykQBdrZsMPIkaULd4uSR4hcn
	 ReaLEMOTFbDfykQ0YNw9N7AbTwO+4Fdxt8lGEtN7PwEwWnSuOXgdZpJ6j3uPM4r37LmQI
	 3HoGq2CEUh2LNpXgHEJ+ukCSfW4oIZVIzFjE/LVnGZ0pOQssZU59DcXD8EjXct1ciGUGQ
	 E0F4MRaQXYLtmg1xF8OK2DYtKf9xPLZGBIDevJncg0VtBXElzEMP5itGg63Y6zB4tCg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=o30nh5Ub;
	arc=none smtp.remote-ip=192.134.164.83
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3BD606A31B
	for <outreachy@lists.linux.dev>; Wed,  4 Nov 2026 09:16:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org EA3BD606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=o30nh5Ub
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Suu7C4YCAPCnFUTSYA4AvLzdfHr6FN1W0kSVxzfHRRA=;
  b=o30nh5Ub762R8/hgO+F9twx7gU7EWonVtiGHWFf/9ndAgKFKOUer6y5q
   IN56mcCcHo3LXLBk3OqgbRJPZ/pFZXhDl/vYYvx1QF4L8x9OmkxEEv8f+
   N7keh1DCWJ0B1P1i/XFBle6S6nWdRD0y/6zFE48CodX6EP3UWBdzJpCR8
   Q=;
X-CSE-ConnectionGUID: Z1n0zNSmQfa0oNFiIErYCQ==
X-CSE-MsgGUID: Kx8WX/KHRmG8m1OkR8WS0w==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,194,1787004000"; 
   d="scan'208";a="303723898"
Received: from 88-188-149-159.subs.proxad.net (HELO hadrien.home) ([88.188.149.159])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Nov 2026 10:16:18 +0100
Date: Wed, 4 Nov 2026 10:16:18 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: media: av7110: wrap long pr_info line
In-Reply-To: <20261104084957.130340-1-husainsitamuwala21@gmail.com>
Message-ID: <c92714d-c327-ff9-b27e-fcdd71e1f274@inria.fr>
References: <20261104084957.130340-1-husainsitamuwala21@gmail.com>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 4 Nov 2026, Hussain Sitamouwala wrote:

> Fix checkpatch.pl check:
>
> CHECK: line length of 103 exceeds 100 columns
>
> Wrap the pr_info() call in init_av7110_av() so the line stays within
> the 100 column limit. No functional change.

Hello,

Patches for outreachy should not modify the media subdirectory,
as explained in the firstpatch tutorial.

julia


>
> Signed-off-by: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
> ---
>  drivers/staging/media/av7110/av7110.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/av7110/av7110.c b/drivers/staging/media/av7110/av7110.c
> index 432404eceaea..78e8eda2b160 100644
> --- a/drivers/staging/media/av7110/av7110.c
> +++ b/drivers/staging/media/av7110/av7110.c
> @@ -168,7 +168,8 @@ static void init_av7110_av(struct av7110 *av7110)
>  		av7110->adac_type = DVB_ADAC_NONE;
>  	} else {
>  		av7110->adac_type = adac;
> -		pr_info("adac type set to %d @ card %d\n", av7110->adac_type, av7110->dvb_adapter.num);
> +		pr_info("adac type set to %d @ card %d\n", av7110->adac_type,
> +			av7110->dvb_adapter.num);
>  	}
>
>  	if (av7110->adac_type == DVB_ADAC_NONE || av7110->adac_type == DVB_ADAC_MSP34x0) {
> --
> 2.53.0
>
>
>
