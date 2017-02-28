X-GM-THRID: 6392198468546330624
X-Received: by 10.25.193.213 with SMTP id r204mr395404lff.24.1488299683125;
        Tue, 28 Feb 2017 08:34:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.9 with SMTP id 9ls161437ljt.33.gmail; Tue, 28 Feb 2017
 08:34:42 -0800 (PST)
X-Received: by 10.25.72.216 with SMTP id v207mr369300lfa.7.1488299682122;
        Tue, 28 Feb 2017 08:34:42 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id 14si215932wmn.2.2017.02.28.08.34.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 08:34:42 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u48so2292682wrc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 08:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=PpVAki3MRW8HfOatS//licnVFFVAvxkG5Ha13Rdb0Kk=;
        b=UwMGJ/ugJTrK9Uj/0+I6zaum0nLBvZf9+gu1oOvn70znDAcHwyLOOrosJqq4FfXQa9
         rPwv//Vs+iF1O9G90u6lO4rW/VI2qVXKZhiosuY26MsNnNvzwRlMedCn42aRmCyffJQe
         iGNm87M1b2oV47p8byu4SXW8zmKd/H8SIPypa8Z3bReH87Eu3DfEaLekcFLNjgBQZh5g
         2pKCPNH8KA9N/TdeP22J6eNtsQuBmWGdeOQuC6mdEXD7J9FWbA9ASkLq1cfybJPuPuff
         eJwnA4vWpAoi/4lN7SkbGeq+l+T0ohXPgFZiN+1AAjC/ZW1fd132DAe6zA95kVAZwTpO
         RMCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PpVAki3MRW8HfOatS//licnVFFVAvxkG5Ha13Rdb0Kk=;
        b=iNatnQsivHus6WXsLduu69HUrceh9/hdgQYwPQtUjB1zjAA4F4ajcNYrzeIhlbDE/S
         5s2X+pKtsEGpvmW4jVj7ScQEbyyIultUbHfTR5Hsjc6eM4g0EpBM7X1q+ywhL75NfxLL
         A53WZkDErdXHNdjzGszZXmCEDV2UMm13NgwepGykpnFKo08/XA5sM50hKU+p49y4ttFK
         R1eLAnlycmxqicYbCiv+RPK5bG//gxjLVJ5A9zNR2Yomq/Eo5rM19/UeFkeew7xOQ1rv
         R1aA2XHp+gxjCAyG/PESQ+ITrd1o+OfTvQWuq0oy+BSnux+gZDe+273VrKXhm+59gZz+
         pNGw==
X-Gm-Message-State: AMke39mAiy2z9WuOEpaBjeH4pq9Y/YGKqp9jCvYQBq8GriTYu3uBiHeeK59+qFeSyqg6Kw==
X-Received: by 10.223.144.65 with SMTP id h59mr3545093wrh.30.1488299681915;
        Tue, 28 Feb 2017 08:34:41 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id e72sm19260569wma.16.2017.02.28.08.34.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 08:34:41 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH] staging: iio: Deleted TODO file which contained redundant information
Date: Tue, 28 Feb 2017 18:34:29 +0200
Message-Id: <1488299669-22372-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

The TODO file contained redundant information which can be obtained
using ./scripts/get_maintainer.pl.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/iio/TODO | 8 --------
 1 file changed, 8 deletions(-)
 delete mode 100644 drivers/staging/iio/TODO

diff --git a/drivers/staging/iio/TODO b/drivers/staging/iio/TODO
deleted file mode 100644
index 4922402..0000000
--- a/drivers/staging/iio/TODO
+++ /dev/null
@@ -1,8 +0,0 @@
-2016 10/09
-
-ADI Drivers:
-CC the device-drivers-devel@blackfin.uclinux.org mailing list when
-e-mailing the normal IIO list (see below).
-
-Contact: Jonathan Cameron <jic23@kernel.org>.
-Mailing list: linux-iio@vger.kernel.org
-- 
1.9.1


