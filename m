Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D405B130A50
	for <outreachy@lists.linux.dev>; Wed, 27 Mar 2024 16:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711555982; cv=none; b=OwQwhLw7a+7HcC1rap48s12ZcE9P1EpAR74+wI6KnKUKC52M5OWARoTdIP1N0tKy9SeSJubRdn1moiBq0myHE8W6Gp2Wdly73JhDk8d3MAq7uaCkeWMDtq4Jpqp/TOZ4GN89v5/Sv7QEe41q4Sg9so6GM+xPqCQE91U7vtfK/TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711555982; c=relaxed/simple;
	bh=asmUPmQus7LUzQcer9/ecRHC+gd8g+NWqrc+D732lew=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rwVcH19ell3DsUv9x0eg6OyhjsEA51Qe3KauFz3FJQlPfcOEuQMpXnTuT8MhTywgSaBsXuXfsmfcRwJPsUAGdeY1RoycYHhwhjItVuCbGd+voI/K3mwHts6nksj9VsOSMnflxZhko6wlbkWwo9gkt3hCZLCQxEQSgfa5VDFRaaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=UARJcuaq; arc=none smtp.client-ip=209.85.166.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="UARJcuaq"
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-3685acaa878so3927505ab.1
        for <outreachy@lists.linux.dev>; Wed, 27 Mar 2024 09:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1711555980; x=1712160780; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XaFX9mxiKZDeQbSxmpDbkMXN0EZslMStzgRp5fvgfwQ=;
        b=UARJcuaqg095+vyC+S/vvuTIo/vLWyGE1dJ8WukO0smzt8jOpznwRf+m4i1Ry5CoPo
         hBO3ugK60alaMFk2fiUYuXGwa21h5dk95gQihHQ55QItRXqQVVSp48tWmTNFzG2Ndtgd
         Q4RfEJy4ga7K2nBvNiT+2sCgE3fRRfuC9uK3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711555980; x=1712160780;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XaFX9mxiKZDeQbSxmpDbkMXN0EZslMStzgRp5fvgfwQ=;
        b=q6p2AnELQwoDwYfHxNHe6Wc0/uogsKzmPF7fuH5OEQz6cnlKlwyU0QFK0y//vTNBfC
         /HpBR3JGuHpw13lf6zlJtP2jpqpblXoHRd56jyI8hW5HHhDkLwyxD3ZoiAM3Tbv7RcCp
         oNxn3OxirLgQosc7y51/90+FFCtEOcdj1tyF1InBNwk8O0Gv+/DtgIdKNns74ZTXvV0e
         /5vhR4RZaGlS6iKAkelZJ4aSoy+wV4Xc8Of4cGMWX3nZDqh/lR2nYIqF1KNtS6ri9w5j
         sOWac0BkPC1d6TR42u5eCYH85YfjDUocaB09lvFYaLLjsaYvl+7qnF7twXw0Xx9mjFkn
         E2NA==
X-Forwarded-Encrypted: i=1; AJvYcCXr9bZSnKMRC6+wExpzXelmn/tIZ+LfSTRg4h3nT4POk+ML87XYlP5t821GwOraXHJND01JCInPIt2zO2ZIPHgT0GIG6uU84x52
X-Gm-Message-State: AOJu0YwccDxcq5thhf1e+dOnvqpUKhsLNgIXZ6a+tS38Ub5vlKq4vffv
	kk8AZ4v1N35gXYVlrnX9vNnt54QzN1K9vNesogiDZHirBqMn0PeD+OsWXoOs580=
X-Google-Smtp-Source: AGHT+IEiXA6OtOY9zanEWliIGMGWJVj77uZLVHDmL258djEO4ZMAaUheobq2lblEoYMdKO5ZRdKtRA==
X-Received: by 2002:a92:d08f:0:b0:366:b0bd:3a1a with SMTP id h15-20020a92d08f000000b00366b0bd3a1amr436522ilh.1.1711555979887;
        Wed, 27 Mar 2024 09:12:59 -0700 (PDT)
Received: from [192.168.1.128] ([38.175.170.29])
        by smtp.gmail.com with ESMTPSA id r12-20020a92d98c000000b0036851cd6c59sm343584iln.1.2024.03.27.09.12.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Mar 2024 09:12:59 -0700 (PDT)
Message-ID: <3c8bcd55-3acd-4659-ab4d-567053049a7a@linuxfoundation.org>
Date: Wed, 27 Mar 2024 10:12:58 -0600
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] Add Landlock test for io_uring IORING_OP_OPENAT
 operation
To: Dorine Tipo <dorine.a.tipo@gmail.com>, mic@digikod.net,
 outreachy@lists.linux.dev
Cc: "Fabio M . De Francesco" <fabio.maria.de.francesco@linux.intel.com>,
 Shuah Khan <skhan@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-kernel-mentees@lists.linuxfoundation.org"
 <linux-kernel-mentees@lists.linuxfoundation.org>
References: <20240327132001.30576-1-dorine.a.tipo@gmail.com>
Content-Language: en-US
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <20240327132001.30576-1-dorine.a.tipo@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/27/24 07:20, Dorine Tipo wrote:
> This patch expands Landlock test coverage to include io_uring operations.
> It introduces a test for IORING_OP_OPENAT with Landlock rules, verifying
> allowed and disallowed access. This mitigates potential security
> vulnerabilities by ensuring Landlock controls access through io_uring.
> 
> It also updates the Makefile to include -luring in the LDLIBS.
> This ensures the test code has access to the necessary liburing
> library for io_uring operations.
> 
> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>

You are missing linux-kselftest and linux-kernel mailing lists
when you send kselftest patches.

cc linux-kernel-metees since you are a LFX mentee

Adding missing lists
   
> ---
> Changes since V1:
> V2: - Consolidated two dependent patches in the V1 series into one patch
>        as suggested by <fabio.maria.de.francesco@linux.intel.com>
>      - Updated the subject line to be more descriptive.
> 
>   tools/testing/selftests/landlock/Makefile  |   4 +-
>   tools/testing/selftests/landlock/fs_test.c | 132 +++++++++++++++++++++
>   2 files changed, 134 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/testing/selftests/landlock/Makefile b/tools/testing/selftests/landlock/Makefile
> index 348e2dbdb4e0..ab47d1dadb62 100644
> --- a/tools/testing/selftests/landlock/Makefile
> +++ b/tools/testing/selftests/landlock/Makefile
> @@ -13,11 +13,11 @@ TEST_GEN_PROGS := $(src_test:.c=)
>   TEST_GEN_PROGS_EXTENDED := true
> 
>   # Short targets:
> -$(TEST_GEN_PROGS): LDLIBS += -lcap
> +$(TEST_GEN_PROGS): LDLIBS += -lcap -luring

Check if .gitignore needs updates since you are adding
a new executable.

The rest look good to me.

Acked-by: Shuah Khan <skhan@linuxfoundation.org>

thanks,
-- Shuah
