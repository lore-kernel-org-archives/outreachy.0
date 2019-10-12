X-GM-THRID: 6746979289302827008
X-Received: by 2002:a17:90a:fe04:: with SMTP id ck4mr25008011pjb.90.1570903584199;
        Sat, 12 Oct 2019 11:06:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:690a:: with SMTP id s10ls1022251pgq.8.gmail; Sat, 12 Oct
 2019 11:06:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwfdSPHq4scpuvcpnKG/VdWCch3Ha3cNhWm3C2foqE5rDsNqghDdHyjd9LhDx3JJVzBUBQA
X-Received: by 2002:a62:e807:: with SMTP id c7mr9250594pfi.83.1570903583173;
        Sat, 12 Oct 2019 11:06:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570903583; cv=none;
        d=google.com; s=arc-20160816;
        b=fv4O8TI1a1Ry000q4twdi21KuMWnHIaXNj8MaySjc+78l1qLx9kyYfJwi1wokE5YHq
         lV+E6tYTVkuSGC8mJlPLufReXC2C31UPAiUjSK/vam+lDRlnJpExIdmVBhfdo4Q3MWaj
         ShCk0HvZIdbXvPBTuElLp1twE/Taik667XVAozX0opGl57dJZF3xynskoIoBE03EUJ3H
         DqXMmzMky1IfKq8n2/M77EM0gN2Df7VIG+RhCP+UpFctLPafqtTk8osVOy9cMeZDSCxQ
         EuaqQ3jlcKD09Y9TOC7p58xJYWgwPNyVAo2VvbYESVf7NNhMTXnDs+B4KfRTXUE4UYZX
         vPuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5j1A1CJrFknhucKXV20++wcqTBT5ww2z/OD9tkaD26o=;
        b=SXyicEMH0n16o7XtyjfK9edlM2A1azY+00obmlSlsjdKrUs8FcBLnJzrZz3secGKLC
         UkcUoZzpnvtZq0gXjAVVz/sVgrJ+9iN9AsIw+qJ/MSwnXrDnkXs+TobdjjEodvlHxiJf
         yXuIhKyRLAxHK16N8I7uiMrIOk+fJJW3J09N9/bIsr+SswF9mgI58htg+t78scZN3iXQ
         Bva6Sicu21jCWwdAvEDkG5+Qh84N9AXekNwlyzTy15qhASoRDRmomaq1rvxcO/9HAK1w
         WDZ1WDRnAU2wLaYMoKpm/V2pa4/23sgM23OiOHjTJqGxurUyYBbWnKNDpEroq2sP9BIZ
         6dMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SaZNIuiD;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id fh7si541373pjb.0.2019.10.12.11.06.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 11:06:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SaZNIuiD;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id q10so7995879pfl.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 11:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5j1A1CJrFknhucKXV20++wcqTBT5ww2z/OD9tkaD26o=;
        b=SaZNIuiDrKEnNoZYIo7lCHmujsACa2amAfuBhsTaGm7KVwYD3hUK40BRG+dmaeJtBI
         S5rHTr9oMIdsF2VoFMgaHWbNUgA4Ua4PWwkIzbWW9qWJoIDO0hNgUDUs00Ckah8WBfFc
         N/fa8bMtUsG+QcmliDMGU64r+7v1NXMQIXkKYxzPB40JPv3OHt4rJT91zXz4H6CwjaLT
         ZiL6Qq8TtnZJqy3/gkG3WwApo2EbVenrufjKeBq3H5SNbk0RFVgGM9T2E35Odc2YSL3Z
         VhNvT010sCWmWdbFtVp/XOILfp0a6ouMb57lDfh/xQjZEUTE9dzOhVxgJpPJ7o0/cIj6
         ksCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5j1A1CJrFknhucKXV20++wcqTBT5ww2z/OD9tkaD26o=;
        b=it+viLw2vXYNPr975qwp5/Fu3CFb8oapkPpk4RtXno3Cq3MtfFRdLU0Jg/WRrb/4tF
         RV/eR48OIJut3d2VaCTvX07wL21/xkE7cY3ylwtB1bEtuv9VTK9MxkKjbQuI4qdAV4Sc
         J5Q5ZR/0+Gdj2MmdzR3AV1xlVcejV2Y3HA+xgrlnBg7iIGLRuCcUOLGprgazhGmIcLCf
         ivKgfmSPcCT/o6DlTBt6iRswQRgiDiLNoldVFIFvSZOjmDuhNZPphLmIDBkUeNCbQore
         oX4He1+3J+YFyDAQlvYCp7c0O75NdsLx7Sfq7jFYrDkQS0CkE5d7ZL2V0g8OuMpT/+d2
         0XBA==
X-Gm-Message-State: APjAAAXx0AbKNqXrQsBvkobiXC30PmwEE36Q7kiCCXcwDEMYFF0RNPFC
	AbEClfgrA4StMOox3io9IVfkDBk6ZfA5MQ==
X-Received: by 2002:a17:90a:a411:: with SMTP id y17mr25941035pjp.116.1570903582596;
        Sat, 12 Oct 2019 11:06:22 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id p17sm12183475pfn.50.2019.10.12.11.06.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 11:06:22 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v2 5/5] staging: octeon: remove typedef declaration for cvmx_fau_op_size
Date: Sat, 12 Oct 2019 21:04:35 +0300
Message-Id: <0130bbbffd4c3c9e0e2ab0fc02cb7fa704ee410c.1570821661.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570821661.git.wambui.karugax@gmail.com>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove addition of new typedef for enum cvmx_fau_op_size.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index db2d6f64b666..1b72f02a361f 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -205,12 +205,12 @@ enum cvmx_fau_reg_32 {
 	CVMX_FAU_REG_32_START	= 0,
 };
 
-typedef enum {
+enum cvmx_fau_op_size {
 	CVMX_FAU_OP_SIZE_8 = 0,
 	CVMX_FAU_OP_SIZE_16 = 1,
 	CVMX_FAU_OP_SIZE_32 = 2,
 	CVMX_FAU_OP_SIZE_64 = 3
-} cvmx_fau_op_size_t;
+};
 
 typedef enum {
 	CVMX_SPI_MODE_UNKNOWN = 0,
-- 
2.23.0


