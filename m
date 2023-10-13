Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FFA10945
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 08:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JbVaSGmw"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4066241289bso19524935e9.0
        for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 01:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697187219; x=1697792019; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9ei3TFmaOXq0JADSQLlmEKSbGLvw708qlaZ+x/9kH7o=;
        b=JbVaSGmwt86t4IC3kWs898NtRiIwABK9vVHUoGf0CEJvi7o7ENEQ+rljyuP6l8iOQ3
         tDMfgePJBb8a+leh/GurEB/u6L7M3t7JXLat1X0AcZSFqRFABN+0LHMMmMX8N+Euxvk3
         SXrDpGuwKxdncnROEdNeozZ2zk6LiggzWQ+cakoLZYy9QmxlWP2O5neQkR/sYpMKLBCY
         CUUNL4O2QcgtylR8wDCfor2EJbJX9Qsru0LTTIhQ9Gqx6yylvOa34dYVKuu1f68szQbh
         r48DB8N9neCqdCc7R14xG2soTOU6IUED/XFb9ILx1wWqmV/Kf8NNnFE+p7yHS81rVHAu
         Xbqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697187219; x=1697792019;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ei3TFmaOXq0JADSQLlmEKSbGLvw708qlaZ+x/9kH7o=;
        b=ShKuyXDLGukqLGJawjTDhVgyp0cCbeD8hNK6tKjcr+d5n3rFlOPAPmva8jmUJ+Zr8m
         eyUJ5HQE6nIHrRyhSDCqxk40jovtONYV6hP1j1JnllKM1vrDloAwn24hAG1SUw4aM9fF
         vziSDZqgf8hunFi0Sptnz0xV9FMoTC7+3bxco1uPLc9SlaGgiVLwY8WUDV+3NT8RATT7
         pp3IRT8RI3pylhkCOlMdyNzXEA7arj8tg5wKrJCZBIvdZfr5LynfKQrsGUUhyyYgJrR7
         A2dLCzCepRsOJ6BZpL3FpRI4HiokbxvPyKRQodT5MLDwNnEZtPQMsVakSe7mQzhVRUGc
         yziQ==
X-Gm-Message-State: AOJu0Yz/vWg4h2I6zGQ5REE3xT7fZrjzX1Xag03ceIMdoUMRK1ec1xcs
	E594/5+ixjYp2dvgKcFSdaXdQQ==
X-Google-Smtp-Source: AGHT+IFRJCBZHGcCmfNxL8440E22YumxfhNrSwE+nFVTUb5Jr2JGzm/PdKtsNhGsIufNU8lCz718lw==
X-Received: by 2002:a1c:4c10:0:b0:402:f8eb:28d8 with SMTP id z16-20020a1c4c10000000b00402f8eb28d8mr22460284wmf.6.1697187219235;
        Fri, 13 Oct 2023 01:53:39 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id n14-20020adfe78e000000b0032196c508e3sm20215454wrm.53.2023.10.13.01.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 01:53:38 -0700 (PDT)
Date: Fri, 13 Oct 2023 11:53:36 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Soumya Negi <soumya.negi97@gmail.com>
Cc: Jonathan Kim <jonathankim@gctsemi.com>, Dean ahn <deanahn@gctsemi.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy@lists.linux.dev, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] tty: gdm724x: Fix coding style checkpatch warnings
Message-ID: <663c85bb-90c3-4ae1-ab0b-5ab1a8abd2a7@kadam.mountain>
References: <20231013051502.9578-1-soumya.negi97@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013051502.9578-1-soumya.negi97@gmail.com>

On Thu, Oct 12, 2023 at 10:14:58PM -0700, Soumya Negi wrote:
> @@ -271,8 +272,8 @@ int register_lte_tty_driver(void)
>  	int ret;
>  
>  	for (i = 0; i < TTY_MAX_COUNT; i++) {
> -		tty_driver = tty_alloc_driver(GDM_TTY_MINOR,
> -				TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV);
> +		tty_driver = tty_alloc_driver(GDM_TTY_MINOR, TTY_DRIVER_REAL_RAW |
> +					      TTY_DRIVER_DYNAMIC_DEV);

Don't do this.  The code was better before. The parameter
"TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV" is one thing and
splitting it up like that makes the code less readable.  And I bet they
had to indent it like that to get under the 80 character limit.

This is an example of checkpatch giving bad advice.

regards,
dan carpenter

