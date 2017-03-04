X-GM-THRID: 6393699904957448192
X-Received: by 10.107.187.197 with SMTP id l188mr3030859iof.55.1488649276452;
        Sat, 04 Mar 2017 09:41:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.248 with SMTP id t53ls13299469otd.42.gmail; Sat, 04 Mar
 2017 09:41:16 -0800 (PST)
X-Received: by 10.157.39.22 with SMTP id r22mr3519365ota.151.1488649276179;
        Sat, 04 Mar 2017 09:41:16 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si591168pfz.1.2017.03.04.09.41.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:41:16 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id r1so3040pgr.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rrhrW2NA2tyJg4mzA3i4Qps1aAiTDy08ttutYNdig9E=;
        b=upLkHn23gs+sxlE8KEYKgTmQO0SR2VYbDcbd95AE6vCk7U8AKXTVQePIfA7LkLvfGn
         tZI+pAv7Lcfie2OwxcZRpaVijxYCoQ8fE48akyqckhYsJY39FWcKSvWbJjmMyYEZVo4C
         ZRWe+veLeWXUv/nb6M6OkEKWsX7JCZoUjzkyTfsRwtmFfckQ0jMb0x/HY953U3Kj454N
         FV627Fcngxbst+OP+8KbBQXT0EwLmvv/LG1zh98CK/i8k8Ib29ksu5+ur+J098p4+2yR
         JrNls8pkTULehagstb87hjboZSjSC5N96cceNpuKwvkPpDoP3mXBTiADT7vo6SmfzrGl
         4J6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rrhrW2NA2tyJg4mzA3i4Qps1aAiTDy08ttutYNdig9E=;
        b=fYEvXIyyNaTz06hJGdExOETUdJtz4BCXLBouBUKTNv65xrj9W2SVyyZ/lk4Vq+o8NV
         v3qS9dqOF1DAoi82b5Sm94YmKbGAwU8PhN3Xf3F21aH6a+R6d+2FXtGrKT6TMbzyGUdr
         mIWCLieW1xZoZr071hHUOo6N06WjhGcNmiT6f43xQiTQrJfR+AIgTzV5rwgcZRkQ7lHh
         IL9crSRvFYs0qEQKD9Df1LrpqouPwZezrN222yjXpTZt8xNg5q3hU/+Q10Pny747MxVm
         mQwmBinstRnQXTIzoEhxE8mvPDxNVpSDwuCcdQQxkwLqh7lIXRmA8iQbQyrOfqq/2Spz
         ZEcw==
X-Gm-Message-State: AMke39lHBViBvC2FWGlI5M2vzNZWXNbZHs4R35tgSSwX/gHNBz6TyvjxxoAWx2plJY0wxA==
X-Received: by 10.99.36.71 with SMTP id k68mr10637751pgk.68.1488649275993;
        Sat, 04 Mar 2017 09:41:15 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 78sm30337201pfm.122.2017.03.04.09.41.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:41:14 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	johan@kernel.org,
	dtwlin@gmail.com,
	outreachy-kernel@googlegroups.com,
	greybus-dev@lists.linaro.org
Subject: [PATCH v1 3/3] staging: comedi: Replace "is is" with "is"
Date: Sat,  4 Mar 2017 23:11:01 +0530
Message-Id: <1488649261-10261-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488649261-10261-1-git-send-email-singhalsimran0@gmail.com>
References: <1488649261-10261-1-git-send-email-singhalsimran0@gmail.com>

This patch replace "is is " with "is". The replacement couldn't be
automated because sometimes the first "is" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/staging/comedi/drivers/ni_usb6501.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_usb6501.c b/drivers/staging/comedi/drivers/ni_usb6501.c
index 5036eeb..9a0a963 100644
--- a/drivers/staging/comedi/drivers/ni_usb6501.c
+++ b/drivers/staging/comedi/drivers/ni_usb6501.c
@@ -45,7 +45,7 @@
  *	byte 3 is the total packet length
  *
  *	byte 4 is always 00
- *	byte 5 is is the total packet length - 4
+ *	byte 5 is the total packet length - 4
  *	byte 6 is always 01
  *	byte 7 is the command
  *
-- 
2.7.4


