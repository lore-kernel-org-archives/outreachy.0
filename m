X-GM-THRID: 6670726051308503040
X-Received: by 2002:a6b:ea14:: with SMTP id m20mr230635ioc.33.1553160331086;
        Thu, 21 Mar 2019 02:25:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:3cc8:: with SMTP id m191ls598389ita.1.gmail; Thu, 21 Mar
 2019 02:25:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxrbK4SwPAFBivytoAmszwAw1UnCNhd/FzhXLJPL5oy1okHQMj/DIITEEFD2vnZ/1YTIW8s
X-Received: by 2002:a24:a14:: with SMTP id 20mr953584itw.23.1553160330287;
        Thu, 21 Mar 2019 02:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553160330; cv=none;
        d=google.com; s=arc-20160816;
        b=qcw4/9RtKd/nkkCg7xS62aS4EyTYLGSSRheoipXJQM/9G45hGjqdVDdwiOrBokS2pM
         21BKU/rBM83f8HxNC7bFAvNdd/Zap9yXspIlNC7uN7TVpKDPF1ws3qvDSHhakRn8PuY6
         bNf2h+8dnxcp2H+UiBpkOBKnthMG3zqooFAbx4YbpoqVn2xfmyKV+PzJyU9ewrQwF+qQ
         9jbL+jxrFA2hJGjd4CFAGK7fbK4NpzgIQRCuUvlMkM9nRmPnJUVBxlDlVy3eac/+EJS4
         vM0bud328I7qTnoxXh/TDQkrgBOcBqILwuX5igV8e4wFQxroVJ+wuf4yEvCTUzeLhoZq
         9VpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=j8s+d+RE+M7Yxjqz0eNJiT0LvZ90NF8kj1VAh3GBTM0=;
        b=HqERTqnCYvdAGKovDb0wpiFxv2YzKBTg5PeRnkkNwbiFsp3Zm8cXafXKbgZ3PFW0Tb
         FVMraAlZv0rBfvcqw9afZ2yU8mzniD4jr9YMWRU6fNaVzizrb/VZYNzNrXzGHl9Mpb8f
         fmzzfOIquK+9Wqni7/0i5xQeaEBspX6mbkkaAsuKIL5B9ZQj96U76OwWlaE71fgtOWYx
         2XBkcFd6STWMky7JRwT9uCBivvoEzj6rcOWgCbOwHZ386KfQPdfEIRNmAHWzrjY9ja3j
         768LKirxNfQBFlrNZoiR/J66jnaWHWnDU0uoXs3TAZq2Wni4mfZIeh6nDg5WJjjuE8kq
         PEZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nsiO5XOh;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id g127si552745ita.3.2019.03.21.02.25.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 02:25:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nsiO5XOh;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id p6so3805148pgh.9
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 02:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=j8s+d+RE+M7Yxjqz0eNJiT0LvZ90NF8kj1VAh3GBTM0=;
        b=nsiO5XOhVbMQ3mQsXrisFznLqUzVLtiAKrIvU0FKGwaI/Uy8mVkMK5JugaJJFSnkFi
         WMW/uyAjxfG/9NmJwaxVCEnDKquo9c7uWLfXWe3stb9QWsicr9Ds0HH/N4Hkw1GkEzPG
         o6SiEgF2gUEoTvG5pQ0nz2DI+dj4HrNsKB/lxN3VxxPY6LMtxoAl/9i2c2H1eeVSRIKb
         dBwnx5EXxWPSlBY8BDdG+eTy142WuTORWXDSj/uOKP50MxmgAz7hqAZEHzPNFizX0dhP
         S/00OvXsFcp1uBIes1FFc2v/2AtAoWEA+Zc80yM1yN4lx4vZqtUwyF17F1jAiYl+cfbJ
         ta6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=j8s+d+RE+M7Yxjqz0eNJiT0LvZ90NF8kj1VAh3GBTM0=;
        b=lC/UxuBDHNcVyWK/CmLhrROz8W92G95HziHZaDV9Sm6OfVB6vrT6WcGWM7snHEb+qT
         +cdrrlAvWRrb2o2YZapXGK5RBamJ/fwvKgBPIcjCwdWmMVwa9Z6AdzKqAZnlO1TqdPqr
         8iLhMbmCEI6+KmaQNs5cuAwG4yvfjq/vpNPEdnIkZHWYBLXBV6ZT2NmDX0k3sgaPDD3N
         qkF/uriBEuoMnN+Cm1m0K3k8BU5nkXPQZHjAOPuRyqQlmbIDE8meAMzt8iMfpg3voSC8
         o5Bx01hmEWx1kls9VxAIidcjtT1x3sexRyYXOJYufd4qFp+Lw15lgV7UrNideHjan+YR
         H9yA==
X-Gm-Message-State: APjAAAWIolQvivm9htCium5IG5pSFVSQEhO4b7RLcaskYfU9/edtFTPO
	qJY9Hcxqowu/ph7R15zq57I88N36
X-Received: by 2002:a17:902:e60e:: with SMTP id cm14mr2520796plb.192.1553160329709;
        Thu, 21 Mar 2019 02:25:29 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id 71sm7822705pgc.23.2019.03.21.02.25.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 02:25:28 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH v4] [Outreachy kernel] staging: vt6655: spaces around operators
Date: Thu, 21 Mar 2019 14:55:15 +0530
Message-Id: <1553160315-3839-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Add spaces around operators

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>

---

In v1, prefer spaces around operator,
In v2, 'prefer' changed to 'add',
In v3, changes are mentioned
and in v4 changes written below '---'.

 drivers/staging/vt6655/device_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index b370985..866d794 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -592,7 +592,7 @@ static int device_init_rd1_ring(struct vnt_private *priv)
 			goto err_free_rd;
 		}
 
-		desc->next = &priv->aRD1Ring[(i+1) % priv->opts.rx_descs1];
+		desc->next = &priv->aRD1Ring[(i + 1) % priv->opts.rx_descs1];
 		desc->next_desc = cpu_to_le32(curr + sizeof(struct vnt_rx_desc));
 	}
 
-- 
2.7.4


