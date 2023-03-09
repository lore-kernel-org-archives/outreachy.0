Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDF263C2
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 10:46:20 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id fr5-20020a17090ae2c500b0023af8a036d2so4814621pjb.5
        for <outreachy@lists.linux.dev>; Thu, 09 Mar 2023 02:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678358779;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1m4Qu2BnuiE24MVnnEcmUeU7cZSjCQj8k4FJhaVvkIQ=;
        b=bhwkZRuc/0MDjv7r3DZjaN1qpGjhVux/h/i3dA9qr2bgpewna3jvLwiTcD4LfsZl8t
         nQAImFFyoBGd2u83pIiw47XFn+e4XwfYFdLjZ1Ih8jpoxc5qAzD0wGXT34UX5hWvgsY4
         oRwC0bWfCJJX2qkPEsSKanOQ0zSF7Fd8vXr7ETekXSkOAha9vYeIp4gjLS4Gwwq2+kYa
         fGYEcjqAcbAgj9mqspGzT9ETgWZqVVfgD6uY9N9JnifcU9O4alfamZ5o4miU0XZ0bVrP
         y3VznKZp6x1NbOgsKwlZoa4FOSLjAaqJi5FwqfwXiRsQChnm24/C74205AaeDDBSsSuX
         akeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678358779;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1m4Qu2BnuiE24MVnnEcmUeU7cZSjCQj8k4FJhaVvkIQ=;
        b=htyo6lEjlABJ234qdfV2hcJkkwp5QiYoTeCagla/gB9Jb5C1+WsxddtrHdV9ZzYQ7o
         jooAhtmg9vwUEx/ZWaQ/hDxDmxOcnDuVTPrvWABewiHsw7X+9I76UyjSKy+I8d8uoiGy
         Ftl9+7CssmXKKCJMtoWTlqcShzy3+lAdGasZpy/TwLlFk+oFy9zPiozAMZ9J2yguvP0t
         R4BcGPsiCXmRi16I4IV9bqGyA2CR8OghMMHNE7VXrSvg0UF5hRL5phoSFFn6GoumQigK
         nlsNXImW2b92IlCP18O2HtdG4oGFTgX+xrlxju6gQFDiSVdwL5qeqSbO4VfPU+yFweIE
         kfeQ==
X-Gm-Message-State: AO0yUKXtiesRV7+8+OxKsgp+f0/OSkLKa9Tg6s/l7tZF7qLftWTvHkS6
	+Td6MONB7h6ubYsFAw2hLwJ7qVggJ13YWA==
X-Google-Smtp-Source: AK7set/KFjIyc7X/f43TRs3kDVaTNfyZxmGMdErhBckB+oB2punhVX0GZ2djRS4DYigMDtuwGYFgZg==
X-Received: by 2002:a05:6a20:6620:b0:c7:3209:f24d with SMTP id n32-20020a056a20662000b000c73209f24dmr16417336pzh.56.1678358779256;
        Thu, 09 Mar 2023 02:46:19 -0800 (PST)
Received: from ubuntu ([117.199.168.241])
        by smtp.gmail.com with ESMTPSA id b9-20020a63d809000000b0050300a7c8c2sm10718051pgh.89.2023.03.09.02.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 02:46:18 -0800 (PST)
Date: Thu, 9 Mar 2023 02:46:14 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Subject: Re: Help to setup enviornment
Message-ID: <20230309104614.GC6572@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7e7150d4-e2ac-2253-868-15628889432@inria.fr>

Surely julia. I will look to it and trying setting it up again. 

