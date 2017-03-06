X-GM-THRID: 6394528999032225792
X-Received: by 10.25.104.21 with SMTP id d21mr2359856lfc.31.1488842302154;
        Mon, 06 Mar 2017 15:18:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.15.1 with SMTP id 1ls1542163ljp.36.gmail; Mon, 06 Mar 2017
 15:18:21 -0800 (PST)
X-Received: by 10.46.83.76 with SMTP id t12mr3123392ljd.26.1488842301255;
        Mon, 06 Mar 2017 15:18:21 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id t131si3733wmf.1.2017.03.06.15.18.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 15:18:21 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id u108so19615939wrb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 15:18:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7xyv395WtLDWjFAPhC3HHuHeRvZO/vXhJl4hi7vdHkw=;
        b=mPmaDQKXc+K4I9oSnW3KOXtINaqJDoqwBVC07EOQjLg90mUUK6gXjoF3DQNxXYCmRF
         XpOyxp05H8K/0SFIsEjOPhF1SITNzdr2e5RvTHcCVe9V2yz7OuHrAO1FpGdc6nEanhru
         oA7OFj6InzSXSXlFXyZ9aWFg8MQHSZoZNUab3Le+PyEWz4i9BUFZPESH4kfkndUDTVr4
         txOK2nYCqZWFxfxXE/bikjtAwmfSoZJziwnGDbu6eWAbLHptTvLi+wWScLC1e7kiK5e2
         zfZ7Ac3+feD0jBJyHQP6v9H9RNDsygBuBudgv5xRc2cAlB47s6WNHfQmERdfN3l8kqVV
         mpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7xyv395WtLDWjFAPhC3HHuHeRvZO/vXhJl4hi7vdHkw=;
        b=lzduHaZ6g68gD6PqZQbLFGJlGkncimYqez0Ob0YX+w9DYitiBmW7ntv8IHEAzc+pXz
         xVN0JNnL/pBjMtmoEwEFaISviHfwz0E2oKMiDnNw6cPS+AyQBUYF8KOqjHcxqQPaxqw6
         Ivcel4heZnxXJUG7FiUFtMi/r5uvt3q7uywjl87FPFOjQYOGLsHHyoMg//2ifgI304Rn
         QEp69P52GXjkffoee5X6cE37r+hvy3dlpBiYpvIjygodnCHIs7LvtOsnf0LdqnySuo97
         CjShTZx51ehcUzojTq9jaiTHsqBylOSwOPESfX5lpURRhemUsQBEKX8RLfoArP7Dy+Ia
         7k7A==
X-Gm-Message-State: AMke39nzB0NtvJ/FEmih4u5dg0706BWzvvLsDiFvV5plpbXiVr3mfRltsYmoi7iUg3D6YA==
X-Received: by 10.223.172.77 with SMTP id v71mr19111558wrc.131.1488842301037;
        Mon, 06 Mar 2017 15:18:21 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:2cf7:7888:829a:4984])
        by smtp.gmail.com with ESMTPSA id o31sm2642975wrc.27.2017.03.06.15.18.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 15:18:20 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 0/2] Improve code readability 
Date: Tue,  7 Mar 2017 01:18:17 +0200
Message-Id: <20170306231817.7076-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix multiple checkpath.pl issues to improve code readability in speakup driver.

Tamara Diaconita (2):
  staging: speakup: keyhelp: Add spaces to align
  staging: speakup: keyhelp: Fix 'if' continuation

Changes since v2:
*Replaced the subject of the patches.

Changes since v1:
*Deleted the patch: 'staging:speakup:keyhelp.c: Remove unnecessary else' from the set and remake the original file.
*Deleted the '.c' in the subject of the patches.
*Added a space after ':' in the subject of the patches.

 drivers/staging/speakup/keyhelp.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

-- 
2.9.3


