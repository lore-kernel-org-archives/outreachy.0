Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C38125AF
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 10:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b4MjQPK4"
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3215f19a13aso1824714f8f.3
        for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 03:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697194091; x=1697798891; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HLLFkGf7Achrz0z+pSaE//aRnm/rW1Ix0xcw7kiGLrg=;
        b=b4MjQPK4pl7ayTvkp4oXAjhPbe2/Cu63GBOhM+GZCrVLRVXUwt0Gp4cZjPx2bkYBIQ
         IAIw7T8aRO85cZYVLQpRfPpW+J1H48DC3ZOpcztKj5fdBbc6dcGLe/lhri2MKZWIACYw
         YLsuCcTqYnvU8kypkgvPc+r6aeF9Pi2vWUo0KSU7DTWzl7kSlqieY81GIE9a1o9rbZSh
         FE/PjuHpjDsf0ciKDMJ8LlzfO2gQnDO60t7f8VPk0KM0+XfmojWk+4Qs7OtIjWSN/KZh
         2qVbsUHUaYNUZtv+PBcCx5cxlPOiboJnmvD/8hsvz5DHZ5G+f6QL7Qa2oFmliDILUR6k
         1hqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697194091; x=1697798891;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HLLFkGf7Achrz0z+pSaE//aRnm/rW1Ix0xcw7kiGLrg=;
        b=HkCyo43sLT5Wl4nMkBg4+/Y6A25WBDuhbIn5launzsP1rIU2xQBtgvgFfE2FjLk1dB
         hXGTzsfVZ1wZqLhS0qnmb0FCJf+bGbE5JevVl75MEbqRJ+VWTEFGhJmtkaILTnXQnopG
         KDxvo4vwhcy1RlO4ChInKrrcP4r9seU/CVywKz4pXOyrf03WxtIlXNHcMIOhXulvo0IW
         Or+0qG6iWmYeErgYGWrzzN4XLHMaBLBRJM8YzZi0qDHylD2HuQF+l4a2/uf2fwO0ypZc
         XNAO8n5rgKEq28QAz1xPFp6If7bw8IbaDt1YJXEfOq8IKtUeXuUUgU4/2/rPfb90m7nv
         XwUQ==
X-Gm-Message-State: AOJu0Yz53QtQAgBIm39XSC+p0tWw7iImo7BfM8u70quOLmD1LofWAM0S
	ALzF/vdWUp3RDi7gJCuoF0qcjgO/vuY/NfZY9BM=
X-Google-Smtp-Source: AGHT+IER8Qmwq0wdK9VvhE99s0OeRpYmMCCnwuM07qasuEB0UUtmtrLXlArFm5b/BD98dc49TPg9zw==
X-Received: by 2002:a5d:4b48:0:b0:319:7a91:7107 with SMTP id w8-20020a5d4b48000000b003197a917107mr21319385wrs.48.1697194091127;
        Fri, 13 Oct 2023 03:48:11 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id d7-20020adfa347000000b0032d72f48555sm5239011wrb.36.2023.10.13.03.48.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 03:48:10 -0700 (PDT)
Date: Fri, 13 Oct 2023 13:48:08 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Dorcas AnonoLitunya <anonolitunya@gmail.com>
Cc: outreachy@lists.linux.dev, Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-fbdev@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] [PATCH]Staging: sm750fb:Add snakecase naming style
Message-ID: <efcb4734-0349-493e-be93-b95381eb6c78@kadam.mountain>
References: <20231013104220.7527-1-anonolitunya@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013104220.7527-1-anonolitunya@gmail.com>

On Fri, Oct 13, 2023 at 01:42:15PM +0300, Dorcas AnonoLitunya wrote:
> From: Dorcas Anono Litunya <anonolitunya@gmail.com>
> 
> Change camelCase variables in file to snake_case for consistent naming
> practices. Issue found by checkpatch.
> 
> Signed-off-by: Dorcas Anono Litunya <anonolitunya@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_mode.c | 86 +++++++++++++--------------
>  drivers/staging/sm750fb/ddk750_mode.h |  2 +-
>  drivers/staging/sm750fb/sm750_hw.c    |  2 +-
>  3 files changed, 45 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index e00a6cb31947..f08dcab29172 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -14,13 +14,13 @@
>   * in bit 29:27 of Display Control register.
>   */
>  static unsigned long
> -displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
> -			     unsigned long dispControl)
> +display_control_adjust_SM750LE(struct mode_parameter *p_mode_param,

The p stands for pointer.  We don't like that naming style.  Just call
it mode_param.

Thes are the renamed things.

displayControlAdjust_SM750LE => display_control_adjust_SM750LE
pModeParam => p_mode_param
dispControl => disp_control
programModeRegisters => program_mode_registers
ddk750_setModeTiming => ddk750_set_mode_timing

I feel like this would be better broken up probably into one variable
per patch.  It's jumping around between files.  These variables are not
closely related.

regards,
dan carpenter

