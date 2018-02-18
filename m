X-GM-THRID: 6523850474748116992
X-Received: by 10.28.63.6 with SMTP id m6mr1813139wma.3.1518960457344;
        Sun, 18 Feb 2018 05:27:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.20.17 with SMTP id 17ls506527wmu.8.canary-gmail; Sun, 18
 Feb 2018 05:27:36 -0800 (PST)
X-Google-Smtp-Source: AH8x224WaHiPC6B871fZegSx3tYY4nN9LdtHE+Pjz5c2YVk8phN2/0Ja0+0Kt8vax78BHUdgBYRC
X-Received: by 10.28.108.12 with SMTP id h12mr1858657wmc.25.1518960456273;
        Sun, 18 Feb 2018 05:27:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518960456; cv=none;
        d=google.com; s=arc-20160816;
        b=c8rzYzUfrxHmPodQoeN/phsueZb7rOOWfXcg9np/5HX/1XLL0av0u+0qm2GwzKQnVc
         9goHFLNa9tMf1HEl+WUnFDdQUXnHDzIiIiNGxWT1vx64kHgPpzaUsSYiWUvC9qyxXILA
         nk5dDugqfNKRq0tzgqDtQkOqyULIV+2e1seaKHdG7m6QaEF1ZJvc1Wsu5/qLVpcAQ4Pu
         VJtRdk6Ad8gNkZT7pY0XVOLSKh7I7IiBErmy13uMVAbhcfCo3bebZ/i/feFcSXdx1OYi
         P7QQFtyDhwtxrxT7ZBnrTfoT7yiKlied/8ycewo4DW4qj2lMtH6GJhvntuhsq9dbyX+l
         /BqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=2jziTnaGnNlCiB8Z97wy4kpehwQ52IEJX74N6+6OGl0=;
        b=OQ2TpLas8Vl+u17Gtd9gKurQSCWuiKp2n3LbXP7NCRf4iJ7wkYoox9yI8QfAnLUnQA
         1U5ixo+yS5BZmDZOpYfR1RiQywi8q3Yr0+uQeKL/+3Q4przjQD4AEIq/zH6fSXkbtK7+
         3IV8034c/8LVHu5zqNJmqRyf0WvWFlVJXOq8ky3Q9S5WxV4t6GXZMbO7AdjEWZA8ypg7
         NjRppYHG5MOylV1JkqGQBErR6v1iC9ghyptmYcbK5daA/OI2MQ657yNKiEfCnhrlW/zm
         tygV18oplHSBWv4lTYrz4uaBpMphfou1ergLK3ISubB2mxdBPMTUBkxMUEg/+LTQ+iRX
         v3dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DyQGpCvl;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id q6si124408wrc.4.2018.02.18.05.27.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 05:27:36 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DyQGpCvl;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x235.google.com with SMTP id x4so11700708wmc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 05:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2jziTnaGnNlCiB8Z97wy4kpehwQ52IEJX74N6+6OGl0=;
        b=DyQGpCvlzOigbSMjRdvPANOEwmGHhh2XwVQv4DRpb95srK7upmSTtfraZ0SkySxhrA
         +zxjoNIIy+yZ6nBVf+UgAsttaQ6PIdMCuJbsonPxODvFEf1mNQM9FSXBJmmcxA3ANCrQ
         SxmFo3BZe4oB8CmqmSizFNffcuftFVCiIQqzjUFrLZTg/q+ntHbAZxQEtG82pLD2BEo0
         D8eicdGInrA4ZOiLnyHwGQJ9CUb0F6PpXatSa/q1itW4O8U5dHa/ef0QugO2sPDTZcJf
         tHFa7mcQlBzO1dw0nMNxnWkiGq5NrO28vEBlJ8v2ds0YRMnJvpDAlv/PGmVlASVW0MpB
         6E9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2jziTnaGnNlCiB8Z97wy4kpehwQ52IEJX74N6+6OGl0=;
        b=Op+iluWA0K0CWMbkUor73bYXvs/i9keW1IMhhsB9/Z13a6BzUrE4auO8UKrZnWvPya
         1Gen3D03B8gVCs/7IAnJM7/9mbMQJSlOAWHXdnpXzl1aFk/V2EM1KWeUfeVVCmuru3ym
         JKkc/ASgt7RI+4zVBPvv18NACwlHRw0hBjccYKEDbI2H5dREXhVQowwooFGVGCtrU3d8
         nO+mUDELKBogTnoT6eaaAkreEYioPKkK0EDEauxFcCJ6hjxstRKAv/AIu6QqjhWqYrts
         bygp/IXw0hm3gQHZInU6hbxFwcBribax3bkDGf1zSB1wYG8/LnjwbXIGyvB8Him2l/3Y
         TlEw==
X-Gm-Message-State: APf1xPAW7TC73vGSQ0vrVeVWeuE+jgh9WbGU0YG/NFQ+B3pkg7c3cffM
	t+n2Yjgku91q9hCXVik+FgYXGxSpGX0=
X-Received: by 10.28.15.131 with SMTP id 125mr9689010wmp.24.1518960455733;
        Sun, 18 Feb 2018 05:27:35 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id u3sm9710426wre.39.2018.02.18.05.27.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 18 Feb 2018 05:27:34 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH v2] staging: comedi: Use '"%s:", __func__' instead of function name
Date: Sun, 18 Feb 2018 14:27:07 +0100
Message-Id: <20180218132707.3300-1-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3

Replace an occurrence of the function name in a string by a reference
to __func__, to improve robustness. Problem found with checkpatch.

Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
---
Changes in v2:
  - Improve the commit message to emphasize on what was done and
    why. And make use of the imperative.

 drivers/staging/comedi/drivers/s626.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
index 0b3cfe934e14..ec54dc3e9ad6 100644
--- a/drivers/staging/comedi/drivers/s626.c
+++ b/drivers/staging/comedi/drivers/s626.c
@@ -1700,7 +1700,7 @@ static int s626_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)

 	if (devpriv->ai_cmd_running) {
 		dev_err(dev->class_dev,
-			"s626_ai_cmd: Another ai_cmd is running\n");
+			"%s: Another ai_cmd is running\n", __func__);
 		return -EBUSY;
 	}
 	/* disable interrupt */
--
2.14.3

