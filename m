Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B7079F2
	for <outreachy@lists.linux.dev>; Wed,  2 Aug 2023 13:33:31 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-9891c73e0fbso210233966b.1
        for <outreachy@lists.linux.dev>; Wed, 02 Aug 2023 06:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690983209; x=1691588009;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=d4AXvn8YAh0C3eFlVqEZKeUnnypm7aKvOJgR3PvgTGA=;
        b=PMPR2OWOMVbhB7/iiSHM4Zm2WiqJdOu7TG37zlceX7LhipuwHIHciCnTQpEmcFUMfW
         VLIaakb51MdzUszVvBPBLEcb0rKthfDDuKcVuDD+UfP9Czjrt+M7nLuhudk9LPHUP+ey
         Ot9SPlwdkGDGzLCJdFbbTS3iBT7VMg8EQEZfM4LKztcN5qkXlYYyadluo14RlMasGIQq
         d3oAtnACMz+wDZni2KvHQ++q8zDqDfAiUA2BaG6zAUif8nWE4K1h86OlQ5tnjuCE0TeR
         jfrii1pOdqMa6SU4IdvBRFYsSpspyNdpOnoaguTpVBEd7pycOYoeJernkXcqkoFWJJCY
         w2ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690983209; x=1691588009;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d4AXvn8YAh0C3eFlVqEZKeUnnypm7aKvOJgR3PvgTGA=;
        b=fURUhR4c2//ve6Fdcz7HiOckFjy75/xAGfKYPuNNhoVmqG0++12YL7mUxVc9puZywW
         YzzeJgDbqlE+Jyt6RrBL0BkoUgv0aMsqJ7jVtN3Fd7G1WUWLK+jZLqNkJs6csQZuPgAU
         CbIkSOFpLe+eF42A9fe89S3tDcRHf8pzktZo7buZuIqoai+LxnaweGSJZeu8I7ZZnOtK
         hkB1+Hyl1w3HlWPZQWGiOpH1n6sZVgl33xWFKRXP93XuZ5YXIZ7UCR9GqfLqjk/ZnPyz
         AQcDIc7GDOW0H2RshkCD8EThpBGubCuMMv9XSy9vHctWo8cUXWEDqZBjaLBO94tRJ5Ca
         2UgA==
X-Gm-Message-State: ABy/qLaUhqjqL0RdjNKnkxDry0oXG3lBTScnRfG9eMxH5F55SOv8ueGo
	aKloFv4+15/TNFAxLcqa9I/Zlg==
X-Google-Smtp-Source: APBJJlGP+hX7tMjiAFswQ9Pw2LkLP+0TiEZnObeXHHZBmTYyu7bCVqf8eUa83iyuMzZ4qKYYVua7uw==
X-Received: by 2002:a17:906:8455:b0:989:450:e565 with SMTP id e21-20020a170906845500b009890450e565mr6926524ejy.23.1690983209637;
        Wed, 02 Aug 2023 06:33:29 -0700 (PDT)
Received: from localhost (h3221.n1.ips.mtn.co.ug. [41.210.178.33])
        by smtp.gmail.com with ESMTPSA id t25-20020a1709066bd900b00977c7566ccbsm9024030ejs.164.2023.08.02.06.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Aug 2023 06:33:29 -0700 (PDT)
Date: Wed, 2 Aug 2023 16:33:24 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Pavan Bobba <opensource206@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Michael Straube <straube.linux@gmail.com>,
	Philipp Hortmann <philipp.g.hortmann@gmail.com>,
	outreachy@lists.linux.dev, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: vt6655: replace camel case by small case
Message-ID: <f967a1d0-639c-4cab-8fa0-e04ccde4ed5f@kadam.mountain>
References: <ZMpZixfZ4WQgpzF1@ubuntu.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZMpZixfZ4WQgpzF1@ubuntu.myguest.virtualbox.org>

On Wed, Aug 02, 2023 at 06:56:35PM +0530, Pavan Bobba wrote:
> Replace array name of camel case by small case. Issue found
> by checkpatch
> 
> Signed-off-by: Pavan Bobba <opensource206@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index 0e135af8316b..8b913c64845c 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -499,7 +499,7 @@ static const unsigned char by_vt3253_init_tab_rfmd[CB_VT3253_INIT_FOR_RFMD][2] =
>  };
>  
>  #define CB_VT3253B0_INIT_FOR_RFMD 256
> -static const unsigned char byVT3253B0_RFMD[CB_VT3253B0_INIT_FOR_RFMD][2] = {
> +static const unsigned char byvt3253b0_rfmd[CB_VT3253B0_INIT_FOR_RFMD][2] = {

The one before it is called something liek by_vt3253b0_rfmd.

I don't know what by_ or bb_ meant to the driver authors so I can't say
if that's a good name, but lets at least keep it consistent and put an
underscore between by and vt, by_vt.

regards,
dan carpenter

