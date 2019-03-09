X-GM-THRID: 6665751809762525184
X-Received: by 2002:a24:78c:: with SMTP id f134mr15861054itf.30.1552157642250;
        Sat, 09 Mar 2019 10:54:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls3771463ita.0.canary-gmail; Sat,
 09 Mar 2019 10:54:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqxtl5kY1KRI4H5V+66imphRrNKjL82z/VtkfiPQnOPk+YI+iLV7RU9L1e45C+BQuQHPFtar
X-Received: by 2002:a24:7647:: with SMTP id z68mr16410909itb.27.1552157641369;
        Sat, 09 Mar 2019 10:54:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552157641; cv=none;
        d=google.com; s=arc-20160816;
        b=mlhnYU8RMWrfYALjTjq6oDwSRBvhEp1a/J03noDN6LvWnBLd/6C6W26vLFJj4AvsH2
         /Fff3eGb56Wp3SpzIUqMw+0z3MXQubiJb690MSh5fZTj3otHI593APBe7ZbDHSLM5abP
         9biMdYIi/0N9KOtLTgIyPAXX2OP81b7nft8dmtzHzlmwUJkeo4POfKb2uSkonNDutz3D
         6OExOs9A8zeFCwqQnDMVu9z3X0zXWi8S2vgKD/3S9v2vF28gEsdpGv+Ci6IsPgtV1BRT
         KDKaLhdxG2734iSK3YNpsGhQrJ7lGa+AxxPyT/7a8iEr9V0ljEE42q0tGRXmjRL2uYH3
         cjJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=2Dlg07YsJrSqvw2An+A6q8j193Na+YPouW2Lgcuax0o=;
        b=jKQPVB1pHQ9MW4cYqbnQsdkr+yh3kviP2VcazJLZ2mBCXJ2oSEixpafJ4AoRXv4bQp
         DikM+LaFwo4pxw34fyng75GKxgUpbSkc6Niloo0JOaaBX7IRJQq6l7J8tJqVl55Um60q
         W2M8ESUQfkIyWtWUzFi1zRi4W53/+WRInFi3P8V/QpH1hRAcwEe0YlInTd1UjcPMdHXp
         wibI5V9xAWob1mQEAyOw/ml5k4g0J68WHXMnwXyU8qas/M/1+v0trE8nRSud1VR06A6r
         /VGjpqNU49kotEqf+bSBw9yvevy++Wo8XZqCN1Rbi9pRrqkgbz5Mz6POs/QtiRPhmU3m
         8WYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7GtXyCN;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n6si8586iod.1.2019.03.09.10.54.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 10:54:01 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7GtXyCN;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id g6so572146pfh.13
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 10:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2Dlg07YsJrSqvw2An+A6q8j193Na+YPouW2Lgcuax0o=;
        b=I7GtXyCNYEIGZl2xIWN0kpkhU+ScRTDPaiENpdeNWH9ZNVNXyTgsBJIMrL4XhQVCok
         bkldtsd+F7a75ReWHfZK38vNacDukWdBIS63sdXiNxX/9rW0EddH0q/spIt0skHNUNpC
         wysHEOPvlgEjQ4X/7BIf2DcsaMBlzSa4bSFnX5Jsh9v5hnUxq72YPXyE7txMP8T50AfA
         zVX2n8ORTpjKRybulfzDdAHdVWN/98EsDE1cVMVXaKy3BLbaWF4USPwW08HYDdEqodhf
         ZBXPkeH93jK7ZZI0iDpx20Wsn3ebm6IUVhzGBkDlaM4+Votte5wvVjRdM/robWd3LEPR
         KZjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2Dlg07YsJrSqvw2An+A6q8j193Na+YPouW2Lgcuax0o=;
        b=lm1SyIn3j/7a7KxGsqwawpyg4ZVeEGbWTSG34dibt69ZKKrXdbsHLxi+jqVkcTibFf
         PUmUZkPZXw7YFwqoWzUVBTevhgRFaiXi67I6OsexcCR75O2DrEI+ApvaBthpMJF8VtD1
         E1QTjfGZkhVyra0wpNtZLKQu9dM1Uhj6+3We2SCXOqhRrZrKTYho5sLEKLYRLqNXs3MH
         gr0ReL1G2KxbNOp0nRUn+nSkQHrxoQ2nt2sXWkBgw8pwnL3Wh25e5xWnq+2DqhHvBu6z
         o2RGdTx1Rz+Hv1ohFSOalgJC29XBpW/xcwaLMZI6EszTekb0GHV12fREB9fRIciNraKI
         Uo2Q==
X-Gm-Message-State: APjAAAW0JWEAA8fPP7bPnVW4rznSXz+QJKMFFOfh37Ws79gs7XtHG7wK
	K5OGFNwHD0vb5GsQMmc5O4s=
X-Received: by 2002:a63:1766:: with SMTP id 38mr22738670pgx.204.1552157641106;
        Sat, 09 Mar 2019 10:54:01 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([114.29.227.68])
        by smtp.googlemail.com with ESMTPSA id w17sm2023856pfn.63.2019.03.09.10.53.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Mar 2019 10:54:00 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH v2] Staging: vboxvideo: Do not return -ENOSYS
Date: Sat,  9 Mar 2019 10:53:37 -0800
Message-Id: <1552157617-4629-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

New instances of ENOSYS are errors. ENOSYS should be used for nonexistent
syscalls only. Use ENODEV instead as there should not be any other
driver for a virtual device that might share buffers with vboxvideo.

In vbox_prime.c, replace all occurrences of -ENOSYS with -ENODEV to fix
checkpatch.pl warning:

WARNING: ENOSYS means 'invalid syscall nr' and nothing else

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>

---

Changes in v2:
	- Make the commit message more clearer.

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


