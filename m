X-GM-THRID: 6665097919314526208
X-Received: by 2002:a67:810e:: with SMTP id c14mr3523036vsd.3.1551839038323;
        Tue, 05 Mar 2019 18:23:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7201:: with SMTP id u1ls111039uao.3.gmail; Tue, 05 Mar
 2019 18:23:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqwg/qvZSVAMGqZA7+uWeTs3/gDCXsSGCRL1rilzTi5wxFe/oJ4KudXuYHS3hMLPwwFhRoTF
X-Received: by 2002:ab0:262:: with SMTP id 89mr3623056uas.2.1551839037288;
        Tue, 05 Mar 2019 18:23:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551839037; cv=none;
        d=google.com; s=arc-20160816;
        b=DcTdlwYOIssQL19Ymmy5455Ntkh9FtZ8EnkErrDHBFa3+f8JuVuTXbVgaKMk+x0OWn
         aSjyGhtqAIjbFn94sFgWoU3ACcwNBQoh3XTX1NIDYecsghlBivLb1X9REvn/VnMC/G9b
         NeBLBoAAuThwLGlif3b3QNb2c/QYGKZ74gNyL9up2mGzfv8L7NKLhGHwUVumvBsXIBO2
         PRn3tI6DWXXCfHf0llZ66Oo5q4OGwd1+H/IGFbnfvuqZsxRNKQHkF65umx6kP11mDqlO
         NbSxTnbqKbKD17wcZaIfj/rJpzVwIEYV2OP1ED2tjKtCTAS9QRh7x4KOlEIpXn/tKEbv
         qrFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=MleZKIUXKMQAs6Xtx+Bb/Mqz2anobgiMlWezRzgmhrs=;
        b=ZbLoMnZ30ZYj1wCeXktn/fsnv0b0kKTST/6pwLzMFPbRKtavXPEa/tLOYQz0A4b/RC
         i4CuTvIe3U4i8L1gcj0YDqPluhhPgaoxc8cHsxVe2RLOf5B9c/n7UM1p2yXwjvEOvejA
         bCrRe+hQp40wYa+v8ap59Tzvt4JxTSr6XRtEkU7bSALBnBuIwsymL6LQpZuVuOprwJPy
         jQFQ9UPIB1dYA6R98iZJQR8fn66RZ2R1daZlOHM7gJqH30JKrSPgq+a1w3KLdji1hRU5
         VXM9P4Iluy3KkN/f/GyE3RRpDzt9/hkMwBqRA67sgbLZVAen+pyvONu26fAbyXryZVx5
         79Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pt6ryfEk;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c22si29754uan.1.2019.03.05.18.23.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 18:23:57 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pt6ryfEk;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id m2so7050605pgl.5
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 18:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MleZKIUXKMQAs6Xtx+Bb/Mqz2anobgiMlWezRzgmhrs=;
        b=pt6ryfEkDA6xJOWx3CjtQs5LYRrRZV5JzSCusavLstiGJlQiePg0l+X2D0LkXjr1oQ
         lC6Yf5K2ptDgQOHVosHbY6bmVn2Ce9/48MCGme7gEe3yHODCmjjYXezflBCeT++dvax9
         tVLYDxuzadsys4eyxD168d0Dd+qotIqet5PNzQKTAkNJ1ToQCxiIMHGbjmBrxOD5ri9g
         en61N/sBYPcumuPpiPnjXm/TB+aMBzaL1xcY18pgom8rlXCnJ9l2CsBZZfQWNlsEB66n
         IFTh84IuCZfuVMPlFtg47n4pgKRVGK6IwRTW7Nbo83g6A8VK0OkKIazMt6Nr/WHD15K6
         EKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MleZKIUXKMQAs6Xtx+Bb/Mqz2anobgiMlWezRzgmhrs=;
        b=cPCRxGY9wDJtVtmKJBibwWiQXGpckovrTbI7tNO2weOmj4mfTxlN92ZwIrdt2C+gO+
         795TgcldTTDEHDDrujhvrjy5IWuLJ1LkQtW+kdmL+i+JL6kJ8k4rDVofGZvuapG/xlX+
         It/Wj5OfsKdOxwBf8zGJFAMthYDanGDeD5ln/kK9KuMasyaIUx7Mr1U3sjd6svsbrxUU
         AKgmp/FzBgtrSZLohWhazFB6qYtpVQUussry83kpg5O5oNceS6DjImuJQTi1BIj5VIkM
         9m8VbVpz0VrZeJWdKuKrY3LbaalFI5vACjW7aMvpItQEnbsPFtm0jtp5LqVCVpWEaX5I
         QQAQ==
X-Gm-Message-State: APjAAAU3krNYemmYLnX3TTYR/hKhqMdwCmAriXoEI5K5hQK5JPDhs9Lu
	6FHHjaPK0vIkSuJrV/6f5Q01Y09lSbY=
X-Received: by 2002:a63:8d42:: with SMTP id z63mr4199857pgd.414.1551839036915;
        Tue, 05 Mar 2019 18:23:56 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([114.214.190.239])
        by smtp.gmail.com with ESMTPSA id n24sm528780pfi.123.2019.03.05.18.23.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 18:23:55 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH] Staging: most: usb: Change '--help--' to 'help' in Kconfig
Date: Tue,  5 Mar 2019 18:21:29 -0800
Message-Id: <20190306022129.4485-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

This patch change '--help--' in Kconfig file to silence checkpatch.pl warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/usb/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/usb/Kconfig b/drivers/staging/most/usb/Kconfig
index ebbdb573a9a6..539b38fb3d88 100644
--- a/drivers/staging/most/usb/Kconfig
+++ b/drivers/staging/most/usb/Kconfig
@@ -5,7 +5,7 @@
 config MOST_USB
 	tristate "USB"
 	depends on USB && NET
-	---help---
+	help
 	  Say Y here if you want to connect via USB to network tranceiver.
 	  This device driver depends on the networking AIM.
 
-- 
2.11.0


