X-GM-THRID: 6951120130932736000
X-Received: by 2002:a9d:1ec3:: with SMTP id n61mr219576otn.69.1618506503555;
        Thu, 15 Apr 2021 10:08:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5c5:: with SMTP id 188ls1474039oif.6.gmail; Thu, 15 Apr
 2021 10:08:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJysRI1EXTaR5CFKnCfVM8XryqgKJtw5G1wZX/BAkUXuj4fYzybjRPbLBHcq/MxeIKuFNNpO
X-Received: by 2002:aca:408b:: with SMTP id n133mr200031oia.13.1618506502874;
        Thu, 15 Apr 2021 10:08:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618506502; cv=none;
        d=google.com; s=arc-20160816;
        b=p7TaxZikWWNAOPi0X+XCoX/ko59d+DWTyEXVD1DFsJJ5eXFWL1i9/EuKPPaYO2M3Qn
         YqGXwXD5S0cjJRTDMd7IZcj/kyiaXCkFBW0fPEdtONVQzmhCur9LXpRSkUy1quKx32DD
         W2QfR/jZ/HbbV+VrSb4ITKZBbTosObRLNzDjYMaE4WC/yVDGP8vtWl+7G4vh5PNhlOY2
         nRnuGT4ixMo5eg9n2J4eQH+8DP6txrLVWqSCRS20gzRsIKcTyQNIY5jiRZZfWVz3zSqQ
         M+2H7iZB2lDJd1ioYA4onWdHQ7BK/Dq0oa68UvL4gtuqh4WFfGP/igwktONNweBP73xL
         StEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=uf0ZGB2uqUBLy2FnRQ3C5Lz7GzWpWAMQjMxZozUcp5k=;
        b=jqDqBCotPLVz1H+a+GqAzmrRgbHQBW15nsu1YFFypa5TYwMZwmhfAIz1zB2d8pqZ0h
         1gOY6Ec1Caa3RWm8Oi/XywDfwebYoUVSsmW55cizRHtGYXo+LiQBvfIjoJCsXuqVgjxB
         0bvgsKoimQQYDIYtf6iH2iv6mvn28TUkSx/85zLf1t/PzkBrgFtxSTC1VoXaCs1ETYVb
         RpiV6GjhxKHgJUezP3CL+AHz2awUkQp8r0Gx5+WhlhBTKAB1BiJzFuy7d+ChQ9HnzZa5
         ZuCuidU9SYy9l45vTgKDImorqTdYYMEkVgZM+HOrx6YMmMWhfj6Rzj4E2R7gV+rhMuso
         qFZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bCFCUHYU;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id p9si231898oib.2.2021.04.15.10.08.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 10:08:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bCFCUHYU;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82c.google.com with SMTP id y12so18728729qtx.11
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 10:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uf0ZGB2uqUBLy2FnRQ3C5Lz7GzWpWAMQjMxZozUcp5k=;
        b=bCFCUHYUlz/cSCkhPoAYlnGHW0yxm8SgH5bZ5/zjQtgK7Kxi38yQcZrE45PiIq9++i
         xLpAMGedcKXZ/+0ypaMlt++xi274dslp6FLpKeAWMyg87OSpAm4DK3YCa9xLgXkDNj5q
         p+DzbHChR/QXglUAbTI5KDmu+Njim/jkpMOGYGkNuN/A03NemlZHcW0+jerzkCkBfwJC
         ymtkwf/UazsBelMfqPl49R2CBpvooC9426pVHPnN8qnvWkpew0xt7mQY4dSeYGy1R+w9
         EDFLtq73zm/SdAdNPmrN7vZTv7a9RCSENBJ0KgKAOwesML6nk6fFTzfY7+fzTj1l1QSY
         exFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uf0ZGB2uqUBLy2FnRQ3C5Lz7GzWpWAMQjMxZozUcp5k=;
        b=tnihW+LzXtUZjt7yM2yQTRSSLfJtO3Kv8Zdgl53t+XLK/gPHT/hHeGX/FVOQfMeV9X
         el4wEfT+UbLCHIjfDcz27D2E3bJnQZhd8yKL2CdmJm0yiv+PrLjF/jgyL+MYRBIH2gyg
         yxe+AbBZZrm+nKEXvPPhI5mWWDKgPVj6W39MjObyd6WEAYGZlOLN0XnEx+8MLlPdl7ef
         fCJSLmNkCP46kXkiUv3mIYdH76M6gXgNY758gz3/8Kv5AYeS66Andl3Vlm8h2pcRYA4t
         KFDIjx0Gt78EueZ4jkHVQ08ullnWUuWb/jabK44zgauU6/aLZGXXgSgaTbuf4UOJira1
         ZxPw==
X-Gm-Message-State: AOAM530uA3hq6lm0gMKUrH98emfMG92vJErIlc6pU4gwTyOjbCsyXPgv
	2xB9VxC2jb9eaiT1ddEyidMhZyOCXwr3EH/u
X-Received: by 2002:ac8:7dc5:: with SMTP id c5mr3948348qte.270.1618506502022;
        Thu, 15 Apr 2021 10:08:22 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([138.204.24.234])
        by smtp.gmail.com with ESMTPSA id d10sm2022151qtn.34.2021.04.15.10.08.21
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 15 Apr 2021 10:08:21 -0700 (PDT)
Date: Thu, 15 Apr 2021 14:08:19 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: media: atomisp: pci: Change line break to avoid
 an open parenthesis at the end of the line
Message-ID: <20210415170819.GA17534@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Change line break to avoid an open parenthesis at the end of the line.
It consequently removed spaces at the start of the subsequent line.
Both issues detected by checkpatch.pl.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---

Changes since v1:
 - Keep the * with the function return type 
   instead of left it with the function name

 drivers/staging/media/atomisp/pci/atomisp_cmd.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.h b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
index 1c0d464..e2b36fa 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
@@ -75,8 +75,8 @@ void atomisp_wdt(struct timer_list *t);
 void atomisp_setup_flash(struct atomisp_sub_device *asd);
 irqreturn_t atomisp_isr(int irq, void *dev);
 irqreturn_t atomisp_isr_thread(int irq, void *isp_ptr);
-const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
-    u32 mbus_code);
+const struct atomisp_format_bridge*
+get_atomisp_format_bridge_from_mbus(u32 mbus_code);
 bool atomisp_is_mbuscode_raw(uint32_t code);
 int atomisp_get_frame_pgnr(struct atomisp_device *isp,
 			   const struct ia_css_frame *frame, u32 *p_pgnr);
@@ -381,9 +381,9 @@ enum mipi_port_id __get_mipi_port(struct atomisp_device *isp,
 
 bool atomisp_is_vf_pipe(struct atomisp_video_pipe *pipe);
 
-void atomisp_apply_css_parameters(
-    struct atomisp_sub_device *asd,
-    struct atomisp_css_params *css_param);
+void atomisp_apply_css_parameters(struct atomisp_sub_device *asd,
+				  struct atomisp_css_params *css_param);
+
 void atomisp_free_css_parameters(struct atomisp_css_params *css_param);
 
 void atomisp_handle_parameter_and_buffer(struct atomisp_video_pipe *pipe);
-- 
2.7.4


