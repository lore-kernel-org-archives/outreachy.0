X-GM-THRID: 6660892236702547968
X-Received: by 2002:a62:dd16:: with SMTP id w22mr6802915pff.4.1551104603906;
        Mon, 25 Feb 2019 06:23:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6152:: with SMTP id v79ls2948335pgb.12.gmail; Mon, 25
 Feb 2019 06:23:23 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYOxvUaOsAFTpT85tVHVDxfM9euGuGY9PFcxQRcnRiWYkfW1qZMVWvWKhl3Wv31DJGLW5Gq
X-Received: by 2002:a62:e10c:: with SMTP id q12mr6610049pfh.55.1551104603096;
        Mon, 25 Feb 2019 06:23:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551104603; cv=none;
        d=google.com; s=arc-20160816;
        b=ZKg7iIlQj1m2zb3JhSo0RpOJ1xH/qvfKO36U7HoRkzOO9c808crlqRBJdg8b1ckduV
         KkMuE+dllYNq/w1nRMIdKbqt5mMo+HVw0Y3SaFXKWwBAIorD12jL44JLUYz7vOIWMPfI
         3cbLyibsLTpmSBUGxX4kG+NmsS4g2mFMAxfWFy/V4ZBIuGg3bJNIzTSVBawvJlI74mQu
         C+v3FIxlpgkgPnLSYfb8w1zLQfiGKxb6dhQRzJGdQLEL/OMXCyDGsBQTTHA27Xbg3Vqd
         6GdeTffdzRTjQrJn3AQvsnIBiuPH4f1N91kiYqUEtKFy3jFzkF3+tMSl7zy7Kb1uk/Xl
         Nbsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=uLWgTR+OoTbM6M1X2ARJbe9SmsC7rcqyTREyV27cou8=;
        b=JZZicxR7x/m1xMWmdZ2HqmItVG/KrRJQKCJKf1JMA5ggz6RZlelnXGg+hUZOf2/rZG
         IokwPD3z5I2WJ8R9JOB6x+Dp41tHC6D9vBXRhyLsW4Ktx+jF293NyMRZ5WgaFtCsq240
         y3yA+iAUpiK22F2suasxatPGja2gBueo1PAmY71DkIjFlPmAh/agrmh1waHsjoQFKkg+
         KnSPi7kgrBuZPZsZPfX+DrxFcKmmPCxwqXOls0O4QqwQO2jpVTBuZ1HVaYEMWCxxoAXv
         nUllZ7tGQBUqNe3HqWgp+CtSHWm3hTMQajdXp9bGqEPMHLSeYTNKt8MvTvjWIb7TpK1+
         Sd9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0Eph5zG;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id b38si185126plb.1.2019.02.25.06.23.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:23:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0Eph5zG;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id m1so4560536pgq.8
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uLWgTR+OoTbM6M1X2ARJbe9SmsC7rcqyTREyV27cou8=;
        b=L0Eph5zGp9wCA0pjzha0IhnXg/2FLaYrZT/DW+eZkIkaOCeq6nKPeYphZUVLZYcOJO
         OB8cisi4mhzI7SYVoZ8eUnPIacMgPTquyvAyQ84jdoofTuDPN33OgbgmkFxafIbdWwfx
         9d8werIeVsgzRXoZpQZ2FEUe6FGBrvQDr0UxCbTzww9kNKi5hbgGVNWG7RWagNqUMYBR
         7hxDDdmD4/9Odij23pcGUuDOaA+ZH/KcP7sx4OYl/xNiJbFE+363RaQ/Ole6IpxVDtew
         J54/Dk8n4TWVXFge/VY9jKeZVaIP4qX8rKhtaXfpEWEybrRNwoxrXmHoW/v7ZD8Kobo7
         rm4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uLWgTR+OoTbM6M1X2ARJbe9SmsC7rcqyTREyV27cou8=;
        b=X56VvUluoiTPRY74kFuuqpTmNg95MsbYo1GDzF0McTO4fZ7LxMYsjOTyna7K8jLYA7
         u5Cx/jWmR/uKZonTm1v55F/+TQs2ta0UrlrWyh8u3PjVaAiK/1Wqm+4CKQX8Va4REfxE
         ry/Mj/zfiEJEiltYidemQSEgOSBEU1qT7n3/+HUSlpClhuU8HYgmwCl6YTzDVCTklsFs
         DtBNFdcPUMAMHhdkTzgFq5WNe5OtQd6TLvwnE9aSgr5EtOEoBTGD+eWXUMhs7vMRq0/S
         ffkyrwn2+y6AyLSZg1Bl7SF0IryHfe9CxtRJkokO+jmrbfoZxrWxBm41p6J1CcMf7Inw
         JLzg==
X-Gm-Message-State: AHQUAubG5bKAnwDrjGKWXioXqA8RaqzZFItwqHwlZERIZZyW/+opcHYC
	/gBRywGID+Cx+Tbp+th/hFNFQyA9lBY=
X-Received: by 2002:a63:2a86:: with SMTP id q128mr19427491pgq.424.1551104602591;
        Mon, 25 Feb 2019 06:23:22 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id w4sm22269768pgk.16.2019.02.25.06.23.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:23:21 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] Staging: fwserial: Add blank line after declarations
Date: Mon, 25 Feb 2019 19:53:07 +0530
Message-Id: <20190225142307.7634-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

A blank line is required after declarations and is added.
Issue found using checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2:
   Commit log modified to be imperative.

 drivers/staging/fwserial/fwserial.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index 3e416f5bbcba..a1b90ea7fcb8 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -1213,6 +1213,7 @@ static int get_serial_info(struct tty_struct *tty,
 			   struct serial_struct *ss)
 {
 	struct fwtty_port *port = tty->driver_data;
+
 	mutex_lock(&port->port.mutex);
 	ss->type =  PORT_UNKNOWN;
 	ss->line =  port->port.tty->index;
-- 
2.17.1


