X-GM-THRID: 6889250886437044224
X-Received: by 2002:a17:90a:aa15:: with SMTP id k21mr319740pjq.169.1604028718556;
        Thu, 29 Oct 2020 20:31:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b093:: with SMTP id p19ls2219506plr.2.gmail; Thu, 29
 Oct 2020 20:31:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyGWb78NCDp5mvyS+x9yw2MdhCDdS06z9cON85ZKiQdt4gh5iYYGAsoXiE+qT83sb66yaDU
X-Received: by 2002:a17:902:8a8a:b029:d5:ab9e:1d5d with SMTP id p10-20020a1709028a8ab02900d5ab9e1d5dmr7057246plo.32.1604028716979;
        Thu, 29 Oct 2020 20:31:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604028716; cv=none;
        d=google.com; s=arc-20160816;
        b=U6ipDaU9c5PMX+GoB8KoLJ5YpwGKM18dWLdDh3wLudhX7s9ChXyzs54XogldxR6cTW
         McEWQpANESA3qm3uHqC7P7VK2PcS/ul1g0hfRSVOWoNekiqe1+NXev5KaKrRza5hPWNd
         MTM+4WppK6UZLcAETPBSvuXXx5FQLu3fjqvS4s3Z1/mnWsW0ZrD2fyvO9Sr7JTEJBSqm
         /Ko1+qn0lqNCNfkw4+GWOBrK/6fmPZA2diOfzur1W2Wos7ESUEV2iMuSVE5oP0YBj4Sk
         ynBdS5XXuugMk1c1EDIpuqn3DjOoR2Pw2RRVXEQH5d1jLNFOdY0W7jimIC8PMzB8YJ0A
         UTzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=/T4zGmBDffm929p//CkvLaNebm6nyFAD9zUf2m9Khc4=;
        b=nilWPi3bWMQNDEHrfhtm4W1ZMvJRgK8hTT5IYy70EshvXIju5rz2WzJ06lWhvXcWIV
         i4pTSGu+rYkDbkuMV9aDltF0KeAm+H15CmFSzNWcIBGYy+sIA1JzzeHjIRMy+Hk4GgUQ
         Gx1mbFEGKHCgPSRIfZcatbrSd1CpnEed+cimc9AngWrTvib1xdRxU6Ux+KYU8rzT1ECh
         RrjHdgnYT8tWOT5QaTlYQq0UDgveHI72oKAMrB/29qUP1CoiagPvnuzHJV7fMEn76rPp
         xPULASgPk1RhEUCJr7EiTiSf3jydqspdihEhBspvtfYVviY7sIm4PUk220oJzSxe7J5k
         j1bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X1UWJ4sP;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t13si305927ply.2.2020.10.29.20.31.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 20:31:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X1UWJ4sP;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id r10so4029983pgb.10
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 20:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=/T4zGmBDffm929p//CkvLaNebm6nyFAD9zUf2m9Khc4=;
        b=X1UWJ4sPXdTWBIvP+F+d5R4n1cI/VqlbKPsD5DFU8zgNOzIuU0AC9ZGBu9xoK1nvc9
         nLQpLTzbDXu6GLCZo8rs9F21QC1I/ouTPmpeh9aZRrsPJmQsdSz1mmWiVUDlJ2pxCFBQ
         HsUC+ecXEg0DEsWwh1r1i7yZZrhGSZ3sVXc+21L8sIz1N0MiX+FBnYm9qRkgAol30CU9
         gRgT+nzRfWjSCo4tfKtNOWkwE+WpXvnFmyjFz6L8aXVDOX+8DriE1vxyPtxNOs1NbTPq
         K6vUU6cObxxoRI09vmq3cdOPXcYnXPouUZzw9wcZwy++N2E4Sx1IY1REOHmCj4ER+4Yt
         K3Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=/T4zGmBDffm929p//CkvLaNebm6nyFAD9zUf2m9Khc4=;
        b=WJhzpUIgmeNjawOx58bwrsY+ifr+KvEl6p4f1k4ld3C6QQAJ1d3muM7OJIrCIR/Cfl
         HDG9KmkNnZcE7UUDWr+qBhP8+CWZ57dme/GmAhJJA+GSEn1JnlbJmA4l9ZKiyr8daevE
         ZFTVijeGZ+uC5zoCBU+q1Il8Sw+n3xxBghyy9fAYkqfhCHBsvgoJrAmBHy0hcA+oGQG1
         d8iV7xePFMstybxMeoj8V1u2q319Ep74uqLTgpeYJncIcnxNt93BfnwVkojQHFMY0BUV
         aFPC7IrNMzyC91os97gf2p91yPP7KdZfjggncRm2GczmFfnPjFfvhPx/LiSUXcXeo0H1
         gHoQ==
X-Gm-Message-State: AOAM533vlpICFXpZWoOgAHx6U9/HVikiXaJDesnWVy4aZfaZb9p4usF4
	MjKvowbyirxV2ignEZ82HVbopgJKMN4=
X-Received: by 2002:a17:90a:ba8d:: with SMTP id t13mr376040pjr.38.1604028716631;
        Thu, 29 Oct 2020 20:31:56 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.98.79.70])
        by smtp.gmail.com with ESMTPSA id b17sm3932152pgb.94.2020.10.29.20.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 20:31:56 -0700 (PDT)
Date: Fri, 30 Oct 2020 09:01:50 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
	Purism Kernel Team <kernel@puri.sm>,
	Ondrej Jirman <megous@megous.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Cc: mh12gx2825@gmail.com, melissa.srw@gmail.com, daniel.vetter@ffwll.ch
Subject: [PATCH] drm/panel: st7703: use DEFINE_DEBUGFS_ATTRIBUTE with
 debugfs_create_file_unsafe()
Message-ID: <20201030033150.GA275009@my--box>
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

 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index c22e7c49e077..89b71d4f810d 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -502,15 +502,14 @@ static int allpixelson_set(void *data, u64 val)
 	return 0;
 }
 
-DEFINE_SIMPLE_ATTRIBUTE(allpixelson_fops, NULL,
-			allpixelson_set, "%llu\n");
+DEFINE_DEBUGFS_ATTRIBUTE(allpixelson_fops, NULL, allpixelson_set, "%llu\n");
 
 static void st7703_debugfs_init(struct st7703 *ctx)
 {
 	ctx->debugfs = debugfs_create_dir(DRV_NAME, NULL);
 
-	debugfs_create_file("allpixelson", 0600, ctx->debugfs, ctx,
-			    &allpixelson_fops);
+	debugfs_create_file_unsafe("allpixelson", 0600, ctx->debugfs, ctx,
+				   &allpixelson_fops);
 }
 
 static void st7703_debugfs_remove(struct st7703 *ctx)
-- 
2.25.1


