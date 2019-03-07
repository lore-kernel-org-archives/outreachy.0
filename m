X-GM-THRID: 6665612621009387520
X-Received: by 2002:a2e:9d93:: with SMTP id c19mr616175ljj.25.1551958910651;
        Thu, 07 Mar 2019 03:41:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:121d:: with SMTP id t29ls660382lje.4.gmail; Thu, 07 Mar
 2019 03:41:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqz/eWWkkjiMm5Sjz53YCSD4xyfX3CqYU40E4eIkJJ0U/Wbzjso9L/S1F+PZ36gxVE81pMTx
X-Received: by 2002:a2e:8154:: with SMTP id t20mr603384ljg.7.1551958909535;
        Thu, 07 Mar 2019 03:41:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551958909; cv=none;
        d=google.com; s=arc-20160816;
        b=He5cUZKLUyC3P6SysodkVI5a0umMGem/p6uMyhVDnZOqNgfOD+1+P7m+XzNqS8kL+e
         HkXAPYuM6wXzdExrZ8oGmXHU9h+wQ6Ak6z+OfkqitQgRUejdW6p5r1tSq6yEtK88HtIP
         +V5nh3p1JVQELpl1kbvKFXNuDJ43eCmAVPwGo1AwuAL+k7E9lzkFPNwhFdwfnxhUkWeC
         FHnvNoV/3Sx5QVhAOgV/jU5usBYVIRSCvah+Lsxkj8TysqoXj2b9+x2+FRDSn508kOTR
         lM/92qFnpThvcXeuo0lr4YoLXTCWGAE1kE4rJkJMNZwelma3tE5POyL++NIyBor/FoD5
         PJGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=CAORLIELxqszOShE6VokNs9uqTRfvStxGfi3n4JoQjU=;
        b=H+rVS6oOJ73sS9XcVySBp7LGvwF/hUztGi5lG3EfoyLXhvjxmMtDe2G1KFtnvrzRlM
         g+VWs3ICJVeoj0Cpjfb/cBUWWYJRKAJDtNyUWks83kHDGW6fEIZfBfR2Zrkef1KVenOJ
         AQeDHvA9bzitiYuiteDPsdLollzbPHMD2E5GTO3VAK4Imncp2QN977KtoE6BRc3TY9T0
         CnaJx4g4aU8TCX6vpQ7zktnXxBvqk3sW1p2ZR5qBO3Js0wokyQH6Y3yoHeV1Vsi+hSVk
         q46ueDuzbI/r+n0qTO75vAz+qWJxHiHSpp5iTMqaf+Wc8Z/rPraKTyBWO7jxw3TntUEr
         1XdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ll8hX8wN;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id m16si156586lfl.0.2019.03.07.03.41.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 03:41:49 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ll8hX8wN;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id o10so6535940wmc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 03:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CAORLIELxqszOShE6VokNs9uqTRfvStxGfi3n4JoQjU=;
        b=ll8hX8wNgGeb/68JGHXx8n3UH3iulkIpNkUjgJNUL4uI83COeKy/1CFGHQUVERp5L3
         oidONPf6QdeNM7DYmpyG2KJvtMOAPKgvAY0ZrA4yAD/uXf6Z7DMXwWeuREML5RTVWR1s
         DbM9qAYW1Vi3c5iyL5CyPiV8R9GmI+CPEXoPwDlPbEPD71bZmFIkzChD89kMu4UFHzD/
         dYPDmIYbyniXkx6qwjXBtsoEzn+fMnUjREF1C/VmknTLTkXOTCTCfcENWAoPVYYv9Iyh
         rPv6BiYRDkZNVQYCIrinLu0yLK2JygC89Mwi1MG4kqwPk1FiLCkQlG7fSvnBSi10RgL0
         ul1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CAORLIELxqszOShE6VokNs9uqTRfvStxGfi3n4JoQjU=;
        b=NYvkW5jIgpGgh43qeJgyi4UV6A1X+WX64V47flxkSnkedckb1oimLlNBuDLLIIqn1V
         Tl//jZ6/p4mQwDCfQhNquN6cXvhYECEZ8l1d0zllWmx5HrMDJCXj3sVKgKVSKnhEY9ZQ
         Do5+WE1K8qUHX9zP6KULMQ3IDNW7HWfHMfENbNw+ZZrS7IBm3vu3pJp5JXtjDe5xbLUc
         kFBgbIzPajVyrw+vVoYb9pHXu1i5qdIlhfTr+zHJf0kEpaxUKZaL4qV1pHP+DZm4s+Gy
         hVymdc26nE6cQlVwIrRNJcml043Va0Fp+zEh3YL2QV3KPohJLKiuMkgrKI8AB4sim22X
         fH2A==
X-Gm-Message-State: APjAAAVzFJa76ybKx5FX5hfn+olAROXWFTH9JRM6mIkNfh9dSPxSrfoc
	GIRlzfzmD6pUymi1QqVqeJc=
X-Received: by 2002:a1c:e489:: with SMTP id b131mr5477928wmh.130.1551958908884;
        Thu, 07 Mar 2019 03:41:48 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.103])
        by smtp.gmail.com with ESMTPSA id e23sm2876161wme.15.2019.03.07.03.41.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 03:41:48 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH 1/3] staging: media: davinci_vpfe: Fix comparison to NULL
Date: Thu,  7 Mar 2019 13:41:45 +0200
Message-Id: <1551958905-9797-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551958871-9732-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551958871-9732-1-git-send-email-daniela.mormocea@gmail.com>

Replace comparison to NULL with '!' operator

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 22fcdbc..277d9af 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -703,7 +703,7 @@ ipipeif_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
 	struct v4l2_mbus_framefmt *format;
 
 	format = __ipipeif_get_format(ipipeif, cfg, fmt->pad, fmt->which);
-	if (format == NULL)
+	if (!format)
 		return -EINVAL;
 
 	ipipeif_try_format(ipipeif, cfg, fmt->pad, &fmt->format, fmt->which);
-- 
2.7.4


