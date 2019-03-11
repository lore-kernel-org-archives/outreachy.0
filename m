X-GM-THRID: 6667148493451165696
X-Received: by 2002:ac8:75c1:: with SMTP id z1mr5091233qtq.16.1552316475596;
        Mon, 11 Mar 2019 08:01:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4ad6:: with SMTP id x205ls393810qka.5.gmail; Mon, 11 Mar
 2019 08:01:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwFpAKiUHxS0CAnFRl552F4kUHlvfl6QfjKJQugmYTqdQp7GRKWW1ZauWg1Wejv+/jSc3mC
X-Received: by 2002:a37:a48d:: with SMTP id n135mr3638454qke.6.1552316474984;
        Mon, 11 Mar 2019 08:01:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552316474; cv=none;
        d=google.com; s=arc-20160816;
        b=f552FZw6AlN5NdBSn2eN3wqRppY7Qo52aP00+uYOTb5u2x9GnCbUgJr5aDB3rUNk4q
         +VieAJyWE3PQbfjQHvHxBlWa/gYHQAQlWQUqc6/u7oAPyppzqPmpRqZfR7f5WKk0Cnfn
         umofw/Y2LIhStU1Q/i0zSZ7Q7FpYq+r6m4xhWILOkVztfe1o/KjOeo2kBTo1e/ARKlqN
         3W9eoC+NcUHVEWCz5cgdirwGsHHnjMVFPwVEb2/CvPCKu3zF0oO77g9+6oYluobmcK6L
         dy2dSHocr9HutX2yuE+LeFUcRF3NUPSleTuSnC7WnX45IlRkrsawZSS0xC54+DfxRG3H
         IGDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=3pWA4TEaUL0zGLnLc05cQGA6tbm8X3Mf5OA27tW1DQc=;
        b=D0aLJ/YJONLxahGIklhBmpb78rTplMjtK3cT8XuD67+ANBSuJP3jFLGHsnWNOroW4/
         hhEfmSp2yKybqTrsUqgeKx69sF44lvFwx+rFSvRqN4iHUKk8lz5CXVzzZxR7xCM+72oG
         9KHWfZVdC6wV/RC7Ww0ncSl/TXNS5ZbmXmicaZg/UjS74IfTzwAF738HGOT7VEldqRl5
         nNCx/StwFoZKErfXYp/DHlCh+jZzFczX/tzB9r3A4iJPsOHYM/mxogioyJMa6D64gdT1
         n14fsc8Z5K46PUBw4cP9KwU+ZNKjD37y2TV1LRHYnAOX82rdxIPpCeqG60WHltBsWSup
         631A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsGPFNds;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id y202si272707qka.2.2019.03.11.08.01.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:01:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsGPFNds;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x535.google.com with SMTP id b2so4230534pgl.9
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3pWA4TEaUL0zGLnLc05cQGA6tbm8X3Mf5OA27tW1DQc=;
        b=bsGPFNds37rnRNbZ91kQ/gZ76OA8Ymm7HYY7/6P3e1YH5zHqCiiu56JOgFodTwgFwh
         HtFHVavJyY/+Zu6RLXp0lcGaAV8QOg/vhASkW4k5REXHgjdTvncptI68keKYsiQpSkTQ
         7Uix/oEXlfUWiyqPgfB755Wv0EMZ6G6Wq25cCWfn/ELoCNCtW8+LsrM1sAaMWfoiu/JH
         jqT4AYvXBjLYpOzesBxVTHjubvT8NWcOYcdfOFKIcTjBgEwMoemI9h8LKu4PPDmSzo13
         liTlJgw5AhXwB/rpCzl2KIZnXqk6uET2iZUJObENCL3njD9Xbf5pLsxE6+CnmTLyvgYV
         UvWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3pWA4TEaUL0zGLnLc05cQGA6tbm8X3Mf5OA27tW1DQc=;
        b=Emp6e7H8BbWcV6Fp4AHJPQwra1ScyRvjITugiZpcZZz4BiY5zffw9+xsp4swve7Zwy
         ERH5W5jnXeN6QKiuPIIH0JUWEfFHrkZ45ilTSZba4imU90CgrQslMLMQpnUw+QUdLH5c
         Os8jTcTZs5H24MimEzMrP/nB0tJVOkxS8Z/DZCGJusVvaYcecBEbGoCbP2UGWNyJZwLM
         Vuw9ApmcJfHCE5MGpzjqJADip42OEiSdl3eCM1lMbuwTIOgo7DAeECjNly7IGAxpCTY7
         9kjcxR5OuR2djVRZn2v+YeVN3p8nbBhM3jLF5L88IL2gMie/WmCMlZMgK8kWfhWvKwou
         yCjg==
X-Gm-Message-State: APjAAAXcwjMxSjCvhF6qZzzrUYiPrvQAKJl/djTAoEkOOfwcBo6EgVYA
	GH5nA4qghn55HYTGFLY1gko=
X-Received: by 2002:a63:b242:: with SMTP id t2mr30430783pgo.451.1552316474052;
        Mon, 11 Mar 2019 08:01:14 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id 63sm23452254pfs.65.2019.03.11.08.01.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Mar 2019 08:01:13 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 0/5] Staging: most: Replace '--help--' in Kconfig file
Date: Mon, 11 Mar 2019 08:01:03 -0700
Message-Id: <20190311150108.4717-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Replace '--help--' with 'help' to silence checkpatch.pl warning:
WARNING: prefer 'help' over '---help---' for new help texts 

Wentao Cai (5):
  Staging: most: cdev: Replace '--help--' with 'help'
  Staging: most: i2c: Replace '--help--' in Kconfig
  Staging: most: net: Replace '--help--' in Kconfig
  Staging: most: sound: Replace '--help--' in Kconfig file
  Staging: most: video: Replace '--help--' in Kconfig

 drivers/staging/most/cdev/Kconfig  | 2 +-
 drivers/staging/most/i2c/Kconfig   | 2 +-
 drivers/staging/most/net/Kconfig   | 2 +-
 drivers/staging/most/sound/Kconfig | 2 +-
 drivers/staging/most/video/Kconfig | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.11.0


