X-GM-THRID: 6477997622457008128
X-Received: by 10.25.67.94 with SMTP id m30mr396619lfj.35.1508276356091;
        Tue, 17 Oct 2017 14:39:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.4.83 with SMTP id 80ls374042lje.17.gmail; Tue, 17 Oct 2017
 14:39:15 -0700 (PDT)
X-Received: by 10.25.139.11 with SMTP id n11mr414031lfd.25.1508276355092;
        Tue, 17 Oct 2017 14:39:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508276355; cv=none;
        d=google.com; s=arc-20160816;
        b=t6gQG89P/8naU9UCQ6bTk+0PRxfEXJK6MfSs2M2VDj3IFJLF1jUjEyOJCFV8H4EnfO
         JRacK9XKtPpZQW8ybiCYJD/bVrAEa1oWAlgT3N+EucZc0EEPPV2Qv1i81yMn20/wL/w+
         mpPxw1Q1Q5q84nqMR8ICnG0J9wkXqieS518Z+pUxsFKm9yFV1idey1xLJxSTRj7CBSQE
         L64w2sUFS0Rd8O38tlkObxBRY9UU7xBfaKK8HJRg3326nYb/+pMljoYvbDSFQVtU0265
         Y3lozAYe6IBj2BFv6vjDoUJc/2z3us+R2bPndD+xLToD4moVgU8u5KWymPB7DfBlhyaO
         OH3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=OIfazsuj61/a+mr1hKhHtZhjA11yI/3FgXcE4Rurk7I=;
        b=0LDuE3jCjy4KmnALXfK7Iwcz6APQiz4z3Qvtsq2Ij9K0+EliYaa/P7OiOw8N7Uw6dX
         /mNUqEhqyBAhm4+3fIHx8m2O/aH5wFAnn9jDozcBAsA6h6sCrg0K8wnRyND46S2nmp2L
         kNCdb6ewVhpdqQGJANCDbsFgq4Zn4WzJlkXguJOfxZNON+KtD/dkSd4Ho9l/B/UXlypF
         jAGWeUOHKZmv89JeMlPTnd9z4ni9r8o6nWQiTXsEUD8WPxLiuHhFrOmLxY3NTZrPRZDP
         6TyFJma+GdIYnwM4Sr4EWuXbsxGTU7vpP9dUlxIvwgV0C+OTKWvdlrfqmds9gFhOKkC9
         Hjqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XVRlLJFC;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id s12si513688lje.0.2017.10.17.14.39.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 14:39:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XVRlLJFC;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id m72so6439754wmc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OIfazsuj61/a+mr1hKhHtZhjA11yI/3FgXcE4Rurk7I=;
        b=XVRlLJFCguAXKbHVQ/zyrrDfHIOovL7n0eVpcIAnvYB8DoorTL5sf8ZzFg69nMfUnf
         EQn4rxVJB+pm2yIFuO3aRNua91GamtlmcSK5rQfuW+5uX0R+MaQcrj7Dfrv0bnfQ26f3
         2cIjlMm2fYRpysUJXA00Qz1bb/Dd7C9v3+6fKDOU2vnLUbdesUFKmkx4A96MV3LPrm9R
         0lJ9CCOOucFlzeWw23HzWo5s65bwOYOftFlZJvvzX6wWIObGg0b/l7mwR4pHJNxpFMwl
         6kPhca1Bb3FN/0ux0qVEDKI8eORnB4sgmeJljvAEjlutwQRgkplIVSnwmsCNmA9ZmU7E
         JNLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OIfazsuj61/a+mr1hKhHtZhjA11yI/3FgXcE4Rurk7I=;
        b=RH5J3tsh2+me1Pi4vQRYLA+HI/VH+xaWTLGZvtSOv6O5MWajhuFYRR9GFYJAei55j0
         usR0Ew6J0vp0XDfTE2lyDBsxAbxH8utGvEhg4T+o3ZXn6iF+GQSlCVbLqN6p6crT1wD7
         Lh4AwTbIGN8Sqdh9ldg0re4U+XoWzZ5kW9xXqyAH4SKvZEKiOOphKXkKlhCgtYg91nUb
         Oe8nWqQ05SToJEb1tbIuoabb9i7OPsd3g7gzSVZTGAHylgdX9KJ3+G7ERh2lQRoTKymR
         txaUlWiEQaEgcwuIxGeXxeMGtl0+XRp1R3hzbz2FCEpdmfbdnAmgb/3izPQ/JPVDJdXI
         wvdw==
X-Gm-Message-State: AMCzsaWoyG3cpCDgULrKp0YfR5bNseRTMeiicoKu/SsayI3tQsxkQn+v
	voe57trjPnOMgq/eislhuWQ=
X-Google-Smtp-Source: ABhQp+Td+r7B82y2GKK8EC3Rtot+uZnZLamdDuGQP7/XalrSEmLrjoOFPIEFeSRogG5eflox0ytDTw==
X-Received: by 10.28.184.141 with SMTP id i135mr4930647wmf.143.1508276354572;
        Tue, 17 Oct 2017 14:39:14 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-79-238.residential.rdsnet.ro. [5.12.79.238])
        by smtp.gmail.com with ESMTPSA id 200sm13206764wmu.44.2017.10.17.14.39.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 14:39:14 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] Staging: rtl8723bs: Check sscanf return value
Date: Wed, 18 Oct 2017 00:39:11 +0300
Message-Id: <20171017213911.15653-1-georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0

Check the sscanf return value and handle it. The function returns
the number of items of the argument list successfully filled.

Issue found by checkpatch.pl.
WARNING: unchecked sscanf return value

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* compared the return value of scanf to the right value
* improved the commit message

 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 3fca0c2d4c8d..fe538cc088f0 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2356,7 +2356,11 @@ static int rtw_wx_read32(struct net_device *dev,
 
 	bytes = 0;
 	addr = 0;
-	sscanf(ptmp, "%d,%x", &bytes, &addr);
+	ret = sscanf(ptmp, "%d,%x", &bytes, &addr);
+	if (ret != 2) {
+		ret = -EINVAL;
+		goto exit;
+	}
 
 	switch (bytes) {
 		case 1:
@@ -2393,12 +2397,15 @@ static int rtw_wx_write32(struct net_device *dev,
 	u32 addr;
 	u32 data32;
 	u32 bytes;
+	int ret;
 
 
 	bytes = 0;
 	addr = 0;
 	data32 = 0;
-	sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
+	ret = sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
+	if (ret != 3)
+		return -EINVAL;
 
 	switch (bytes) {
 		case 1:
-- 
2.11.0


