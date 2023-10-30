Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA722F4E8
	for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 11:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cqnCy2w/"
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6bd73395bceso3047462b3a.0
        for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 04:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698665805; x=1699270605; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vM7UrmexBzhlrtYGq+WTsMhMVaGhrgekLL9dJWIZR04=;
        b=cqnCy2w/qVAEAnXG+Eo3d8IdoVG5qipp1wRNSyA5iM01cpseICOM+Glr7Nugau0MyB
         gSE6fWSfoYcr2SP1Yea4M3RA3d1ZjiDEpqITiH+mrSfG/0Is1PmClCcBsCfULhh5uRg6
         OMGS6UqsqenJgWwVt0nl0smp3GQveXF0lCAIXHdbBDrme+REo7GZ839Otpj/LumHrd/d
         ke3NSdE3SpA7djjjlds1DoaUXxcWOrPCSe7XhNCvvyBMSPTA6IWzMekohyIRA/UaPQk7
         730vtNM8n1xkAQdQ8ANC39h7jrIrqPjFEFQCG2BBWsMlA8T17uO3SqaFyu8R0FcNsfq3
         6B2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698665805; x=1699270605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vM7UrmexBzhlrtYGq+WTsMhMVaGhrgekLL9dJWIZR04=;
        b=qv8D2178pLsJ8CoMPJpErWvq4NQoIOqCdma6RFK+S8aN5u9GNeEVsLSG8rfs1+dNQp
         v9OXqieYaRu5AsTbeh3L1eGHiYevqfPdVsWr6KXX0Suy/hoilmI3bo0wktqXEuEQFVqj
         7tiOOUACaCnF3HkVnjPARHZmTIDP1EwPjdjF8oMhZ51syKLbEjBg8Bud9RlaqlbC7NhA
         LtIeWIe0o5CZ/wxt4rYj4oVLUSg9O49hHcK7uoTpOKF54Gwn+iLNpOT38kMy3A3aJ/C1
         ikzpREqMva58PIqQnOZ3YvyixmoWRpqIB8geS1sX+eonAsH5tvxWfBQbjgtsseVz56Vh
         c0Ug==
X-Gm-Message-State: AOJu0Yw57drgY4SPQm6lBubFg+12+n6oCprYhvJS/lRsJQNmpCg/nELU
	a+S6U0KynarC/2CEfSTDXf4=
X-Google-Smtp-Source: AGHT+IHB04Y3v0cpysF5Hffjhog9NL2AkKNDPwW89qQDZuAcCybJS+Ey+vqecfyEm8jG0xY2kLZT+Q==
X-Received: by 2002:a05:6a00:148c:b0:693:43b5:aaf3 with SMTP id v12-20020a056a00148c00b0069343b5aaf3mr12536513pfu.13.1698665804989;
        Mon, 30 Oct 2023 04:36:44 -0700 (PDT)
Received: from [192.168.0.106] ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id a18-20020aa78652000000b006be484e5b9bsm5725923pfo.58.2023.10.30.04.36.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 04:36:44 -0700 (PDT)
Message-ID: <3f1fdfa2-e30b-42c6-b290-bb02283b3589@gmail.com>
Date: Mon, 30 Oct 2023 18:36:34 +0700
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH Resend] Fix line Length
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Helen Koike <helen.koike@collabora.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Nick Terrell <terrelln@fb.com>,
 Daniel Stone <daniels@collabora.com>, Rob Clark <robdclark@gmail.com>,
 Linux Outreachy <outreachy@lists.linux.dev>,
 Linux DRI Development <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20231029144312.5895-1-dorine.a.tipo@gmail.com>
 <alpine.DEB.2.22.394.2310291610030.3136@hadrien> <ZT7v39jG4WTxPYjm@debian.me>
 <alpine.DEB.2.22.394.2310300712310.3533@hadrien>
Content-Language: en-US
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <alpine.DEB.2.22.394.2310300712310.3533@hadrien>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/10/2023 13:12, Julia Lawall wrote:
> 
> 
> On Mon, 30 Oct 2023, Bagas Sanjaya wrote:
> 
>> Hi Julia,
>>
>> The submitter touched one of CI scripts for the DRM subsystem. To test
>> this patch, there must be a way to run these scripts locally (which
>> may requires non-trivial setup).
>>
>> Cc'ed DRM maintainers.
> 
> There is a DRM outreachy project.  I think that motivated this patch.
> 

OK, thanks!

-- 
An old man doll... just what I always wanted! - Clara

