X-GM-THRID: 6476749325903855616
X-Received: by 10.223.139.198 with SMTP id w6mr392231wra.4.1507985714565;
        Sat, 14 Oct 2017 05:55:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.173.164 with SMTP id w33ls2034239wrc.5.gmail; Sat, 14 Oct
 2017 05:55:13 -0700 (PDT)
X-Received: by 10.28.141.66 with SMTP id p63mr389303wmd.8.1507985713768;
        Sat, 14 Oct 2017 05:55:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507985713; cv=none;
        d=google.com; s=arc-20160816;
        b=FMI0K+B+M/ctJ9oG1bD1UL2rZ7YNZ4RicY/kMT4/hz0leaK0YTanugT2XKiSTYAbbq
         c4pR670YI1mrpGxsZSdDee0Uw57uGCx4GMutBu3pwug4xz3B6PPU+UHB03SQ5hRqoTMj
         zonor8leCfnx6eHndhPK+2nS/OBr5dNQlX+G4fahj9RNKu5ne7aEEMe0dE0o+L/FcXCY
         TdWBn+2luqly3UHi0SAjlkSeb2UcexOAIGklSTZ8op8QXfMjStAP5hNBsUlJudJ0Seti
         fUGCAIXho8sPjaac+KKHapyxOSzgEVqgHqc5Kj8SY4a1UT5sH69LLQzZc0HiSMiW6ZNG
         4MHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=8/LBd++yXCPsU+3a7+hOGf760X6C8cTB3mpOzAMxBUU=;
        b=jC1WJP6vXcHCZ7+YAnt4MfojWND3VB6fuOTmh9yivD8f/Ah5I7jM5Sam2Hf4MkrUZ+
         UVM3uRAlpYTD3QU5exmZXiEUQToqJD9dqAgEcvTDQ7qPApYC68yMAwqwNYo8hversJoF
         /NkVlDZa35PP0BwVGeuczf1x8qBsdwxA2enw9tVdTjkhjMB8DJNYtWJlIH3/plMFeue8
         sSmvBSqckLjkM9/zXAGz1rHU5RMEHA07i0c5sEFW1vgrSUmkO5EIXlnUF23Ka9vCurZq
         GF2RXrhALNgBCBXTXD6yz0TwoZCaLfZURu7vva/6fK6BiFxMAbwdWz3rk4CZsxgBov2y
         3KSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kl2If+5/;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id l9si165346wrf.4.2017.10.14.05.55.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 05:55:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kl2If+5/;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id u138so26277194wmu.4
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 05:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8/LBd++yXCPsU+3a7+hOGf760X6C8cTB3mpOzAMxBUU=;
        b=Kl2If+5/NRCBT8/vdDYo8KW9T97e5pKSQAi/oPI3WlwUYBhUbAhoMSNH3z9vhEY6gD
         8LG3VyzRvS6UJtwEMYGj+DmjJTu7Qo8AicYAUQJA1tm4kRnSUHBUbEklpCvoaPgTxOi6
         0XGZEtL+8olvLxqZiw0pGeRLcXLs/hoy1fGNL/HhL3IR/rEAsseIJLK0AVbXEu/4n/h/
         9Z9X/XiBJApis9oYfmhZzQS7mkc3lAkJPVLzNwz9bMqY4htiDC7971KV4apYvV89f0qM
         VYhbI+6KL9VT6ZNjbHsf/eOJ0ObhG1cbVr30sln9wQ6109HfXgiVEf1baArB2LTrXSMv
         mAvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8/LBd++yXCPsU+3a7+hOGf760X6C8cTB3mpOzAMxBUU=;
        b=apyqyAwtTqdutR1oBw5olfQI9m4L8PcNaNuVXixOSXyKC27VJMY5XS0UfbyLp5i7YP
         90FmNxxHcxZPBdkSQFZBDhvFXMsQXoXLfSxueLXY5sT15qh8X2c2lTo6eddjHMV/8Ym8
         4Is2cGCsML6yNy17nwKoYRbGTStS7Jlq+RhMZ3p9V8M0ceiqSNItNzSvB+7RdvEPz9ye
         BJOMfEomppEmEzQHj+Ky+p5QyWNeHBJey1oIKuVxd2cKryb4tmE5X0ctW4EtlGTuUMiI
         1JZhXqjlOySnxXwhlqE/j6YOf0v0EDgM2n1jEPKaVvEVcCSNQBIFCF846JlFhTYWtc3b
         8S9A==
X-Gm-Message-State: AMCzsaVtTSy7XlHxyE8wsir4RVoKESlf2zbdK7UJ5Ns5iLTZ5LzMpQ8M
	z1qZOFm9RMF6NOgJGGRq5RN/TQ==
X-Google-Smtp-Source: ABhQp+RoxOLbWCdXdztO8kYhgxcFJCyKH6ucM/apLh+qMJFY+L7hZeliCUO8WDQMq3E8Der4rJubMA==
X-Received: by 10.28.45.9 with SMTP id t9mr3699067wmt.94.1507985713457;
        Sat, 14 Oct 2017 05:55:13 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([188.25.22.133])
        by smtp.gmail.com with ESMTPSA id i76sm11229509wmd.2.2017.10.14.05.55.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 05:55:12 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>
Subject: [PATCH 0/3] Drivers: gpu: drm: Fix coccinelle and checkpatch issues
Date: Sat, 14 Oct 2017 15:54:39 +0300
Message-Id: <cover.1507985001.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0

The first two patches fix coccinelle issues and the last patch fix
a checkpatch issue.

First patch: The return value of kzalloc does not need a cast because
the assignment operator will take care of this.

Second patch: The 'result' variable does not change its value until the
end of the function. Instead of using the variable, return its default value.

Third patch: Placing the constant on the right side will make the code easier
to read, as most of the people read from right to left.

Georgiana Chelu (3):
  Drivers: gpu: drm: Don't cast kzalloc() return value
  Drivers: gpu: drm: Remove useless variable
  Drivers: gpu: drm: Place the constant on the right side of the test

 .../amd/powerplay/hwmgr/vega10_processpptables.c   | 35 ++++++++--------------
 1 file changed, 13 insertions(+), 22 deletions(-)

-- 
2.11.0


