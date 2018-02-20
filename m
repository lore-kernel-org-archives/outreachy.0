X-GM-THRID: 6524560209013112832
X-Received: by 10.28.99.8 with SMTP id x8mr1645939wmb.13.1519117557852;
        Tue, 20 Feb 2018 01:05:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.157.208 with SMTP id q16ls2803957wre.2.gmail; Tue, 20 Feb
 2018 01:05:56 -0800 (PST)
X-Google-Smtp-Source: AH8x226JGWm6BJzkuZtIKZXogL/pxtz2imiZ0/bjwoPRrqpbm5DO63VGc7RkvPpKfsVqCrDU88ey
X-Received: by 10.223.128.194 with SMTP id 60mr2109665wrl.27.1519117556882;
        Tue, 20 Feb 2018 01:05:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519117556; cv=none;
        d=google.com; s=arc-20160816;
        b=SvAdiHB/AlzoGHIMYhEFHCMTlczf6CCiPgGRf7kziOvMMPS5JfFQWMkMVAzX7HUJa3
         WGhnsXYlZMHQkTj0AwrmJhFXNW+wHqfmSYv0j3DgSJbUn1eYy3BWEduqOI7Ka7SQO9xC
         sezP7VJBGvtEpTVuVOAO7KWHtLy/2kZlJxAf4K3F+dZVxUYUowwXSU2xUgAo4sCZD/TF
         7D6VoSjc3FX2rWdglTecaDZgPi0FfQnIum9xWKw/SXz+zBSa6GSvSM7SdBji+paA/jru
         2eJicto6n6WTBS1RiFatavCzseFXEEe1hlPGVEeromw0yRSlaWf8eVtz4uZLXkN4qDs7
         gllg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=qW7rB4JePnpez5uLrDNbkyEaCFuT0fQikltZxLmXb/Q=;
        b=MKIeeU0ZQsOK3iK3odW0pK9tUlbu8mSi06XuK97nf0bIEr9CEuOvTB5NR9CeyikALD
         P0ryBkX9aIeB+W9GbTJjfjHMQ2AZc4iG5RSK9QIJIoNx1igavnFc9xlRLzRqrPAaCDEN
         PLx6UNgpI4LEFyPuBgPvMa+bDp8rSzwfzbzLW5wlFRKwG588g8TF8A71CHLvCzbqpZVL
         U+i5nihvrk93m7ZK+EwqMkOj0RjIaf2w+YJtydAJQ/VeuaSxWucikiECqwKbMkunB494
         IMSjpEwpYyYQyRm06/rzTJT8f35jP/eTE5a2pKp4CGE2yioU43mBJx53PXK6xSIcrCys
         EoZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eKIqOMuR;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id v8si693939wrg.2.2018.02.20.01.05.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 01:05:56 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eKIqOMuR;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id v10so19647630wmh.5
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Feb 2018 01:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qW7rB4JePnpez5uLrDNbkyEaCFuT0fQikltZxLmXb/Q=;
        b=eKIqOMuRQIG1Uz/itufi9XH9JiPv5QXQ0romtF7teU6TUyaqGLmZEz8YVmxF3HhFsD
         4z25PfivUi9aa1tA4DDGjlh29PXJOMPoBQW5Yb4NXhyi8JWzLuPUL2PtxnOnggdDnhLt
         EFO6cG1ETNmmOR7ZzZF9Wi+LJjKmm+B0b7pfwAm2x8ZNeS2kkpCHhwwD7oqb2/vgKGUy
         aG2MB/MkILXdZ9pQAkhbEneNFnTNykFzN4wjBysfj7HmUQV02Sa3/eQCgjlw5xXwLzg2
         Q0DipAXHa9rRjhLlou39Fq+iLs9Iwb2l4bSOwyqt+jqzGxvXFSLrdGFtXWCp5gN7hA8a
         dTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qW7rB4JePnpez5uLrDNbkyEaCFuT0fQikltZxLmXb/Q=;
        b=i4NvWsPQMNkaIA+CQEbNyYXNNMSxYb/uw+CGgbZ6pRSOng5wuKhimGXsNnjvmY/BJd
         r+KVKybn+mDGd2cWg2ohwrSt4ZwUwihlCdnetSr2EAOw75b7k+G3Tova13z0VXTpWjhS
         /GthnTCUdLJcgWC1wYvc6klmFXcb8bny1uTLKE5RY4Z0FDMwDGjpUNQG2y2743rK+KF+
         56QKfH+o+I7I7/r3pC21ZaRy7sDg7273vRNXY8T6QypRtIu9W3f6sMUG7b6DVaJe/s3u
         ojga6Uxk3vClk4gxQsCnTxOJZA8Ky645vtb8Ab7arMCMEimTFDHjrD/qKZUm+mC+LZct
         7kFA==
X-Gm-Message-State: APf1xPBah1EbNwkZIV40nAj1WSlxPLDCeI+uKwqf21nvCpiTppsA0+Zu
	XPoNRbghI/CnlYyaO33CozxqaAPrxx4=
X-Received: by 10.28.237.23 with SMTP id l23mr14141906wmh.113.1519117556454;
        Tue, 20 Feb 2018 01:05:56 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id 137sm18602276wml.3.2018.02.20.01.05.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 20 Feb 2018 01:05:55 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH 1/2] staging: comedi: Remove a "tracing" call
Date: Tue, 20 Feb 2018 10:05:24 +0100
Message-Id: <20180220090525.13045-2-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20180220090525.13045-1-chenyensu0@gmail.com>
References: <20180220090525.13045-1-chenyensu0@gmail.com>

Remove a "tracing" call as it is not needed anymore
because there is an in-kernel function for that.

Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
---
 drivers/staging/comedi/drivers/jr3_pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/jr3_pci.c b/drivers/staging/comedi/drivers/jr3_pci.c
index 201f4f96c182..c3c88e6d298f 100644
--- a/drivers/staging/comedi/drivers/jr3_pci.c
+++ b/drivers/staging/comedi/drivers/jr3_pci.c
@@ -295,7 +295,6 @@ static int jr3_pci_open(struct comedi_device *dev)
 	struct comedi_subdevice *s;
 	int i;
 
-	dev_dbg(dev->class_dev, "jr3_pci_open\n");
 	for (i = 0; i < dev->n_subdevices; i++) {
 		s = &dev->subdevices[i];
 		spriv = s->private;
-- 
2.14.3


