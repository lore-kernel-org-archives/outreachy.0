X-GM-THRID: 6804823419031388160
X-Received: by 2002:a2e:984d:: with SMTP id e13mr15873240ljj.275.1584371416067;
        Mon, 16 Mar 2020 08:10:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:211:: with SMTP id y17ls3431737ljn.10.gmail; Mon,
 16 Mar 2020 08:10:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vswEgwFexSvBB7rUb1RIvFMVXbbWmKzNtUEtOC69yMsToefYK+FxgL9xwgKZ/RxibXCYJ1r
X-Received: by 2002:a2e:9982:: with SMTP id w2mr4345442lji.11.1584371414780;
        Mon, 16 Mar 2020 08:10:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584371414; cv=none;
        d=google.com; s=arc-20160816;
        b=axD2ZFKOxsKdDq5UKmzSUEdORqKfjhf0opeF9zVNlaobZkwhNAP4iWWzsjvSlrJ3od
         yNyT+/q/zuG6vJcn79P/HWUZyqAOIPGsPZbQgb+5IJlFa9gDP1cETzhVHfRGDv2fOgsp
         1yzUNp0HV7TOsK9GgJMKjKcACcJzGcW0oEvnbRRaayI9SEtPY8TzX2AYpazNMz1TYBiZ
         Gk96vloFmJV4cAWfO/fxVt79JaVL5zqwvxdgBIOm3abixmFiw+mseJPkyy8bXxe1oJR7
         7qlfCM8M17H1BKlqEOsdNfm+57byxokUYQHKkwxS8mQF+AElzZy3gH/Z2ODrT3ru/ZX7
         jDhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=2Fx3frZ0Q8WUx1NnFpeDXhjX6FabST3ZD5y7N3fZDOE=;
        b=YF03bcb++C65dxR9s5kjS8RLxlbR5t01rCUvyT1JNVGRguypLwkuqpy1I6hDE/y81m
         NDgGcVIKaxBDmy2TmAOh1rf29BLVgfNokYcA6UM3Eed/ZazA2SLvuL3eaC9tnNLbBm13
         K7zthNNm3DktAVrwoVIQe0tGd40X44q2JSMLmHwKkt6U8Ppfi0k8pjs/9xjb1/vfW1D9
         Qsp/xquTIaRFzDzXeIrzubK6Bg5g3go7aJuv1IE2TBcyjGJ2/WOtt88ypjn3RbkvhQE5
         s6OPf8RlixdzXi0F50wJgsgPsOPv3Yu3vTEGBxIxJA7QPs31iBBGpKgoqRdXm0he6FKL
         6epw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GIE2FZye;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id o4si9543ljp.4.2020.03.16.08.10.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 08:10:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GIE2FZye;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id w1so19084961ljh.5
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2020 08:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2Fx3frZ0Q8WUx1NnFpeDXhjX6FabST3ZD5y7N3fZDOE=;
        b=GIE2FZyeHd8kmflExhgHd/Zy/l3nG/2U0K8O/X0MKEST++7U8JfQDvbxY+gLH3Ycsi
         IjCwZuhl//0O6mgaUBzSqgqqJ7XaigDqCBXccaNdvHJVSKwsgPJ4Tn69oW4XgqrkS/57
         x1ET1c3h/i4Y8vrMb1UCEuYknVilfzgiKAv5Fmpxzof8RnLPjwYj6B6wKRDSSiephId8
         YAvxL7HfKecZF3Sg0sPxTUNDMTnP5AWIix76l+oJ34jvj11E70bNEi+u2ybfdIlOaH4w
         8T/FUwByAPxASmEEE/OWM08y3L10eXFEEILKfHXaBW9W2mrmzWhs+4evJe39YYIRzOa/
         eErw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2Fx3frZ0Q8WUx1NnFpeDXhjX6FabST3ZD5y7N3fZDOE=;
        b=U4bZDHavKQjm9FKPqAGdKEiZkq1hNxxVXn7YRhRE4YD64xSxFrp6y7eMt1FtUmDzY7
         uhVk8s1gvID1m585EuZYDP7ukeeiPaOh5btbvZWC02WJBUwxU3KvVxp3OMLp+gU5EU7q
         nMUYYoW2XXMLI+mK2WMozast6CA55hq75+/Bxwm81FlNVnbakMTG+pNRhNPXZHcyDikD
         7TY8ZZ+bAfO/Mpu8nxSkH2fE7BF7BuIXvAVqkdBupzOyPnRdPy+beLl10AHMGaSn3vmn
         Regubwb6RYNq/QHKcZDuqubFfkyCDIBpkplTmuBnYTaavXevdU7tQEAog8xbc5WKICvn
         cqTw==
X-Gm-Message-State: ANhLgQ267kT8SmCGdocwotEJgqDCVAMxlKHXckpBEef02y/X2Y01W9SK
	1DI+K1F5tnuhLcq365jWkHJlPOxYMGE=
X-Received: by 2002:a2e:9091:: with SMTP id l17mr5970928ljg.154.1584371414518;
        Mon, 16 Mar 2020 08:10:14 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.64.169])
        by smtp.gmail.com with ESMTPSA id t3sm51306ljg.57.2020.03.16.08.10.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Mar 2020 08:10:13 -0700 (PDT)
Date: Mon, 16 Mar 2020 18:10:09 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wilc1000: rearrange line exceeding 80 characters
Message-ID: <20200316151009.GA7604@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Moved to the bottom line after && operator for it exceeds 80 character

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/wilc1000/netdev.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/netdev.c b/drivers/staging/wilc1000/netdev.c
index a61c1a7..f94a17b 100644
--- a/drivers/staging/wilc1000/netdev.c
+++ b/drivers/staging/wilc1000/netdev.c
@@ -794,8 +794,10 @@ void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size)
 		u16 type = le16_to_cpup((__le16 *)buff);
 
 		if (vif->priv.p2p_listen_state &&
-		    ((type == vif->frame_reg[0].type && vif->frame_reg[0].reg) ||
-		     (type == vif->frame_reg[1].type && vif->frame_reg[1].reg)))
+		    ((type == vif->frame_reg[0].type &&
+		      vif->frame_reg[0].reg) ||
+		     (type == vif->frame_reg[1].type &&
+		      vif->frame_reg[1].reg)))
 			wilc_wfi_p2p_rx(vif, buff, size);
 
 		if (vif->monitor_flag)
-- 
2.7.4


