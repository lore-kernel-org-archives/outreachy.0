X-GM-THRID: 6886436790360604672
X-Received: by 2002:a1f:3d03:: with SMTP id k3mr1533116vka.5.1603374055256;
        Thu, 22 Oct 2020 06:40:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e29a:: with SMTP id g26ls199065vsf.6.gmail; Thu, 22 Oct
 2020 06:40:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxffRv10jYOeYl2WiSYqcJakSnatxCbsK8wU6LsaTjAJEEyuHbN5WBvIM9oM+CUDPOlPfZN
X-Received: by 2002:a67:ec54:: with SMTP id z20mr1678409vso.4.1603374053819;
        Thu, 22 Oct 2020 06:40:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603374053; cv=none;
        d=google.com; s=arc-20160816;
        b=bKFs2r24Ct9Fu5ZL7KlpHqLnXbUBstm86KBMvdzX9BV6q48aTED+y+bdScK/ZJ2QcE
         /JmmBtPSffj5dXCAGlMyYNojju/eoYCQpb1E0EcjFH7tJ1kKhXjHJOhxLZI4LEEcdVfQ
         QocFEEm4dajeKDlZeNpQ/VhhMxu9CG51o9huk5UVsI0llyD1DsFWBYFS2OPnseUWJono
         IWfsswvIlaImUaIKaufrM1ffdYqI5j5hGsDYpsWCiDbicTbYzmfY8h1SqnGXEqD+1okq
         qnGRp2zmsPDfiWaZxEMzEclhmZtfnraIHJ5VdE8zcMfhZ/lBbvE7+MBO9E6e61VYa7+p
         CkQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6ARfb7CCtAyGQWozbpcu69TiW9MOgZYC7V52jr9EMdI=;
        b=HgM6sSrI3oNCxSqTYf/KfIWRC31ADExfJhqPrYyqM8gcR0W7JeX+Vs4SR1JBMSgvJN
         yJPzhRDf5tPWD5TMnCJRAsQ0UHQsaINoCshnZVmtHBWOlHct4Qnkr7Hiu+akC18V4rkj
         OaYjky+/mHvpEMnSCKheY1siVXedKrujzffRhKXLW0Bx2pdxL9D8FKLnwDUZINdmdd2Q
         fByxa+zypxYYceB3+szrJZzNHxu4BdmNJhWQR9VgMleMvpW3e6IFwuJSYDxifAX0EafD
         zqHwlFm4muKbJEhJ1GzsAD6zAi59f54mw9ZiBdvWOFP9iglGZVXNtAl0jVFnlOdeYBjk
         iWPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cPArrMKj;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id e7si106969vko.4.2020.10.22.06.40.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:40:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cPArrMKj;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id t22so962543plr.9
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 06:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6ARfb7CCtAyGQWozbpcu69TiW9MOgZYC7V52jr9EMdI=;
        b=cPArrMKj7xSwULJAYitN0m6vC7G/wTwv5trn8fq+nwf0A+2hp5LU49pAbuMhjjeNRv
         fccwBKY40gL96fMEFCrheOhs7geOIGvy7bVVSiZb4TMh4d4+F5geRTxSuZJZ70PQlJbl
         jsiGe1Txe6jSe3uD8rQo5YbSLjz9pGZZWV6R8BiMnBJXhF7UUdTOm46R+31AxuvTjs8f
         4vG70Oj+1gjW8V8CgysBCTnZOVSLzF1KzDbUBCBO/FFxF/jhtqBUeM7IYE1nzUP+YPj1
         KYWxc2DLWI7L4c9F3cvB8q3/pRjebyP3rk0NZq4DzfnO71JrJupHUchu1cnsxLwnxa3y
         INBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6ARfb7CCtAyGQWozbpcu69TiW9MOgZYC7V52jr9EMdI=;
        b=aYAo9YDmGfj1qVrhz89IcE4FdK+xpWRm098JoKMfWwyOeUomqoIXrzZ6Kt7Lhvw6oP
         eha9EGyIUS/OmkJD+LMIlVyfciNDT4eE4I1jLOANvaBEvW6r0pOiUuf9brAPKEGLdIXC
         Cm7DWRUaYE7a7fDrZMk3n9U//UhUub6x32ONBq5qRycxlk7YOwNxoJXg2DjBdMbG9xzZ
         xnZGEPDS+Cj40AmgupnRin2R3iEM3S6fO42Q7L9J45K+lHY8piYx6HyHo7DYWHAh2+IL
         kWiHUy8fX+TdjL3Oq6jtLGsR+xIhq9w0jMtprxAj5JhO3R7vmLygZ+5jA+bBug0Krq9l
         guWg==
X-Gm-Message-State: AOAM532X67myLT7EynbTxQxznF5/g4b8fN3oiAeGyFLidjoAEKH3SkxP
	ETOHTZ28RyxjW/wt0YLHMSg=
X-Received: by 2002:a17:90a:7d12:: with SMTP id g18mr2448814pjl.89.1603374053035;
        Thu, 22 Oct 2020 06:40:53 -0700 (PDT)
Return-Path: <sylphrenadin@gmail.com>
Received: from adolin ([49.207.204.75])
        by smtp.gmail.com with ESMTPSA id j20sm2384100pgl.40.2020.10.22.06.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 06:40:52 -0700 (PDT)
Date: Thu, 22 Oct 2020 19:10:47 +0530
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com, alexander.deucher@amd.com,
	christian.koenig@amd.com, airlied@linux.ie, daniel@ffwll.ch,
	melissa.srw@gmail.com, linux-media@vger.kernel.org,
	amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
Message-ID: <c9fbe2e2c31fae2fea867940a888c68becc993bd.1603371258.git.sylphrenadin@gmail.com>
References: <cover.1603371258.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1603371258.git.sylphrenadin@gmail.com>

Using snprintf() for show() methods holds the risk of buffer overrun
as snprintf() does not know the PAGE_SIZE maximum of the temporary
buffer used to output sysfs content.

Modify amdgpu_atombios.c to use sysfs_emit() instead which knows the
size of the temporary buffer.

Issue found with Coccinelle.

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c
index 469352e2d6ec..3c19862c94c7 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c
@@ -1947,7 +1947,7 @@ static ssize_t amdgpu_atombios_get_vbios_version(struct device *dev,
 	struct amdgpu_device *adev = drm_to_adev(ddev);
 	struct atom_context *ctx = adev->mode_info.atom_context;
 
-	return snprintf(buf, PAGE_SIZE, "%s\n", ctx->vbios_version);
+	return sysfs_emit(buf, PAGE_SIZE, "%s\n", ctx->vbios_version);
 }
 
 static DEVICE_ATTR(vbios_version, 0444, amdgpu_atombios_get_vbios_version,
-- 
2.25.1


