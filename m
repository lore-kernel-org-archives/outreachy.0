X-GM-THRID: 6665413421410811904
X-Received: by 2002:aca:4a46:: with SMTP id x67mr19204888oia.28.1551912497513;
        Wed, 06 Mar 2019 14:48:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:afc3:: with SMTP id y186ls124424oie.4.gmail; Wed, 06 Mar
 2019 14:48:16 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYNLlYntgy+g1k2WYtUFMlrzc9pYSN1BFFhw7z3ASEvfXSKD7G9bWpTn1kIm6XWyiX4XUhY
X-Received: by 2002:aca:de02:: with SMTP id v2mr19293664oig.0.1551912496614;
        Wed, 06 Mar 2019 14:48:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551912496; cv=none;
        d=google.com; s=arc-20160816;
        b=05JTcO2GXrlUNyTlqU9RWL0bo3eoT7sSTIb9xDUBQyJ+kOSLD4GWwcMm/IC0PckI1y
         Il/a9jRWbr1krgeSp0kMY7iiDP3xochtJ7RddT9KA8R1py/LNjWdtdCC7wzVvfE+steB
         pfYKRP7qW+9okVfWpAgl7drCoa4M5y2P2knryc0A4CPhDtrNW2RzGPU49Zn2uZYf0/PY
         QE1cgA4ZjfFmtwxOZm+vgU2PzC1lkXr7+y/uYYrCYOqeKfYwvZRTaWxcsVNg13+XL/8/
         Q/Sd89ubZfKoKg+VKNGJyu3UrD3v0yoSZVsmWHGQVbP5z/oLEIIOJ4GlEY2hboyo3gT6
         sekQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=HSoZwxnUkonoB5bWYdtKb7OBneCa8sWw8ZKrP3d6clo=;
        b=XOcwteRqCXvZlRK6Gbk3vR3siQJOQNN4rAIOBAbiZ1OsZdMD92tzzoKSCi4tl7RnDS
         nTzfC0x8dHB4ADfkclX2qk2RGzCsO+BCcvCR9hIKPy9c0lRwvynMzruxLBlfSG+zlRNb
         PguzFBNDEKOaBdE9sBTRcQ2YV+YYpZVeXS7dJO9QbLMLanvdVDA6JsxCI+BSzGBs3TBn
         JjqEz7qpTkfIZa1e4yPBnoictPC3sALl9ZG/czI8UoMlGsfyNvNw1FhaGaGqTMWVFyTo
         fwq8lgmCVn4q2B8OgUYAj+kfxVA+rWGrQhER6lDrKEwqSTWTqlJImcfBGdpAUgiXtbv+
         yfWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HsPyDG2J;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id l92si108241otc.4.2019.03.06.14.48.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 14:48:16 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HsPyDG2J;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id e7so11269540oia.8
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 14:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HSoZwxnUkonoB5bWYdtKb7OBneCa8sWw8ZKrP3d6clo=;
        b=HsPyDG2Jf8syAidZ4a5aXWVtEbaGPzeFoXq+hUXDiLZLGoyVkSN7M6bIUo4kVmmzgj
         zT/t7e4no7UZ6gjh1PrrBpde7eR6MgeXSOeN34dLdXTgfjdtAZKFL4E7OgepN3Gr6QGd
         Eol0vIJV6mgL6r9BF8T76R3SMHaL3Mm/tEQQcK9/shbaxM4/OJZCOJMM7gZjZhbbpy+i
         6ZgfG064Byiytej4SRZu1nFPYjpSkfZRjlVAiWQRJWbJN74D4J+DCXOE1AVbZYlygoa0
         Uv3F6ZGvBTgKFY8tL5uX5zHEMk/fVe7LdAO6is9/Udg3PmQ1GBsy8vUh33vvmFgLE59T
         qvJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HSoZwxnUkonoB5bWYdtKb7OBneCa8sWw8ZKrP3d6clo=;
        b=Ei/EZsDPHVLkA0qUfD+oEztcbfZJ6d037h/niXZDywxR02M0Qf5HRGBC1DIpaejj27
         xWeCNT0TkuVsnBnr0oGZpD4qSluPlFgdipoMyfRA33kDw76JuKpJLZVNLtYGa3lvl3p9
         F053M2nc8is3iAb4th4V2e7ZkuTIPf4P+/jaDTrgA/ueqfQOieMzd15oaEV7LmtMiLTh
         moYzFdSOkuEGJV98Q/wDs0oRGXNxba+5UZfHv+xsxFCXF2Tr1qox2zBfCve7oSi8Supc
         3+Mw5QOtyJWRYy9DvA9uGYjmugeMDoGD+5OY22oNjkP6YkKsvj7MCDArUIDcoqNTgs4Q
         FG7Q==
X-Gm-Message-State: APjAAAUkYBdg7am/M0N9eeO1uCIzO6IPXy7XL6xi/VPrayHE1vUeHA35
	YdDFyon5yR0CAbj0YbLNdjo=
X-Received: by 2002:aca:4747:: with SMTP id u68mr3216073oia.38.1551912496163;
        Wed, 06 Mar 2019 14:48:16 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id l93sm1249493otc.15.2019.03.06.14.48.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 06 Mar 2019 14:48:15 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: fwserial: Convert macro into an inline function
Date: Wed,  6 Mar 2019 16:48:09 -0600
Message-Id: <20190306224809.12524-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Convert macro into an inline function to make codebase better

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/fwserial/fwserial.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index a1b90ea7fcb8..aec0f19597a9 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -19,7 +19,10 @@
 
 #include "fwserial.h"
 
-#define be32_to_u64(hi, lo)  ((u64)be32_to_cpu(hi) << 32 | be32_to_cpu(lo))
+inline u64 be32_to_u64(__be32 hi, __be32 lo)
+{
+	return ((u64)be32_to_cpu(hi) << 32 | be32_to_cpu(lo));
+}
 
 #define LINUX_VENDOR_ID   0xd00d1eU  /* same id used in card root directory   */
 #define FWSERIAL_VERSION  0x00e81cU  /* must be unique within LINUX_VENDOR_ID */
-- 
2.17.1


