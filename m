X-GM-THRID: 6951120130932736000
X-Received: by 2002:a62:f249:0:b029:249:acb4:98b6 with SMTP id y9-20020a62f2490000b0290249acb498b6mr21873861pfl.55.1618433774549;
        Wed, 14 Apr 2021 13:56:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8e19:: with SMTP id c25ls1327733pfr.6.gmail; Wed, 14 Apr
 2021 13:56:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxVyFsgQGpALe7pTLXhhyzrpuuYSLf63nE24xxnqThMgloO95xFSA/l5PCVsfEvN1R1Dt0N
X-Received: by 2002:aa7:91d1:0:b029:1fe:2a02:73b9 with SMTP id z17-20020aa791d10000b02901fe2a0273b9mr18511pfa.2.1618433773241;
        Wed, 14 Apr 2021 13:56:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618433773; cv=none;
        d=google.com; s=arc-20160816;
        b=zWIadmprHfRFxULmrPsoyk4KLQGkBv2DhBQrQHETDiS5Tti4vHS8r8XvzRfSvEC4ke
         6xx+Ra7X4sBNa0z0ZolAFwF6cEgpyYhtj3PccWiGV2suzKlP2KBWTkvAoh+RXWtA4ZIa
         WxGXF2pypzwy66YyI9GXvhBuOqzLIUIYj0McNqD2jQatiEGJ2mapI+gXwxVITfz5pX4H
         EkKn6Wo3QxQTQG4zIuju+Z9K97F5negMH9TuwRIZfUl+95TehaeMclneLvNi74TlqtuR
         wadTsiP77TASIw6Z1acHEw1RsYKylPAF6dONxq+CJsapcTRRSw89EV37VrZo501lcBx8
         Bpqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=bmptYvWdWIOPCd1RN15wApNIIZ5dgXHAl1pedQA7xlU=;
        b=eZp1JPIP38QF8s9ATxorE2bKgvO8jf3QuMQcWoL00gf7o1C397HuMoaDmp/Q0oacKw
         nSWWAzTYyRHgfuZ6FW/y28tr4Gne4cmGkn0CO7b0j4nRxTMjBXqc99m1YBcj6r9uTz0I
         Xhs2QlUkZxVqHdSazXq3PGL6xWF80CuwqnukwXC+LOOdF2ckyaW6T1+K/uXgmLVzDD69
         DCR+nG27mMGOyc2QZrdwTz7+J91Pj0Uw/ah5aY0fYkh80oDe5WJ2ebiVZsNemFBQqitd
         qE1MpTHA6zCfT7cJdviyg7lvh6sOZb32eQJoDpNb/zcUD33qakF//pbtDD0X+5qNEpZa
         G8iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QPoJag9y;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com. [2607:f8b0:4864:20::732])
        by gmr-mx.google.com with ESMTPS id u21si49857pfc.0.2021.04.14.13.56.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 13:56:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) client-ip=2607:f8b0:4864:20::732;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QPoJag9y;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x732.google.com with SMTP id f19so5288206qka.8
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 13:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bmptYvWdWIOPCd1RN15wApNIIZ5dgXHAl1pedQA7xlU=;
        b=QPoJag9yGA1GOBhwtT+1duhqIzzCY8qs/y3S8htwFw0U7Cyn23Ang5ej+HY456zf65
         MMWDIjtr1shEafI7mOGdGjp6ZTDPlaQk3XfK1WHSyrE8sCaFPIwn3sXyKTnmpvuimYEt
         t9cKTlufpbEWKxkyxbatsuQ4hJ6len8UhIjKVzIXKDjYxPu0eqG4FZKTgc+JZJ1OJ/0T
         sZ+Ww8edrZ+EdbamN2+8xeZ1zshBeYMBoIQxWr7sb8xvQ4bz/4x6xwQfGuNucRAd1H/e
         v89ff2n0nfWt6t8IM1shCsbr6u3tntF8CxVz97DB/dTXHc9cdKtUxWPMsdz55oke8Zkf
         dvsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bmptYvWdWIOPCd1RN15wApNIIZ5dgXHAl1pedQA7xlU=;
        b=hzOwEqarfoo9P56nxropiFB5iHcNdtMAAqmZiAZr5Wospgmbn4k56BaP9iUJGUIIgz
         vXSO98U44azNppraObhGb9OqOLdde2Xtg4ZtPis74wxVPbL+DAYSeNkkUW5fYbksZpFL
         TlmZ5VJstNTY96BWT4XzUo5/CtJZIS1zI8OmhSPY3Mxri39fzwqwqGZA9YPVxGa/sd/a
         iPHj99EdQzmYYcyAKcJO3VswqCf7eohxYb5BkDLazK61w+kz7gPGFl11JkWKCsYuodpG
         V105GlmzWH5f7aHjJgvtmgG8L4BuR0MWEQ4ytD6tcH3F149gzi0HbgeyKis7UWb9KBWk
         nxnQ==
X-Gm-Message-State: AOAM5339zyZawyn7cZ82jbceuV5gq47OOhWaXWm1CONAgCSB7S48Tc/W
	6MEnQ3R779eywOX4fiO2PSKIyAZiLR/Tx30f
X-Received: by 2002:a37:f612:: with SMTP id y18mr268067qkj.406.1618433772775;
        Wed, 14 Apr 2021 13:56:12 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([138.204.24.234])
        by smtp.gmail.com with ESMTPSA id b83sm481917qkc.97.2021.04.14.13.56.12
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 14 Apr 2021 13:56:12 -0700 (PDT)
Date: Wed, 14 Apr 2021 17:56:10 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: atomisp: pci: Change line break to avoid an
 open parenthesis at the end of the line
Message-ID: <20210414205610.GA9017@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Change line break to avoid an open parenthesis at the end of the line.
It consequently removed spaces at the start of the subsequent line.
Both issues detected by checkpatch.pl.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.h b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
index 1c0d464..8c4fc2b 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
@@ -75,8 +75,8 @@ void atomisp_wdt(struct timer_list *t);
 void atomisp_setup_flash(struct atomisp_sub_device *asd);
 irqreturn_t atomisp_isr(int irq, void *dev);
 irqreturn_t atomisp_isr_thread(int irq, void *isp_ptr);
-const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
-    u32 mbus_code);
+const struct atomisp_format_bridge
+*get_atomisp_format_bridge_from_mbus(u32 mbus_code);
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


