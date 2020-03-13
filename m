X-GM-THRID: 6803797198848917504
X-Received: by 2002:a25:abc8:: with SMTP id v66mr21459801ybi.36.1584136498466;
        Fri, 13 Mar 2020 14:54:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d851:: with SMTP id p78ls3389167ybg.3.gmail; Fri, 13 Mar
 2020 14:54:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvzXSJQCWOWOZCPvKhJpBgHW6n3SqKjEnHfA4vWRi3tPpAW8A4CBs58ivqPB8awDA7r8Mx6
X-Received: by 2002:a25:b904:: with SMTP id x4mr19889472ybj.184.1584136497020;
        Fri, 13 Mar 2020 14:54:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584136497; cv=none;
        d=google.com; s=arc-20160816;
        b=BrOdQYO7nBKVt+8Ras8lsU0BcRTlf9f67247tU+yh8hdqP5ytoQCxE1Ydn5zYazrv/
         uP7gCMEnPj2h+MTkbO9PgKy944lz682+6mCT6jD5v4BeNVqWcIutrVNGmVP5ezqKoAhT
         j3ce59qsbDsu3Wr0KaqN9H+8c+Xv2X89JsMbs/xHyXR54prxuJ0yJBguEXJX9UEkflVQ
         x2Km9isW+FGjHrmcDvM1pOQQ7attj/3Q+Y7Apq6AZbVyBfbUKiX0UYDLqhJyexRW7KDy
         8ocewxD8nTZyarJ00EJRDPipDdCKjd94vzSaU7LPIUe7OWaIBqtNC0AVWJkLXf4Bk7oP
         8mjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=haF1c/b5KW4qKJiX5VoVcqarHGhn3TY6tRTH5E4LL2o=;
        b=cTRUNWOtsIFweTcHdSXUVuDfgS43ruuCqLBEpSYwt/Oo0xPCHtlN8oF8mEqs5pzTj3
         IYee4guYmx/PYl6egxakpEvyPHZXjMx4Fp5+LO2oR3hLl9uVfFLwE95NzGc6ZQQ8E6mY
         KYveqcFrR/zzVY0kmRdQsSn43XM4YQHaPtvEoaNSNrc9qq/pwEa+DbbxDzMWBXR8ZxBi
         QmUaOq2hkp5DOHrTy6mwu/NBgFBViYHRJaxp1TNyh1FS02LWBTRL2yAGk8OoE4AiVKX1
         mp2VZygerpTyhQaznuOZNb8F3rg/+VqLgcPKs5IYm1EZ9wF7FV3dRqtOo9TyitRcyElL
         6aSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=gPCrHkQu;
       spf=neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 207si312324ybe.5.2020.03.13.14.54.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:54:56 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=gPCrHkQu;
       spf=neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pf1-x441.google.com with SMTP id c19so6058835pfo.13
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 14:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=haF1c/b5KW4qKJiX5VoVcqarHGhn3TY6tRTH5E4LL2o=;
        b=gPCrHkQupXspE/76kRsNUj4xHlGTklys2/gHi2PqmVWa2Dv9l4bX+DAZA7vEP1vzXi
         GaCHSAIhEThcbRJtIx/P9oaZRnXzM9fgIpCpE/dhJIpGnW7Jomkl1sHH8D+TgkogqBJi
         z1qglRiPbbVxW9yDE9jpLe6IN0I7a+6uQgI+WmJPdPRcwp86NgcE8PHKIaqnMYiM8NaA
         svD2NkoYfd/ug96vVWWODEM1MS05H90hs1HuZcZW7ug9Z5nIgtocIfm+XOxW+eTfoyio
         6nDsUO7Pfe9V8OmwyVt0M5+iqaUAilg+rk6G8cz+gF64oxTXVCShbz/ReEmaRKd536R7
         pTmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=haF1c/b5KW4qKJiX5VoVcqarHGhn3TY6tRTH5E4LL2o=;
        b=GPnuNlE4NGLqCaqtmjD77VnMFOejlR0YjTc/3kfO6le42s9a2+UxY0w0NYjfrQJcYa
         EjeR5bmJDf7XP/0+AlG7xn3PXHk6/iYG0PurmOc4rfW5BFzTbxIWGK8NwLDDwxDiSEqr
         wB7cvQk4kYPlSWFJVaC+Fj5KcXU0j/2AnsAq2vsNb3zW5OG+H5R877Ek/rJsVJtiJiU7
         Y5fvLs94CcY1L7ZxQ/Pi/oNzcIB+0ru1Kuw9iSrfmqresDlvVQL3LH/MpoSgXRRhVhbu
         DMY20LJk+K5KtZ8F3GSQZCKPI9EFgUXciRMG91TK/Krhn+6RPx7WIT/DVK8D0YEKF5as
         II6Q==
X-Gm-Message-State: ANhLgQ1RRgx+hZLAy9BKcnmguFEBwvz+RMqgO4vHre1AfGKm32LYkfFp
	OKDCQN4uDoa7S9pfvkI9p1IODU9jqSY=
X-Received: by 2002:a62:ae0f:: with SMTP id q15mr5092320pff.72.1584136495810;
        Fri, 13 Mar 2020 14:54:55 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id r186sm2438051pfc.181.2020.03.13.14.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 14:54:55 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH v2 4/4] staging: media: hantro: remove parentheses
Date: Sat, 14 Mar 2020 03:24:06 +0530
Message-Id: <20200313215406.2485-5-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313215406.2485-1-kgupta@es.iitr.ac.in>
References: <20200313215406.2485-1-kgupta@es.iitr.ac.in>

Remove unnecessary parentheses in file hantro_postproc.c. Check reported
by coccinelle.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/media/hantro/hantro_postproc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 28a85d301d7f..44062ffceaea 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -14,16 +14,16 @@
 
 #define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
 { \
-	hantro_reg_write((vpu), \
-			 &((vpu)->variant->postproc_regs->reg_name), \
-			 (val)); \
+	hantro_reg_write(vpu, \
+			 &(vpu)->variant->postproc_regs->reg_name, \
+			 val); \
 }
 
 #define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
 { \
-	hantro_reg_write_s((vpu), \
-			   &((vpu)->variant->postproc_regs->reg_name), \
-			   (val)); \
+	hantro_reg_write_s(vpu, \
+			   &(vpu)->variant->postproc_regs->reg_name, \
+			   val); \
 }
 
 #define VPU_PP_IN_YUYV			0x0
-- 
2.17.1


