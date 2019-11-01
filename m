X-GM-THRID: 6754207479593172992
X-Received: by 2002:a9d:2261:: with SMTP id o88mr7064758ota.56.1572586509376;
        Thu, 31 Oct 2019 22:35:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:740e:: with SMTP id n14ls1311534otk.10.gmail; Thu, 31
 Oct 2019 22:35:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzykt3/tYko9HMYP43mosl0SJGuAsJn81DJcXQeSbxmBcWrGIIpQYWKCZd7989F00KBPiXO
X-Received: by 2002:a05:6830:1293:: with SMTP id z19mr7342869otp.222.1572586507955;
        Thu, 31 Oct 2019 22:35:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572586507; cv=none;
        d=google.com; s=arc-20160816;
        b=g2GHmlfSUK47g0KD38zR3q7XIBaEPwoaK4a015g/+LqeV1pcewicGRwI++yyho1nz9
         1VLAS0fCWVJqqNQxDFHyCkeu7ynYpWsR7PKmLV8tZ6Cne2BYu4uVYpFXMxV3xHKEI7rx
         962bIAFYP+G1KJkKdzyfLHnSQHAj0MUKKq1k0wtkX56MFzG05FyjnWTCKf99OLm9VZgw
         wJY5/r4PPJoIF5I7Jiv8x9OXHW/NfjWAyAf7KuBnqPAaJvj+CS+O31F1iIkWpLagwWoy
         uARdm0thWALGXtBOHuMBKlgJPXn2XGZwuYxXO3Iv5yCYqedX9BiCUQbFOJtP0Ao3AVCh
         ouPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hy2ncqqEenhNqXiFbrWH36EWB8leJtFEe/ei55C0YNY=;
        b=iYBx4TuwRNLq3bEFcb+S15WwKoKK62CwUy6uR5rr6++hmZuzdzaFzNsRzVzu0/ZADy
         savqUx2hLqvS3sp2ahB1na4wgIN/BJbAmbmSnEgDNoApnqw/c6Ot5OrPuL3q0XFvxji+
         3d9mNpNeqVRPanWP+/tLzfZfoexe/+L/yzDpta8Ehyr2MsPC7MTeyBWaui3CN7bjvqic
         lQk6y+6jLRtH5OlSByf0Lc4SNXC7Gcsdk4RnP6fiH3g9UEWPHpUf03qZzjFNi9sJGD8I
         pACCYse0vmJ7ClcNWABWpQIQMdLpKGo/26c8E8BE+q8mOcrg5uMr0BPSOx71SnoWgHhR
         BKdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=UCijWBzO;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com. [2607:f8b0:4864:20::a43])
        by gmr-mx.google.com with ESMTPS id j19si487679oij.5.2019.10.31.22.35.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 22:35:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a43 as permitted sender) client-ip=2607:f8b0:4864:20::a43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=UCijWBzO;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk1-xa43.google.com with SMTP id r85so1947945vke.3
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 22:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hy2ncqqEenhNqXiFbrWH36EWB8leJtFEe/ei55C0YNY=;
        b=UCijWBzO+nYfEgs3qV/VDjtU8/+KBbbRIiwu6DGOVTKLdPgPLMrhPaLNrnEccAPhqR
         alADzcA6oRj2RnXw6YZ+iWCihP/KeYG6ti+3jghGogKfOySSc7hhGKBel+FA8EWngr5l
         z8dj4EllDa4te9DdZyemnU8hAbNPWkZ0e8NSFGipMQeZdAmuobBgdSgKcTi108DGD0+Q
         RW7hsSyZKVwn9hXc+SwWgmTVqgUT+fWzdHD0+vOO1ULn4i1F9kHwnKMVmzbBeXOZtZgh
         1O8Qh1cuturJ0IQzA1v7dM5Wi39lqCEq5aKvayJsHYL5FsGYTGxlBZ1S8BnpGl6I38IE
         QUEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hy2ncqqEenhNqXiFbrWH36EWB8leJtFEe/ei55C0YNY=;
        b=N3I2LjK5Phz1EqssXOM1mAseEKq0c28pxh3Wj0EIIq5btqp0SIBzdmIch5kqU9ZJWc
         RbSyTFDDURMcj9ii0p5pZSV49K2wTadleIOlqAO7a8CVsH0ZGNQLJqIDW2ybcXT1rDkw
         poSOdIxSJRvkjHkPvcmwB22edqp5h5W9+HCC1Qm/pFn+eRwN0c/GBqF0TwyZFb54inqb
         TXrr9t5Be9Wb83ZWzxk779qxaHYCgi43Z8uNY/G/bDBRCQYjd6sD366WcYq3xEdVFdwd
         X8xQFLdoOlHDcKRwTH245v0e8ikF5R2pdMINAPpDbCZ1m8K2BWOC+AYni2gHnlsZuh7L
         mNzw==
X-Gm-Message-State: APjAAAXiBMlNnyk4a/JB2KAAxtRt8CD2DprcSXn8LFjB6ntdslmNyA3K
	YKSS+MuZTceYwDhqFeFN9xvdmDDAS29fqQWD
X-Received: by 2002:a1f:21ce:: with SMTP id h197mr4450877vkh.84.1572586507018;
        Thu, 31 Oct 2019 22:35:07 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.12])
        by smtp.gmail.com with ESMTPSA id l19sm1604595vso.9.2019.10.31.22.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 22:35:06 -0700 (PDT)
Date: Fri, 1 Nov 2019 05:35:02 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH 1/2] staging: exfat: Fix parameters alignment issues
Message-ID: <314b86b2ed6ef4d12e93bffc14f3eba87203d027.1572586238.git.frank@generalsoftwareinc.com>
References: <cover.1572586238.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572586238.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

checkpatch message:
CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/exfat/exfat_core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index f71235c6a338..8e4df399d91b 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1503,7 +1503,7 @@ void fat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 }
 
 void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-		s32 entry, s32 order, s32 num_entries)
+			    s32 entry, s32 order, s32 num_entries)
 {
 	int i;
 	sector_t sector;
@@ -1919,7 +1919,8 @@ s32 write_whole_entry_set(struct super_block *sb, struct entry_set_cache_t *es)
 
 /* write back some entries in entry set */
 s32 write_partial_entries_in_entry_set(struct super_block *sb,
-	struct entry_set_cache_t *es, struct dentry_t *ep, u32 count)
+				       struct entry_set_cache_t *es,
+				       struct dentry_t *ep, u32 count)
 {
 	s32 ret, byte_offset, off;
 	u32 clu = 0;
-- 
2.17.1


