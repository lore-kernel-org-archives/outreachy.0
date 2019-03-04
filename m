X-GM-THRID: 6664549721858637824
X-Received: by 2002:a24:1991:: with SMTP id b139mr4119425itb.38.1551711401194;
        Mon, 04 Mar 2019 06:56:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:147:: with SMTP id 68ls4646995itk.1.gmail; Mon, 04 Mar
 2019 06:56:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqwLdoOOgZIQfeeACJQN0izieCTiIzeJ8/dfy174cvicpgWAcEd8mv/ri/0c4oQjJNVZck45
X-Received: by 2002:a24:9c85:: with SMTP id b127mr12410832ite.36.1551711400193;
        Mon, 04 Mar 2019 06:56:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551711400; cv=none;
        d=google.com; s=arc-20160816;
        b=X1DAHBb6cjcL82hEem8lycOYyxwcBbGEwMQY7ou3In/hV2tlTRPzFo3/skb4x4O2ft
         uU+GEWLAzKpjQ9fxIJpVKd8vwzHIEiMkCDXlfxGn3pvthZ+izzLYdb1YOyy4p7Kuf1VK
         AJO1cBdtf3zIQ7b/6E222cGYhQn/eSD22u3zhQum2lRYsw62tSi3DD26GZ3RU7hSZugP
         bqdggUTBYtosq+IFTb+hKOdbTx9mWYChpWnV6YmEipeEPsADThfIFKn20koibB6gRTuG
         Kh6+s2wlp+cG3NNKRwtvSCbb+JiiE7AX0ktXUt13DygNdh9rpg13ezOEnKLgb9jc0QlN
         DKXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=VRxeo8nZOAKVfSrcLdReQZDxsnpBSQZHmGUqilsVC14=;
        b=qYGPhtevSUJHNTILeaTV/c3YL4uAxBqZHQMYpuAwIGWxZsG/WFJqi9BcgFasrCoD7B
         yCxks2rAqHyh5NTMGQRHAa6V5RaC8CJWc1qwCX6Si/LrGMyfNRv/zUF+dPzRRFF7Uw29
         DBZKNaD9nNWdTOVr6odn4kO+lolcKp3RyUW8lz+5PoA1zhBaBKMKPK8wQXYFS1VD2t5Z
         Q6r3Z0gB+ZZP3ADlPxsKzl0o2YRifTJ9cpK8nUrl85Kvi3RjCBs/tYXfdN8JI5ythcgM
         e5ZjRH0aUD3VnvE0Q01v4PXsGhLWAKYmuhUd3wd9xAcGqVO9JECBcc20XBoILafbXZxI
         b8Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pBpjiu70;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 77si330349ita.2.2019.03.04.06.56.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 06:56:40 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pBpjiu70;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id l11so3265930pgq.10
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 06:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VRxeo8nZOAKVfSrcLdReQZDxsnpBSQZHmGUqilsVC14=;
        b=pBpjiu70nGbMe29OaybdqG6HRASCj29/K7LmbuWYXkm8tiTX1c/E0pk1DacatLe28a
         R8mTo75MsyTccaMMLTRV+bptZtKPwvcorh8wYVh7PNWHryDH4eLTIhiSlNkvLjITUWiQ
         k5L7dTbO/KN0zKUGD1HMHDIwI8pVoljfb7u10T2m/U8ureM5F7lJ+fQpu0OpcoiKGePb
         8YsDLrPuB8kR3DDmj+eYDQSIqZ+wwXrtosM2fnVcaKqRNqJG4xlnlBWI65gvA29ocvlZ
         NnseVva3XgUsP4T2buOQViRTb6z5346Tw4o0oKp/LsBMMfJUqIXJRPy3EHtwjpRcOotq
         lL7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VRxeo8nZOAKVfSrcLdReQZDxsnpBSQZHmGUqilsVC14=;
        b=EdFviVbDBhO8gPL1wWvdE2NTgONkw9qJsdIS6agCP1V89wnD2DrEuvWzz1rtmfd/sx
         1ypvLcuNE81yhMEKBbLA9TfzQDgkVIs8QiYMsqYXtMlpdqIfQ/sI1Iqkm8exnBEhoxJ1
         1RLtD3LPQt2UBiODcND2itT+x+bQz/F9VpI6wOlhyo4ky9/NWm/RfdAX6WQslnEESyYh
         pgCKDiAYJBAnIKYUQd/0h7V3GHjSGSiridK1NOeoqYICmZXvX2B60gBeTkJV9ELPIgJF
         /lK6cUTvXh84rRr2Jsv6QcRkHh4mon6DqzQrkUloX0LyGLqhVbNV+ZthmAn8qySM5DPc
         Xgkw==
X-Gm-Message-State: APjAAAXYdwyc/utXFdjbSJMls+JBF/PkMGzxAL7FjxLO/jNgQMEndTkn
	+4OX9FvUuimwtVf79gpjhNQ=
X-Received: by 2002:a63:1a25:: with SMTP id a37mr19409519pga.428.1551711399633;
        Mon, 04 Mar 2019 06:56:39 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([117.211.86.109])
        by smtp.googlemail.com with ESMTPSA id m17sm9694972pff.170.2019.03.04.06.56.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 06:56:38 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH] Staging: wilc1000: Fix line over 80 characters
Date: Mon,  4 Mar 2019 06:55:36 -0800
Message-Id: <1551711336-100423-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

Break the line after '+' to remove the checkpatch.pl warning. Remove
trailing whitespace after '+' if any:
WARNING: line over 80 characters

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 5e7a467..75ec752 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1253,7 +1253,8 @@ static int mgmt_tx(struct wiphy *wiphy,
 	struct wilc_priv *priv = wiphy_priv(wiphy);
 	struct host_if_drv *wfi_drv = priv->hif_drv;
 	struct wilc_vif *vif = netdev_priv(wdev->netdev);
-	u32 buf_len = len + sizeof(p2p_vendor_spec) + sizeof(priv->p2p.local_random);
+	u32 buf_len = len + sizeof(p2p_vendor_spec) +
+			sizeof(priv->p2p.local_random);
 	int ret = 0;
 
 	*cookie = prandom_u32();
-- 
2.7.4


