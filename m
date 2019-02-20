X-GM-THRID: 6659802346769350656
X-Received: by 2002:a24:6504:: with SMTP id u4mr4383746itb.25.1550638373107;
        Tue, 19 Feb 2019 20:52:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4594:: with SMTP id o20ls71392jad.2.gmail; Tue, 19 Feb
 2019 20:52:52 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ808MLU8IVsju78nSHVMpgXZRlGgo5DeLnr0RSQBHp9S4DpIUEJd5M6vYBadkeVaNosHM0
X-Received: by 2002:a02:23c8:: with SMTP id u191mr19243572jau.12.1550638372227;
        Tue, 19 Feb 2019 20:52:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550638372; cv=none;
        d=google.com; s=arc-20160816;
        b=rxcwjT5Iq55wxoo9hKA/Eds9I3fXTEVlwZAWpNEJpL7+t8XGTqa4DoA76U6JBVUwqL
         f23sejeVKy7Sx2VCxO0dsQglfdySefaL5A/dqZw90efYpnaqco5g7yR1xQa0Dh32MFjo
         VGNfZW2BWoZYeC0ifR9o/3e4EQ7V8hiT0GMU/akK2WYe7BXL4Au3M21DQj/ZRAJ3mFsI
         4TpFqbOw8WgSqHb3AA4Yev7TAkWAiQqz8XO75/k0pwCOeg/fGhyjjREy0GHJXmKViMFc
         ZKaTthqKrS0CgHDi52N1nJp6OwZnSwOtaPJhKUr82RWNJjkvScrqC2VDNMY969mmjoRo
         ALpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=TOsZvvaDSyRFq7pbPLA5cEgH3L1eOs5Hg6l8FZRe9mU=;
        b=Uk8naeg1X7pvoR6DcpfcUYn3sdwQ3Oxkof9orSsJ2LRNYJiSx8kf+0Y2x9iYfSRbji
         hbehfyUSkeBi6iWylXF2v7VPWhXei4tGy8AmiXz1NQYzvVmkuSsWfiA9+EArUDhDweQK
         JNUtKS1cELDxsYhKu2iHpR6ABStgvAutqyKC6znedrJwr+JxVK8P7Ir7mp8ON7oB4VvK
         fpbIVdESgQ4qLSm6UXiuDRJMrYfUgmKTR6S6whjBDcCCb5RQgW5XQVphzPyG+stE9q4w
         VG9AXY3cZJtzqjG24S/kCWHi2I4W81VzFfO50eIv4Rrh2I74pa3m5Po+CfPg3gpHiNGy
         rFMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CxWZjNen;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 184si1244499iou.3.2019.02.19.20.52.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 20:52:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CxWZjNen;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id q17so11290161pfh.10
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 20:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TOsZvvaDSyRFq7pbPLA5cEgH3L1eOs5Hg6l8FZRe9mU=;
        b=CxWZjNenZLdn/ZbuzfzUpk5jetFW69CpgVQklbYLUMZ74+AFDqRUt6cR6gMcq9lZ7h
         kBKL/oh1VjWqPjSS08vMSZhTwhct0zaKQ+1yxHljrcsbKhxEwwwv2cUNaL5PbamlpFd5
         a9pxKeKXr+ZkSeRhWkAQF2dG5YNHITPubjVL3SIlaLjBmEQ9idcgmBrpDYggWueko2H4
         iW4c16yIIXJSfN0eG9DwX+Wk8K4nPVk55YVxl0C2x0q3M4bWRPtp5t8ZsjmcufEoWhD0
         cwAJL13iynyAC1b7C7xknmaJWib72U8IaotRO8ftyLjaQFa00a8G4HcDq0CJnC9SuWOI
         7v2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TOsZvvaDSyRFq7pbPLA5cEgH3L1eOs5Hg6l8FZRe9mU=;
        b=JcxhA6xmpo9xZkl3+XsKvcZcvJ4unKVYuj6kQC9Eaq7tElzCfyuye5pXCQClMYavdI
         uDH1t83EryTQgSUumdaCxmr4EoSJEPgaIefUqJ4c2oemY76z4DqXX3T+tAW6wWJn2sI+
         na9lP2bjVOdAoFlM5SZegHVKckgpEnYajW/7Ck3qoXL9tlfQ/iCLkw9pyJ3Je+aM0AhQ
         B5WiUxPzo5m8rmxR1PWSEKRkYD9I1xeY5260yozhkZU/4l1sGs0+bKSqPOhkUirGVxkb
         3bvXtkvNdTUgfJeigL26XD+YGNXH163Le4B+4C0flUyV/QxuVKAGB7OmaTxwhl/0Wca1
         Z9cQ==
X-Gm-Message-State: AHQUAuaafJnhi68f7EO+5jiJpUJpZ59APP3vbivNRNb1lsKnpyCB5Zg9
	EA7WDi8cgEqxtVnVprkUp7YKocTYku0=
X-Received: by 2002:a63:9c1a:: with SMTP id f26mr27720383pge.381.1550638371429;
        Tue, 19 Feb 2019 20:52:51 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id q86sm21462998pfi.171.2019.02.19.20.52.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 20:52:50 -0800 (PST)
Date: Wed, 20 Feb 2019 10:22:48 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/2] Staging: rts5208: Fix Various Checkpatch issues
Message-ID: <20190220045248.GA19830@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Various code cleanups reported by checkpatch.pl

v2: 
[PATCH 0/2]	- subject line corrected to avoid two occurances of Outreachy Kernel
[PATCH 1/2]	- subject line corrected to avoid two occurances of Outreachy Kernel
		- commit log elaborated
[PATCH 2/2]	- subject line corrected to avoid two occurances of Outreachy Kernel
                - commit log modified

Bhanusree Pola (2):
  Staging: rts5208: Fix Avoid Camel Case - style
  Staging: rts5208: Fix Macro argument reuse

 drivers/staging/rts5208/xd.c |  8 ++++----
 drivers/staging/rts5208/xd.h | 15 ++++++++-------
 2 files changed, 12 insertions(+), 11 deletions(-)

-- 
2.17.1


