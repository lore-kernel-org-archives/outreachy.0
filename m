X-GM-THRID: 6463333308428189696
X-Received: by 10.129.76.22 with SMTP id z22mr1929391ywa.82.1504880818469;
        Fri, 08 Sep 2017 07:26:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.246.135 with SMTP id u129ls1455143ith.13.gmail; Fri, 08 Sep
 2017 07:26:53 -0700 (PDT)
X-Received: by 10.31.94.203 with SMTP id s194mr504293vkb.92.1504880812960;
        Fri, 08 Sep 2017 07:26:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504880812; cv=none;
        d=google.com; s=arc-20160816;
        b=mnGtJVyTjGrJoccLbpZubXQrAL3lL4/ydf9GMxXSHaJ2UH+XctqjKPozO0BS8fltfZ
         6NPmUbd1vRr4jihIR1Qj78ED6ZH5zN/e6hxQFhpzjDzTa2ttwux/39pIsIkcBJQYiU/d
         A4ICpwemkDI7QNeyw0yQM78DcrIOx8Kqxtr+tW1HnDPgHUD+aLdHf7sDGocW9XfGAVtF
         +FVHMcD7vXDJ/kl0N+vVPgrXqUcbPUkbrWY3hGoK8yLg95AhbKsrNXva0+pxhQ9ZOe7d
         5u2rGMY7W4LU9PZt3i7fmAIr9MqY9N1rxCR2kylpRtDlxHFSf8ieCls8K3eMP0QcZM1H
         PW5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=eRSd38ilft9zfQN6g/A+s/sRtN0i5c04n3cTum0VHK0=;
        b=Cvd1dnc88HTuKfmm4RQk7XazTFRf6icar2EJ/tZ1kuKPfVJgR11jsQeERssP/1QyBp
         P7ZnsU3126xXlZQAKrAmv1eP+ZN7ogZrrIrjxbHFJM8/mkWLnRa3hoJpO8p/E8afJVkh
         Jn/8dRxpRbCRm1XUlIdWJy57sfvSmxbazbFu9JhGxYIzfLI2RCtIQqtkfQ4nuQwH2zlq
         GeeKXVMABMovce45LMkVpFg0BYW+1thxwekQZJNINTvIb72W8sBgAZYUgEc3ZnRx3Juc
         4P1i4DMHsxTfGE6d2fNopXRWcrLK66GQN3fQb272GOWaXzb0qmUWn/UPH54cjgkHY2WP
         mgWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jdf4Ly8v;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g19si264530pfd.14.2017.09.08.07.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 07:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jdf4Ly8v;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so1272547pfe.1
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 07:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eRSd38ilft9zfQN6g/A+s/sRtN0i5c04n3cTum0VHK0=;
        b=Jdf4Ly8veyByJklK5PMnyvvhIHZ/4l/NtdsNx3XQCYp//5jcowq9oP04xGd3juqogO
         eMxgUbyV/DuIsFNH5qhZCUKP/1bg50VWzeBuQ5kBU7OXDz/0scGdG7WxUFKpQmo+g9wh
         UokJfNUClOh8V/aEo6Y50g/3ryUnhUMpzSAJZIOFL11WhN3M8IDrEyUe45/tWWKA8wdr
         wKZOptE8vnV1fcWXwID8xFkqHHS+aYaRjFeJtRDSiXj/L/ugTSyn5O7nwxMjrvcCLj3w
         TlkjVL5DUgFPpxkThvAtCvpBpFqaPX2A37CpkzrPMbD19yepXQUrUBBOR2uAvIsbvtsp
         Qi1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eRSd38ilft9zfQN6g/A+s/sRtN0i5c04n3cTum0VHK0=;
        b=IpLXjK56ZM6XC3rOCA74rwmFMU86Z5mJy0+8MqB9sq9H/TnwmOYmOHC2NLHkt4D+N+
         XtYEaRgdQer3GO9lH/V9Qpu1h/DADIdx+gKJ3g28PfGO93UbxQDj1OoBD/HxlkBW1Ppg
         sB6w0FOX27FTqB+xojXJwy/GQ8u0posN7AvLmTSmGerCqOAYYFd1VnIPuW+HM6/GA/+T
         U9QS48RXDyOC2eLU3Lf0JRPMHglxafHwRDpRUS/IKloUhlmUM1uscmy+zZJzURgAil0l
         4ZARfwHYzfd0FHzjxPSUKOrvDChjuuVu1a5jjIUR0V4//w35FOopJVrRswj9tNUhABST
         NYGw==
X-Gm-Message-State: AHPjjUj+SgYc3n3sUCk+hkvrFai07Vs47tW4pNziDVJi5L/jd0LW96aG
	ZLGkMYZr/rOOdA==
X-Google-Smtp-Source: ADKCNb5Vlm8NOIpiKzlSMuvyAsKFGVqxi05y/6JvxLr9DclM96msvZdeU1tHemmkctNcBUj4/e0PMQ==
X-Received: by 10.84.150.101 with SMTP id g92mr3746523plg.168.1504880812701;
        Fri, 08 Sep 2017 07:26:52 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id u192sm4216646pgc.18.2017.09.08.07.26.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 07:26:52 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v6] staging: pi433: Fixes minor typo errors
Date: Fri,  8 Sep 2017 19:54:28 +0530
Message-Id: <1504880668-25927-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixes checkpatch warning -- "occured" and "succesfully" are misspelled

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v6:
 -Added changes from other versions
Changes in v5:
 -Signed-off properly with correct author name in .gitconfig
Changes in v4:
 -Correct the format of the subject.
 -Signed-off with same author name and signed-off name
Changes in v3:
 -Added space after : and removed file extension from subject
 drivers/staging/pi433/pi433_if.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index 6b9b7df..6a10478 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -473,7 +473,7 @@ struct pi433_instance {
 	}
 
 
-	/* rx done, wait was interrupted or error occured */
+	/* rx done, wait was interrupted or error occurred */
 abort:
 	dev->interrupt_rx_allowed = true;
 	SET_CHECKED(rf69_set_mode(dev->spi, standby));
@@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device *device)
 		if (retval)
 			return retval;
 
-		dev_dbg(&device->spi->dev, "%s succesfully configured", name);
+		dev_dbg(&device->spi->dev, "%s successfully configured", name);
 	}
 
 	return 0;
-- 
1.9.1


