X-GM-THRID: 6675306415104458752
X-Received: by 2002:ac8:1911:: with SMTP id t17mr8775911qtj.22.1554215891615;
        Tue, 02 Apr 2019 07:38:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:444:: with SMTP id 65ls5743415qke.1.gmail; Tue, 02 Apr
 2019 07:38:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzSUhjCBfaMHPjvoretIJtlDa5vKQbq9hLArIr8ztLBo1ATaq8Xtn5zXoJOxpEtdb6FXEwa
X-Received: by 2002:ae9:ebd4:: with SMTP id b203mr8299584qkg.17.1554215891007;
        Tue, 02 Apr 2019 07:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554215890; cv=none;
        d=google.com; s=arc-20160816;
        b=zP10DbTtxPsHvIoQ6m/oj/fAAhV4U0SguxcnxfOafug7dsvRw6yf5EkFVCF+o59i2U
         sBLIsbn5mQuJO/X8jlFcc+Gmrd0v0WxOPgwTeigVU3I6u/vNBpqbV821/3DmzvC36URj
         BrympC1GlP+6cSxAbSWxtyXe1F1GwD6EvYBfVSTyNKX0edWA5eF/64fV4JrPg3p15HVU
         FHyg3wmjI/hzjSNiRH/sRLJ32LAOoYdLML41t6Ko8jzmvvaU+IW8md6dQeiNQvoCvfS/
         y9r4s9CFIKmISAXUurIjRydg5Ogm0yo0am5v2oCr8RDW+IwN5ShaimoXgL+uhLP8m2FY
         zX2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=lgluCoqsy+P/AFfja+JlzX9GDN+AdpcFziReBrsZXNc=;
        b=fZoCIOYRsSvb2VH1lOdzYk3ZTH6zZqkyPjutZrKoLisTyRh0xvjXqPn3glQ9kLDGkQ
         +iJiosuHeaqZY48/2w5dJa7V0KlE20epC0eTU4VF8lhOOlMBLuAEacKwzp/K8vMwjAKY
         NjdB/7k3Z7NgGozjrugH20vimU/y1KBt+u3LjMZI4hSNnxWdDya8wtB6TP5PqtkN7mxP
         bLZGa6LsHpadXhVXO5uvZHbD3fL6bh05T2+mivPLxx0p0b6aep4o2ALWR3yR+BPGlVV5
         X6QRv96+7ow81lwzXPhadnHrhBpsVNO7JEFHmnj+TmBiWo/Tvvl5FJ6jU4y/wyWmuSDD
         uSPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bg64P6Sz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id q58si663717qtf.5.2019.04.02.07.38.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 07:38:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bg64P6Sz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id b65so6374509plb.6
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 07:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=lgluCoqsy+P/AFfja+JlzX9GDN+AdpcFziReBrsZXNc=;
        b=bg64P6SzICmKvJ7NGmXDkJYJ30gpn6mhfkqC6ntVzCkIhuBSl+6dqbEOjEZIsJ4740
         HIFaku0mkWEfe0OXWeppL2PhEUu4Gjk2nC9M8krO5lhaYmTIOk/1be1EftmZsydMV8eR
         fhsIvYMvNGFf/tb6s4+FeKOK7nd/3cOGBnwGj3jnSxHXUDKFm5bxPXpaUjjclBiUsmII
         wbJJegjqzfcxmSMRWMO8d6ddgS1KJ8q4CMHylyvLC6qbkXBLxxHuufishddIDqQPpLq9
         DoG5YAB8PJt3m60oF2+e4zNLLPSwgHBoLM/+haT1hFAfcRzzlkisNspc9HVhA6yCQNjb
         RJSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=lgluCoqsy+P/AFfja+JlzX9GDN+AdpcFziReBrsZXNc=;
        b=dXHC7irpLLPIyf5aA0/9KWaxEAV7GNBigis5y+DFXKxAmoP22u8cpq1SKZeScv5rt5
         0W9octn6g9HR+KXXqHbjbWMKyWl4ZX6q8GsXney0O0hiFXso5A10t1dsKE1Wb2UXFx4k
         4ul6mMulXUjgCPl+BZpCGh5fuRpKZz9HCEXfayLGQGX/nOCLRDYnm6WtiVLcV9i2yW6Y
         LjBJbHirhHNdrFzj16p0QtjXBWklgYlwvnR1+nCFFwa0qgLvfCi177/60JlhfQC3S+PJ
         yoF6jVr6cptWR4uUr5iRLrIykMahf2Iq54fPljYiWaTFO7AUlv3QEW9Sw16xh15BrOsX
         T1MA==
X-Gm-Message-State: APjAAAUJG1dvggmSjVZxLrV3VPfELPtxnRm3/PEsv//W+TOb1ZPifKfJ
	3IgYiO5I/ZnocH54imx5JtvvBl1Y
X-Received: by 2002:a17:902:8606:: with SMTP id f6mr73061970plo.151.1554215890332;
        Tue, 02 Apr 2019 07:38:10 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id j22sm17603660pfn.129.2019.04.02.07.38.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 07:38:09 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 1/2] staging: fbtft: fb_agm1264k-fl.c: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 20:07:43 +0530
Message-Id: <13bc5246b47651b7470c9fe934bee909733f6792.1554215607.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554215607.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554215607.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554215607.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554215607.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 8f27bd8..5a513792 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -383,7 +383,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 			/* select right side (sc1)
 			 * set addr
 			 */
-			write_reg(par, 0x01, 1 << 6);
+			write_reg(par, 0x01, BIT(6));
 			write_reg(par, 0x01, (0x17 << 3) | (u8)y);
 
 			/* write bitmap */
-- 
2.7.4


