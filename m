X-GM-THRID: 6465542343215808512
X-Received: by 10.84.238.199 with SMTP id l7mr12937611pln.47.1505376385679;
        Thu, 14 Sep 2017 01:06:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.201 with SMTP id n70ls4878880ioo.53.gmail; Thu, 14 Sep
 2017 01:06:24 -0700 (PDT)
X-Received: by 10.36.36.67 with SMTP id f64mr814388ita.27.1505376384895;
        Thu, 14 Sep 2017 01:06:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505376384; cv=none;
        d=google.com; s=arc-20160816;
        b=ikjm+sPXF9jEKctnJX9zT93bnGZ7clYASSsO22fo2TZXni45ItUCm5eu5X1TaYK36n
         CE3RYDrLvPsbrVMcp17CIuYgQa2jptutMF+gRVA8kD2WsVwjbK1gcSaLvC/5WKwAs/hE
         ULA2/ot1hf0tjqCz12lxuWSktkBuwfqxCKeF2UrvjQOs2dXnnnV0XpKQLPYMNv6SGugM
         RisEPr43mLf5AoeBpoDPngROO8SC9XE3iHW5Lw7PEcRCix3z6VVE+jPrVw3Z9An54/DM
         HmwKz40HtoGFEp+9PKQdOBYt024jSBRpRRw6VH+amGYqiaBsljiaohI/YmFlyMh6+Lqp
         vUWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=WfqTKU0TLo0nkx9uHJmhYaT3XRj/NYO7ayEMMvmCX+I=;
        b=dgv83WhNRjWLqC6zmbyhq6wtqwAPQRM4IRYn19fYc/LPEXQchjokh0TES9lVTOnGfE
         NK1iaCSROmOd0WSTUpe9dvsMCkw1no9wuK5FxPG+HKigSHY0434sLYYsDzE/btpCAfdf
         Jn6l7Q/ntUuyQ4JD2YDAO2bdq6kB4tRoM1/C+tUWsiXKjz9rh4HwwT4XhWjVVbp7r2lG
         OULUz4RcaVNtktZuxeIzOahvWcDZ0yetv7UiYBtPz8829gXeqxVVjEUsTTkuCr7Rv89S
         imoFSUv0FN2BxbxJsTz1fyEDMv2MRTy/UvwmATZfzxcId16NZRdJEknj/38hz/v5Nj2m
         SVcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d7CJ4rjE;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id t77si1578048pfi.13.2017.09.14.01.06.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:06:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d7CJ4rjE;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id j16so1335984pga.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 01:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WfqTKU0TLo0nkx9uHJmhYaT3XRj/NYO7ayEMMvmCX+I=;
        b=d7CJ4rjEBLcIsu1DbBnByrpfOi/z1gGPVmJyXfI6iDRORNRKsDOvnVUjA4gWnzFlOv
         sxcxoQCRB3wN9PoSjiEtYcpH06m25FImmaT7NTtHGv8N4MnpokhpGxFRFzQcPuWZF2OF
         NLm3gLEd3y7OZiIffGKM2Jgl/psh6l524BNWSR/sftq7mwFhpPAayyhOE9Q61jPgW9vq
         uBqPy6OT09t9CJHxM06hf1r4Mgh0c8C4lOyDHASlZfpMA+8NFBKQY9xKKRUkPIXe/3iC
         yz3dO0VBT14D9OGj55ZSX99AszNfYnsJU7/dsP4aBe84W0riH/9mZBcxeieZ1WRMKElf
         IAEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WfqTKU0TLo0nkx9uHJmhYaT3XRj/NYO7ayEMMvmCX+I=;
        b=DutcItwIL53TEX1f0JPvFnHj2ZPIxS87P8xMuhw64z87hl1/evEW2jOqMUV8R3HFqd
         dprk8MK3tYSsn1h5i+FUlEpinPoUHgl7zGx1/5FNnzQtR+9fElbmMKPKHB7mfgo7rT6t
         5SGt81rMK2lZiaA2K1UzEm1em7f1A+9rB77eNLk86xe4iCosJzzwr0G6daBvm5JvrvU8
         h09Zrd7QjjkCkNVm6mw4RK0HQymQRKfyf7FkMmFS2hDUVvZxO+Hzyry23iB4ng66tWMM
         Rd1g0kon+6byOB8ESn1Acu8zis8XSwnuj/W5u8+hN7oXlb+5eT46Qtd8oPZpCfZ+jks8
         LhYg==
X-Gm-Message-State: AHPjjUg2hl8CkDjTrXNAsqs3Fc/W/on3q23ffTHVcnFHb2R++nId0zcx
	PWPU5Hbpi+aheAftffE=
X-Google-Smtp-Source: ADKCNb72qXSToMdsCDJ4Jkn6MFmNuPDa9NbtLuVxFzeugc5+2kgIz07rs1X7mAabryCYumADA/QYRQ==
X-Received: by 10.84.224.136 with SMTP id s8mr23849130plj.324.1505376384262;
        Thu, 14 Sep 2017 01:06:24 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id h10sm28935437pgn.73.2017.09.14.01.06.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:06:23 -0700 (PDT)
Date: Thu, 14 Sep 2017 13:36:17 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Jani Nikula <jani.nikula@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 0/4] drm/agpsupport: Code cleanup
Message-ID: <cover.1505376068.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes checkpath.pl errors and warnings.

Changes in v3:
 -Change commit title prefix from drm to drm/agpsupport
 -Split the commit "Move EXPORT_SYMBOL so that it immediately follows its
     function" into two commits. Removing the extra blank line is 
     now a separate commit.
 -Included merging conditionals in "Remove assignment in if condition"
     in the commit message

Meghana Madhyastha (4):
  drm/agpsupport: Replace "foo * bar" with "foo *bar"
  drm/agpsupport: Remove assignment in if condition
  drm/agpsupport: Move EXPORT_SYMBOL so that it immediately follows its
    function
  drm/agpsupport: Remove extra blank line

 drivers/gpu/drm/drm_agpsupport.c | 45 ++++++++++++++++++++--------------------
 1 file changed, 23 insertions(+), 22 deletions(-)

-- 
2.7.4


