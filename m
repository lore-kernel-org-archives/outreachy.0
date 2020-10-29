X-GM-THRID: 6889119685603753984
X-Received: by 2002:a05:6a00:2cf:b029:160:c0c:a95c with SMTP id b15-20020a056a0002cfb02901600c0ca95cmr5539622pft.76.1603998170215;
        Thu, 29 Oct 2020 12:02:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7809:: with SMTP id p9ls1664789pll.7.gmail; Thu, 29
 Oct 2020 12:02:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwiGFo7G4FYBsap6gV43gmUtGUfMleB6SnsxGbPWJ4nCHzoFLPNW+oQmfmbUkAIYsXZzxff
X-Received: by 2002:a17:902:7b91:b029:d4:da66:ef6e with SMTP id w17-20020a1709027b91b02900d4da66ef6emr5391732pll.10.1603998168585;
        Thu, 29 Oct 2020 12:02:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603998168; cv=none;
        d=google.com; s=arc-20160816;
        b=cONVY5iKA26lADnv9sqVOLm+RA0IyX05fvPWyhGltIRu5jf7WueKylo4gMeIYP1w9G
         gl8zqs4y8DzWITRTlyp0Cc3cUyxBIVwj1MVYq4Dq315wwj8RMxLqf+0Wt6JhoJE/x4ck
         esAauyI9kNZQilXx9hjSZFWR0GaZ8xbXN6hYkRaIyyb3E8EYiL/PDWIlrDZJyfl79Xjm
         bFefIA775yHZgkLFC/tDDQYIjf0Q3+qQDdExv4CpONWm9MKONIqITbIzT8RCh2VCHVXr
         H1D37I004lr3DlkBaxZCBb1SAGMdydZ025N0K7cwVwe/THWJ0E44cG2TbjlyuxR9dFcm
         Jm6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=azmT/G24N8TE/tNqTJcXP4u4R0G+FAx2JFXhfXQuMug=;
        b=heN0rtYeTLOwAM8GINXA/J8PazZlR4XOOZ4XrsQ+LJHds8QKjvpytuZ7dyAH5sJecr
         3VsdjcC5T9AkAzPnfSF68WJepMSW/Gxx/Ryzrt5JAfTbUsedSyd3u8oWKyPv3cJxwiad
         qbjEuyVpaK+2W85Vl+Kt7kpgzkX/adBOHyBlrd+slM80y/213gvt0ZyRud8bGXvtuu3S
         CsWzAwolRLGQXno0tUKy93OS4r/66qPFExFU/uql7tVA2OyowrODGG4pT5Gn1L15lt/A
         /mNvgGK3pCoE+n+11g5ZrHaQJTzMGlqEyjlUbF1hb/+YwFjkB8Z6Do222n2VqrSa5dke
         gtog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MFzmyii/";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m62si324131pgm.2.2020.10.29.12.02.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:02:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MFzmyii/";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id r186so3142033pgr.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 12:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=azmT/G24N8TE/tNqTJcXP4u4R0G+FAx2JFXhfXQuMug=;
        b=MFzmyii/YJeRHKCIqFT/YTLhoiu2BinAEhntzjpS0mqt8LswpzA/CFS2KeuOEv0HGK
         j2kWo8RJcKrKSy9nuG9J3NMPHBqdopefT/QJVs5GD1Kv/0lBbUXzLNxmXAy4zVkD1MIN
         C7eRRuc5W5q+khDk26AsTcgo6t81c/3Bga+gwjYlIJF+qXbzuQmp7zKmJiuwmISf1/sz
         vufi+QuFE79Mi9ObCs67utwW3qT3kmJjiUiGkaflT9N+c7AXQydioHOMQdPBQPdtGNQG
         SSxWYFcXMcRJs+Y2j1QSkzGMl/OwBF3VlfvhPIJvhSGaO7mO84hQQWSxxf8BQLM5WAkk
         bNnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=azmT/G24N8TE/tNqTJcXP4u4R0G+FAx2JFXhfXQuMug=;
        b=ntCW4y/pxRVqWq5lmHjnc9BFxkykWIrYBJCRETlIzKHjCUYZuUC3cY6uXkgWy3la4r
         54GDNwGOvlnoBdCaCdVlnQ77iK0vK897jj7UBNog+PApQ7+ZKg3zlfoJzi2dKlEMiHXo
         vQkVjHb223Z1zjBxTbwMX+kv2ofdpSJ+nbynT3TPW4sccIbGjY7iFGKXai9LS6+IMjsi
         kja3hPA7POtS31/NHxsmG55dOocMWqxObWykU4Qu80vU8WjFwXODxJcne7/NPrnz/DAL
         8PX/Wv0Ot1TDRNy6cB/jg8jwz9J2QtpM75H+4YPcNptUOO5DSc0ntyG6e6PUC1/Th2gb
         5a9Q==
X-Gm-Message-State: AOAM5338VhFNjn9OIIRzmerQOvevHnOPIicqpQ+H7K4q7Bc599xsuYe+
	gzXT7kB8pWN7ySuc354icwo=
X-Received: by 2002:a62:6496:0:b029:155:b152:f0cf with SMTP id y144-20020a6264960000b0290155b152f0cfmr5910952pfb.75.1603998168350;
        Thu, 29 Oct 2020 12:02:48 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.98.79.70])
        by smtp.gmail.com with ESMTPSA id i123sm3680527pfc.13.2020.10.29.12.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 12:02:47 -0700 (PDT)
Date: Fri, 30 Oct 2020 00:32:41 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: mh12gx2825@gmail.com
Subject: [PATCH 1/2] drm: msm: adreno: use DEFINE_DEBUGFS_ATTRIBUTE with
 debugfs_create_file_unsafe()
Message-ID: <9ca2c2e4cbd9ebb282b90f742305fd9b481aacc2.1603998014.git.mh12gx2825@gmail.com>
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
Please Note: This is project task specific patch.

 drivers/gpu/drm/msm/adreno/a5xx_debugfs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c b/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c
index fc2c905b6c9e..ffe1fb9be155 100644
--- a/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c
+++ b/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c
@@ -138,7 +138,7 @@ reset_set(void *data, u64 val)
 	return 0;
 }
 
-DEFINE_SIMPLE_ATTRIBUTE(reset_fops, NULL, reset_set, "%llx\n");
+DEFINE_DEBUGFS_ATTRIBUTE(reset_fops, NULL, reset_set, "%llx\n");
 
 
 void a5xx_debugfs_init(struct msm_gpu *gpu, struct drm_minor *minor)
@@ -154,6 +154,6 @@ void a5xx_debugfs_init(struct msm_gpu *gpu, struct drm_minor *minor)
 				 ARRAY_SIZE(a5xx_debugfs_list),
 				 minor->debugfs_root, minor);
 
-	debugfs_create_file("reset", S_IWUGO, minor->debugfs_root, dev,
-			    &reset_fops);
+	debugfs_create_file_unsafe("reset", S_IWUGO, minor->debugfs_root, dev,
+				&reset_fops);
 }
-- 
2.25.1


