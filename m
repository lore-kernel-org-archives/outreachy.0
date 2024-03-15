Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9CC524C3
	for <outreachy@lists.linux.dev>; Fri, 15 Mar 2024 21:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710537618; cv=none; b=d04b5PE1ZF7IBbH2shd9VKyE+1ySQd0fEHX6wg5eQg2Lra+r+ai+KnLT6lCDBb3lTngYba4XBvfD+P+TZXmYtRh3tV0fdYewW/wVp6lM5j8/dExk8A9P4bEo87eJ3yaFfkaiwR2fgenjN97Ee1tgLX+n5Dc+Sx9JDyV7qy329kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710537618; c=relaxed/simple;
	bh=/rAhp5fWBKrBdEV0longFkkw2bcW+4PWXvWNnaLR8qU=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=IdCu49wO4h43+uzU2u0dYzuQHdVv/QFf5XivXNf7DTtzWqR+rxkfAQ8ofuaC8UjVnyIgSNsrdFrvmHWHhkM28j7QQYIH2+dTe2LMAhpTEbrukkgvtOzp9vribrza717INWXfCZai54cUuUC1bbc60Tc2bFGse5pn4PBNlpnNTBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IBjaDMPe; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IBjaDMPe"
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1dee5ef2a7bso13147755ad.1
        for <outreachy@lists.linux.dev>; Fri, 15 Mar 2024 14:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710537616; x=1711142416; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=42eGUTEM2WkRKIT/IYoF1gf6rERlQ9yv+m9C3/sXfdk=;
        b=IBjaDMPeyzRqJ6CWkHE24koOLoJ6ztfDdXN7yRM7/VULdBmvBNOIRHgVH5R69a4zRK
         gF/AwqzvcCAdSksG8MpCPoH6UVehN1DLnua1/8tQHAeY1xt5Ky7f9oKpnajR7JNBDaLg
         hkifL+oS4EmZAbF9beNP6MkBo7Oxh+E9kz/lTi/gANQberThh5AQ7OuPxFxQOMV9QRzR
         wFL2pI8vcy4Wp/JnOYRnbVGVp24JTWccLkandHTle5Utq4Sn45/l0pF8baVdSD/QqDCd
         n3CBodSgNh72iuZQwlQ/BF8x4pw+myfeSdskOHrpfDxHRhKLcprXvt9EXEnXIKkNv69Y
         ojCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710537616; x=1711142416;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=42eGUTEM2WkRKIT/IYoF1gf6rERlQ9yv+m9C3/sXfdk=;
        b=XEsNbzmtjS+ZIg2wY7q3ecSE1TvMAsAEcurZe05cYUyOVUBQ7+8QLuLWNkfe9a4AKz
         z6czf6ErnUFtVGcc0dHChRYKZ8MsqDNLDDiQyHl7BX8oNsUYWM1lOtwsqigqzKaDXc8V
         jbQ8yNKVK+yVt3eMvbqACIhJXMI7Xtz31rHzTDDJt9pwfxniv7xZcrdLEIVSNSOo5Ygv
         G8uxxtj1koYcxDfMh8vOhTTth/ooWlyEctnaOxBGw8HnmvEpY0k9dCxk515NuLXXeo7b
         6D/EnQIDTrHTE7OHfTSGyHLpdg4CN179wrauv5HpEJCgEAzTDfvRWMXQi5RdkMavudeh
         GeMQ==
X-Gm-Message-State: AOJu0YwfUX1YB9MqFfRVbGpNrgcDKjtvbXZ2wBykjj3hRkUDUqd+2fu+
	iZ3Wq4wRYF7Q4dAb+bXMsTvacXnNNRKgkHBwXFCjJfvyWWBjf4jK6lkllEic
X-Google-Smtp-Source: AGHT+IFwW3vXvVGC3gqXdq0JG0mgsHJUXBdB0sMLUmZhUsi7l0fk6epEN61KMUTZq43B23HWEKPfZQ==
X-Received: by 2002:a17:903:2349:b0:1dc:56a9:5e9a with SMTP id c9-20020a170903234900b001dc56a95e9amr7082852plh.46.1710537615975;
        Fri, 15 Mar 2024 14:20:15 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.124])
        by smtp.gmail.com with ESMTPSA id t20-20020a170902dcd400b001dc9893b03bsm4339664pll.272.2024.03.15.14.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 14:20:15 -0700 (PDT)
Date: Fri, 15 Mar 2024 15:20:13 -0600
From: TaheraFahimi <fahimitahera@gmail.com>
To: outreachy@lists.linux.dev, gregkh@linuxfoundation.org
Subject: [PATCH] staging: ks7010: fix spinlock_t definition without comment
Message-ID: <ZfS7jcATb211X4I8@tahera-OptiPlex-5000>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Signed-off-by: TaheraFahimi <fahimitahera@gmail.com>
---
 drivers/staging/ks7010/ks_wlan.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
index 94322e2ea304..bda7e0255b2c 100644
--- a/drivers/staging/ks7010/ks_wlan.h
+++ b/drivers/staging/ks7010/ks_wlan.h
@@ -468,7 +468,7 @@ struct ks_wlan_private {
 	char nick[IW_ESSID_MAX_SIZE + 1];
 
 	spinlock_t multicast_spin;
-	/* lock for synchronize access to device read operation */
+	/* lock to ensure safe access to the device's receive buffer */
 	spinlock_t dev_read_lock;
 	wait_queue_head_t devread_wait;
 
-- 
2.34.1

