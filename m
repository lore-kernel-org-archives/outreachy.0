X-GM-THRID: 6664742734726692864
X-Received: by 2002:a9d:7ad8:: with SMTP id m24mr8913483otn.52.1552010689478;
        Thu, 07 Mar 2019 18:04:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:590f:: with SMTP id t15ls2645777oth.10.gmail; Thu, 07
 Mar 2019 18:04:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqw/5qo2hE9v/+8ySzPVrm8A0Q3rDnhJpPF7g7H0E1JKTvlf158YbgsMf9CLl3euZ+up7vVk
X-Received: by 2002:a05:6830:1205:: with SMTP id r5mr8912371otp.62.1552010688613;
        Thu, 07 Mar 2019 18:04:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552010688; cv=none;
        d=google.com; s=arc-20160816;
        b=jf8932oCBrxgX65UC+qgnIm2LKfg2tdXH5HbijBlhvL+0T+e1mbuty6zrtuLKMtT9I
         sR0RDofsb8KUjAIJTji8AgukSEGlg73IEweyzKM8zWiCUDWPMHfPRQjLL5TJFyZSlueT
         iPqbyqDDbD6Qi+9yLbwVQP7zkGfY/BkxBDuYoWC5rT8nES1UxJ/Uhi6v01i6ChNA7jo6
         SP8AcYGLcdGCdyKKn0Alh+8MD3WntZP+4BiJ/SuxapkwBU6G/B0HbkS831+34DyXnP+K
         r1EcRwO9SoBvOB4WjDSqJ5tuGrfGkWdRfDuvLGGBajnHqdi8wHH+5ZTylyjsu+YWYamh
         3ctA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=f+an1PHeDhknUev967b2i3OGor1Haxlfj3iUsviwGQQ=;
        b=XVdPSN9tvgxmPZymaskU05FtjFVNQxx7BZ6a2mXBHBuw40k18pCh7XrprXW546vFsM
         vUS4zvofQeKjVvOJ6ma3eKrjMxBozxXUAgYHQZD3RvFqRhGim0u7RonaP07asdeN3gnF
         OjxRCLW7Quf6gqjGyYuoiF8mWrCASnkTrlOGjUglGcDx8M0QIJrIz+wfuGX24mTOA7pU
         yA9losg5x5TsT5NKJroSH3SFbntgu54jhEhPQvNOaiMb05llYvJs/JqL4VS6pG5lJKK0
         uWKD4Rr6IrlHbhItgFubxjC3y9seK9nYnjzecYmfBsbhu+25XU6pCXKHAHvR8+zJ+4/y
         GTow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+MqMYEL;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id x31si417518otb.1.2019.03.07.18.04.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 18:04:48 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+MqMYEL;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id e17so12810266pgd.2
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 18:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=f+an1PHeDhknUev967b2i3OGor1Haxlfj3iUsviwGQQ=;
        b=T+MqMYELzeZ7d/1PUS+ofex2kLEzU9GryCp1xayYfaTpljxko3Se9Wo2BAFlIXz0rF
         ULo6R9hnVke0t8WEDrym7Z51yxOnWIvBNSgxA+uxvL0TutsYm+G/FQ9HbPAXiEpcLh0M
         qrDPJxkGetwcsx3YcS5OMwMOoGk85z7Em1GYlaUp0V3Vku53SdgWSeXxjC7zTig5fihU
         IAri4LBpzMsq1LT6IiG1NfAnHHyzm9SFOjLlEYBpjtgpPEAwQZ2X4aWoBOuOI4Cv/XgV
         0tXYKkN9nvXaoE6BCkS5QeppWdZHY7wGJ298UxBoCTHz5VIVp8RRX1XApUmLOR88TX8Y
         qKYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=f+an1PHeDhknUev967b2i3OGor1Haxlfj3iUsviwGQQ=;
        b=pCVqIu17Gcer8/NidQmGUKDwGFVmo6oBGlymQi+YWGa0F+ykqu/B3V5psTLR+/7lhb
         N2hqdbRVUQhTOgrgtfhR+hTHD0T90UsS10fFZTH8Ckpo11/mIO+8zeJKNYWN9/eWFrLg
         EWnarIvOoX/OSei3GJ8H+Er9BnH2xj+UaMLwE3u4fyLf1Zxq8su1tzUMdIsF7CYOW59y
         w+SILAaxthugA2jQRFkXKz6fD+6NnyK/qYmPZiJ89SvKYwZ/jb6R92aNbBvsn46J3njk
         w1fm0lDcN5s66Y1PM5bSrKmo4XHo5EsKZL55Fezls1rRZd/IJF7ehT/Sgh6e3Gg6ecYe
         /xqw==
X-Gm-Message-State: APjAAAVsSN0Rqqqgt2wdxMYyRWGCvR8owhtvf3vndeH5eftcD4qSGGvB
	b3eyXUbuw0txNWKk52BQ7dY=
X-Received: by 2002:a63:854a:: with SMTP id u71mr13971252pgd.141.1552010687957;
        Thu, 07 Mar 2019 18:04:47 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([2001:da8:d800:199:7e1:7347:f861:5837])
        by smtp.gmail.com with ESMTPSA id p2sm7424283pgs.7.2019.03.07.18.04.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 18:04:47 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v2] Staging: r8712u: Replace '--help--' with 'help'
Date: Thu,  7 Mar 2019 18:04:44 -0800
Message-Id: <20190308020444.3291-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Replace '--help--' in Kconfig and indent the subsequent text to silence checkpatch.pl
warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/rtl8712/Kconfig | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
index f160eee52f09..622ad14f232c 100644
--- a/drivers/staging/rtl8712/Kconfig
+++ b/drivers/staging/rtl8712/Kconfig
@@ -4,14 +4,14 @@ config R8712U
 	select WIRELESS_EXT
 	select WEXT_PRIV
 	select FW_LOADER
-	---help---
-	This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
-	If built as a module, it will be called r8712u.
+	help
+	    This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
+	    If built as a module, it will be called r8712u.
 
 config R8712_TX_AGGR
 	bool "Realtek RTL8712U Transmit Aggregation code"
 	depends on R8712U && BROKEN
-	---help---
-	This option provides transmit aggregation for the Realtek RTL8712 USB device.
+	help
+	    This option provides transmit aggregation for the Realtek RTL8712 USB device.
 
 
-- 
2.11.0


