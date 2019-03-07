X-GM-THRID: 6665751809762525184
X-Received: by 2002:a17:902:2cc1:: with SMTP id n59mr4620129plb.67.1551991284684;
        Thu, 07 Mar 2019 12:41:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls3539122plb.2.gmail; Thu,
 07 Mar 2019 12:41:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqyE5uBozLLPPBta6kq64W9hqS9kQ4bWgxVLQZMS3D7cOgKkz5T/wh8oNxjgs+k4TCAz5vTy
X-Received: by 2002:a17:902:9305:: with SMTP id bc5mr4691060plb.2.1551991284149;
        Thu, 07 Mar 2019 12:41:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551991284; cv=none;
        d=google.com; s=arc-20160816;
        b=dF60pi355ljwDchxgZBpmP9cNAYx6U+I7eGvszGqB2yQYDsD7IdIxMD7Wseox5cd0D
         Ti+c3FDVTzwVTqTa1vvLQMamCOGK4JWeU4DAM7FgLXSeKeytCzZsKtp5KmB7P6qdQD9g
         RiC0Bgnxb2MI8FQMHOB7BYRbq+s1e20pejJnFN0MO41kt/k1Lqjh0GFtnvoCbJiug27D
         l5iZ+1oEedyRlPr3f41dHX7c05d3mB9HUgEOQOQvvdQsYMK/qYJSZRIbRvri7Tn77kzI
         CKSnq70yGdW6fWkT3AjhOPPsdCtFJEx3FT51GRyfaiJq4lAJIaNrxd/sPdwHw6YAZ1+k
         OjHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=iqhobZm+/IWq2KFXR5qAf68mM39eSYQd7fHbIVlZXbI=;
        b=WUxOOnKAwCzKfGgKCudepu4yBV9p6MmtVxwaPTXvfH3LeiO+Io1SSsSLuHQs64+oFQ
         zML9fFUdR7FHKDjHPse24NVhCZAUGT/Mx+Rxg9ii4tcGsLYjcI5gKxCEgts5FfNkg2nP
         MIJ+9d984Jo5Unsgum3MQYtZLc9FiVUfNptAu11mgXyHfjKBbqf5XJ+OHEmiDLPfgMDU
         g6NG+gf8Za6wRKusJSwwzzX08r85axz9Yw58TLE6alGrhQtg+W59RADoVnXm1BMYXmMe
         B4l5MMF24e49TS11YN5k/7DvdQC4nAPwG+aLjpRbjwTbC6Gsrh9QeSGCz7RH1Usm0y3m
         z1FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Gi/9FU99";
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id g83si398135pfg.5.2019.03.07.12.41.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:41:24 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Gi/9FU99";
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id h8so12185684pgp.6
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 12:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=iqhobZm+/IWq2KFXR5qAf68mM39eSYQd7fHbIVlZXbI=;
        b=Gi/9FU99bqWif+oOr3+hdMK2JVIcCcBMHeE+zo3wIShT7zsMr6TX2TA7DnPZBa0FBw
         w8VHVrv7/jz39NohNoufhqrwA2TTQ5NyahYwM5OU7Qx2rX4urzq4yvbKt+A6Ee+AGN4C
         PRJGxAf0AnHaXex+nhY95U8cSgNNT23ruTcI4xjvs++e8raltBWIRosqkyzaSU7Z0aYR
         xCA1vrqJI9g4VE8lQoni/Z2YtlxHisYQtD2/Su9kyunkeP1hc3C+c6hzJDgUdpXNP3Gz
         PTNQ4buZ598ZJhbOwisMuKj1tG1ZitpwfvLvb0WLk6B60MqCln49hU4bk3B7e5xkvZYD
         paPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=iqhobZm+/IWq2KFXR5qAf68mM39eSYQd7fHbIVlZXbI=;
        b=HDnZtbg9c6vLjheY72n/Jfl6CoPjfkm2BcfYPWYArRnGRsNv3bkI8ms1w4ykeqL5yu
         IEotREipBxRJXz+QlqaklaF2whclHn5v2yN7QLCECwtG3hW1jj8cHnuIGDdKn49cCsGJ
         0Q6PcGgBaTnLecbFrx4G4subwa62+GT7AEzyScQzf0w93WHPPEGtzd7j14ROGdHmLrri
         F0LgzXgDTKwv0FEeb8K98AzsgJnNvsmcmup3HzRTxXpQYrwYC/8iA07qk3M2mlklrexu
         R2mnSbDH1LVd6SgW/BGgiWV0/VolcByn75DXDu7JLmOuWimHr0uUd9Fsvw4cQxHO0RoI
         xP9Q==
X-Gm-Message-State: APjAAAVCxQ4CxhQFoMvsGps9O8qKQIQf0qxEOw0xLKO1a5aczsgQwQX3
	m6Fa25CZbEZScqT/ObD++WA=
X-Received: by 2002:a63:f843:: with SMTP id v3mr13408053pgj.25.1551991283896;
        Thu, 07 Mar 2019 12:41:23 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([114.29.227.194])
        by smtp.googlemail.com with ESMTPSA id i13sm7494863pfo.106.2019.03.07.12.41.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 12:41:23 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH] Staging: vboxvideo: Do not return -ENOSYS
Date: Thu,  7 Mar 2019 12:40:59 -0800
Message-Id: <1551991259-109878-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

New instances of ENOSYS are errors. Refer /usr/include/asm-generic/errno.h
to find correct error code to use in place of ENOSYS.
In vbox_prime.c, replace all occurrences of -ENOSYS with -ENODEV to fix
checkpatch.pl warning:
WARNING: ENOSYS means 'invalid syscall nr' and nothing else

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
---
 drivers/staging/vboxvideo/vbox_prime.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vboxvideo/vbox_prime.c b/drivers/staging/vboxvideo/vbox_prime.c
index d61985b..702b1aa 100644
--- a/drivers/staging/vboxvideo/vbox_prime.c
+++ b/drivers/staging/vboxvideo/vbox_prime.c
@@ -16,7 +16,7 @@
 int vbox_gem_prime_pin(struct drm_gem_object *obj)
 {
 	WARN_ONCE(1, "not implemented");
-	return -ENOSYS;
+	return -ENODEV;
 }
 
 void vbox_gem_prime_unpin(struct drm_gem_object *obj)
@@ -27,7 +27,7 @@ void vbox_gem_prime_unpin(struct drm_gem_object *obj)
 struct sg_table *vbox_gem_prime_get_sg_table(struct drm_gem_object *obj)
 {
 	WARN_ONCE(1, "not implemented");
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-ENODEV);
 }
 
 struct drm_gem_object *vbox_gem_prime_import_sg_table(
@@ -35,13 +35,13 @@ struct drm_gem_object *vbox_gem_prime_import_sg_table(
 	struct sg_table *table)
 {
 	WARN_ONCE(1, "not implemented");
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-ENODEV);
 }
 
 void *vbox_gem_prime_vmap(struct drm_gem_object *obj)
 {
 	WARN_ONCE(1, "not implemented");
-	return ERR_PTR(-ENOSYS);
+	return ERR_PTR(-ENODEV);
 }
 
 void vbox_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
@@ -52,5 +52,5 @@ void vbox_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
 int vbox_gem_prime_mmap(struct drm_gem_object *obj, struct vm_area_struct *area)
 {
 	WARN_ONCE(1, "not implemented");
-	return -ENOSYS;
+	return -ENODEV;
 }
-- 
2.7.4


