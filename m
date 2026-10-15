Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB9E5226B6
	for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 12:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792066798; cv=none; b=M/ht0CN80MGpvF9GGbl9dwKW70ZmhUPqoHASEe5WfGtdRgNijLpviPgqaXRLI4MG6DFLkKJPZcGaaua/VBglw0P8V+ZIumyH/vkWNKg/UpujiQvn4+8cvM6rTC6Xmg9Y9WlZkxrTbKB5yBSeNucI3hGFrUgEq0SIUfAsiY4D+yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792066798; c=relaxed/simple;
	bh=N7pksNGYwP5bIoLxax1myHPV/MNG0nXyJIIQxi9X+RQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WtvERNx/z+MBuKwQZGlx1ozTC3Y74gK0NpAjbOw27ki3ModMzI82iWHrfCS2ET+6pyXjq1BKAUIyCn+dYFOy1Eb+ChnsmBkdT+laGxk9zWDHz/MUj7TSxORmY6xrMWjjsKOhwBvs9VpUHp0SQfKTarc9UNO/LogWPlOOJ5Dnroc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=BUhahIjT; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="BUhahIjT"
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-93e706a6ba9so667215785a.2
        for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 05:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1792066795; x=1792671595; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Q7VT0D2PaN+6c8JQLPdTKBkDcQOrdP2XWII1gwddmXc=;
        b=BUhahIjTo/Cq6Yeonmp3neLGB1hlx9AMIDPDyLwn/d3t0owt6w6ZbLyISAavcpWsJR
         dUQvKNjV8QDsPwJo8lKJLL7PYkRd+Uodn9eC1ifSPgCPEB5Bt7HWXGGHv/ZZGs9hgGKz
         0wAn7o134mk/b/4Iwra6sy8P/sTt9qMtdS63E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792066795; x=1792671595;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Q7VT0D2PaN+6c8JQLPdTKBkDcQOrdP2XWII1gwddmXc=;
        b=tqenHvl2d3D84OAco82N/eb3+32NzA76SU72sW8Uv7SNv8FNh2vMrqoQJGJJRLxNHW
         KaSCBNS9eknIs8rxeu3yPxMZUb7ESENwqSSY8/NOYBoFl7L2NBc7TV5fY9JnhU61xvww
         ru+WY9VUkDOA3cI/NzS62OCws9qrK74Kd3LM82y/KAXRnK/OKIR8jipjx3br3fAUeNLt
         /YiVgPS1QsysmE9f3iHzpjqUKaCoieCa0aHxmQlUgd2LxPm3zv+PKJA8j3c/iWcngEcO
         rGyMmXTBqA5B3NuMLbgFzU5dKgOo2YA4fTkfuyoZ+dA23gc9wKIejjRbNI50std54C+H
         gRgA==
X-Gm-Message-State: AFq9FYJDqCGmBAdzCvFNLnegrZkilsTFL1JFuKnBgdTlxUWaFQO2D8lp
	ypXKPQZWiLU/urZZD6uAw+h0Nc71l9kxev8IVt6Pro52eFWgzTpDu2YL6/7AK5NbrXUVMRBBBeY
	U9zmN4A==
X-Gm-Gg: AYBFou1P/PFxJXpd3m7OE1l6Uh4fbqeIUbWuZ08zhxG/9OKuQVl4FUPa8lS3FldFAib
	SzahEgwi0FUoFVcvrD0wufcllifqIPbbmW+XAZAByM+Vsa8r8KjcmKZf3OR3IVbQoX3IOQZPSjO
	kmrB2qZFhMjyTJ1nbwvVFkQAaMFC7Lp4Xu2FElgFvmmwIZqymuV8GTmdvHcMu/bmKOVVqyTXoyq
	VFLKc+skj7VLPqYE/jb2RcJVp0GZwmEUgKR35MUq9SwLQ4nFhYv6cnw5adJVaP/DbwdNOPQw4Wt
	VmHWBhvAE+5hU5Y2GQwpzH399TJBEPrxAkWuCz8SJgTfmO8o8rdJ3tQfvx2o8rl+m707EiTRz5F
	UbYAUtu+crMWiF1TpW79azIQfiK9830lrkr8GoZvPe/H2DIt5EM9u6ukos2Stnb243Kg+2HKI2w
	DCUubM/iOrHVhU6ilzFFJQ7Gzfu1zJXmrnJu3cJLy8BnCxQPm3wialvcS3qxr0ido0sg==
X-Received: by 2002:a05:620a:3712:b0:93e:92b8:e373 with SMTP id af79cd13be357-93ebd0c0183mr3124333785a.4.1792066795257;
        Thu, 15 Oct 2026 05:19:55 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-93ef502b096sm751802385a.21.2026.10.15.05.19.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2026 05:19:54 -0700 (PDT)
Message-ID: <5c775b87-fe61-4384-bd23-9f563237945c@ieee.org>
Date: Thu, 15 Oct 2026 07:19:53 -0500
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] staging: greybus: Remove unused header declaration
 to_fw_mgmt_connection
To: Jeremy Dean Clifton <deaner92@yahoo.com>,
 Viresh Kumar <vireshk@kernel.org>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy@lists.linux.dev, greybus-dev@lists.linaro.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20261015020731.98150-1-deaner92.ref@yahoo.com>
 <20261015020731.98150-1-deaner92@yahoo.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20261015020731.98150-1-deaner92@yahoo.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/26 9:07 PM, Jeremy Dean Clifton wrote:
> Commit 3228900f80c2 ("staging: greybus: Remove unused function
> 'to_fw_mgmt_connection'") removed a function definition but did not
> remove the function prototype.
> 
> Remove the prototype.
> 
> Signed-off-by: Jeremy Dean Clifton <deaner92@yahoo.com>

This could maybe have a "fixes" but if it gets accepted soon
I don't think it will matter, because this will land in the
same release as the fixed commit.

This looks good.

Reviewed-by: Alex Elder <elder@riscstar.com>

> ---
> v3: Change to imperative mood and write in proper English (Julia
> Lawall).
> v2: Fix grammar and spelling in commit message.
> 
>   drivers/staging/greybus/firmware.h | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/firmware.h b/drivers/staging/greybus/firmware.h
> index 5d2564462ffc..04a67d2d5b8f 100644
> --- a/drivers/staging/greybus/firmware.h
> +++ b/drivers/staging/greybus/firmware.h
> @@ -22,7 +22,6 @@
>   /* Firmware Management Protocol specific functions */
>   int fw_mgmt_init(void);
>   void fw_mgmt_exit(void);
> -struct gb_connection *to_fw_mgmt_connection(struct device *dev);
>   int gb_fw_mgmt_request_handler(struct gb_operation *op);
>   int gb_fw_mgmt_connection_init(struct gb_connection *connection);
>   void gb_fw_mgmt_connection_exit(struct gb_connection *connection);

