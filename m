Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6C732692D
	for <outreachy@lists.linux.dev>; Tue, 10 Feb 2026 06:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770706243; cv=none; b=P1bwfGYBUN7L7cw0QTKSDNWOYb/ti4T87bjI1lhNtdZOGddxyY+3+uXx/3MwM3vk47kXHofBflpdA3l1d2/buZ4cEnlAgVNgEr9NjGRhFGnCAUjQlapQE6/QeavdB1bRcos8ucTOpCu5q9X2nLyUAOhuNh/A5XkF2qXb983ZPw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770706243; c=relaxed/simple;
	bh=ziIwfdWrLMZKQdz88g4/Gp2tXYcAS67ujYqr2k5I31I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YbW9ZONbFLZO853bkGcfLmE/KogoDZ6m6F1WLlc18I0rSlqmuuIOIOsJCsvOcUSTQtEIcD18y4e9ziFabLTweF0Rjhc8Uo/yTxmHUJe49fMidQ5jx6jPaygdqMdUOJjJrX4lueHs60ZIwLtddOya5xOSJHW9b/+/ZnR+7/ljYnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YLdBn6G6; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YLdBn6G6"
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-47ee0291921so35945015e9.3
        for <outreachy@lists.linux.dev>; Mon, 09 Feb 2026 22:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770706240; x=1771311040; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ns007NcOBuy7TVgVTAMiclCNP5pgSsFA2zQweJd7GMY=;
        b=YLdBn6G6whpdNFla3UyvkYw+UtNhxb41W8Kyqplp6LNWYbgY6VRydyQWzREYOZVkGW
         680nhk4+YNfA7OaeOnskyHvv9hcCWRgt8Y5nE7oN1qOvDDtsiHd8Q8BUZLxQw0wrfy1Y
         2y8YMD+wLbKERwyVVihOi0vlQzKfKD8bf9JifQmwexNlBMNMzjvFOBMgsdqx92BsekEU
         jHdMSEhXasp4/MmHvIA7hcAXL7ZYCxJlr5iOpRRz0bWZaqnohWRAB5hT0lcuunLlkadQ
         LNhXcx0/GZlAp7AT+I1XSZ3ivUQtxQYXyDXDLyupw9oDo1sSzuXX1Ss5pMecbVn4q1f7
         XYGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770706240; x=1771311040;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ns007NcOBuy7TVgVTAMiclCNP5pgSsFA2zQweJd7GMY=;
        b=UlGj/376LhfXc5e/XK9KNMHKhxNtceQWtt2BdsxY7Fw3/n3z4CQJg5uW2BNmTnAf2n
         dis32ZPpmOYxv7JGu7KwUh3gTF2vmHDctxEzzGySCk9PiTZ2uJ/NctbzfIIclF8ISWx7
         976IgcI0sjrhX5DEwIRuZ+gWOa3YiY+utc6bBgqQ4g7vuGwBYmqSshkEwTd6zC/Djk8f
         5midu1SOwnYHtnmz1INsiFxkWhZpcXMMnyNhFKx5VXFbPIxlH5zFw2a1lXTJn8TyFCKS
         Ww0Hwybpq3h9RMzKwAZ5GyUA+4p+nxrvW6P/qii2Wjp5B8itryOAW8BaaCknkfF2SREI
         0EEw==
X-Forwarded-Encrypted: i=1; AJvYcCUOHp0e9ApjflR7CAv/eQaxCUGDW5Lv2MZtPJ3yWbV5FHIYf8jZMMs9rTac1nv0FPIoDC916kp8f6Y=@lists.linux.dev
X-Gm-Message-State: AOJu0YyFv+g6SDVFnSThsrkpvLqsBckdFBQ1ySwx6fpoyLmdoVmD67lg
	8H+Y4WBLG+EuvaY7PHLzbW43yAoMfkaqq94NQ7BKOQ2RJBv+6bDwGtEWiNTIbZVciXM=
X-Gm-Gg: AZuq6aKbDlMqy1XNv96swHmVGrpnCYJ6S9X/aK++ZQCyqX8V8aW4NqM7vafOvstm2UA
	OiBmn8t5X6eNdQsJbuEe4mpbEhHfBFIGyJOxs5w7GoTn1E89ouXnZdqSMsmvXJEsifj8ShF4kqs
	XMGN65NdKuv+Y7Pfw1tHmqc/kVq8SX1lk1Zd4n2SLbz6nsnQ4NHklvQsD2MdB4GAQ21Z/gwCYML
	N83v+LsXUJNo7BdZR8ViUz9Et1DFH/9fMCOe/BVw3kbI+67KYdLPNWK6lXIZsiZdzr80ckz4gk2
	9Rpa4T5cwtqXTMeJSo8N80i1J00gF6g02swDrNeAKl8ImcQgKckzNlSRT17RAmwRb9GtHubZ3mW
	JymVunE78XjHuesPNOjgMOHo/zEgGLOnU+nXID6i709RC1wxyG8c0JX0m/XKvpB1G7nfojtAe3z
	80MpYPIsNuhkSxtcZcZkK1Jhh9/FPP
X-Received: by 2002:a05:600c:5253:b0:471:114e:5894 with SMTP id 5b1f17b1804b1-4832021c93cmr206793935e9.25.1770706240265;
        Mon, 09 Feb 2026 22:50:40 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d7d53c3sm42953265e9.7.2026.02.09.22.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 22:50:39 -0800 (PST)
Date: Tue, 10 Feb 2026 09:50:37 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Yoelvis Oliveros <yoelvisoliveros@gmail.com>
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: octeon: type change from uint<bits>_t to u<bits>
Message-ID: <aYrVPUj1nma3DUPo@stanley.mountain>
References: <aYq028TNyXQWZ_v5@home-pc>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYq028TNyXQWZ_v5@home-pc>

On Tue, Feb 10, 2026 at 12:36:31AM -0400, Yoelvis Oliveros wrote:
> Runing the ckeckpatch.pl on the staging/octeon driver they where using
> uint<8/16/32/64>_T as type declaration and the checkpatch.pl was
> putting a [CHECK] flag on those and that they should be change to
> u<8/16/32/64>
> 
> Signed-off-by: Yoelvis Oliveros <yoelvisoliveros@gmail.com>
> ---
>  drivers/staging/octeon/octeon-stubs.h | 1922 +++++++++++++------------
>  1 file changed, 972 insertions(+), 950 deletions(-)
> 
> diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> index 35b5078ba51e..aea3dad37cfe 100644
> --- a/drivers/staging/octeon/octeon-stubs.h
> +++ b/drivers/staging/octeon/octeon-stubs.h
> @@ -1,188 +1,190 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
> -#define CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE	512
> +#define CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE 512
>  
>  #ifndef XKPHYS_TO_PHYS
> -# define XKPHYS_TO_PHYS(p)			(p)
> +#define XKPHYS_TO_PHYS(p) (p)
>  #endif

This isn't related to the commit message.  I'm not sure that it's
really an improvement, either.  There is honestly a lot in this
patch which is not necessarily more readable afterwards.

regards,
dan carpenter

