Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BED746C
	for <outreachy@lists.linux.dev>; Mon, 21 Aug 2023 18:41:46 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-52164adea19so4630037a12.1
        for <outreachy@lists.linux.dev>; Mon, 21 Aug 2023 11:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692643304; x=1693248104;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O1jfWqRFqEX/V4IMqa029q2gEFfs8XGqFtJjj4sRi5k=;
        b=dIN00OcATVVmd2DiKb5Ijhm+RlqvjRqX1LuDwa+INNZ5TZ89Kp4x9Tx71ZwbYaDWQY
         hZQT4bWs0zzwHWQwm4Zh/jcuQaKOqo/0uorJ6iHMOnRgjG3CwOiSUwxwP/YTl4hlOQO8
         cJ61kuxQ5/9B2WDEbS07TaU6NJcSrVd8+MzQuKwYgRGlU6XOeG+lJ6VAYXtaEbcNdMzK
         DGvpFUbuhempBFEe/b5ydTYZpDVTsbKHh0eiWOePZJsInK9GlFQNQORLonez8u5XC+tI
         D7UqC4P5TlCcIz7GGWe54u/8/ag9GUey1knS++AxdgtoYOR0maNB4N38IPK5SaApMOnk
         8iNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692643304; x=1693248104;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O1jfWqRFqEX/V4IMqa029q2gEFfs8XGqFtJjj4sRi5k=;
        b=N0c8P9pmIBHsQBkUUrvhJbe+VtHAa2FeQBGZcYb89CF+Kgpd9jJpI6yOg8vNbFyR3u
         d7wqa6/EJEUN7DI0eyulsCyTGz3YrLCKnOzfGX5pzzi1hPucnBvkabBmjaWO09slSPTz
         7WMiqB72nN2L901p60isfLP/zIw2AEx4mqyvbYNNn7P5glPAq1pnt4oG6DSn8GQtDxhs
         URiRdpRAJ/QPU/fTmWpUfQrJJjrWLmLJQ3qLX0i2OZ/cQ0voKCxoEOvTJMRvXcmZ0NMg
         hW+5xAS+DNqceyCyOW3pyTpMJ5YFSBVmJ4LjiJCdnYwSQsJTfWKvW7qAQxdcTXrF5jhs
         LzDw==
X-Gm-Message-State: AOJu0YzXOjjqQirvyxGeiWxf8Y2Rz4n7V4gOOrTycRYwPNcC7Bcbaj3W
	E4r4gf/WfhMJns092myWl3vTCQ==
X-Google-Smtp-Source: AGHT+IFGAXFhnHGo2FpM5aCmnviNTFRiZ/WCyyzjZnj8MJtw/TSwL8XbhsAY1GaPqh4Dk3AZ7uEsGg==
X-Received: by 2002:a17:907:2c6b:b0:988:9ec1:a8c5 with SMTP id ib11-20020a1709072c6b00b009889ec1a8c5mr5605427ejc.55.1692643304233;
        Mon, 21 Aug 2023 11:41:44 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id e16-20020a170906045000b0098dfec235ccsm6855882eja.47.2023.08.21.11.41.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 11:41:43 -0700 (PDT)
Message-ID: <8fd5b5e6-792c-3b7f-0828-5d647993ec7d@linaro.org>
Date: Mon, 21 Aug 2023 20:41:42 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] drivers: regulator: Add MAX77503 regulator driver
Content-Language: en-US
To: Gokhan Celik <gokhan.celik@analog.com>, outreachy@lists.linux.dev
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <cover.1692634090.git.gokhan.celik@analog.com>
 <b45b07c3bdbfac1608b171f96aa0ae4ca5a0dd82.1692634090.git.gokhan.celik@analog.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b45b07c3bdbfac1608b171f96aa0ae4ca5a0dd82.1692634090.git.gokhan.celik@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/08/2023 18:28, Gokhan Celik wrote:
> Add MAX77503 buck converter driver.
> 
> Signed-off-by: Gokhan Celik <gokhan.celik@analog.com>
> ---

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

>  drivers/regulator/Kconfig              |  10 ++
>  drivers/regulator/Makefile             |   1 +
>  drivers/regulator/max77503-regulator.c | 137 +++++++++++++++++++++++++
>  3 files changed, 148 insertions(+)


Best regards,
Krzysztof

