X-GM-THRID: 6616381756005154816
X-Received: by 2002:a63:4d1e:: with SMTP id a30-v6mr2697227pgb.81.1540580655748;
        Fri, 26 Oct 2018 12:04:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:688a:: with SMTP id d132-v6ls783331pgc.19.gmail; Fri, 26
 Oct 2018 12:04:14 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eirigfIQeNFP5t5xOHV1UioOImg9bfduOdODkg4QOkLwfe6AGN5UZhb0vGmGW4jQIIpjm+
X-Received: by 2002:a62:c6c8:: with SMTP id x69-v6mr2698618pfk.43.1540580654789;
        Fri, 26 Oct 2018 12:04:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540580654; cv=none;
        d=google.com; s=arc-20160816;
        b=EKWyFs30zAKmD/ZnOVrZBfxzUD2RScrAL4L+0pA33ZqGJHwkljsQlKQKWXjZUwoQST
         iGuNPiu0FHewSFdXAANpcpJJUZ8Kw+/MsNsxouA+VLtNik9aLI/MIK9rie/EKVNw3fYh
         34od9q0AVapimlQrAvltBKEt4CNwxe4SgOQLJyCzVNVMXoOGy7+SvjGBEDuibUdyCUBL
         4ywumNQ8KD8RzI0FmGwQ4uynM0g6BugnWGx9KDa4BGVKkHUFSNl8Xict9IbOFrS9/7k4
         X+f5fs2M8Fm9hEfBMXA1lmmVAJnjHjP1vLHr1hgKYbHx9d0AokmHrXEdk0M8UhIy6eU4
         JHGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/T11tt3vJuAf+zMu9ml2T7wwulQeXdHFKE/giNS+b9Y=;
        b=XlZkj79E+CyUiz16G63GLdz43z9tH/VewKmb1YhVtNq6scyzfB3/9nvE26OSiwksBb
         I+kj4p50Jb1Y5tzZ9QNJBJql9usEZ6w7YHCkw5ujIoy/gQ0ajYn+njdu69b+FrbmFRSi
         M+IiDOZt1Rcq7O1hNEdh2u2/NGqW+/x1j8eZ3fzefSpvjpSuVC525fbi/x46BTEBJBWh
         YKvCkF4aUGtpLY0Ixbh4miFTv5qphQQNqLrzsHzE8BgRkM3KLMgg0O/TR9KttWjZE9mP
         Bt19kLSoa+7ki54GEAHIUQto9jwdljqSDAWEJI6h4M6sFvHfMdrwq9Aq0q0JII7rknVD
         vx8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qHDYTRX9;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com. [2607:f8b0:4864:20::832])
        by gmr-mx.google.com with ESMTPS id b27-v6si598954pfj.5.2018.10.26.12.04.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 12:04:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::832 as permitted sender) client-ip=2607:f8b0:4864:20::832;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qHDYTRX9;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::832 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x832.google.com with SMTP id u34-v6so2458946qth.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Oct 2018 12:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/T11tt3vJuAf+zMu9ml2T7wwulQeXdHFKE/giNS+b9Y=;
        b=qHDYTRX96Vz1IhGg0mNqLOp4qg9SAYYotElg05imu/bgVQf7AaXZqCHxT0N9kkxJbQ
         3RIHrqQjZsD4WFOhncd5Rhl2+NKzliCy0/52D+I/KaoN87LmIy5dGruax6w3rRpYNr8G
         8/hndggwVjxaR6dHxp4bpEDywcOsbLh8wcEtQi+2xQ94NdrBWRUbXk0LdxpdW6jmmg6x
         ftneUr9ySdAo51nX1Ix/jqSAWU/iAt+srhLJ6f3CC9exzCYwRA7X1WvrzXgZwUj/Ne6x
         H8dxLZNy+LFo6kfBYJgEY3B40yYhtpz4Yq0WCp6JpjOaOetiEJPlRzVsiL5GQu/3KhAn
         gm0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/T11tt3vJuAf+zMu9ml2T7wwulQeXdHFKE/giNS+b9Y=;
        b=LQt6N7C2oq/jVo8VCyjJmzi/kq2Gy6BKDAsCWaUJzEu2DW1FaF2/NCnW/oxsC3d2OB
         sGDP21JHatU00+aPYpV1rem9p/DVDIvM6ljQTJchYEYDyd73IduVnp5vELszvympbHEV
         dj32Xsw73rwtj37NGuvNusq6ACfrNWaeEw0iKF1KhlKpJWE4Q4lhuLA4MxHFafb9dIxm
         QTAIfc/BW2LWcIlVulrQ5DGCY+8a9jIONdICyvCS6dmkTRiIeIHFuaL6ys0FcwujM3RX
         WQbtR6ejDWSt4bT17qbsikRaq/bV9cAjB8FprAmt+gUiPU/Bf/Rm9AtYc0Y1PLcW2ot1
         4chA==
X-Gm-Message-State: AGRZ1gImtgrcpcyO5KCOuoe23N1U4opVOZE5CDdBUo+ZUnXTHQHN0hzi
	66tpZyJTzkjzrAuW5KuaaDA=
X-Received: by 2002:aed:2166:: with SMTP id 93-v6mr4544406qtc.24.1540580654360;
        Fri, 26 Oct 2018 12:04:14 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id s21-v6sm1825308qkg.79.2018.10.26.12.04.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Oct 2018 12:04:13 -0700 (PDT)
Date: Fri, 26 Oct 2018 16:04:10 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 1/2] staging: vboxvideo: Change uint32_t to u32
Message-ID: <a81ed59de19694f34b5c5d183e06007d6cc50d1f.1540580493.git.shayenneluzmoura@gmail.com>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540580493.git.shayenneluzmoura@gmail.com>
User-Agent: NeoMutt/20171215

This change was suggested by checkpath.pl.

CHECK: Prefer kernel type 'u32' over 'uint32_t'

Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
---
 drivers/staging/vboxvideo/vbox_mode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vboxvideo/vbox_mode.c b/drivers/staging/vboxvideo/vbox_mode.c
index 79836c8fb909..8a1b117990b8 100644
--- a/drivers/staging/vboxvideo/vbox_mode.c
+++ b/drivers/staging/vboxvideo/vbox_mode.c
@@ -311,7 +311,7 @@ static int vbox_crtc_mode_set(struct drm_crtc *crtc,
 static int vbox_crtc_page_flip(struct drm_crtc *crtc,
 			       struct drm_framebuffer *fb,
 			       struct drm_pending_vblank_event *event,
-			       uint32_t page_flip_flags,
+			       u32 page_flip_flags,
 			       struct drm_modeset_acquire_ctx *ctx)
 {
 	struct vbox_private *vbox = crtc->dev->dev_private;
-- 
2.19.1


