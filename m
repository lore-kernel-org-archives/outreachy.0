X-GM-THRID: 6666547009386708992
X-Received: by 2002:ab0:49af:: with SMTP id e44mr16687209uad.21.1552176431649;
        Sat, 09 Mar 2019 16:07:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e895:: with SMTP id x21ls2887098vsn.1.gmail; Sat, 09 Mar
 2019 16:07:10 -0800 (PST)
X-Google-Smtp-Source: APXvYqzIW8oHETl5/HabevcDUeysi3yzqzVa9Plk6zmShVfsogEaQokR8CiofRKfFcdKVG5xb9P7
X-Received: by 2002:a67:fa8e:: with SMTP id f14mr16755518vsq.28.1552176430964;
        Sat, 09 Mar 2019 16:07:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552176430; cv=none;
        d=google.com; s=arc-20160816;
        b=nwrzbqYmZ3deMcx1/pPZzE719PT9nBcTsSb3CbOg8Z4ebM1HZeERsM0HcU1rzRRmyy
         DZE+vvUzjOJHt883HxI8h7sXdyNoeYt6AZbJ6pCK5Xa1agLxHHpR8xzFz1DazEELmSZK
         ZYWVZUVEBFdNWlMQA1V5oa1azBAJ9sSfHsDdAK2oL6uHy9hEpcbfGqb3sdGdSBI8xAnh
         1kh5Q6lzeZOzh3fXy4pMhArlLkQC1hKDVOHE9RWF9/24iJYxxjqY0nEIdh3av2AyYuKO
         efDBD2flaqkr45ydc1EYJa4TZEBAAPhZiChWUva6MVXkQL2jdXeS/KzrCiKXEWXL/83n
         aVIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=AKi8mEDTuJgxm7KQ7DH80/Cne0iGaFEUJHMeUxFmCTE=;
        b=okrpC92VykMM1gBnIYxlnpEtYd2mdxlvVb9k5vz6QGyuTPFatys4dEbNZXVGfOSMwY
         qMCXlxW67myE8j2OF/A1+CqW6p+PFhuRytbpboBZx97bogGPk2LzbTzUuoAjY+bOkGL+
         wLpIxu+7IE8DJ10O9EXA328efc/4NsFoPlBboLH+xy/+mEux2D/JYSCh71B4SzdyQcve
         Xfn3vO6wiRPymafw42B/64q6Yyl+EiG93cztPpvf75iBx5FkPwXJsgJtoCsiOUnzglvC
         u6Yp8eweubpi7MWagSKZNSrogyup6PTXbVp8/3nctgBLRGt9GL+KWlfm+VHauKqcnltD
         QvQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XkdRme7i;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x142.google.com (mail-it1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id h13si70693vkf.4.2019.03.09.16.07.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 16:07:10 -0800 (PST)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XkdRme7i;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x142.google.com with SMTP id l66so1935395itg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 16:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=AKi8mEDTuJgxm7KQ7DH80/Cne0iGaFEUJHMeUxFmCTE=;
        b=XkdRme7iA+ttkqB8H7uPJoKI5MmL49P0rVx03PVAcihvrURcJzPhcpPHmirHRmeKpA
         shZ+U10UVbYk6L3huyfMwf1MK1P73hguPf6g9V9NMn4eTjD34mW3Ig3860hymzzf7/V6
         bRSYtw4O8KF9cOFBeMoQQBCoaotlPNVMv9O5iQYBzjik9kS/dEryWBVjL7guZNILkhxM
         epCIhFxVFy/sSee6/3FR2VOMp0I4dFRXrXUR7/PseFTmyXikXlRkW0naIzhvS9rzjc9g
         af2ConGCN6K5cnwqAc13jl17p9RbwyiEvFT9Rk/faPTZBgBhlPlV5a5GzclMoxSFl08J
         NiGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=AKi8mEDTuJgxm7KQ7DH80/Cne0iGaFEUJHMeUxFmCTE=;
        b=lElD6Y4S6vfG3OpTfGJRuLNYLfCfcbyXhyTD6QU9b6LqQfYnKcOOYfXKpvNL9NTeVW
         BlqQETWLTGx/v+PhGQkyNYt5PKs5al5u77AV2//ehZoV9SuA91kbjs2fgh4jhEEjvCuQ
         2A6v2BzFg/S1PE9SWrRoayh3uj7YC9CLFaYlFgVDChOPmtQZ2+QG9YTZmFfxqpuJiRxd
         w4Y40QC6Et9urGEmtM6bLra5necLogc4vk7oUeh8z09B4T1aXkTbqaVIN+5ge0rUKC/U
         gi8K/XGOAZUZxxygGAVfkFz9KA3T6/fg1uNr37tXR2KZLOGCQAY0p8ahtUQQAfcNwGrQ
         QGKw==
X-Gm-Message-State: APjAAAUkBM9lTJN7NzD3fbMNfAp20eYlryfPnjNM+kvT5TTbWcawKmFh
	eOqhIWv+sp46pYTV0Tjf7ZqwdcoThjqW
X-Received: by 2002:a24:7ec9:: with SMTP id h192mr12743074itc.104.1552176430187;
        Sat, 09 Mar 2019 16:07:10 -0800 (PST)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:b095:76bf:1358:4cd8])
        by smtp.gmail.com with ESMTPSA id e11sm656995iog.79.2019.03.09.16.07.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 09 Mar 2019 16:07:09 -0800 (PST)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: octeon: Lines should not end with a '('
Date: Sat,  9 Mar 2019 19:06:38 -0500
Message-Id: <20190310000638.4559-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1

Start function arguments immediately after opening bracket.
CHECK: Lines should not end with a '('.

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 317c9720467c..f89b309ffa6f 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -413,8 +413,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 		queue_type = QUEUE_HW;
 	}
 	if (USE_ASYNC_IOBDMA)
-		cvmx_fau_async_fetch_and_add32(
-				CVMX_SCR_SCRATCH, FAU_TOTAL_TX_TO_CLEAN, 1);
+		cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH,
+					       FAU_TOTAL_TX_TO_CLEAN, 1);
 
 	spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
 
-- 
2.17.1


