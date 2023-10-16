Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FB9919470
	for <outreachy@lists.linux.dev>; Mon, 16 Oct 2023 08:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p84Ibvsf"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4075c58ac39so43634885e9.3
        for <outreachy@lists.linux.dev>; Mon, 16 Oct 2023 01:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697446170; x=1698050970; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ujCqCEnI5nPLWrZA65nA5QR8pdmJeCeOuXdZT+k04+A=;
        b=p84Ibvsfv56fSdn0UfbO3gW6wiULfVaNFiO77fLfw1yN2mXXnAwBT+Ysdb2oWOMa+G
         mKOmkiMNP27r7qUuzbJst2XV05uFWEV0jzic/1euw1jVs2ug90MSAvgeaZi3SW4Aj293
         eqnRzQimeSZJynAhq4qcw3UyEI1t7ic1JzyWnu7ht53F7TVh64GbcZkvKphxJvWdSntD
         n0g1ypJZMoBrVzoI92dSfu9QsQnLr1a58+sZWFP8m2Q502FxyeLGJDWDE6Qg9MY89SVK
         C/sML1G7YTKJr2Af6Z2u1kZZxJul+SdMsvIb+r6UMOZJyiynsbvVNHnalpJ/t1a7NW3O
         9axQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697446170; x=1698050970;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujCqCEnI5nPLWrZA65nA5QR8pdmJeCeOuXdZT+k04+A=;
        b=vksKhUiFnULCXhqiAv0dGxphZV7kPdT1Xd36a9tt6kUABvbUSh/o0J+bFiZYOhYLwH
         gksO8ZUeF2bG7Dm1xh1r298Z+FowchMdcoigzpgZcHat6CmIF2uw1YBEYnGf8DkZpkvx
         pso7BtMapnH9zxceiecuz5Ew2ZjYH9OXL6jCgmJw8SjMrUzbFRqTVzLFzzkwd0frmhc/
         ijyeJ+/2N7fvZmccExBvGDb199eZEu8wUZkVJBdIFQkVJCnS9mKWhtS0MAADdz7sOgRp
         yVNGn3gF/PUjGDs5+wR+fHHE1d3ekrG1KDYfsuTdhQGABuBRyKVBc7QVxy2g4oNZJnrM
         BMxA==
X-Gm-Message-State: AOJu0YzHg8KuBBrsBr5R1Dp/elBnSAN2PcyfGxhA7Qr31zOyUMcboZb2
	Fv6zlpgLyI79JV4N9lyd/ZfKYuJz5X4c5B8c6zo=
X-Google-Smtp-Source: AGHT+IGgUt1nPmDmQRaC/qE2VLEoX7W1KZWueCCuBdU27TAIwCfFYjI3OgeCWLSt7fypjC0c6jtjPA==
X-Received: by 2002:a05:600c:259:b0:401:b204:3b8d with SMTP id 25-20020a05600c025900b00401b2043b8dmr30832997wmj.27.1697446169764;
        Mon, 16 Oct 2023 01:49:29 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id bi13-20020a05600c3d8d00b00402ff8d6086sm6475160wmb.18.2023.10.16.01.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 01:49:29 -0700 (PDT)
Date: Mon, 16 Oct 2023 11:49:24 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Calvince Otieno <calvncce@gmail.com>
Cc: gustavo@embeddedor.com, outreachy@lists.linux.dev,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: wlan-ng: replace strncpy() with strscpy()
Message-ID: <83dbf2b1-9bd3-45bd-bd92-18af505c4d2e@kadam.mountain>
References: <ZSzapU+eKWvHVwxi@lab-ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSzapU+eKWvHVwxi@lab-ubuntu>

On Mon, Oct 16, 2023 at 09:39:33AM +0300, Calvince Otieno wrote:
> Checkpatch suggests the use of strscpy() instead of strncpy().
> The advantages are that it always adds a NUL terminator and it prevents
> a read overflow if the src string is not properly terminated. One
> potential disadvantage is that it doesn't zero pad the string like
> strncpy() does.
> In this code, strscpy() and strncpy() are equivalent and it does not
> affect runtime behavior. The string is zeroed on the line before
> using memset(). The resulting string was always NUL terminated and
> PRISM2_USB_FWFILE is string literal "prism2_ru.fw" so it's NUL
> terminated.
> However, even though using strscpy() does not fix any bugs, it's
> still nicer and makes checkpatch happy.
> 
> Signed-off-by: Calvince Otieno <calvncce@gmail.com>
> ---
> Previous Patch Versions:
>  - Earlier patch versions had issues with whitespace, preventing correct
>  application. This is a reroll of those previous versions.
> 
>  - Versions v2 through v6 focused on improving the clarity of the commit
>  message. There were no code changes in these patch versions.

You forgot to put v6 in the subject...  But it looks okay now.

Reviewed-by: Dan Carpenter <dan.carpenter@linaro.org>

regards,
dan carpenter

