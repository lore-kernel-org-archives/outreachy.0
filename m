X-GM-THRID: 6889251434120871936
X-Received: by 2002:aca:5883:: with SMTP id m125mr265800oib.21.1604028845532;
        Thu, 29 Oct 2020 20:34:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:5e41:: with SMTP id h62ls331598oob.4.gmail; Thu, 29 Oct
 2020 20:34:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzc1WSb/x4R/Ld0jl0z/ip9yL88taoSsYD4SP7mI7MujyJ5jp2O7aunaWxcE6taxRc86E9b
X-Received: by 2002:a4a:c54:: with SMTP id n20mr229516ooe.66.1604028844288;
        Thu, 29 Oct 2020 20:34:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604028844; cv=none;
        d=google.com; s=arc-20160816;
        b=dLwn1ykXjGfjSokml3Jx5ICDBC+XoEPwqlgrS8u/NECt3zwPdJbhd9SvIkpQjEalI3
         FiiqPEJDpCMnkFiV0ghogm7Haf4UkVJeejnuq92MoNYgB6sf2+1U2nhKqWp+kvVh4aZM
         eK3DdtvxgqXwmRloiahVgiJpkGv5/vgjFJ5wO8s25u+fwvGSvNuxjRSdXN/FO24HrTPg
         lDDe9unkQL7vVRI5wKDaQPomAuYio4D5g9rcJP27oCfJAcyon2CvnkPJH9+ec4SerJUO
         OCMfjNz1FsQlxXGPXyK+5QAtvFzjvxbHWpSWFaBl2VJ0rLWsZFOxst8mTCR0cWBzFEI7
         jhlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=0dmV/CR2ixHQrxpfc1u4wESPQI/4+pG75mm91eKFO/I=;
        b=TjhbIOXj4cYkAAem01QjI4gnYWr/pckS6rxZUcV8pXGUDFOhRYa5mJJCCZh1vfBjx4
         fZRij6+yN8d95eixBzqF9T/RZ2MKYnJx9OBRSCwFIJOMGhxmxg0YKXi5bNfBlJubPJmk
         ON0HolhGnSsJW4YRjEOx4SigoglRd6MSfxNoOIPX4dJd+OtbX1FFhMdh9SEg0OAAg2/1
         faAEu65xm0v+lukvLlKx8GlNF9LstNwD2deTVuberjDDc0Farawps0/Lwetyv+iG4YEY
         yAzDxwaSHEufMqkoCrGDqW13XNOlPQMyR/+ciJeC5iRXbjFrCzRQFG93fFbvHOyyjhr7
         uHSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cGHq059j;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v11si330051oiv.0.2020.10.29.20.34.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 20:34:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cGHq059j;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id h6so4049338pgk.4
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 20:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=0dmV/CR2ixHQrxpfc1u4wESPQI/4+pG75mm91eKFO/I=;
        b=cGHq059jOI/OKifCzdFXyVg+UBZQHuv/ZQ2se7LpOBjz9fKNLXGdVF8hhSX10jzUFl
         trKUJ3ukZIF0xbFq8ydvkaiDgQHrxpVyKOjzYlvGHmJMtWJ1bvPkMNvlwAu/x+P8w8Ao
         RUs7HLtG/Xw736RQRnqTD6ygZyxTkjS2DScxRQz5H2x2Dz4op/hOenaz2bRTZMabYYTf
         iN/VmACa0OmHa3+Mt9LqTpM+j4mGBwiMWXStiEX+0/i+JJ68fXVcKi8WYB556GZJylmm
         tHzBBV6n+bKZiHSwQH0jab0Unt1kdesZRk7AvagO8eVt6BHsBVNlh4Hfnx0L/86APmX8
         si2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=0dmV/CR2ixHQrxpfc1u4wESPQI/4+pG75mm91eKFO/I=;
        b=BFNZyLx9W8mMtJmIo4JkJMUojMm69T4Y3ezM5OhL+SUVU5BA+Gu/lmtb75zdbWWk4y
         0tyjBqLO96QlmD2N/sL55KO5BQmYBJQESpSJUYkDRJeoT3F7OryXC4iUvf96CdVWMipI
         S2qGhHelz9G3BLzgkSnhO5tKNbxE7Fcz3PRsQiAqoSOLXsetdlvhie+tH92Nx16CrVOE
         7N47Q54/l7iWhsXTHv/3LniuUFFk1x2bXqGgTXV6p0kI9dM8ZvLeyz3taKRnR+PcXWUF
         5maBM1Rc7HiZzTRbPINjLhAeHnpd1pEgL2nCGH/a9iXA4btH+P/0UFYDfyek0SWz+wiJ
         CR5g==
X-Gm-Message-State: AOAM533CHnuMcDPBtiIxLcY/PP1xs/BERI+3sGhM82/RhBOj09eeO30i
	jRUP1DIYR4eRXUv+E9nf3ZcEttvNd0U=
X-Received: by 2002:a65:688a:: with SMTP id e10mr394514pgt.347.1604028843566;
        Thu, 29 Oct 2020 20:34:03 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.98.79.70])
        by smtp.gmail.com with ESMTPSA id bo16sm1326504pjb.41.2020.10.29.20.34.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 20:34:03 -0700 (PDT)
Date: Fri, 30 Oct 2020 09:03:57 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Vincent Abriou <vincent.abriou@st.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: mh12gx2825@gmail.com, melissa.srw@gmail.com, daniel.vetter@ffwll.ch
Subject: [PATCH] drm/sti: use DEFINE_DEBUGFS_ATTRIBUTE with
 debugfs_create_file_unsafe()
Message-ID: <20201030033357.GA275168@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
function in place of the debugfs_create_file() function will make the
file operation struct "reset" aware of the file's lifetime. Additional
details here: https://lists.archive.carbon60.com/linux/kernel/2369498

Issue reported by Coccinelle script:
scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Please Note: This is a Outreachy project task patch.

 drivers/gpu/drm/sti/sti_drv.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/sti/sti_drv.c b/drivers/gpu/drm/sti/sti_drv.c
index 3f54efa36098..18c6639e4dbf 100644
--- a/drivers/gpu/drm/sti/sti_drv.c
+++ b/drivers/gpu/drm/sti/sti_drv.c
@@ -68,8 +68,8 @@ static int sti_drm_fps_set(void *data, u64 val)
 	return 0;
 }
 
-DEFINE_SIMPLE_ATTRIBUTE(sti_drm_fps_fops,
-			sti_drm_fps_get, sti_drm_fps_set, "%llu\n");
+DEFINE_DEBUGFS_ATTRIBUTE(sti_drm_fps_fops, sti_drm_fps_get,
+			 sti_drm_fps_set, "%llu\n");
 
 static int sti_drm_fps_dbg_show(struct seq_file *s, void *data)
 {
@@ -98,8 +98,8 @@ static void sti_drm_dbg_init(struct drm_minor *minor)
 				 ARRAY_SIZE(sti_drm_dbg_list),
 				 minor->debugfs_root, minor);
 
-	debugfs_create_file("fps_show", S_IRUGO | S_IWUSR, minor->debugfs_root,
-			    minor->dev, &sti_drm_fps_fops);
+	debugfs_create_file_unsafe("fps_show", S_IRUGO | S_IWUSR, minor->debugfs_root,
+				   minor->dev, &sti_drm_fps_fops);
 
 	DRM_INFO("%s: debugfs installed\n", DRIVER_NAME);
 }
-- 
2.25.1


