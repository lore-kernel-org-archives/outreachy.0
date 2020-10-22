X-GM-THRID: 6886436790360604672
X-Received: by 2002:a17:90a:db43:: with SMTP id u3mr2495305pjx.225.1603374589529;
        Thu, 22 Oct 2020 06:49:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8046:: with SMTP id e6ls982802pjw.3.canary-gmail;
 Thu, 22 Oct 2020 06:49:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz7mluR75NTtjy460sav5AaYlydtW8FBkg5LAcz/kOsr5ZNBcpVZmW08E5UUSImdyz/5xbF
X-Received: by 2002:a17:90a:ec06:: with SMTP id l6mr2429828pjy.199.1603374587973;
        Thu, 22 Oct 2020 06:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603374587; cv=none;
        d=google.com; s=arc-20160816;
        b=VYjfbau6I+d0kKbQDFIJsdPGoqAqXHC8f27Hsj/1K2VGcE/DSFwDJ3UiSEKVtYsCkM
         xROan5euWHW5XLJC1fCTEHbbGopHi0XfUxHoEwdGgcEhFqpCbxOQWMFdDBdt8Sn7R/ba
         nQ00EYdg+0rHc0Jf6+1z+hEkGjuqzMarytfOTzzaZ8InYPr6lRkywywkDjfKMUM6dT+p
         e6kf37NkyEGBJorzpiemgYe6bqrwZL1WtVKeQHGUeXW2A/Q5kzbp1gf+O6xyZB5udJfD
         xVXaskH8uUY9L6JHtbiOTJs0uR0+nZOpFt/Vv2vg95gqKfZ3/0fMFki3IZkRemRqdd1P
         /RgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yTl8+Dyvrrb2/Dw69EXXgAneFBqPnAI/YfkWw2WmlZ0=;
        b=qcWnzwDlzWrxrrfX5+DjNVFg7Qa7LZEZYAAxBi12ouZVjTC7AfRycs4HVk0TD29U9d
         6RsaqOdD+Cm6j1R7R5J/pIpVGv8hLxWEUByoxmfwcQwgb6M13+TyChOmqGIwPNczsDMD
         7JrooUpySfKkYTZTAPdKx7/Y0ITc9HRrwWjbG0E2R/A6QNURwgvAwjOOy8WeWZvAlLsM
         D/zgapRKWnraMwI69+DJaQWA/qb3y6lk0i2bpzH/HiB2pSA+nfziP5QULeg+EIkmU8Cb
         sI7rPUkvwzDrm7ynhvHvPgRitWQt7T6emakrQxkpm33ZmwPlGqwHhjBA/EQdeTu+zXRo
         iGwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TP3rmRat;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id 191si138794pfu.3.2020.10.22.06.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TP3rmRat;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id g16so1058649pjv.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 06:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=yTl8+Dyvrrb2/Dw69EXXgAneFBqPnAI/YfkWw2WmlZ0=;
        b=TP3rmRataYjyPqJdaBoyWz54I2agvdRkJv3SFqJTSNmQk/xR5db1xz/iZBa8eQocpP
         us2f6rRY4/PFR9V69DZrktfGGiZS240dDh7rOHEqfaOFNEVPDm770MxoDX9s83Tb2NTe
         tncNTKu71aZNmUgswujzD9aWUenusMFZAfmyztX72I9KTMlT99aA5MT0YbePiggIcpBQ
         9b4j1+IGJDYhdz/ICX4s9ljeVTe940faL/Df2j135mNkxF78d0X+YRm/7JTroTM8QrMN
         M/LPw9ZZYbuNwOgKdeVBP8LKx43c8L2Xkb/ZxqJev5LZfVU/mi7BcbSyxQ8hkxfeqdOG
         7HsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yTl8+Dyvrrb2/Dw69EXXgAneFBqPnAI/YfkWw2WmlZ0=;
        b=gE+NiyrLuiRmNlWf1b/eGzWhfo314jehBpABEFkd6hmyWmXgAuZ7/POqlmAbKUYt1A
         YmGM2r+nVUJ9sAGdJSR/axaGDs68F3BFhGcMZjLQBMYeAAYGvGkSDypV7eboyB08Vll/
         h4MUQiYGmDs6FmFnR/MfJhcbAeqUkd/vPl/3ceSrXwGlmQG2zZ6yBp6ZEugdycvhixhx
         bb18NdrmgP6DwKuRCApD6raqtlJ0CwO3ewC2y5oRJMoyEeJ7jbz8qx7WXZi1ZzzGkjWq
         cLfOV4uOSnNfU73geeJf/ggYfXyf8lfExQO1pBVTlDVLII4TFDnYXSWgJk4NcDV960Uc
         V8HA==
X-Gm-Message-State: AOAM5331pCY6+dbQnzYdaQwBYr1C7ab1/nXEXZqxhA7nHvGTqOmkErO9
	453A8UgZphVpMPJjMtYcjDQ=
X-Received: by 2002:a17:902:a383:b029:d5:dde6:2e86 with SMTP id x3-20020a170902a383b02900d5dde62e86mr2562630pla.37.1603374587755;
        Thu, 22 Oct 2020 06:49:47 -0700 (PDT)
Return-Path: <sylphrenadin@gmail.com>
Received: from adolin ([49.207.204.75])
        by smtp.gmail.com with ESMTPSA id 78sm2479155pfz.211.2020.10.22.06.49.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 06:49:47 -0700 (PDT)
Date: Thu, 22 Oct 2020 19:19:42 +0530
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com, alexander.deucher@amd.com,
	christian.koenig@amd.com, airlied@linux.ie, daniel@ffwll.ch,
	melissa.srw@gmail.com, linux-media@vger.kernel.org,
	amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
Message-ID: <a8ece8d34c64206a315adc3da321bb9e675972af.1603371258.git.sylphrenadin@gmail.com>
References: <cover.1603371258.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1603371258.git.sylphrenadin@gmail.com>

Using snprintf() for show() methods holds the risk of buffer overrun
as snprintf() does not know the PAGE_SIZE maximum of the temporary
buffer used to output sysfs content.

Modify amdgpu_ras.c to use sysfs_emit() instead which knows the
size of the temporary buffer.

Issue found with Coccinelle.

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c
index e5ea14774c0c..6d9901e1b4b0 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c
@@ -429,13 +429,13 @@ static ssize_t amdgpu_ras_sysfs_read(struct device *dev,
 	};
 
 	if (!amdgpu_ras_get_error_query_ready(obj->adev))
-		return snprintf(buf, PAGE_SIZE,
+		return sysfs_emit(buf, PAGE_SIZE,
 				"Query currently inaccessible\n");
 
 	if (amdgpu_ras_error_query(obj->adev, &info))
 		return -EINVAL;
 
-	return snprintf(buf, PAGE_SIZE, "%s: %lu\n%s: %lu\n",
+	return sysfs_emit(buf, PAGE_SIZE, "%s: %lu\n%s: %lu\n",
 			"ue", info.ue_count,
 			"ce", info.ce_count);
 }
-- 
2.25.1


