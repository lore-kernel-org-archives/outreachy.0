X-GM-THRID: 6396343645329424384
X-Received: by 10.157.23.42 with SMTP id i42mr10482302ota.11.1489264807266;
        Sat, 11 Mar 2017 12:40:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls1238816otj.6.gmail; Sat, 11 Mar
 2017 12:40:06 -0800 (PST)
X-Received: by 10.157.46.59 with SMTP id q56mr11059614otb.106.1489264806884;
        Sat, 11 Mar 2017 12:40:06 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si2380767pfb.7.2017.03.11.12.40.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 12:40:06 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so13956695pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 12:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lme6O2UFbMNn1vgRZW/BiUyJt1Ch8EN8TnZhm5DaweA=;
        b=lmx0n3cdJFTvJn/D9XQrqpv7Sqx3RXJ6YYHzBHO4kpJSP+6pFZqkO8MFK0rHBoYM99
         aTmKW8Rjw2MI9ffh7zoJJgz8aqsDIFMMU8jKUK/GQ3BWnVIGj8xHxE87pgPwUvT5zqxc
         f4WsY05P4J3UWuUw81TeJ7L1MRkg2+dbM7bP/5ujGKQnMxTI3qtfc17WF6OY46pOxyiT
         r7HEbqNvLMlrSUQBlRz/55C5aBQwpMh0ZsTrtuSjVjVLzwYfMY5uQep59K9deER4JzU+
         6xsyLer8HTUmNpv8qi59z04HEdcVLIq9cEEjOZuBBil6QuK3nxc/xjaRNiGuIGQWwo+3
         LEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lme6O2UFbMNn1vgRZW/BiUyJt1Ch8EN8TnZhm5DaweA=;
        b=ejK7GmQRJw3u1F+IYfK4bjVsABXR06dgmK0yN72e+eJmM90SxWaJB9nwEkn/e6kx0d
         xHTxX87UZV0qgzmwna0AJmlkqybLjeu+Ni1D8AmYFgLeCVbCqWdAKlErAYVOa4KQMrqc
         6/sBiESvYGNXtemZr+CMzy8K3igZAgYGfel+OsvN2ocqV2soo63iFco0eqSf0AA4sau9
         WcrJRGhcabHNCwd/a/MQzzkIDEjeESJ2EkwJAXqejCCAbRjEMTzwoqQx/5A24mB4VTrC
         y245K5y1Ja1F/g9Wnn/8Ovz05bgl4v92l6sLex1pZAsuNISjVool5Pkm7vBw0Gi2Y0fD
         SEaw==
X-Gm-Message-State: AMke39nLV4QJ/LesrMynpK2y+pg0JbWwgHbIhe03b2rujGWjaw6KHv2MLvUZ45QC60XEGA==
X-Received: by 10.99.39.195 with SMTP id n186mr28173344pgn.178.1489264806349;
        Sat, 11 Mar 2017 12:40:06 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s21sm25598766pfs.87.2017.03.11.12.40.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 12:40:05 -0800 (PST)
Date: Sun, 12 Mar 2017 02:10:01 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: arve@android.com, riandrews@android.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: android: Replace strcpy with strlcpy
Message-ID: <20170311204001.GA13301@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace strcpy with strlcpy as strcpy does not check for buffer
overflow.
This is found using Flawfinder.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/android/ashmem.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 7cbad0d..eb2f4ef 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -548,7 +548,8 @@ static int set_name(struct ashmem_area *asma, void __user *name)
 	if (unlikely(asma->file))
 		ret = -EINVAL;
 	else
-		strcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name);
+		strlcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name,
+			sizeof(asma->name + ASHMEM_NAME_PREFIX_LEN));
 
 	mutex_unlock(&ashmem_mutex);
 	return ret;
-- 
2.7.4


