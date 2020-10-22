X-GM-THRID: 6886436790360604672
X-Received: by 2002:a17:902:708a:b029:d4:cf7c:6c59 with SMTP id z10-20020a170902708ab02900d4cf7c6c59mr2807778plk.52.1603374484084;
        Thu, 22 Oct 2020 06:48:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7d8d:: with SMTP id y135ls775004pfc.3.gmail; Thu, 22 Oct
 2020 06:48:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzu46/u7NQRasFWspZEWje/cfdlCsccfI+YFQLBEj+azh5Ibroh5b/vFyx4ehCtPsR/hj4U
X-Received: by 2002:a63:2ec4:: with SMTP id u187mr2431606pgu.308.1603374482301;
        Thu, 22 Oct 2020 06:48:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603374482; cv=none;
        d=google.com; s=arc-20160816;
        b=ACLO3+FXJOCAfbKEKOp9ojkjTLnReOq3mEtFghsQSLEoqDZHEDsGpEFzfe1qvozqel
         zlpJkryH0dpAnSI8J0vjREhOi6Sx5OcMiVW0p0nLG90yoPH4gO/TC0XyF4LO7cb4pZz6
         BDqB5Zex8KfZLDhgOnX4rMy1hYAncXyefgnJBGy8zoowxvWPKsaSctsh76dwi0roUS19
         0vPZgzXuqvMvCFaH6rFPuVkCcml92+wZ/OdKPZ+M7CMEuWHXvuA3Nio3OJo4KDdnybpl
         FbxmHdG+xrArZYx8eMgs0Qoa6RM0R56dJ5ReqZMmUp1BoVmwmMwMwppagiWKGiaPKxOE
         Pw7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=U432S97cU+kXrslvGgog8CihEs2p/DakYW0kgHJLU04=;
        b=GCB6w/6L/36qPbwWyzcJAbaHTLt21XXezhT6/9cz02QmjMJ7AppFLTFStBuDrB7Rkn
         krKYcoJiC6tgFBEg6RemQdSsxw0+dgMw03XTdRUdyoAQUJtWDYa/C54LVxv17EPFe+iO
         kjiaCukkq3S4NNx3hwuHZbfxqw5YUqcJ9N5VLU/VOz0pxduDoednn4b1ViXsXT8N8cnL
         pyHQRuTeR9lCiY+3X8Hccgiash/9uvQgAa8kgceWJHtI39vfkX1NvtFf32CLmrxNHL4l
         OFAcr8Tehs9AjfCETjiIKkFYcm32HAeuJRaHc5In0FO24Ikt9qlG457kEjMmnVLtbfHb
         shBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rYwjb2xk;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id 191si138259pfu.3.2020.10.22.06.48.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:48:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rYwjb2xk;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id a17so1060772pju.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 06:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=U432S97cU+kXrslvGgog8CihEs2p/DakYW0kgHJLU04=;
        b=rYwjb2xkkh0hxJWaPtOnGa4hSe5DuH6RLUZsZBwxA6M+Z3ZP+laaYWty/n+xFUh7CT
         x62XiY4/BFnQkTugiegwK2EiFTnJxllQ/XJKCth8g5mxJ93KuTm6ClHqTZ8sBEI+L1hq
         C/X1pxD7EjWrJ4/3qk4xaMAAEFtZKDHCo7Sjpb7ezoHZNY5/k26tuFpTDDtl4JTmW4v0
         3+QVKvhFHvha8uUUEE7iCJl2d90+KRDbgRLvBeKbJ2RylZwbMd1l+gVJSnmaRTiDjFb1
         N/sk7fU/JL99mAX5kVZbQ+JYnhO6HLzCtiGv1N1tQoIOymoGU077WXHGYycWfasE6u12
         yQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=U432S97cU+kXrslvGgog8CihEs2p/DakYW0kgHJLU04=;
        b=jnA7futHHl4CIpGHZwlZbHrBYBQBF6D5ldwcjmmrvtlVsFqF0CRfNhioFzZzNUuyBa
         94HfUODhK329UKBun8lhzV4/sNq23C+isnUeaNw567w7nL19SaVY+rZJxzKCq+qsX+Ww
         v76MN78ZLljoqb6TBjjnj0Bb9Ga07Q/4ZKB3cLXQi31D88W4fg9PpzS0kQmeIcPec30w
         7/HpfJS+fFu2wVw1TEZcv/pZ+NVZXVMj+PM97E5MIQtx4V7C9Hb4h5NKamhCsKBayx4u
         SaEBRHYSutEESyzYsmPyRc/PMxKFJ12UUZg7rl1Di7WUj4RI753ajYDSNagliBwd0VRt
         3H9g==
X-Gm-Message-State: AOAM533LAGbSXZZoToID89fAI30qNJkVDbsYlR/3Zolk4YtcjIzEarf6
	qKuB/7QIeZnhrf7dbff1/fM=
X-Received: by 2002:a17:902:e983:b029:d5:f469:60c0 with SMTP id f3-20020a170902e983b02900d5f46960c0mr2536227plb.61.1603374481995;
        Thu, 22 Oct 2020 06:48:01 -0700 (PDT)
Return-Path: <sylphrenadin@gmail.com>
Received: from adolin ([49.207.204.75])
        by smtp.gmail.com with ESMTPSA id g17sm2357979pfu.130.2020.10.22.06.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 06:48:01 -0700 (PDT)
Date: Thu, 22 Oct 2020 19:17:56 +0530
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com, alexander.deucher@amd.com,
	christian.koenig@amd.com, airlied@linux.ie, daniel@ffwll.ch,
	melissa.srw@gmail.com, linux-media@vger.kernel.org,
	amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
Message-ID: <f6107f3e467f1906abdcc33d35f13cf54f7e5a96.1603371258.git.sylphrenadin@gmail.com>
References: <cover.1603371258.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1603371258.git.sylphrenadin@gmail.com>

Using snprintf() for show() methods holds the risk of buffer overrun
as snprintf() does not know the PAGE_SIZE maximum of the temporary
buffer used to output sysfs content.

Modify amdgpu_psp.c to use sysfs_emit() instead which knows the
size of the temporary buffer.

Issue found with Coccinelle.

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
index d6c38e24f130..4d1d1e1b005d 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
@@ -2621,7 +2621,7 @@ static ssize_t psp_usbc_pd_fw_sysfs_read(struct device *dev,
 		return ret;
 	}
 
-	return snprintf(buf, PAGE_SIZE, "%x\n", fw_ver);
+	return sysfs_emit(buf, PAGE_SIZE, "%x\n", fw_ver);
 }
 
 static ssize_t psp_usbc_pd_fw_sysfs_write(struct device *dev,
-- 
2.25.1


