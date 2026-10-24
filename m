Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.161.42
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792851245;
	b=4/Xd6VK0bZL/unwnmi5nnHgv9b3MLyh6jbUF+L/yoDFvDcpKWsDYIfq0l/vZavxtldPD
	 D+tkmOm8FUUSajo7nv8MTDiXTsy94YUpaQWkBWgorHmZSwf9mtwL2UAldASEE/HaUJsDV
	 0r7Jiin7yoXCqaAVVEnZ3uRTzUykwDqj44f+Q/LkKQuTrqGMQGEUUrwu+aqQPNFb26XIO
	 2Ky843VHDt+pQIbezOb2nQcppakuqUokI2OiLuiyTx/agelCdzcAx33B0Uvg5YDUwECuQ
	 MM/jbX2wvKlVHghJ4HUMhk1c6vO0yoFP6xuSLoZNTlgb5y2IPeUhvh2bqTtHs6SjBfA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792851245;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=RurSR5QCrb3dOlmzaugDAkyS4iQBb3WW248QweZw5e8=;
	b=snzIUZMyjzphd1TLDvCPj1qXSexiaanhd/Ly348LDB0mH7ZXWrBLeV7r2CmCVZOYNHdz
	 qvGlb4UjDKBAj4YMgyHa6dYc2+sfFuumXig+eUM/DmgYkXM++SSrghG1rY2XPg4ygPt07
	 dcYniqQrO8y3Iik48tRZ4k505AVgvVH3zMGhv4DEUYfGEFMXUdBpxx2j/65E+e7ningBc
	 dhYuZI/mVuHgzOnFa1IpWWP/iegdB/yRlN0tcFuf39xtqKJXH56csTNxNtzIkSZa4BQyr
	 V+AEjnejQdoZTiGI3Cx+/7otqlL6F8CLXyWuVP4SQmbGGdNizcHapcd+7aVuKtDa+og==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=ieee.org;
	spf=pass smtp.mailfrom=ieee.org;
	dkim=pass header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=QymJQK4P;
	arc=none smtp.remote-ip=209.85.161.42
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13707606A31D
	for <outreachy@lists.linux.dev>; Sat, 24 Oct 2026 14:14:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 13707606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=QymJQK4P
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-6f8a519e215so1297286eaf.1
        for <outreachy@lists.linux.dev>; Sat, 24 Oct 2026 07:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1792851243; x=1793456043; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RurSR5QCrb3dOlmzaugDAkyS4iQBb3WW248QweZw5e8=;
        b=QymJQK4PpYyfB0FrvXWDbRJWL0KcwCDYoHQTqogGOZMP4f1SgeOXbDdZzjpgdTEuLy
         /gpvPvaSapGq0nk3NDxmvT15bHqRYnsEOR61KKnae7eCUKduFBw3AxCUTzzVWS/mmFBn
         DjA/KZ72zyWzcj97T+RrBv6pWe1z5xhy+XJWE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792851243; x=1793456043;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RurSR5QCrb3dOlmzaugDAkyS4iQBb3WW248QweZw5e8=;
        b=QcWdUt8ZWT7FHoS/LvU/XrVzTspdk2CN6aFjfD+0ZIZNW1msqeSOeTodSNrCacu4SD
         nceGQP2xaifIHQdJe/Tejw5+fGyQGb4hxKrLk/OiOZ1vcG1Za3IQ1OW4ScXkSOG/+nYA
         +mgJubuzLwmRjZTNuBNqhwTVL4cMhbrbXNL5wAb5KXX1GGVKIW2LYbaeppzEXPMbIcT7
         SM27EWFsevr8+REJkrVIQcKI6YNhn6SV6NENlpPZ3600R5OU7xsUG+LAgGcyG9q/cdRk
         XAVIA4gOvFnRBlfY1cHQ8+hBqHrWybzwSHfLKkJzHxC4o7sgOu4szFfnOv36moOjDhAl
         mCbw==
X-Forwarded-Encrypted: i=1; AKwUvByMNrm/GNG/5Mwk5GTIaMaKqjPPFM4Zcr9iEfiLQq3BCj2TnGt3YudMDE/JzL2fd+a/UTgkxP+f7Mk=@lists.linux.dev
X-Gm-Message-State: AFq9FYIt8esS8ODFo1JuVMrsztgdYRvwoWtxhQvkxNqinGTt+PmqM1qo
	vjjTUSeWpDesLf5cbxsaAb6oJ46gjFIaeTYChyvQlYXr4YFktQBNb5f+5izmo3MPYQ==
X-Gm-Gg: AYBFou3COdB/gNUpr8Ck1vP8cYwsLYPF83t+BwpJHkch4gNbvrZA6biwz2YLoEVOJRa
	9+iNGgls+sh2RtWOyNK+8Br+NoMQOkzjS6mhXCRELJ3oL5ugVFEsMegzveAqL1OujZ7INUhR24i
	MCx2NzaKLPSwaM3DJ01xCXkEt4ziTEblIDzHmF0+3iOAqlLF9PnSLwaYl5kzYf9zKqEgOuaCwx9
	jKatTHrU8HEF8mASTMrCKMDu06sqkd1hgIsMhulJMw28X4wosR2f3Ua5WCgixUtsXPveVHTv6So
	ZSKUrtXJTX51rQhLEu+q54kdvmcnWIF9yasqtv9izQ+MLUz1Y56gEWG37MT7b1AkPjv9e8yOAxb
	Lhd6EM+0UvV7Non+v3NZAXYFiPCKxOT1f7P7ypyN8CEsa2rg4ZmfPsb6jYWx2GAhYpYC7iiPpth
	1MHY+3H9HkTV+gUdTLCrTnDiuU8tvTx9wBfUdBNdYmm8dFb90uAwrbs097SSvGAnD7AAWBlUs/0
	qwZTXgun28hY+y8HXnIm6L8naOOSnruSgL82pB+poYYuC0AW/uFeVyIM/cpimXaGDz5uYl340BV
	X+T+RQ==
X-Received: by 2002:a4a:e907:0:b0:6f4:e301:cc28 with SMTP id 006d021491bc7-70ba0e91903mr844092eaf.24.1792851242978;
        Sat, 24 Oct 2026 07:14:02 -0700 (PDT)
Received: from [10.211.55.5] ([73.62.185.64])
        by smtp.googlemail.com with ESMTPSA id 46e09a7af769-850fc0fc7a1sm2509401a34.25.2026.10.24.07.14.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Oct 2026 07:14:01 -0700 (PDT)
Message-ID: <3d919bc5-0fe0-4afc-a5fe-12c0ef1989dd@ieee.org>
Date: Sat, 24 Oct 2026 09:14:00 -0500
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] staging: greybus: Replace format specifiers
To: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>
Cc: greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
 outreachy@lists.linux.dev, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org, vaibhav.sr@gmail.com, mgreer@animalcreek.com,
 vireshk@kernel.org, rmfrfs@gmail.com, dtwlin@gmail.com,
 pure.logic@nexus-software.ie, linux-kernel@vger.kernel.org
References: <20261021163437.280930-1-pavankumaryalagada@gmail.com>
 <3433f922-bffb-4f1c-8e06-a7a87f5dbcaf@ieee.org>
 <77adf02-43a9-7621-a94-9da41f8c5a56@inria.fr> <atuYWuWeqvEG6j4B@user>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <atuYWuWeqvEG6j4B@user>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/23/26 12:24 PM, Yalagada Pavan Kumar wrote:
> On Thu, Oct 22, 2026 at 09:30:26AM -0400, Julia Lawall wrote:
>>
>> On Thu, 22 Oct 2026, Alex Elder wrote:
>>
>>> On 10/21/26 11:34 AM,pavankumaryalagada@gmail.com wrote:
>>>> From: Yalagada Pavan Kumar<pavankumaryalagada@gmail.com>
>>>>
>>>> Unsigned variables are printed using %d.
>>>> Replace them with %u to match their types.
>>>>
>>>> Signed-off-by: Yalagada Pavan Kumar<pavankumaryalagada@gmail.com>
>>> I have reviewed every one of these and they look good.  Quite a few
>>> of them--because the size of the value being formatted is less than
>>> 32 bits--would print correctly no matter what their value.  But I
>>> think it at least does no harm to convert the format specifier to
>>> unsigned in all of these cases.
>> I was suprised the compiler doesn't complain about this.  It seems to
>> complain a lot about type-related format specifiers.  Yalagada maybe it
>> could be worth adding something clearly invalid in one of the argument
>> lists to see if the code is actually getting compiled, or if you need to
>> set some config option to make that happen.
> The files compiled sucessfully with the normal build settings. I also
> enabled -Wformat-signedness to check for format mismatchse, as this check
> is not enabled by default. It revealed a few more issues, which i'll look
> into as well.

I think you might find that "sparse" complains.  Run your build
with "C=1" to run (by default) sparse, and see if it says something.

					-Alex

> 
> Pavan
> 
>> julia

