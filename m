Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5FF7E
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 18:08:06 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id p189so7132014wmp.3
        for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 11:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding;
        bh=aCSX7ZpB+yXBejZq0+mDgE4pGOcLcl44iTrYQYgIeqM=;
        b=G13+TgZaop50N5iiVvCg9CDckpEi8bOPpmgd1DzJ35youzW4QcjksSQN0cRa9sHNcZ
         UD9ghEMhL//ME1Q8Ri23yuU+XwBZruH22js2ox1Ll/Rr7Vpkg7CtjkkdKUmYWsZWY4MH
         /6WQnpDm2Oph/hvTx5R1j5zORIO5b+79EOjiLZr9aWdWDclfL9PH6Q03xlrnDfiJ60d7
         asGqYPVONk1mWvnFCzvD/DQ/IpvcilSeFgitvkvtTVZaVZVMhDKM3hMsOXWzp/zAzvUv
         6DJnG2ygNHiVgBEl4/IQEbZPyxycw24Nms1O8XLh/uHYmF3p6K6Pvfga/V32QDTDhD5s
         dVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding;
        bh=aCSX7ZpB+yXBejZq0+mDgE4pGOcLcl44iTrYQYgIeqM=;
        b=gXM1CFUh3ZQdTiPDtCfWUuTB02B2jbY3XfKlffRcqLnjiEnLelxwGZ/XEyB0CzEr0x
         EoWNuv6h75I9GK1rDEbNczHuep4aPTfCljfT3/Wpv9kJEZEIbpxc9wL4IYYi39Q1QdqR
         +jU1mEeXDgvzNBQHXz2tWkqmuBj4DEZvUeQAL/K501z8QxmaTYgmrcIOOcp0s5lTDH1A
         z05S41cxnjJGQCm1n+aKRuZEJl0TtVxdHFHEKKJc7EcgHq4xu05PLTcj65uO3GuLvseK
         rk/md+EoSwwT/CRdJBsjbD8RVe6eQsSq0/YhrWqt6oL+PfV3F4eoRUPEDitW13sLGEER
         V5qA==
X-Gm-Message-State: AOAM533/52hDzuC5Z1kpNlGX+m4Q9dwFCn9BLc2XHB787dvcIfC9uMdR
	oLMl6njvfzYNQKGLxImtRNcZempEy40=
X-Google-Smtp-Source: ABdhPJzcKFFtK4rD8V327NTABMnrPoITgBliUW8/Hukxp8pVVdBfRtziQiY5Ol56QcuR/UNCy0dglg==
X-Received: by 2002:a05:600c:644:b0:38c:8aab:1708 with SMTP id p4-20020a05600c064400b0038c8aab1708mr20692648wmm.149.1648404484300;
        Sun, 27 Mar 2022 11:08:04 -0700 (PDT)
Received: from alaa-emad ([102.41.111.198])
        by smtp.gmail.com with ESMTPSA id p15-20020a05600c358f00b0038cc046cb2esm14941282wmq.32.2022.03.27.11.08.03
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Mar 2022 11:08:03 -0700 (PDT)
Date: Sun, 27 Mar 2022 20:08:01 +0200
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: outreachy@lists.linux.dev
Subject: IRC channels
Message-ID: <20220327180801.GA477239@alaa-emad>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello All,

I am Alaa , My initial application approved. I have three years experience with C and want to apply for linux kernel projects .I am following mentioned tutorial for first patch but I have one issue I couldn’t join both irc channels, any guide plz

Thanks in advance,
Alaa
