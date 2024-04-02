Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD071D6AA
	for <outreachy@lists.linux.dev>; Tue,  2 Apr 2024 06:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712040599; cv=none; b=ceG3Y5ttvf7Wszk20s9ZBReEShWLb5nA295P4MllAj8v6rsx2Q4OZw0diULkO3uP02pwV+c40SVlFITQdpbzYY6F7xZ5kLqB97rvtnEnNVb3PycM8ukaFKucChzenA35hU7nwqgpQdL0GR9d4LkG2IPFUxICEN0ZxYTNec5CuO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712040599; c=relaxed/simple;
	bh=eiNouxOE5/rBXeDv+m/p4E72cospl88ziAJcUPNip/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IdtSkbPmE1bQE6ZxbPlPJrA5EeWbxD83TyUF6F908BqtgYO9Pn1cKS6ZX8dmqBJF1v7eYHo0IDcU+nfzCbN9lCid0tG44bvfIK6llUM8mCm/FIqEvI6VFa3eu722LDZNGbZSEfq5nSWkwRNmW6R7vos3WCZx83OwPTwJQSMznpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lgAW3pDi; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lgAW3pDi"
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-56c0a249bacso5735558a12.1
        for <outreachy@lists.linux.dev>; Mon, 01 Apr 2024 23:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712040596; x=1712645396; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pPqjVRbAXgeGN1lA/Onn5A9KAG7ZFxViPCHqpcaB3vk=;
        b=lgAW3pDiWIJgaOQtS8sxCEeJMmSpRXvjtG8pG6wXbGT3Cd8r2j4b6K0pGSh3HW/Bnq
         XB4wWncaVVjcIegT+gB1jXABAR4oD7+xTd6A2CwNhP+yPBbj9n/8Bw/pXz1SLPQlfNRX
         GQPXw0oFhGNsWXhy7+0j9hTTiOQXVTICXszZS6GTPSwY6iCmaLZhIQQPuQy3A5T5cnVl
         mikKHCyzNf6pBjUmB23ry1QfExM+9Y4vsnH1siT29VrsgKV7kMDJK7Ct+yYY99cHhyL1
         hJ+3w5172QZPXQQqWLFKLuCN65khz5rOv0E20hay2awKnHhCxPuym3+YQKRjq0BELmiM
         pwVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712040596; x=1712645396;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pPqjVRbAXgeGN1lA/Onn5A9KAG7ZFxViPCHqpcaB3vk=;
        b=wSsRF8Ngd5haaNu1pS3DfW2uM/6bLePxF5ZAduVwFj9CKrVWR9kac/eYfWjwbUywZD
         XsderMJW1vv3/POKj3Jsa/IpGyc2CcIyKitizAVvtcOt7Uvz9GBFBTjEslSk+f/h4AdC
         ju7w78LmhScltRg1d92riwlJ1LnYcPgcrCN58d7kQ9Itgo5yXllwATQC/r16wJ4JpEFo
         gp6nU4wZE/ca4Cyh4b5gdOQmCPAf5e0bkSpftLVDQrGW9J3dWiIWbHPM+Cy5VkLlPlVm
         /mahm9tCBnNcxPbEzahS8mFvLApZgAZlpZ2a+DxeDfpglg2AG+aIidipr1l61iJL+Sei
         iB9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXvOkF9xHggq4eeATO25h6Qrqjq0+1AbILdbZBsJXqw2Arprjo1j/tdwJRl+D15TQ6fnYr0D62TG2CQ6KXV4YuQiR3mkTaygVTW
X-Gm-Message-State: AOJu0YyTSZSOzU3G/K44LQS2OXmiH33Kdv93ylc8MjPwCeDkGuFTVMkA
	PHy6s6wQqp6ySUTZeFE2NlTu/tnfDLLJ0VKPrY7ciJkKQ7KLBP1KUv8FRsZmFF4=
X-Google-Smtp-Source: AGHT+IGu1POPDiPVv+vHKQ69u63fSHZ3ugYq99osz195dbi2X3kVADg2wwCDwA62w7Y7hOSFs5PWpg==
X-Received: by 2002:a50:9e87:0:b0:56c:189f:cf2f with SMTP id a7-20020a509e87000000b0056c189fcf2fmr6578870edf.32.1712040595959;
        Mon, 01 Apr 2024 23:49:55 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id q14-20020a056402248e00b0056c5515c183sm6052986eda.13.2024.04.01.23.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 23:49:55 -0700 (PDT)
Date: Tue, 2 Apr 2024 09:49:51 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: TaheraFahimi <fahimitahera@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: gdm724x: Align descendant argument to the open
 parenthesis
Message-ID: <56072f1a-6cca-4c11-9fbd-4081387afdfc@moroto.mountain>
References: <ZgXupx0nXwIOjy7F@tahera-OptiPlex-5000>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgXupx0nXwIOjy7F@tahera-OptiPlex-5000>

On Thu, Mar 28, 2024 at 04:26:47PM -0600, TaheraFahimi wrote:
> Mute the following checkpatch error:
> 	CHECK: Alignment should match open parenthesis

It's not aligned either before or after.  It should have been:

[tab][tab][tab][tab][tab][space][space][space][space][space][space]TTY_DRIVER_...

> 
> Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_tty.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
> index 15c246d3b1a3..bd80cd48fb44 100644
> --- a/drivers/staging/gdm724x/gdm_tty.c
> +++ b/drivers/staging/gdm724x/gdm_tty.c
> @@ -272,8 +272,8 @@ int register_lte_tty_driver(void)
>  	int ret;
>  
>  	for (i = 0; i < TTY_MAX_COUNT; i++) {
> -		tty_driver = tty_alloc_driver(GDM_TTY_MINOR,
> -				TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV);
> +		tty_driver = tty_alloc_driver(GDM_TTY_MINOR, TTY_DRIVER_REAL_RAW |
> +						TTY_DRIVER_DYNAMIC_DEV);

"TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV" goes together.  Don't
split that up over two lines.  Checkpatch is a tool which is supposed to
help readability.  It's not a ruler which must be obeyed.  If checkpatch
tells you to do something which makes the code less readable then just
ignore it.

regards,
dan carpenter

