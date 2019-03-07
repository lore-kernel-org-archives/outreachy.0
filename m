X-GM-THRID: 6665612621009387520
X-Received: by 2002:a7b:c3d8:: with SMTP id t24mr959970wmj.6.1551958933604;
        Thu, 07 Mar 2019 03:42:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b755:: with SMTP id h82ls116047wmf.9.canary-gmail; Thu,
 07 Mar 2019 03:42:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqy4AlTYCWsTbj//kjWOAYg5GW5goc/tNf2o0rmtLafSmByxBXMSK3xA4wFSC2FeCM8PY4lw
X-Received: by 2002:a1c:1a4a:: with SMTP id a71mr939576wma.21.1551958932760;
        Thu, 07 Mar 2019 03:42:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551958932; cv=none;
        d=google.com; s=arc-20160816;
        b=xhnBlIVd50FzSxwWf7dZq2CEHCP3izEOrpsX5zcioBIGU9rklb8DoASe+Es6caNMfl
         dKp0t9095DA3eSrwiKfppg6ogviBN2NgE8cJa2CaLTQTgxKCD8+rsychbXuN8mlWI48/
         coAWkfJuC1me/igCclg8Vi+oF7DpPaFtXTRHXxDPTGe17K775pwpjhACyuLTCivv3wwx
         ir1VpgxWql/rtGjonOFxR6iyUUGKGQeTc5PFkpp9qDbGGvaI5UyR4git9fknb5zLq/1q
         sVAiSoiJk0K8534gdfM1TC/w4UNOPAsudTCXK78eIAIjGbUKoXlZ4IKrzySrkUhMclzQ
         Yb2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=my+A26nBWRYE6t9pMjtYvZU3rvk6Eb+r47CEh3kWPcM=;
        b=Ya80E+ESwl5amvH6Vv/xeIcrrCxBZ2WNxl/C4umwx0npG3dRX3EEHSMVTn+RP/Ed/a
         kdn42UKE/5WBmQD3qQvPzZ4J2Lx//R3XCq8hjxon441FumItXRPpBnBEDx4F0+yVlFsK
         LIyLj9WHLFUGZrGFgVTP3hbgkEuu/H5cSUcf+ohmK39AU2wdD8EWwI//ihukLJW1rOx9
         WL396/EdIObHiZg8yPYJRng/yjgML0g1ZaZJLOG9x1WkHIKuR4FL3v7iGCqZ5sa+HP6S
         c6W+8TDrQ5tgjPypnX2Uibe5xxOSURUB/xMCf/eKfg2KAuuJqX7zWXejBQ2Fs7XmM84K
         xRrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aq9tj803;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id f2si213205wrq.5.2019.03.07.03.42.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 03:42:12 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aq9tj803;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id w17so17029198wrn.12
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 03:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=my+A26nBWRYE6t9pMjtYvZU3rvk6Eb+r47CEh3kWPcM=;
        b=aq9tj803b/uGTd2xH+FLfc3a3LzU9gqxDg159ekBUKKb+oQF3d96fYyLR1PkKjOZG3
         8oY5AmbSzI9YR87tYUB5pXyc2QSkPHRVjk4KI6PYjKIHRhl8Gwv18eHBKLHiG+YeS+qw
         SLlraRGpO7tS5WmsEVyYqjmpTxtfkOfopkMWgfstuQExexmlVrqCmVjQiMiN+PZC8Cvu
         AsXEtz9Cwh1TskIZlI5Pm6zUfHDV0ygwB49Va6jDQ7LcmuMeObiC0hkfVhOxg+nvGLZe
         oghnYomhB18nqgzsaO8/evLpv5HA0ZV+fMgYxqs0voLu7Ft4zB+7kmgJqin7ioJ7Jws1
         RUHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=my+A26nBWRYE6t9pMjtYvZU3rvk6Eb+r47CEh3kWPcM=;
        b=Eqp+IWR95f6rcoY8i0yNBnrKgQT1uUUVJeC7QOuhN4xnlLLMITEN6pGb6MWV1n2F9H
         pac63i+FZw9kY59OvG3zepp4OVAF4L29E0/Sg1l51xHXgQLb7Zdn4Ku8bj24Ix/Inpbo
         u93eux9B5Mfs3ETcLqWAKxyxlWZm8rMrdrRUEb4OJ9fpMXQH7MwGR7un0DmyxttdFJc4
         stAYP8zXDef07xyhceEmANGfT3y7MZtbHkDkrP/DkL6MuuK9aAYx0OnKgnfOw12oL0yy
         SbkAhJXj/FQcMRrSakOkuFLj1jnc2ZqcauL2oM6cj/Dhv+03b1+40e1xXjB0pL+zRads
         MQJg==
X-Gm-Message-State: APjAAAVkyGEuvh46nBgSK+TQCvg36NlLGWlAouL4K5hjKvHGngVv/Wq9
	WWWHaru9e7YxTZEsKLDN1vXTLQo09aE=
X-Received: by 2002:adf:f011:: with SMTP id j17mr6729716wro.166.1551958932473;
        Thu, 07 Mar 2019 03:42:12 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.103])
        by smtp.gmail.com with ESMTPSA id e193sm8784040wmg.18.2019.03.07.03.42.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 03:42:11 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH 2/3] staging: media: davinci_vpfe: Fix multiple line dereference
Date: Thu,  7 Mar 2019 13:42:09 +0200
Message-Id: <1551958929-9860-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551958871-9732-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551958871-9732-1-git-send-email-daniela.mormocea@gmail.com>

Fix multiple line dereference to improve readability
and avoid checkpatch warning

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 277d9af..5a44c0c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -920,8 +920,7 @@ ipipeif_link_setup(struct media_entity *entity, const struct media_pad *local,
 		if (remote->entity == &vpfe->vpfe_ipipe.subdev.entity)
 			/* connencted to ipipe */
 			ipipeif->output = IPIPEIF_OUTPUT_IPIPE;
-		else if (remote->entity == &vpfe->vpfe_resizer.
-			crop_resizer.subdev.entity)
+		else if (remote->entity == &vpfe->vpfe_resizer.crop_resizer.subdev.entity)
 			/* connected to resizer */
 			ipipeif->output = IPIPEIF_OUTPUT_RESIZER;
 		else
-- 
2.7.4


