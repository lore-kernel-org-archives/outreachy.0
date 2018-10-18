X-GM-THRID: 6613801848773017600
X-Received: by 2002:ab0:3159:: with SMTP id e25mr29400462uam.16.1539895741699;
        Thu, 18 Oct 2018 13:49:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7ed5:: with SMTP id z204ls1874304vsc.6.gmail; Thu, 18
 Oct 2018 13:49:00 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60MEHhArew7dj9QhaExtET6Y8ADxBHBrEHIcDVekNCTzRMZJuUFiS4ynes3vCfl+IsNfSxQ
X-Received: by 2002:a67:de93:: with SMTP id r19mr30228647vsk.20.1539895740839;
        Thu, 18 Oct 2018 13:49:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539895740; cv=none;
        d=google.com; s=arc-20160816;
        b=eflRptVSPx57f8ySNZe1ZbnS3INY8z6Nx8y02aqQqsUBfDFcJDJZnqcyKcKzk/fpPp
         8UopgPZzFuxTY/S3mnD+OaO5DsbQHzrLf0rcZo/wDiwhRWX8z7InPVZJ13CG/bGVzOc9
         divJSqrHGjqrkqdeVQhqgAmyH6L7rBxpPGkArf2IIcB96fhkX8/wMBzr0oOmAyA/FXng
         uNLH4YeThwM9CEpKKf7b93YxzPUmbP578K1dbVv63HUppbv1NcVmEPyanvoYhebgZcOS
         OVWh1M2+1in0BWwNEy66sbKfTC1tp7FKs0EcZbNZBvAN8lKG2qrcLpI4/KXSFSNQpnZt
         Iw0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=kI/gHUdmZoArj4TyN7mi/I6T/IzlDGCg5fJv9PO7kHQ=;
        b=z/SuibDxhuHqLXVPQCe9rOBq5QU3VHyze4OPM509HySM+R51pigzEvd6pcOI9e/J4h
         BZO4EyjAyt1xNOyyVMvpYV6ss2Qc4lLZEfF/ixJAREyuAExZLxcz0Q4inzA87FMv8q9l
         gI5kiAM1I0AJduwimF8u/XISoxEoOOXNkEFlDAzRC7u1QZPnFf0v8W5d4hVhi0RPME46
         U9tvq0JlpHMiJ9FY33JJyDzMtCxbvtERb13QOHagLB/cvSueorwSgaRaKAK8yhEugKoQ
         EQ8KcBoHxO+wz19w/xnsDwEV3IduUCA0tWPCaf2edd2tNlXV1FebI++n1hHe2P+8LBOa
         6oXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kPMbK45+;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 79si157487vkw.2.2018.10.18.13.49.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Oct 2018 13:49:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kPMbK45+;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id 32-v6so3557724pgu.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Oct 2018 13:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kI/gHUdmZoArj4TyN7mi/I6T/IzlDGCg5fJv9PO7kHQ=;
        b=kPMbK45+467c+zNsWj046QD5hx1+ncvPu5x1TOLZ5Zf83QpjYtc8fBVE09eLM1E5Gl
         isxrrBQlEMa7rn87w2hnDcixOacKB0AnVCGnp0F7XFutBuUTvC+/Vx0HhNlghdaNB69H
         tBLsdxr0WtzrP0xR017msUqcYOVt/fliJE61hgw44TcLjE4ZobY+IOLIW1Nh8PWNPoeG
         VUoathbMP8rcca6oSKhYwRbpm1h56a1+Rnzasa5haq+XG9saIiICU+TV2jp7KvWayMN0
         7+IeY7aUCwf7+qJW9Kxd4OT0vuVjNzUjBX65zhKsKkMaFkA7M9nxxSfp+NSzjHP7Kmo6
         +ePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kI/gHUdmZoArj4TyN7mi/I6T/IzlDGCg5fJv9PO7kHQ=;
        b=AvxBHLCd3EHSSNnDmzfljLLl0bGy1J5EmXLCuqRAoWcNVfxD+WeAiLh7BePkaWaSMI
         JDTyaA6QMmC3Hpv0nNvsVEyMctjWRldFWKgK5eY5MX9P/72oMXl9g9OvlFIGU4GMxCXW
         cMrxHjs3QnKwrBmgxYTnbDvwT50mWmJO48ovDpZzUFKBMjxZzQBaDg+PXc/Nnt3H+E8U
         pIiqVT6q3ezogLdnxtm5utHKQvtK3Eev9It6u1MFoMaxQrxRVnwwAizituKgULH/NUm8
         ALvS11UCkJHD/BeN7w4VYpJHLsfY/7E66nPNshxlYekIlLh9F6wvkYrDfC/KMfYJolk9
         s7tQ==
X-Gm-Message-State: ABuFfoh3ydeDWiNBNFiIsCAuSJ2FVYUvvYYq4oY8RYudTyDllN4jXb1G
	UZUavx/G6DPK584V75dhNc6gQi1EGu4=
X-Received: by 2002:a63:ff46:: with SMTP id s6-v6mr29822741pgk.241.1539895740397;
        Thu, 18 Oct 2018 13:49:00 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.199.49.212])
        by smtp.gmail.com with ESMTPSA id v26-v6sm21475205pfg.43.2018.10.18.13.48.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Oct 2018 13:48:59 -0700 (PDT)
Date: Fri, 19 Oct 2018 02:18:15 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: dri-devel@lists.freedesktop.org, daniel.vetter@ffwll.ch,
	robdclark@gmail.com, airlied@linux.ie
Subject: [PATCH DRM] drm: msm: adreno: Use PTR_ERR_OR_ZERO rather than
 if(IS_ERR(...)) +PTR_ERR
Message-ID: <20181018204815.GA23390@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) + PTR_ERR because its
better to have inlined function rather than code-opened implementation.

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
index 6a68493..b751b76 100644
--- a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
@@ -1222,10 +1222,7 @@ static int a5xx_crashdumper_init(struct msm_gpu *gpu,
 		SZ_1M, MSM_BO_UNCACHED, gpu->aspace,
 		&dumper->bo, &dumper->iova);
 
-	if (IS_ERR(dumper->ptr))
-		return PTR_ERR(dumper->ptr);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(dumper->ptr);
 }
 
 static void a5xx_crashdumper_free(struct msm_gpu *gpu,
-- 
1.9.1


