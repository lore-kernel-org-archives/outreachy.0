X-GM-THRID: 6811027108156932096
X-Received: by 2002:a37:b702:: with SMTP id h2mr2293009qkf.491.1585815825453;
        Thu, 02 Apr 2020 01:23:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:f1d:: with SMTP id e29ls1620406qtk.2.gmail; Thu, 02 Apr
 2020 01:23:44 -0700 (PDT)
X-Google-Smtp-Source: APiQypKUINrYaFWKjKCPV4+XQIVy6BnNnEeeTDPq0wXMCgAvQoa6sdwFS7kq9gD8O94BfCw3kJRV
X-Received: by 2002:ac8:197c:: with SMTP id g57mr1779270qtk.264.1585815823988;
        Thu, 02 Apr 2020 01:23:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585815823; cv=none;
        d=google.com; s=arc-20160816;
        b=KtvjE1Dy23Uk8TmsIeYO+0gLvO+l5uSVbjgVF5KOC53WX+BJXkbnhjiDuBhqMOcdnf
         zp0q3XQtGLbL4kvH2K55lH4srZp1MP/6Z1ucFXcqfFh9KfRPrK6/CHjgGfLC5mc9f0HD
         oGWKibbWaUP7dgBvDZ4cibyHaGWGPGjEv+Am0CXy/M8i9vpEqzheqwNunOXBBF16Nr5w
         NaMZHoslFiOf8p7/x1YIaRwLRNmA4P5isG+bpiDHtxXihke529y9CnQfGEbwDiRC9bCa
         8eHj2X0ApwW360umHJh5rdcTRLAgbvwt8y5BQr399fBPuk3ZQai0HqUjyQaT+WouBPST
         SuoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=zxh5bLFVmkNo+A/i7BgQ4qSktVNtoTUJCIkVIcKQRlY=;
        b=KVf0SZZd5F8FJn677OiO6v6VD6CAGQb1kilOvHwFl+ZuWq1E8/uZbky9/CDHPWhGaa
         cft4G4APGSPbueYY54QVUOBDtBPZH9yHPIB92HPCC+VIwpxrlSpGOYTpw0/s3HaM+5eT
         3rVyU8mOV0KywTMEyxOQMTMcCZ7dwuZAol6Ufg7kAr+GKmQxFybCUepCIZvZA0gxtfRU
         +ZclFtnpIOvtoUydqh429jrlIhdV84V7r+UreqkEE/26q4yDD1z/WkPgCKL1bxKD+a/3
         a32Wbito4Api89gVwbAo3IHkIKW1DpQc3Pz0Zwukhbfsu+iky+2KJdp9UudLHphGZUNJ
         dtqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="k/S5Ox70";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id e89si325712qtd.3.2020.04.02.01.23.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 01:23:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="k/S5Ox70";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id k15so1421059pfh.6
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 01:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zxh5bLFVmkNo+A/i7BgQ4qSktVNtoTUJCIkVIcKQRlY=;
        b=k/S5Ox7008iL/Y/lp0isigwTFj1vu/Euf1ibPqvcZHjMFJvYcn4USJiTUfePT1thKK
         J8HwAMLnCsGhoF3tLrJuvM1eqxXQOJtfGjJUfnBZJ/hKlj2bWh5j/nKrVSZ0wFlMgCkN
         vD1pyHKZ7OOBKN7o35hKEYXricjN+xNFlMfJmYM1a192RGTD07acHscyQCb4RQk3kvGT
         AmWbeWfY6v6eFPQsMRWgpdwRhMffP38txqw/rk8lor+GsvLATIr54nNXrM6qsnhY7Ff0
         X753rRrINNyPkDcJWYeyQP3BgESjA6tSk/X+O8eIoW0AQ1fEBtbirv8qEM8100eWrEQk
         wxFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zxh5bLFVmkNo+A/i7BgQ4qSktVNtoTUJCIkVIcKQRlY=;
        b=UsHNJLDhh0OpJUfvfbEMUNxTAdqdOABxaANkJ8mrnieshdEDgFmWiVEzjsfemd4bVw
         1CMMO+7ZKuUTa0x6TZzCpQKcEQLT+kd4HEWVLq4S8JtGWmL1LWg5zOn7VRLyb31WpZdC
         vkja5cdJovH+t6TQTi2Y47zDCqtPVbJ/NFA7rT8GXpKA0m7zOsWMAiosuzAg8YUbu8n6
         pDNiQGgHnoBNPOzuSYlSl38rtjIIt7neECtBrKVI8ebvJtityL/Mew70oCPboLzWCawh
         SVWoN5YnG1ZLvYMfOrE+9cCVQmF1KqLzYlmUd54/QIZzPyNS19U5ygL/k11e0nZ2eLV4
         hcHQ==
X-Gm-Message-State: AGi0Pua7v4SlCIy/ueKYwy36nKl2PCSxBfeOCjxVaEhHk8u4oVKMf3yb
	WPbKw8kYmr3TgAUXKcN1gS1vF9TMv+p4CA==
X-Received: by 2002:aa7:9f03:: with SMTP id g3mr2100739pfr.287.1585815822907;
        Thu, 02 Apr 2020 01:23:42 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id k189sm3000800pgc.24.2020.04.02.01.23.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 01:23:42 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	=?UTF-8?q?Harold=20Andr=C3=A9?= <harold.andre@gmx.fr>,
	YueHaibing <yuehaibing@huawei.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
	Stephen Boyd <swboyd@chromium.org>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH] staging: ralink-gdma: Move blank line to fix warning
Date: Thu,  2 Apr 2020 01:23:09 -0700
Message-Id: <20200402082309.839063-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move a blank line within a struct to fix/silence a style warning.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
Note:
ralink-gdma does not build; even with make allyesconfig.
I did not find a menu option with make menuconfig.

 drivers/staging/ralink-gdma/ralink-gdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index eabf1093328e..9c398048daac 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -122,9 +122,9 @@ struct gdma_dma_dev {
 	struct gdma_data *data;
 	void __iomem *base;
 	struct tasklet_struct task;
+
 	volatile unsigned long chan_issued;
 	atomic_t cnt;
-
 	struct gdma_dmaengine_chan chan[];
 };
 
-- 
2.25.1


