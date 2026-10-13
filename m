Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E15E53CA7C
	for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 20:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791922317; cv=none; b=ulWX8/v+Q98qP31vcGEgKmBbwmBaAY6FOk6JDLA/aE6LzvJL9Rw4na0OvtfTd1JvlBDz905C/7EF5AUQ8ESA3Lwcx+dxIPriWKyrHJTIGnt/jmTuTiXo5UarQkTVKYBgOl6ptJp+Y/GZhURUd1utcmvcx546BwNGDVlUtDtanGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791922317; c=relaxed/simple;
	bh=HNXFWZVoSrIw23q3IgkNMzcKb/CWkz06yGOhyswlFZs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ItXrH5zlEucieN/Ei5bNCmw2te8UzPJ+/0ttH4JwEjjWXmEASS5tc4wp6k+e/kBTZJyPtX37G/BK2n9FT4BHQ0DBTX8sMrl6AVn353caAOU3SHXmVE4e26mF2WcujksV1R70ny3G1uhFJWWC9BXVfBbCRV1AInqIOxid/AQZgIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=Geeq37pM; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="Geeq37pM"
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-93e63ee7b4cso293142685a.2
        for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 13:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1791922314; x=1792527114; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xuCIoz2IYjkzdzL/4g0Gyi+YveB0FaYW1V1bCHm1ABI=;
        b=Geeq37pMlV52hkj0w8yNHydojd7e/P0AqHwpINTv7DJ0mdQENsLO8nGv8lmYjgDs0c
         xU4B7jcRF06iDmL7uGLCRkt3T1vtTm7vxZHeAtY/R1Vm73FD+o/pVdCpFDo5PufoZTZz
         mh6XE7v3QLYHqtSVTV7BdPUBvK5cQX3Lv5nIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791922314; x=1792527114;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xuCIoz2IYjkzdzL/4g0Gyi+YveB0FaYW1V1bCHm1ABI=;
        b=JuHIdxhP66tNblYrGFT4rkneePB6EmLsTAjWu8r55kDN/Klml0ho7OuY8gkvdgtU69
         ITJLqqzr6XkNTGH3c0t+8i/sW2vT3zZiwPE3mVZVHRk6uT5sCbxo25ZbJ//KfQEO/8y3
         zAs26bsqG+I6lHh2dhRgNQ3EzyjSY/MKiUlZ0a75y6ILjesEdFyEmUbgXjMY4aVIiAaQ
         5kkCrwkBsuXVov7Zd2szyPH4SSQ2BR5suWjGElzSTRwdlbsnfjLYb7pVww6QSPIw/GQM
         /NUABRYY6zje7feR8Bu5LvU+TUCfI/II+qcCDPLy65cgr3IZRV3knOoX+YJ7qeQ1lRS+
         Km5w==
X-Forwarded-Encrypted: i=1; AKwUvBzLvVNGFET4WvflKje5jwBxhX9Js+M/BKwQRyqm+LvgYnYKajgueeC1ukCLJHbTaNnYSGKn3bBfvLY=@lists.linux.dev
X-Gm-Message-State: AFq9FYIsfZC8NZmn8MExRU2JBx+9I8kOaYadt9VHyMiVTS7KW8RDMLKE
	nRJ7fMENegwo1jf5gGZaZkWDKUUi24KF3wgvRqMOHkjJR8Y3AbjcLbA71q3Z4ioxPQ==
X-Gm-Gg: AYBFou3Q0JM5gjt7pP8sLlcoYX7rdUCx+z+C39jz1Kor28DhkGVtTOikGJrG5Y3uvS1
	4Dow4rU9HMUevxJ5m8MjDDhWvS9qA39MHocHIQe5IW6itl4WazCQ6e+s915tHmR84fgedycYER/
	IDT66nJkqMTvHpNLf6xLzWqBznGEHyXrui25lHtqs5UCLqPzaRdizJxrWQlMdvo49cux2bWgxyR
	PTTD+CX1GOTClWEQNQ35cVQryUOG0a+2QKAhmAAXCBMWRLv+QvGnkRtTKl6o4DzE3/fplc8ai6E
	aE/TszY+AyyHgnTVUTY0BKrb3763iWyYek3OKD09xak5XO/0rKN1Xxq/7pqSUhFVgkLCi3mz1cc
	82gL1/SJSeRv9wGPmG5Figz1hXf+lNENK0dJ3LcUFB4Pb4GBXExvI1lQmUAlHCi2hfzsATabenG
	IskOXdgJAtjATPoxjy9hgopda6+kAofsMxSs+A5j8cGK1CVqbpP6g4F0+swVDl46nK1g==
X-Received: by 2002:a05:620a:472a:b0:93e:70cd:e428 with SMTP id af79cd13be357-93ebd267ddemr2287238885a.66.1791922313908;
        Tue, 13 Oct 2026 13:11:53 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-93ef4d31b91sm323643685a.0.2026.10.13.13.11.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2026 13:11:53 -0700 (PDT)
Message-ID: <2fd23f9b-7eab-4afd-aa77-93a5b9ff0c75@ieee.org>
Date: Tue, 13 Oct 2026 15:11:51 -0500
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] staging: greybus: replace PTR_ERR() with %pe in error
 messages
To: pavankumaryalagada@gmail.com, johan@kernel.org, gregkh@linuxfoundation.org
Cc: vireshk@kernel.org, elder@kernel.org, greybus-dev@lists.linaro.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy@lists.linux.dev, gservice341@gmail.com
References: <20261013022402.6322-1-pavankumaryalagada@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20261013022402.6322-1-pavankumaryalagada@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/12/26 9:24 PM, pavankumaryalagada@gmail.com wrote:
> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> 
> Use %pe to print error pointers directly and display their
> error names.
> 
> Keep the other PTR_ERR() call because its return value is
> needed for ret.
> 
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>


Generally I think what you're doing is OK.  It looks
like %pe is better than just %d, because it prints
the error *name* for the pointer-coded error.

But I have two general questions about this effort:

- There are other places in the Greybus code (even in
   just the staging source files) where this exact same
   thing could be done.  Why limit this to "fw-core.c" only?

- Do you think that all Greybus error messages should be
   converted to use %pe (passing ERR_PTR() if necessary)
   instead of %d for showing the error number?

I think your suggested change is a net positive, but
doing it in some spots but not others means it is
adding a bit of inconsistency.

					-Alex

> ---
> v2:
> - Use %pe in the firmware management case, as suggested by Jeremy Clifton,
>    to match the other cases.
> 
> v1: https://lore.kernel.org/outreachy/as0nhVbagZa8Birm@user/T/#t
> ---
>   drivers/staging/greybus/fw-core.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/greybus/fw-core.c b/drivers/staging/greybus/fw-core.c
> index 2016a74f137f..78321be80013 100644
> --- a/drivers/staging/greybus/fw-core.c
> +++ b/drivers/staging/greybus/fw-core.c
> @@ -93,8 +93,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
>   			if (IS_ERR(connection)) {
>   				ret = PTR_ERR(connection);
>   				dev_err(&bundle->dev,
> -					"failed to create management connection (%d)\n",
> -					ret);
> +					"failed to create management connection (%pe)\n",
> +					connection);
>   				goto err_destroy_connections;
>   			}
>   
> @@ -112,8 +112,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
>   			connection = gb_connection_create(bundle, cport_id,
>   							  gb_fw_download_request_handler);
>   			if (IS_ERR(connection)) {
> -				dev_err(&bundle->dev, "failed to create download connection (%ld)\n",
> -					PTR_ERR(connection));
> +				dev_err(&bundle->dev, "failed to create download connection (%pe)\n",
> +					connection);
>   			} else {
>   				fw_core->download_connection = connection;
>   			}
> @@ -131,8 +131,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
>   			connection = gb_connection_create(bundle, cport_id,
>   							  NULL);
>   			if (IS_ERR(connection)) {
> -				dev_err(&bundle->dev, "failed to create SPI connection (%ld)\n",
> -					PTR_ERR(connection));
> +				dev_err(&bundle->dev, "failed to create SPI connection (%pe)\n",
> +					connection);
>   			} else {
>   				fw_core->spi_connection = connection;
>   			}
> @@ -149,8 +149,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
>   			connection = gb_connection_create(bundle, cport_id,
>   							  NULL);
>   			if (IS_ERR(connection)) {
> -				dev_err(&bundle->dev, "failed to create Authentication connection (%ld)\n",
> -					PTR_ERR(connection));
> +				dev_err(&bundle->dev, "failed to create Authentication connection (%pe)\n",
> +					connection);
>   			} else {
>   				fw_core->cap_connection = connection;
>   			}

