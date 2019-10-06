X-GM-THRID: 6744795615076548608
X-Received: by 2002:aa7:96b8:: with SMTP id g24mr30515051pfk.163.1570400424873;
        Sun, 06 Oct 2019 15:20:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:610a:: with SMTP id v10ls901227pgb.13.gmail; Sun, 06 Oct
 2019 15:20:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy9OvoqF+NH9VjEBFlimj/hh4nvbdp2+pLwBC5iFUMJQ1RzShCWE85She6ZWE/kX3Jic1kX
X-Received: by 2002:a63:4558:: with SMTP id u24mr28211400pgk.262.1570400423742;
        Sun, 06 Oct 2019 15:20:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570400423; cv=none;
        d=google.com; s=arc-20160816;
        b=ZT++05FR3l/mx6VsQ5SWkfkZDdvR/dCZ9AF+redFqz8r2oGKfX2g+zHOGi01r6QHZc
         sHU5Th7LEql+vjUij1xMLXFoOhN08RXhxXYDDwXnxgP6wakoJC9FBmutT+yC+R0H/doW
         5kDO6uen98STwyZ6s3o8KiMCFsMpbNy/dx02Zm4xlV8dHCLa4xQ0C/WQHrAX6NzALuOZ
         tgYuUqhayR/OfY6Lzy7Yl1LPP8WMqAduhV5zvSFbgcu5IfqfN3UhxTLJouN33IEmENr2
         QCOx+EjY5DFrFlcOI4bzmqrXtOMl/c7r40CYYe5ejWt5FXukU+n7uTE749NzoS9FBGby
         tQ6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QzFy/qe/W6+KNTUy6cPF6kcqmu24zi4GEoWy9Ld7gCI=;
        b=IKRvIUJHJVD5hW36uUwb80yqFPIHdspcHTfSl+2XCidWGtKdU3GCn32imrDmeICN8r
         279ZE/yFn3qLyI1mD26XKniK7e3+V2VJBvzYxzgo3uuxa2lRNCGjB6nKeWrI+6vjdkQP
         AVA7RpndxvctW2I0b7rs+/hFVTGl0MxD5xOkN5gUQ+8LeEPotavj+mlb3cuNw/3gF6Mg
         zW3IcO9+JrIA9hCP2xbIqki4MVgnEhUN34waY7OJpiz3z5VRXBoU7muDh9RQo/RZ4xKz
         wxbveS64SfrKWnrOQgt4Td/fqreoJr/cveRM/ioWvGSnfbdH5Gb+J1pF7m8P1M/0e782
         omNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g+KWz7a8;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id x2si786325pfq.3.2019.10.06.15.20.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 15:20:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g+KWz7a8;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id 3so16623070qta.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 15:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QzFy/qe/W6+KNTUy6cPF6kcqmu24zi4GEoWy9Ld7gCI=;
        b=g+KWz7a8v+RDS/wWotdD0ZdmKAGZP/xA1B6YyHFsjbwCPk0laQRqc8e45bHuOMLVmy
         qsvoAuhX7RhHg+jwP5emR2LQdXBmgW0xAk+Tt3QEJLNOmsCjD94jHem92cY5pJUrW3LO
         wx48yLjHOp9SOXrqVstEnJeJ0lopVENiz/ZR3eWyO3NnulTzAMeLJG4ketEXUzI8mXF2
         nJRzb/LXftVtMWSMzFgUepx2Nnw9TRRvavPH8nem3LpxfY4QqgxV3jcxvkMjHCx3oaMk
         /AccPJW6gkvUW2WdQLjc3EnIq8UYT0g1FnClm0CGuNzw3DXbLr0uBSX2vRZ6/SSQQtPT
         aGGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QzFy/qe/W6+KNTUy6cPF6kcqmu24zi4GEoWy9Ld7gCI=;
        b=TSzrRgotFoW+WU7Q3o9UEgoKqUW2IQ67t9jh6UziFKjPNV4lF3Fpr3bcFVSvBX+tLi
         UseNt1+/GfHHmJQjZOcpx+UV/vg5TrZGpfHJ7PoLUVGzgdgmSiVmpkAKlH069ACwLvk9
         2yCFh8W1fgo2BV0D2RumIqk6xXCjV5NGpdZY+lkCbb6MszQG4sV3No5E/EFMNs4Re9lr
         ZzWhYvZjfDz7CYrfOU8SQLbByD6wF048jgl1njl3QHw8CLtql1vhzYIAkZlx9Tcrt3S3
         yZjP+/eQD6xyXm0uXu3v6B+bMYTmZBy4BXpGLfocdxDEKPjAvl+BU+BBN0346rQzAD+3
         bKBA==
X-Gm-Message-State: APjAAAU8uT79GjbDpiBGb9m03bLDaP1h23jfygKcjsMBkVX/1CwypUxX
	F9G593g/UYCm8Inroer3Qys9WEYMgjkdsw==
X-Received: by 2002:ac8:2b82:: with SMTP id m2mr27648660qtm.35.1570400422628;
        Sun, 06 Oct 2019 15:20:22 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.terracota.local ([177.103.155.130])
        by smtp.gmail.com with ESMTPSA id u123sm6585124qkh.120.2019.10.06.15.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 15:20:21 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] staging: rtl8712: align arguments with open parenthesis
Date: Sun,  6 Oct 2019 19:20:15 -0300
Message-Id: <20191006222015.15937-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of: "Alignment should match open parenthesis"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rtl8712/osdep_service.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/osdep_service.h b/drivers/staging/rtl8712/osdep_service.h
index e939c4a954b3..d33ddffb7ad9 100644
--- a/drivers/staging/rtl8712/osdep_service.h
+++ b/drivers/staging/rtl8712/osdep_service.h
@@ -46,7 +46,7 @@ struct	__queue	{
 	} while (0)
 
 static inline u32 end_of_queue_search(struct list_head *head,
-		struct list_head *plist)
+				      struct list_head *plist)
 {
 	return (head == plist);
 }
-- 
2.20.1


