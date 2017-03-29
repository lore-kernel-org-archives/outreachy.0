X-GM-THRID: 6402618675117948928
X-Received: by 10.46.83.23 with SMTP id h23mr4938ljb.24.1490787853586;
        Wed, 29 Mar 2017 04:44:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.201.79 with SMTP id z76ls1674947lff.54.gmail; Wed, 29 Mar
 2017 04:44:12 -0700 (PDT)
X-Received: by 10.46.83.75 with SMTP id t11mr4746ljd.26.1490787852558;
        Wed, 29 Mar 2017 04:44:12 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id a126si409188wmd.2.2017.03.29.04.44.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 04:44:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id w43so2182953wrb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 04:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=hih/0jgAHbbK1FrYEssLyp0WG23HLou4PcXqtrPLb1E=;
        b=geYMFECiSL91QtTn8r0IO3ULcuIyLd6cHvXh2pJg/sruodZEtClN1B48Hspqpvozfx
         25KoSlwP5cRCDI/iSdKw7zw5o7t94TNyqychow9ySKh7e+PQlZxVxK5OcxyzyQ9tjYaO
         509E3YffIwLoVjBHbkvQoymtkeIsNoI+XvHz4HJE6q0C2iENZIbUZcEM9+VBusonHdRW
         JrYxXXjw/M104MJLXSWxBYZ2bwcgSyeX1UVZmIMq9AVnurA6sW5+1cLtQB/iSzNYM9c3
         bT4zOS3khwssmMtrx2DSU8CuDiEorqLLXDVZ/ZZIGYjLe8ctfQ7du2tplJsjZQelsheq
         aBWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hih/0jgAHbbK1FrYEssLyp0WG23HLou4PcXqtrPLb1E=;
        b=R25q0G3wHND7U5pzwBQiJCe+Aohg/mP68GXXQO+Ji4JsO9Gz8JWHhqsqid+USp3GJI
         AmQWBnHvwhHrjmEBh4i3rgEchoUC3B7BOgKKoMxw6GBmS8i91BbO8SvYt2yn+NFuo2Fo
         lDh//CWSLP88f9VzwJDRs+reCfN0OSu/vMXdifliVItZEuY1w4M306i9ovnuKewbm61x
         eKMR9+CNpt34H1JlTo23VGGIJnARo1XnaO6Mqa1rCZAE+4ZvUpVKgnoV36NQR4zohGEL
         RmoDYwyfLbcmgCqqgk0og3z1+uGiW1wZ3zRjBR21Brp+BNj0OLf87Pdqyxy5lAv5ys24
         A7fA==
X-Gm-Message-State: AFeK/H3dwaTQODAwFDMrsa3YwpzKNCA/27yEF1RZggdwkr5HjGpGRtpdzQ/ib3jIuCryqQ==
X-Received: by 10.223.170.216 with SMTP id i24mr14625wrc.153.1490787852330;
        Wed, 29 Mar 2017 04:44:12 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id w10sm7805472wmw.14.2017.03.29.04.44.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 04:44:10 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	outreachy-kernel@googlegroups.com,
	corbet@lwn.net
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2] Regulator: core.c: Fix kerneldoc comments
Date: Wed, 29 Mar 2017 14:44:07 +0300
Message-Id: <20170329114407.3390-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Remove the description for the non-existing 'ret' to fix the build
warning: ./drivers/regulator/core.c:1467: warning:
Excess function parameter 'ret' description in 'regulator_dev_lookup'.
The description found for the return value is: @ret: 0 on
success, -ENODEV if lookup fails permanently, -EPROBE_DEFER
if lookup could succeed in the future.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v1:
*Wrap commit messages to less than 80 characters per line.
 drivers/regulator/core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 53d4fc7..219b665 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -1451,8 +1451,6 @@ static struct regulator_dev *regulator_lookup_by_name(const char *name)
  * regulator_dev_lookup - lookup a regulator device.
  * @dev: device for regulator "consumer".
  * @supply: Supply name or regulator ID.
- * @ret: 0 on success, -ENODEV if lookup fails permanently, -EPROBE_DEFER if
- * lookup could succeed in the future.
  *
  * If successful, returns a struct regulator_dev that corresponds to the name
  * @supply and with the embedded struct device refcount incremented by one.
-- 
2.9.3


