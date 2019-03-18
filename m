X-GM-THRID: 6669720602377453568
X-Received: by 2002:a67:f68f:: with SMTP id n15mr11511912vso.31.1552919397141;
        Mon, 18 Mar 2019 07:29:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls3479801vsc.4.gmail; Mon, 18 Mar
 2019 07:29:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzyp+DO4AOTjEU4m6C6GE81Y5EOL8sC9C95DvuSyc/nF/Z/LECSOLZO42IUw8WJDGTEnrp1
X-Received: by 2002:a67:848f:: with SMTP id g137mr7034925vsd.43.1552919396346;
        Mon, 18 Mar 2019 07:29:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552919396; cv=none;
        d=google.com; s=arc-20160816;
        b=IqDGEVmXn2OseGpbguSDwm+q5HsKK3Dvyi5fMptDE03RLFEq6OaPt2ssbNCdlAVWv2
         IeUSUzMJi9r+HSZYumQhfyBcRJFtZ7S9gCk8IKls1a2Vt4kNnj6POGNpauBxSLXrH236
         77AnT/tN/8qHkjbN7d/NNAjmVW0VKl3BPlkN8M2Sz77HBmS9gDRvS3OJTjlDB2VdfKnk
         /88dEWZDoR9vVqwJyeIjPeiraob39SeIFhUwXn0BrnL0jd41267io5n1arsM3iDnJ0S7
         BK2kQ/UTlP5MA+4JHVkwDdlNET1jeV8t0hme7LYsqJV1h4QwUCCPKMP9TeBfeWwpNJW3
         xGuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=GFmGYSZqUf9v4KA0J9brVLWKWNgBo6Kv2359wlsPWkc=;
        b=EW7VR9MLK7mpZOsKKgHVq6thbFbdlhoFBk8Wn2Dg9u0HFTiiNn4CuHw9aedqXkXcKE
         Ix7AonvzZsuGdfQomcAI3TZnQ7WxU0lMA2hnRbdaW4pDpLzolRxQOdjh5Gbui+dLcUgz
         RtRXqrs0fFnfqcmr5+eDgCWVUdakRQ0q/750vTjd2V33WJqdX/6JfZXkFlFfHmgg/cWw
         rWuBVJx+5EMd1aksd/Ph3s62VX5qdz37VDSTUpSsaqj+l7lFMEeL8320LiuJnEqzAm1O
         9gvDNCOdp2r3sLoCDyNRzpUGW4v834GcmvAJ2vAOLoEiyjNTTIAoBBXw5WFBL2+pnbNA
         701w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QTQ3+x4U;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id h13si550656vkf.4.2019.03.18.07.29.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 07:29:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QTQ3+x4U;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id p10so4572720pff.3
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 07:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GFmGYSZqUf9v4KA0J9brVLWKWNgBo6Kv2359wlsPWkc=;
        b=QTQ3+x4U9NNZOW97UEmEYFK4JlaWYIMlW0RtrIhN1M//2wp0r2EL4EOCcAyYrRlbN9
         9MRS4gONw6eD1Ib9v4PwXHIFAN451t0H4zFnP/PO1F3PuZrNhndoe51852aGFKbqEIuQ
         6+hbEvg8eg3Dg2nv2d+5ict8klKwTt87OPILSecBXHimqCW0JbHHNQVABWG6azCLfj28
         XR8VIhjkfK6uGmAX8Z3Oxe7UteY+kwU2uEbOCb0Amru7aJOr3t/qggV5jynsTNldUUbu
         QyTMJzDLT2dWEJeyitJUwnqlSLdl/QDyMGJrFdRW0I0MAMANCPBL2PwHXjfoqKBOjS0B
         2I0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GFmGYSZqUf9v4KA0J9brVLWKWNgBo6Kv2359wlsPWkc=;
        b=C+fV7AfT3f0p+2i8e3PJ5U6IYvo73Y69b0lx0JvZMxNXpNfqVDMFBiPHaxOxa6K5U+
         dNvPNoPeWCD0Jgj4wp77maGY+7LNAQ9qCc06vmmmqKLjsGpg3S7hf4HMOAVrbqrfAtLU
         m6vOMNdzPVP82QRsrAzhc7grqxvtPZp2Vr8gPxvRgrQ+LjUphPt6rY8IsWSC17STzB+w
         3l0kMu9TegE0ag8rGcRln82YXoO4eYVJ86FH59udbvZH4mg1vGhqY9FNYq85QAhFJ1Jb
         21XLsJm75KCJiddUqewq7F1Wps8N2QjPnoIG0pNk8x0rfVbET0wCp9VuzEewo0vuprbU
         UBXg==
X-Gm-Message-State: APjAAAUdFT8bZF38HjrheCfZa1DaA1Sd7U4arRiuwy1TH5l4YoWIV3pN
	ECjE+bC/tjJ2o8qmw7Nr6VM=
X-Received: by 2002:a17:902:ab95:: with SMTP id f21mr20435589plr.188.1552919395982;
        Mon, 18 Mar 2019 07:29:55 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.32])
        by smtp.googlemail.com with ESMTPSA id w2sm12585328pgp.81.2019.03.18.07.29.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 07:29:54 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8188eu: core: rtw_mlme.c: Replace NULL comparision.
Date: Mon, 18 Mar 2019 19:59:44 +0530
Message-Id: <20190318142944.15824-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace NULL comparison with '!' in the file rtw_mlme.c
Issue found by checkpatch.pl semantic patch results for rtw_mlme.c

CHECK:Comparision to NULL could be written "!candidate"

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Remove unnecessary paranthesis 
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index ca0cf8a86671..2b5aaa940957 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1438,7 +1438,7 @@ static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
 			goto exit;
 	}
 
-	if (*candidate == NULL || (*candidate)->network.Rssi < competitor->network.Rssi) {
+	if (!*candidate || (*candidate)->network.Rssi < competitor->network.Rssi) {
 		*candidate = competitor;
 		updated = true;
 	}
-- 
2.17.1


