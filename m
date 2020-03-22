X-GM-THRID: 6807025252399316992
X-Received: by 2002:a63:b34d:: with SMTP id x13mr17649282pgt.317.1584884070504;
        Sun, 22 Mar 2020 06:34:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:3103:: with SMTP id x3ls6196188pfx.2.gmail; Sun, 22 Mar
 2020 06:34:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvg0ogo5nJ41qYYJNlbwnlKfNT51gqUuKrJX+z7lgldILx/agcJNR59iypkYtxd503OCJgB
X-Received: by 2002:a63:a35a:: with SMTP id v26mr18385647pgn.40.1584884069134;
        Sun, 22 Mar 2020 06:34:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584884069; cv=none;
        d=google.com; s=arc-20160816;
        b=PZpFp9HpbEjH98DausBaK22QH/iGLtSA1qy62GeMi72M23a8K5AU1Zyg4Fbub53OWZ
         0U9U87EHBXh+YDE5PqZSqD/b2BKVKuobh0UqHkVV1BF0mlXqOQrvQBe8ZoW8eXYnIA86
         9EtVI71C/6B2AQD2dJb6Q2/AphvxgSO/k4ADYSVEXQ7STRhJdHW+Jbvuadp5G44g1igy
         dK0E0sBOR9RRK0bfcQgQTSkRkb/AzC4g2Yss3jaRyarsmv89tRjelb8brA5hFmleQLsF
         qwH5tfusG/FRX4fAhar+4UEz3z6XpAk5nDPG9KWoCc6FPFiYOU9q7uGzwqlsfckN47X8
         xqGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=nb6Tdh2SNHJS0ljWZ4iRAOfPuvZHmFIQ+GlpW5dSCt4=;
        b=cLpxzPf7K91i96f4CwCxY8/VNionjt+YvW7K1XU3gTSFz6E2I8FSVOe9IAAJqIIUvM
         e4txx+mJUfoFDmsVwd+BEJDT/30eOx5Fr+gPH7Ey+1crsVyDw8cYQCPzfOSKcaMFtzz0
         rdgU3B/FfM+xQK0KZWUHR8wsIBZJe3mlXWkTr5gHInLgbcpiBFRoX4Ayr+OEVhNPUzrh
         HxUO2L53XfmTNYNCbwdzOJ0wxJHobC4xaH3vhAaa6uj1QhJptWbeEe6Vh6znrjTCJqvH
         VCawPn+Cm4mM3jyastz7SIAyAuL775o76TOHQ0+lai5rk4KqHXcl4saYtcOXBt4R3g9A
         dUgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oFmqHSrp;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id x12si722563plv.3.2020.03.22.06.34.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 06:34:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oFmqHSrp;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id t16so4688147plr.8
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 06:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nb6Tdh2SNHJS0ljWZ4iRAOfPuvZHmFIQ+GlpW5dSCt4=;
        b=oFmqHSrptMIrDizGQAfC7mVqZv2kJ0s/tkfh240bFPmcdf2Ja6t3d/XOi/cmKijjXs
         TIjFEjOg/1jZDvtqi73L7jKfCDBdxL88nLA2hXJFmAR0Tpmo16Caq48bfwEyTAQpjbT7
         ZJL+OlrFtVVwU+pIkAy3TSewwS39YMkvwq2JW+ANe1gFPGil62lwTLtu7etCbS4mIxh+
         gd4pEXY0NSm7AIS91fq77BchEn6zlzmqQW8Z6P7PHwY8J11vnGYOMxqpWr8GKA9mQNzr
         1PpITL6hOyudJ1Bqk59Ap69HYuOEZ2x32v9xGa2UtBvtmFvfL8knhcPICSrFK/4H0zLi
         ngCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nb6Tdh2SNHJS0ljWZ4iRAOfPuvZHmFIQ+GlpW5dSCt4=;
        b=S1FFBfF6bqL1UwgD0i17VvqT6sj6slXx9X14RZuzghNgc29yJBDeqIBgl9+CJArpT9
         PUy0lZEupHRhY6TCn/crt0GS31QhNLxuSQmy/DAeRxdlR1rBnuSwoqL3CZ6u5Ux2iV++
         b/t9EKTlADL7EJKdvMGlLXgOlcH2Fa2798LU5KXyp2cJLJKKqWhI8+YHHXJ59JFFR0F2
         8Gdme5BP4lD4PL/P0tmYOvQvTPPiXfp8S09An2h1JLShq/ItJvlcFFUr/+rsfEf7SeLW
         hLv67fAbyXnQDOENN1TOPp33G9VyUDZ2ycHwkeoYgTiWe082JN0y1vHPritaRF1MSuYz
         Mfxg==
X-Gm-Message-State: ANhLgQ1yroW5dzwkfmkOMlA98PdmgEejr7UIkUFANLySXsiaBwNVD2Bv
	nB/dyNcnCprhsm6p0GLSOTeATLLPQr8=
X-Received: by 2002:a17:902:aa98:: with SMTP id d24mr16995410plr.74.1584884068266;
        Sun, 22 Mar 2020 06:34:28 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e80sm10998595pfh.117.2020.03.22.06.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 06:34:27 -0700 (PDT)
Date: Sun, 22 Mar 2020 19:04:23 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: greybus: tools: Fix RETURN_VOID warnings
Message-ID: <20200322133423.GA27425@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix 'void function return statements are not generally useful'
checkpatch.pl warnings.

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/greybus/tools/loopback_test.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index ba6f905f26fa..78333fb45b70 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -855,11 +855,8 @@ void loopback_run(struct loopback_test *t)
 
 	log_results(t);
 
-	return;
-
 err:
 	printf("Error running test\n");
-	return;
 }
 
 static int sanity_check(struct loopback_test *t)
-- 
2.17.1


