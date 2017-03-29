X-GM-THRID: 6402618675117948928
X-Received: by 10.107.21.195 with SMTP id 186mr18550iov.14.1490785370356;
        Wed, 29 Mar 2017 04:02:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.205 with SMTP id t13ls18195836otd.8.gmail; Wed, 29 Mar
 2017 04:02:49 -0700 (PDT)
X-Received: by 10.237.38.197 with SMTP id q63mr10299817qtd.37.1490785369928;
        Wed, 29 Mar 2017 04:02:49 -0700 (PDT)
Return-Path: <broonie@sirena.org.uk>
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk. [2400:8900::f03c:91ff:fedb:4f4])
        by gmr-mx.google.com with ESMTPS id a3si970228pfb.2.2017.03.29.04.02.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 04:02:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.org.uk designates 2400:8900::f03c:91ff:fedb:4f4 as permitted sender) client-ip=2400:8900::f03c:91ff:fedb:4f4;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of broonie@sirena.org.uk designates 2400:8900::f03c:91ff:fedb:4f4 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk
Received: from [2001:470:1f1d:6b5::3] (helo=debutante)
	by mezzanine.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.84_2)
	(envelope-from <broonie@sirena.org.uk>)
	id 1ctBNF-0007he-73; Wed, 29 Mar 2017 11:02:47 +0000
Received: from broonie by debutante with local (Exim 4.88)
	(envelope-from <broonie@sirena.org.uk>)
	id 1ctBNC-0007Pn-FN; Wed, 29 Mar 2017 12:02:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc:  Tamara Diaconita <diaconita.tamara@gmail.com>, Mark Brown <broonie@kernel.org>, lgirdwood@gmail.com, broonie@kernel.org, linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, corbet@lwn.net, Tamara Diaconita <diaconita.tamara@gmail.com>, linux-kernel@vger.kernel.org
In-Reply-To:  <20170328183021.2683-1-diaconita.tamara@gmail.com>
Message-Id: <E1ctBNC-0007Pn-FN@debutante>
Date: Wed, 29 Mar 2017 12:02:42 +0100
X-SA-Exim-Connect-IP: 2001:470:1f1d:6b5::3
X-SA-Exim-Mail-From: broonie@sirena.org.uk
Subject: Applied "regulator: core: Fix kerneldoc comments" to the regulator tree
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: No (on mezzanine.sirena.org.uk); Unknown failure

The patch

   regulator: core: Fix kerneldoc comments

has been applied to the regulator tree at

   git://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From fffd1133388857f5b4b8c588b41b2ade16c7891c Mon Sep 17 00:00:00 2001
From: Tamara Diaconita <diaconitatamara@gmail.com>
Date: Tue, 28 Mar 2017 21:30:21 +0300
Subject: [PATCH] regulator: core: Fix kerneldoc comments

Remove the description for the non-existing 'ret' to fix the build warning:
./drivers/regulator/core.c:1467: warning:
Excess function parameter 'ret' description in 'regulator_dev_lookup'.
The description found for the return value is: @ret: 0 on success, -ENODEV
if lookup fails permanently, -EPROBE_DEFER if lookup could succeed in the future.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 49a0b6a2e237..c20b28a63d15 100644
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
2.11.0


