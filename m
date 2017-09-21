X-GM-THRID: 6468338986973659136
X-Received: by 10.129.99.65 with SMTP id x62mr5738162ywb.67.1506027529759;
        Thu, 21 Sep 2017 13:58:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.56.8 with SMTP id f8ls826207yba.5.gmail; Thu, 21 Sep 2017
 13:58:49 -0700 (PDT)
X-Received: by 10.129.157.20 with SMTP id u20mr5828895ywg.223.1506027528993;
        Thu, 21 Sep 2017 13:58:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506027528; cv=none;
        d=google.com; s=arc-20160816;
        b=I+4qvXEmZ5+LGLDCgnuggRX7gzwiXAIuBIJBfM4ckqzpazzTo7AY4sOZG5I1XDuIDz
         4znUUw+HruMVr7W0ZIsGnu2q1xULZm19KAx/5vDIDQXJ/rNXgTduz5Cvuc1blw5QIsD6
         AjAwebYuPcV4MAdFb2WiN00VAyypcwxbchEhc1+U/E8mbSX2pkhvUnHLLfrJvV8fC4Yo
         AIkgSJIay9Ft+ZXAK/oXSm/xwPPa7NypMeWsA7mC1Vxhz3qGskJDAeY0H27q0yIRID6A
         HsaPW5ZHASIKfRHAi7gwJA1SwjRd84snl/anEMv6NqpXttD61bfRxb8me6OOsK+aZpJZ
         ntDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=paAJu7qPCVg7+ZRN77+QN8WjlHpYarWtO1oaPFDXrrc=;
        b=sBgPl12FYLYhVpaGEBfiQG/wkUG02tzjsrdkwTd6aFxmjC9tAcjCpk52IWTHl98dLz
         vagmefx17mD7w1wEJ6KqbcEziPeAqhSaBasuyR7AUCAp/vugAr8bl3DAofSYiG02OGm0
         N5Sx3KVVSA4/z8+cIE3FtS7Filp+dvsKEMpaJXhRuCRBiRb+iO2Utb+6FgL7RktT/QAS
         Q9W/eyPRZioevlv6vbhC2kNyPslXKWWUHuHFGaz1qKWlAGKbYawAlcJAmlf0Rc5xZnZX
         68xdBGBEerDd8dEBWTS/Wqqyn3fSMAGeEzeoKy9Q7juSs6cNJdPi50lqrogL5P6P3z4h
         +pkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W/gOIR+P;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id b6si108704pfm.28.2017.09.21.13.58.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 13:58:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W/gOIR+P;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id u18so4050132pgo.1
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Sep 2017 13:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=paAJu7qPCVg7+ZRN77+QN8WjlHpYarWtO1oaPFDXrrc=;
        b=W/gOIR+PNhEdGGHrA6Ew8oGwQTWQBF9cU210K7EkbeBHkzDuWHkpoUDTlOAww6Lm9u
         ym3m0livzhrzZWJXoas0sybjLNaEJPRyIkLZH3iBpiL4f1u4x+sfnoQE2v+UUJmu+uTX
         0UrYfM9+7zweSYW82QlGrRDQqBWSzGpT2jd5t+CmgCZyuOFhHwWmrs3tSDt3Arqmxvxd
         ZddaoWnqZ4/+/jPiq//JZyWnSZ1gVdv7gerKL30PFn8n0TIUBXyOh1kEFj355p7fEw0T
         Be3OUC3ggTgBEW0iB57+BCFaR7OAtsjnu5fjvGusOKUeyzfvlxeldnkE4KTpUfqRFl0q
         TVWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=paAJu7qPCVg7+ZRN77+QN8WjlHpYarWtO1oaPFDXrrc=;
        b=BIiPFco0Ezie/h/PdsivUZemRmPnY9m7BF99qUkl5YQu5QQWJeIWCNu+6uxlMvv/cm
         ZFaiicgzT2gxTssQk3xnyX8rhGDVShCmVqlxpny95MrZgE5zuEBi7wIPs0faudsVHgab
         tedNuzMJU01rgr8yFwvMAYqO7P8Npx4fVqXIpHelu7BFZlQmYZmEg7oKqVf/x707iMU2
         YRyLWiTXWOL3fyhZbafIXnA27LvMZUzn5drF2Bq8BJ4T4JW+WvHNoE/TyREqTUQoK0yu
         VYTWcSzUVunOx8Vem10rqSK8Fbz8BSS+SvJFxSfgPQ/PssjSTlqGHSTAOJbbv7O0WPyK
         UiWg==
X-Gm-Message-State: AHPjjUj1m6eiSY5LxBDwWk3FeGYBF91YnBIq/OWmm4LPefegkULzSTxi
	BgHeJqJzLm4LWuP0EEEEhUO8wDbX
X-Google-Smtp-Source: AOwi7QCq5OfFzxfvbR6j/e82zZ7yo4szkzRSM2fyebp5PR2aY6z8QMVSifMZqeHQ3osCpEJAEHtaug==
X-Received: by 10.99.126.84 with SMTP id o20mr7078240pgn.239.1506027528520;
        Thu, 21 Sep 2017 13:58:48 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id t76sm4544861pfj.43.2017.09.21.13.58.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 13:58:48 -0700 (PDT)
Date: Thu, 21 Sep 2017 14:58:45 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	gregkh@linuxfoundation.org
Subject: [PATCH] drm: Remove obsolete "This is gross" comment
Message-ID: <20170921205845.GA21795@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove obsolete comment which was initially added in 2008 to annotate
that idr_find() was used before idr_remove() since idr_remove() didn't
use to return feedback. The comment now is irrelevant with
commit f6cd7daecff5 ("drm: Release driver references to handle before
making it available again").

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/gpu/drm/drm_gem.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index c55f338..b9bddaa 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -282,15 +282,6 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
 {
 	struct drm_gem_object *obj;
 
-	/* This is gross. The idr system doesn't let us try a delete and
-	 * return an error code.  It just spews if you fail at deleting.
-	 * So, we have to grab a lock around finding the object and then
-	 * doing the delete on it and dropping the refcount, or the user
-	 * could race us to double-decrement the refcount and cause a
-	 * use-after-free later.  Given the frequency of our handle lookups,
-	 * we may want to use ida for number allocation and a hash table
-	 * for the pointers, anyway.
-	 */
 	spin_lock(&filp->table_lock);
 
 	/* Check if we currently have a reference on the object */
-- 
2.7.4


