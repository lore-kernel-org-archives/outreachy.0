X-GM-THRID: 6616381756005154816
X-Received: by 2002:a81:3c06:: with SMTP id j6-v6mr2936333ywa.11.1540580691285;
        Fri, 26 Oct 2018 12:04:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:a4c4:: with SMTP id g62-v6ls1053957ybi.9.gmail; Fri, 26
 Oct 2018 12:04:50 -0700 (PDT)
X-Google-Smtp-Source: AJdET5c0KcrgHlfBKi4bzNVq9SFD7Y8c0dHEldB18J5wTjM0xJ3ra6S4rzpWRr80dhRzVOnsdnnP
X-Received: by 2002:a5b:a83:: with SMTP id h3-v6mr3069052ybq.60.1540580690360;
        Fri, 26 Oct 2018 12:04:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540580690; cv=none;
        d=google.com; s=arc-20160816;
        b=dZ1m0L4q3adfeYClOUOZa2DoJV8Ow3JpkI5XouxxtVcetfxsLwmljDnLbqrKGH9X3B
         2dIAYIYGP3YpL+3SyLQU++dR8qJqMnNLQG/3e7e/GuprrvOZs7UqS28AwwgBuQJyi6l+
         tnwd0cnzWOoZ0QNn30QaKCepUw7tU6mfWzBDc4oTEECiMXfnmIEZIyNBcnRXzmi3KGAE
         6O8WNVnembthRNsN1rB7jDYFmjRCC7+Rcd6UkNJ8s1xtJqSwmNY79idtKKfPuWWQ/scu
         Ra1h/WQOgmmRGQit5L9mqc9j467LuclaY84NJPMAffguEhBym4W/UnxryImXC6/pd39U
         38gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VvHu1C5zv0/vYjXlEVVxM7J02J9JLPYpPuqNHakxEEw=;
        b=jsxXiKokZxkMPVCLCXrycId7ItyOv5e63x0ZtJ+YAmP+X47YXDnkRw4Dx0afTGHzGS
         MHDMzAZMsfeKHDEVX3r07Z3ZBAKWMBk0Ztc/MldWQAI6dHfU7Rda1WYKCvlg3xv2fkoV
         yapQiOGTnSxczgi4vCaFs8KdvoInDtMhFPv59Ka8XVn+/Ko5878QRGMzXpQY4Pep/Hct
         czvhr4IHWRVebQB7YA76wN4EsEAEpqaT3WMOTT4AxsQ7paWKy7ndH/QF+NvXjR2vxBfA
         OU0TmOsY63z+yqkGgSCwxW3lP9C8PieZVJq2rKWEJpDgfu+NLhOWhK+eWuAve6aNLLX/
         0+8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rEkwOTjy;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com. [2607:f8b0:4864:20::836])
        by gmr-mx.google.com with ESMTPS id r2-v6si525071ybb.2.2018.10.26.12.04.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 12:04:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) client-ip=2607:f8b0:4864:20::836;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rEkwOTjy;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x836.google.com with SMTP id i15-v6so2471094qtr.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Oct 2018 12:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VvHu1C5zv0/vYjXlEVVxM7J02J9JLPYpPuqNHakxEEw=;
        b=rEkwOTjyXZBu9Q2isZSyKRPcOQ/Yzd5Xb1IHBoqC42mKcz3zOeT9lyDkGjG3GmwSiI
         +lkzLADQWhe7WONV7svoPj0mjVeX9B5Wo+0dbtVGKkvNZK/nP3j8PaXBFe5tiI6l1ac9
         Zv7bUFcpYemF4nEHLaHNPKn/HhRWg3u0tDEBBKQJFC4dgAgML8+9Ecuac8QFfcQs+dib
         icVTnq9naPA8+yVYQVIhE2LXVCqiNwTgYDRi8n+KF4OkuRMH5jAo+pgT42zGLs0ts6n3
         5kE1f82zkT17gf41YrqjtBT7gQJ5isHKqs+qcAyUSVofWAISscAgIgOD4UyL2p6IV6ym
         ckKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VvHu1C5zv0/vYjXlEVVxM7J02J9JLPYpPuqNHakxEEw=;
        b=VeqH/iL3Kc2bqJkmEL+kG7tV5tiyS0yiskRiL19mjgfvSiVwRcgA5tYSoXxmh6Vk4G
         O3F8KZw2I6XrhQyDZ94TcaLyNTP+tU78TFfEHNd9b864IafS1p6TCnFoORSLw7WI1VXK
         oIeuaVQHe4fDJHrwcj9TSm9M282jF8O7b36OGwzeOfO0sNf45y5A3nyqLv35a0OTvf9j
         5vfbxk32pknSa64x8z+u12KyDNynsa2i03Frhk0n3dD9vLBmvdbfavcTGkL4fyNWEDee
         l+hD3+Yv9zetHtRBaXFaPyDzKuWFz1ZtGfeli3saGyEL0uIXiJwO3yojlr71b1rr07h2
         P0rQ==
X-Gm-Message-State: AGRZ1gIYqEkRBYd4J4cm3jdY4x4ZSG1OXLwK4Oh47LhHFuqol6Wppa4r
	jlnjFpN6I3pjSZKiS9nuPMY=
X-Received: by 2002:ac8:1c43:: with SMTP id j3-v6mr4521728qtk.320.1540580689979;
        Fri, 26 Oct 2018 12:04:49 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id y42-v6sm1950937qty.42.2018.10.26.12.04.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Oct 2018 12:04:49 -0700 (PDT)
Date: Fri, 26 Oct 2018 16:04:45 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 2/2] staging: vboxvideo: Use unsigned int instead bool
Message-ID: <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540580493.git.shayenneluzmoura@gmail.com>
User-Agent: NeoMutt/20171215

This change was suggested by checkpath.pl. Use unsigned int with bitfield
allocate only one bit to the boolean variable.

CHECK: Avoid using bool structure members because of possible alignment
issues

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
---
 drivers/staging/vboxvideo/vbox_drv.h        | 14 +++++++-------
 drivers/staging/vboxvideo/vboxvideo_guest.h |  2 +-
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vboxvideo/vbox_drv.h b/drivers/staging/vboxvideo/vbox_drv.h
index 594f84272957..7d3e329a6b1c 100644
--- a/drivers/staging/vboxvideo/vbox_drv.h
+++ b/drivers/staging/vboxvideo/vbox_drv.h
@@ -81,7 +81,7 @@ struct vbox_private {
 	u8 __iomem *vbva_buffers;
 	struct gen_pool *guest_pool;
 	struct vbva_buf_ctx *vbva_info;
-	bool any_pitch;
+	unsigned int any_pitch:1;
 	u32 num_crtcs;
 	/** Amount of available VRAM, including space used for buffers. */
 	u32 full_vram_size;
@@ -106,7 +106,7 @@ struct vbox_private {
 	 * depending on whether they react to a hot-plug event after the initial
 	 * mode query.
 	 */
-	bool initial_mode_queried;
+	unsigned int initial_mode_queried:1;
 	struct work_struct hotplug_work;
 	u32 input_mapping_width;
 	u32 input_mapping_height;
@@ -114,7 +114,7 @@ struct vbox_private {
 	 * Is user-space using an X.Org-style layout of one large frame-buffer
 	 * encompassing all screen ones or is the fbdev console active?
 	 */
-	bool single_framebuffer;
+	unsigned int single_framebuffer:1;
 	u32 cursor_width;
 	u32 cursor_height;
 	u32 cursor_hot_x;
@@ -139,17 +139,17 @@ struct vbox_connector {
 	struct {
 		u32 width;
 		u32 height;
-		bool disconnected;
+		unsigned int disconnected:1;
 	} mode_hint;
 };
 
 struct vbox_crtc {
 	struct drm_crtc base;
-	bool blanked;
-	bool disconnected;
+	unsigned int blanked:1;
+	unsigned int disconnected:1;
 	unsigned int crtc_id;
 	u32 fb_offset;
-	bool cursor_enabled;
+	unsigned int cursor_enabled:1;
 	u32 x_hint;
 	u32 y_hint;
 };
diff --git a/drivers/staging/vboxvideo/vboxvideo_guest.h b/drivers/staging/vboxvideo/vboxvideo_guest.h
index d09da841711a..7a98fb4fb108 100644
--- a/drivers/staging/vboxvideo/vboxvideo_guest.h
+++ b/drivers/staging/vboxvideo/vboxvideo_guest.h
@@ -36,7 +36,7 @@ struct vbva_buf_ctx {
 	/** Length of the buffer in bytes */
 	u32 buffer_length;
 	/** Set if we wrote to the buffer faster than the host could read it */
-	bool buffer_overflow;
+	unsigned int buffer_overflow:1;
 	/** VBVA record that we are currently preparing for the host, or NULL */
 	struct vbva_record *record;
 	/**
-- 
2.19.1


