X-GM-THRID: 6464507171401891840
X-Received: by 10.202.207.197 with SMTP id f188mr1406520oig.88.1505135365546;
        Mon, 11 Sep 2017 06:09:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.219.5 with SMTP id c5ls5371070itg.2.gmail; Mon, 11 Sep 2017
 06:09:24 -0700 (PDT)
X-Received: by 10.84.215.220 with SMTP id g28mr2503755plj.59.1505135364679;
        Mon, 11 Sep 2017 06:09:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505135364; cv=none;
        d=google.com; s=arc-20160816;
        b=NkEv5aFyT0gyfJpnwKArKVVusuBD3xgV7VZ4EExU3gHpWrOkxMef6RcN3py36Cy96c
         dOmZSyv685onYxS7wu5omyuDqIkWMOepJ5yTy+KIG1u/lpXGMeSgD9XvrEF8YIWkyuuV
         pO8enTpsvu+FcIgfh9HJHUN4vVyp+2vDaqiWvjKq7La/HES/ifq73A7bIB2aSXG+Rv9A
         HbR4Fys33EFOxfruKbYRmgnF4davANmIV/zzO4xMDa2TcwCN55OIrkJyAJvTUv6xRfpg
         UIKxAW1Z5NcF4sTqJhCEV6nqrwXr3WSv6ItI8BJ9FFcJ79OKm7+c8Rr9Vun/mQV4prPm
         XDQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ask+LgArRJoRr5Pasj6n8n4dzSLLaNLt6njTa2yh864=;
        b=PnEwgIazP87lWMiR/WLLLDah18ZKcR2atlzcCUL+gZ6KR8PQuEkNMbgyRw1/SJO2EY
         xwjhCcbHazHRTnGDo1BXoc9RpzvAOA2jTtgOyQKDU4ymGSV0Y6HH2LdHRVwfW1IEpZj4
         FXpyV7gm1QKKRLEFR3ZaCmJiUThDp8OZqzA5xjiRYEsQcbHf6h9bVnRVJaV3xIxLNdOo
         JEregkCSXxSCz10V5l2JbpfEdeadtgQwrHcsOHPZJ8573c9VP81qsAf9XN4QYIz+Q12W
         6KPYpsDLI6nxwKVRwoINMIRBFIe2quWMYO2LO52Apfhw3LG+yjUARI1LvoKvKIagPh24
         VaDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G5jGF4up;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a17si919700pfk.15.2017.09.11.06.09.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 06:09:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G5jGF4up;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id h4so4886530pfk.0
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 06:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ask+LgArRJoRr5Pasj6n8n4dzSLLaNLt6njTa2yh864=;
        b=G5jGF4upiZNcfvvx5OmaFRcISYavgWpWiWWkIdti7W6P2KJJg/V0cIatiWS9FJ3nRi
         RKddnjIGPIm1GDJ8wKTH+I/rjNlf6cEzSJfnPm4614ZEJ9HfsFMzah2E3D7BuINji/YK
         SmyT2XDtg+4RkHd3eHtOIhN+OiRtnItMINT73qK6psfeNho/uzrIhJ1kY/PV0RScOQch
         bh5eVDW/T4zMbzfuxEbNwwn0UQ41h4PkFl7Mg1jMXHJDHts2FqdSvDfVogZjzcI8aukl
         NAzW2gkrGJ464wEvW8wDRyVf0JisufA8DTcmdiwcAA92DkprhiPZM+dGKcspg0g4qRG0
         KIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ask+LgArRJoRr5Pasj6n8n4dzSLLaNLt6njTa2yh864=;
        b=b7xvyqzbyXAjTnIkWyT00HI8Pr1p0QgeDZx3x714/2qo4SpVMSAITphS/pF/cvC8B4
         Dc+o5fIjMAxq2D7qoiDIOucQVN0/F8Zj4L9o8D2XRoxUQ2lWgU6GkHswEnyKk1zy0/w3
         tg+KYn06nHsuyfqIlgcgeYlLGI3PdyYA0TR1w+U4lZXwVnw/iQtRMsUxdKuLZaytGt7g
         49+RhOnH9hIQGlS/uxl/3K0sGpdJK9b6OwnktGl+PEZn8a0R0HlFJxHQ1MEEvReH2Vat
         0ogOTck7eGoefWCDuK/SsEJ4sjRDq/eGVNOVpmB+cS3wWxkp/3bt+/D2yfEsZhfSs3PO
         LFlw==
X-Gm-Message-State: AHPjjUhg6oAh2frF/GkjhfnF8uFuJX8nfYbwVWyJCT+1A6ARI392J7C1
	11lD8fZClRsOQ2JH
X-Google-Smtp-Source: ADKCNb4hWSu/ftLRVpLBWaOtu7WEVdJnhHBXYGLdf0mX8hxVQB3SmBQboRtNa+auvzmS6mrAYNq1oQ==
X-Received: by 10.98.89.6 with SMTP id n6mr11688147pfb.27.1505135364122;
        Mon, 11 Sep 2017 06:09:24 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.5.9])
        by smtp.gmail.com with ESMTPSA id r66sm7576894pfl.15.2017.09.11.06.09.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 11 Sep 2017 06:09:23 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: florian.c.schilhabel@googlemail.com,
	Larry.Finger@lwfinger.net,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: rtl8712: Remove multiple blank lines
Date: Mon, 11 Sep 2017 18:39:18 +0530
Message-Id: <1505135358-4408-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove extra blank line.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_event.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_event.h b/drivers/staging/rtl8712/rtl8712_event.h
index b383740..cad7085 100644
--- a/drivers/staging/rtl8712/rtl8712_event.h
+++ b/drivers/staging/rtl8712/rtl8712_event.h
@@ -60,7 +60,6 @@ enum rtl8712_c2h_event {
 	MAX_C2HEVT
 };

-
 #ifdef _RTL8712_CMD_C_

 static struct fwevent wlanevents[] = {
--
2.7.4


