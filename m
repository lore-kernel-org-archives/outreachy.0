X-GM-THRID: 6670726051308503040
X-Received: by 2002:aca:dc0b:: with SMTP id t11mr651999oig.19.1553149440249;
        Wed, 20 Mar 2019 23:24:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5988:: with SMTP id n130ls118148oib.0.gmail; Wed, 20 Mar
 2019 23:23:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4PCcQqkx1YOqny553+Hv3jF52CxCcarLWbf+Q+9ugXsSXMc52ScpF/c+lAMffYurtHasP
X-Received: by 2002:aca:b5d6:: with SMTP id e205mr675109oif.2.1553149439395;
        Wed, 20 Mar 2019 23:23:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553149439; cv=none;
        d=google.com; s=arc-20160816;
        b=1LVssOp0vNcWCsbzpz4QQeTHxMs+C2OUAZmxHBd0fN6ex4TpyMQw3hO4jz+LdKgcyc
         qC3GZU9AHtOgDaCEbrWAJQ3XzKT+pWAU7GTx2uPAY3tfn/JeuaUGlHYmG3Q6Send+rOe
         uv7jW5jrDS1vT0O/Ndn2Ab6xQqEkSI7Ggpzg0oZ/9jvzrslPrtA9ep+pbRcHTJL8XJmg
         bW7KJTwaTAdzTr3TeeYC7PtUoijdN6562Butxn5Askab2cJ+qsrfkmtYNyIosqKrckco
         IbgHmqkljR2h8OmDllamRhdaEhccXwFQD3QxQBBsQFN7vbQ98Ee0FXlM95lzfBDKJBy4
         /cqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=hdvaX1yODdx5iKUak2guY6NT1ebDx7ngTV+S89yPXjY=;
        b=ozNk8IWAvswa2gn6ekhTUvnMk8CQhb9xfwubX8X6ghMzgmglsoEUBuEHGZJyFI+XHc
         wGNXo39JPAu8YuhiPr7t9bgecyoQoGUIRFl+pgpgQhvhhdNTsCsUqX8V2Sz4pXxsHgyW
         90sXGPsGSr5oTVeDsu0Sw4+w12OvGz4m5wdLNZux37r3WM6+7noE5k8eBDip5REoYwF7
         MlPk9oa4FXC6sInGMvCwvRvZOrTGc4cJkBG+tQRTqo/4+IsAoKT+EgGP+cfYSDUEAunc
         KW0/rYZl6suW5lnATIVW+n6yZTjjMCbgmKxSLFWl01pSUvcYJ3VvMsY9tjfIg2LhNK+0
         XbJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DYM8N5dj;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v129si226847oib.0.2019.03.20.23.23.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 23:23:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DYM8N5dj;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c207so3644801pfc.7
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 23:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=hdvaX1yODdx5iKUak2guY6NT1ebDx7ngTV+S89yPXjY=;
        b=DYM8N5djSNkErAjiNAS8T6xha49RLLU0vUAUHoZ+KoUXa0K7HZVTnKi4k+UNaR2s5n
         OsjtVLDtT7HoOsaRsqpMb5R/08ukfYI/ew6lQeDdZ/4ZSTf0WMy1O4jhfyt0jyVfuqBY
         AZfEbP/I/wBZLXY5gVVd6SrpbZOiExcG4Vs+sdNRUavpOisjnnCVJZKmX1INGTiuFyNg
         DCa8lUeEH/+O08HrrCwEjfn00lBt1+RjV71yHndmzrF3Y5bTPXkivN0kMSnqaRVfhfyq
         G4lU7O8j6uVVt/q8N0JwUC+MxxrnKf9R95rBb7FPDrhqUKPWw855vDBt9n85FZtogpTQ
         bkOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hdvaX1yODdx5iKUak2guY6NT1ebDx7ngTV+S89yPXjY=;
        b=dYB3EGWNtHtKGcMBUjxc8RB72cBfzBj/rd8i1fawZWW+eg3IlqYFMIShTJDsDyrJIn
         wWYEp1QPQCDebHC6BhHZ2bzSQWg8B9Cgm5pQVgJHHKna4xXNtAKoSzpQPTbmenAY84bI
         RXzPsmr8aR8uGphsP5mrdSBnsmdvmgU1FqscL0fDvqtvQhD63BtY4pwRlSoLMz2rg1iI
         hKoD+lYyY/X/H1rKunjIVn4a5VTeuBgpECq6M8GruMtCXjrwVvjUCoUFD2IJ4tvFBZdw
         Mx9MQpqgqqagYIhI/rOTeWWwEZ8JJoQ3B65OD0pzTdXyD4l3TUAzTWjD3YklqSjKnYt/
         ZdgQ==
X-Gm-Message-State: APjAAAUEa1S07TMwbTpu5C+dOAI0XXeLatgR9dds0ZJqnpclIG/byyqm
	qdqcPMFlCbDPlzax2NI/C89AytXd
X-Received: by 2002:a63:2987:: with SMTP id p129mr1844401pgp.390.1553149438391;
        Wed, 20 Mar 2019 23:23:58 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id f15sm4208482pgd.74.2019.03.20.23.23.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Mar 2019 23:23:57 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: vt6655: spaces around operators
Date: Thu, 21 Mar 2019 11:53:44 +0530
Message-Id: <1553149424-7694-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Prefer spaces around operators

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
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


