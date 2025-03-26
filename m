Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27DF1B07AE
	for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 10:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742983570; cv=none; b=XqCZ+gPo79iO+W5f6RKIrFLavEbsBHk5+HEjGuVwuPoxsM03QQBTbPUlW4clQ8UHX6A9xaGtON86kR2YbgXCDWvUaL7Y0cbVEEew0l6T+empDt40mgKZVhzyFLfUYbunGrdH9evSQEqwws/HzUYnxLzrZ9TcLk0TVm8KF7vwFqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742983570; c=relaxed/simple;
	bh=p5NenfIZ6tIwQtu+gmx7Wu+V7BdbgH9EnNUE/0BJxLg=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=tIOHqXanYjrz0JdPHzuepJKwvGBOE7W6ViYqpso9psC4Boy+qf65X0CROqgGglj26rUgBlSKfB1F+lavzLzoVUs2HaNoKl9FdiV0LAWrWJzu92InrocSAYU9X18GLgtn81A50ydJQQNFUi6m0oLOB8sIcrVg6LI/xSO/KtxPEwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=Z046gtT6; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="Z046gtT6"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=dnsHio1GCsTfCrPQVtVqojZS0vX25lg87Q51NNl/sKU=;
  b=Z046gtT60BkRMnD1afD0Ch24oLN2+Go1Az9g+5y74C8vBq3Gv2PljWv2
   UN1dhf7w/gZAmQ22qeKW0Y8XT2j1/XolE7Gvo9rNlG1hYQG58EpLFhFCL
   2h79QEGxsYP5StfrX/Hlx6aiUIQxNYw6L1Ovfsv0d+nAAZLA/fi+1eKDT
   g=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,277,1736809200"; 
   d="scan'208";a="112632871"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2025 11:06:05 +0100
Date: Wed, 26 Mar 2025 11:06:04 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2] staging: rtl8723bs: remove braces around single
 statements
In-Reply-To: <Z+PP5xLvTltjFKF2@HP-650>
Message-ID: <5cc238fb-e5e5-a8c1-7d18-444b1865bdcb@inria.fr>
References: <Z+PP5xLvTltjFKF2@HP-650>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 26 Mar 2025, Abraham Samuel Adekunle wrote:

> The code contains braces around single statements in the if blocks
> which are unnecessary according to the Linux kernel coding style.
>
> Remove the braces to improve readability and maintain consistency.
>
> Reported by checkpatch:
>
> WARNING: braces {} are not necessary for single statement blocks


Are there no other email addresses that shoudl receive this patch?

julia

>
> Signed-off-by: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>
> ---
> Changes in v2:
> 	- Remove extra blank line
>
>  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> index c60e179bb2e1..74a8fcf18e84 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> @@ -56,9 +56,8 @@ int _ips_leave(struct adapter *padapter)
>  		pwrpriv->ips_leave_cnts++;
>
>  		result = rtw_ips_pwr_up(padapter);
> -		if (result == _SUCCESS) {
> +		if (result == _SUCCESS)
>  			pwrpriv->rf_pwrstate = rf_on;
> -		}
>  		pwrpriv->bips_processing = false;
>
>  		pwrpriv->bkeepfwalive = false;
> @@ -549,9 +548,8 @@ void LeaveAllPowerSaveMode(struct adapter *Adapter)
>
>  		LPS_Leave_check(Adapter);
>  	} else {
> -		if (adapter_to_pwrctl(Adapter)->rf_pwrstate == rf_off) {
> +		if (adapter_to_pwrctl(Adapter)->rf_pwrstate == rf_off)
>  			ips_leave(Adapter);
> -		}
>  	}
>  }
>
> --
> 2.34.1
>
>
>
