X-GM-THRID: 6754458583373447168
X-Received: by 2002:a17:902:7c8f:: with SMTP id y15mr491331pll.341.1572884074639;
        Mon, 04 Nov 2019 08:14:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9f85:: with SMTP id o5ls3810347pjp.1.canary-gmail;
 Mon, 04 Nov 2019 08:14:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqyP/Lpxd0zBw0puZgWO1iIPqOAORkQFRYHce3F0EQxE0HLSJxAR3pGBiolPM3ZxNZwoTkTM
X-Received: by 2002:a17:902:8343:: with SMTP id z3mr8927109pln.200.1572884073566;
        Mon, 04 Nov 2019 08:14:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572884073; cv=none;
        d=google.com; s=arc-20160816;
        b=ARld6VE7ey3XquSMC1yldRP50mHyaGWab8mchR7ZR4tISC6P4h2JeaRF8OjC0Nabme
         OwRWFRHck7qYxvktxE8uVwpqaBN3+zeo9zUsrUiGKXxPL9nGoqElDE2L1XxHmnk4B1lc
         XFZ6uZaGGcnSRvXgPXuJY3FaS68/xUyv9r3BBUPsxkUUtMwBJC/jp9zR/ruCwFJipK1V
         wzqyqmf/Tp1G9BJ1E69snCRko5scyCYp6AHWF+gNyvH4ghy8NPWM+Cd+vxl0nEvU3N6+
         v2oxs1deI0GoUJ3+/XSeNFRkS3vMtH/4uPOhJ8r/WHeQ1U0HDAQ/s8Rv5KUDSxKEPYrS
         bidA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YuYmhVgbA+Fo02o2Xskyfo4EJXaoEt0MjkOscYAQ/Uo=;
        b=oMizXC6FjpMp2/6ZDigNtSvqtyxzBgP7DkQpTF00ipfcj7dSyxpmAw5ESvBa0NYRlr
         u0LHm6joAoSQnuFq2BoOv8gHX6p9Hz0StuQmJRuJ4PD/w+9tCf/h7F1XZg60AhgHw5E3
         FbOfsNltgilJAP8iQiHxwFGV6tPHNtQ4tLOut/+o+MS8jQAMhqooUMjSCNRJ7BOU8Yz/
         H/9OXfhqknvfkUnLTnh6D9GNwiRpzUd98TV/kCNkLVfHvncjfaKHeGZxjk3jGOGLwmoh
         /ic8DVflCjbZQHWfbWtIGbYsBlxYNEDj/iXWj/hbG12p/9QPgiRNVFTPB4t9z0Usa7GP
         3wJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lk3pSZUe;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id d9si707737pjw.1.2019.11.04.08.14.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 08:14:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lk3pSZUe;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id o3so24719330qtj.8
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 08:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YuYmhVgbA+Fo02o2Xskyfo4EJXaoEt0MjkOscYAQ/Uo=;
        b=lk3pSZUeGzM6eLoD0AFnbQccwwlgtIKUkLeSdLj3GhQupKaxo6Id4ox0PyEy3wCDLr
         4ByyYWvGBZnwKdeIC5Kw+orC0Nd/kvDnlGA88gdx89Jpzf5NNdmS6Q9f+6QiYkCbkA36
         J5pOGly8HGnGdiproFp6tMWg8flyHzkDsTU2alek36m+MrplTzYfebhQOIYPQUa40IoG
         RcPWOoWKKGeoN5NlpybTy8lQ5aKt48pzS/APUf59A2uYApLauBAbLH6PzCa8uHnfNWTf
         mRvPBwxJGXOnwCTg/CT15c19mz94l00yu3DGS6MH9KlaM/FNJ4W5r5BS9cGAnKgcCJzt
         i9Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YuYmhVgbA+Fo02o2Xskyfo4EJXaoEt0MjkOscYAQ/Uo=;
        b=fJ0K/V1QIBv7QefsRy0lE8x4ZnsnQjwIbFmPmg/EbbmJZV5rmA8d6AeEmmDr0Cme7d
         Q5YRI57ohFPV9DGIQ4zWqWBaFESPxF/+1s/qYL9wZC+wl4oNJqssYv7BYC1kq0eeHv8R
         fLaAJFAIbo+nzE2CzvEE/xXnzIzLpwXgI4SPN9Xqtl6N8ObqeDgBQOX7vfEU4EAiyVj6
         FuBG6V8M9HX5RQhbttwvPN5mE2z4vVl2Cl7G/24vRvsdoIcLPmO7Cd+EZBVXfm8VV5RI
         Dbwk7yG+WGWsyIFizS4XNMeW94FSHhhOaYS1XExpwAK+xpFfxMzMqVVf2nOa/97iCpj9
         uaYg==
X-Gm-Message-State: APjAAAVhA3SFtbp1Iv3jL39H/mA9Ppf88cjZXr8DXVceUDjxJ2pc/Ake
	AC6GZcOfIW8QsD9AmJTLh/OledVsxqk=
X-Received: by 2002:ac8:d6:: with SMTP id d22mr13033168qtg.290.1572884072383;
        Mon, 04 Nov 2019 08:14:32 -0800 (PST)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([187.106.44.83])
        by smtp.gmail.com with ESMTPSA id d76sm8515020qkb.57.2019.11.04.08.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 08:14:31 -0800 (PST)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com,
	hamohammed.sa@gmail.com,
	daniel@ffwll.ch,
	airlied@linux.ie,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH VKMS v3] drm/vkms: Fix typo and preposion in function documentation
Date: Mon,  4 Nov 2019 13:14:24 -0300
Message-Id: <20191104161424.18105-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix typo in word 'blend' and in the word 'destination' and change
preposition 'at' to 'of' in function 'blend' documentation.
And change the task introduction word 'Todo' for the word all in uppercase
- 'TODO'. With the TODO word all in uppercase (as it's the standard) it's
easier to find the tasks that have to be done throughout the code.

Changes since V3:
 Rodrigo:
 - Merge the patch series into a single patch since it contains one single
 logical change

Changes since V2:
 - Add fix typo in  word 'destination'
 - Add change of the preposition
 - Fix the name of the function in log message
 - Add the change in word 'Todo'

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---

I've tested the patch using kernel-doc
---
 drivers/gpu/drm/vkms/vkms_composer.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/vkms/vkms_composer.c b/drivers/gpu/drm/vkms/vkms_composer.c
index d5585695c64d..4af2f19480f4 100644
--- a/drivers/gpu/drm/vkms/vkms_composer.c
+++ b/drivers/gpu/drm/vkms/vkms_composer.c
@@ -43,18 +43,18 @@ static uint32_t compute_crc(void *vaddr_out, struct vkms_composer *composer)
 }
 
 /**
- * blend - belnd value at vaddr_src with value at vaddr_dst
+ * blend - blend value at vaddr_src with value at vaddr_dst
  * @vaddr_dst: destination address
  * @vaddr_src: source address
  * @dest_composer: destination framebuffer's metadata
  * @src_composer: source framebuffer's metadata
  *
  * Blend value at vaddr_src with value at vaddr_dst.
- * Currently, this function write value at vaddr_src on value
+ * Currently, this function write value of vaddr_src on value
  * at vaddr_dst using buffer's metadata to locate the new values
- * from vaddr_src and their distenation at vaddr_dst.
+ * from vaddr_src and their destination at vaddr_dst.
  *
- * Todo: Use the alpha value to blend vaddr_src with vaddr_dst
+ * TODO: Use the alpha value to blend vaddr_src with vaddr_dst
  *	 instead of overwriting it.
  */
 static void blend(void *vaddr_dst, void *vaddr_src,
-- 
2.20.1


