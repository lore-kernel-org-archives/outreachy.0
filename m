X-GM-THRID: 6470705412124442624
X-Received: by 10.98.29.74 with SMTP id d71mr693364pfd.31.1506699177640;
        Fri, 29 Sep 2017 08:32:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.242.17 with SMTP id m17ls2041796pfh.11.gmail; Fri, 29 Sep
 2017 08:32:56 -0700 (PDT)
X-Received: by 10.84.242.1 with SMTP id ba1mr745434plb.21.1506699176852;
        Fri, 29 Sep 2017 08:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506699176; cv=none;
        d=google.com; s=arc-20160816;
        b=L6ZfRA9mw8VcO21iQ5QIhAmT222hIJ+S05UY81RsqTiWCrSTIyP7QhB9IQ13Mnrjpr
         arTaVfORO5DlE6wuu5T2zBgZ/o3FS8KxRJNPniG46ao0ibuvD2pDdTQg1fkTjD5VygJt
         f+X2B6hYk5gg4XQc7bWGcWXqCul59FoUo7QX736e3crLgyGFCglSFXBOlaNmAAJzucSo
         5ypfczfWiphzts9h+doXnGPq9PvvH9uZ0YXgMrpuj4PV7WIxx0HqYIjgFqlbH/kLyKwG
         fNQIJ2g5Y3sj2BZjxJSq+NAGtl3BIx21T8c79iSret8Jzm0WrJCfWs0BP3YxKYHz0ivK
         kOjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=p6sjKdyRvMj6jTNbDa44HWkuIhHROHBOrYLTedlVSN4=;
        b=AdmAJGUEE//imIEOiM2+4Iq8XxdlhDwDoff2R6Bjql8Ch0emUbSz0Bk8J4olcqBPiw
         MY26g0OrCLKR/eNNnB9NHBDwRx0ykVdcMmrIZiWlNU4lb9Z9YYmivr2fSrJ3VLI2Z5VZ
         m5ZYo6hhk8kYogFeqd0/T0qIbKhlbtEQP+YIx3nfokWqC5sX1UScLyQ5r2zOb94TsAVH
         O781HT1cq85wtxv5QkjfFqz32sC/sBGIYsb9DUN2BOm6L1Q/wqdwRI/fUWdJsHhJb+ng
         Dx4hcEveIiofLcKn9e6FmnnTBpSAIZVkx7IfnPktK24F6c/ux0iJOUvd1z9/ubtmDee7
         1wvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F9GpHpAB;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id w11si540453pfk.4.2017.09.29.08.32.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 08:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F9GpHpAB;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so7454pfe.1
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 08:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=p6sjKdyRvMj6jTNbDa44HWkuIhHROHBOrYLTedlVSN4=;
        b=F9GpHpABPz9bOrxp/B/yopV5dAGxp9VsUoxXSHi7dB5foe53/n8JANLS7alWxmjgTF
         HWZqK7U6LqnBbPeI8kKn0w0XHfh+LmOhv3VsZQwXN7mECjZl0raLzcz0BVVaIVONz9yr
         XXTyfZHNXah7ld1jhp2JZN350ZJJdtvQiH31FVvrdu7STG93aCdIbV8eLzBXQAtmdpV2
         lWH28yb1yeJthOSN+cjZt486y8SZNhm6fotcxnn79nvXGYVA86/oTMBNGrBsAuUyo1Hh
         EgxZUU6+fWohG4XH/1c1PvgHWq5NF0dpaqMxljILqgd1AxokUr9WX8q1OquSj53JbqX9
         XEnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=p6sjKdyRvMj6jTNbDa44HWkuIhHROHBOrYLTedlVSN4=;
        b=sidUlvuvy95bMSsoe84vp29P1tVRCx9/BBSJAfRcV5b8t2gv5o8yIsaDevycSU6TFd
         WdIi4/Ipa3Wc41XPYwWxplqLe1Fgoatvx0tu3EyY8DM4tSKja7/FGaqet6wpCf+segjN
         IjPjQ8J/xi9AHczReGegUpZUNH6cHAUOxqCnp7E7ffQl1Kv9+yrpbUyh1On5p55ARiwg
         rMJaFZ1DsLLAIR1ygHeuafJwNM74VcdBIjecacnhlhQkG8QGAnl5Yiic5ajHuSfxihsN
         0D2mzh5opXJX10eTaPYSiFt/aw3uyBhJKDuV4809A0yCSC4IVWhQOOqYYFGTFmSlN6t9
         JhoQ==
X-Gm-Message-State: AHPjjUg5a5Qh/SdHsAXZQSz7Esk+MgtduAV0TZXZrlxQ7CQ92v2Jf/az
	fRn0SGcsQ4RqWZNW/Wg16KVhnYl1
X-Google-Smtp-Source: AOwi7QA32pGK8BC2W35QYFsZQaDDN7eg3CNWi4yqYFpdJBJ7Qy/c8szIODja/HFERpsfeME3aAG9KQ==
X-Received: by 10.98.157.201 with SMTP id a70mr7883162pfk.122.1506699176613;
        Fri, 29 Sep 2017 08:32:56 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id f74sm7384899pfa.36.2017.09.29.08.32.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 08:32:55 -0700 (PDT)
Date: Fri, 29 Sep 2017 21:02:49 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 3/3] drm/tinydrm: Add the dummy versions of
 drm_of_find_backlight functions
Message-ID: <aa492420b933fd8f189a4577949cbeb8b13cd066.1506698677.git.meghana.madhyastha@gmail.com>
References: <cover.1506698677.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506698677.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add the dummy versions (function definition returning -EINVAL) of
drm_of_find_backlight and devm_drm_of_find_backlight in the #else
part of the conditional directive in drm_of.h. This is needed
for drivers where CONFIG_OF is optional.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v4:
-This commit was not present in the previous versions.

 include/drm/drm_of.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
index b2d6e0c..b11d55b 100644
--- a/include/drm/drm_of.h
+++ b/include/drm/drm_of.h
@@ -60,6 +60,7 @@ static inline int drm_of_encoder_active_endpoint(struct device_node *node,
 {
 	return -EINVAL;
 }
+
 static inline int drm_of_find_panel_or_bridge(const struct device_node *np,
 					      int port, int endpoint,
 					      struct drm_panel **panel,
@@ -67,6 +68,18 @@ static inline int drm_of_find_panel_or_bridge(const struct device_node *np,
 {
 	return -EINVAL;
 }
+
+static inline struct backlight_device *drm_of_find_backlight(
+					struct device *dev);
+{
+	return -EINVAL;
+}
+
+static inline struct backlight_device *devm_drm_of_find_backlight(
+						struct device *dev);
+{
+	return -EINVAL;
+}
 #endif
 
 static inline int drm_of_encoder_active_endpoint_id(struct device_node *node,
-- 
2.7.4


