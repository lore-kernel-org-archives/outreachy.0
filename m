X-GM-THRID: 1441778368512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8f560d6fb9b203e1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.214.234 with SMTP id od10mr667718lbc.3.1424603319913;
        Sun, 22 Feb 2015 03:08:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.131 with SMTP id jg3ls377786wid.12.gmail; Sun, 22 Feb
 2015 03:08:39 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr636519wiv.0.1424603319451;
        Sun, 22 Feb 2015 03:08:39 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id el6si464937wib.2.2015.02.22.03.08.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 03:08:39 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw55 with SMTP id w55so13036606wes.5
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 03:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=SqIBzPoRXexo9FB/+PRMs/gqV2BgMSC5lElYy0LKOnA=;
        b=mDAou2Ja8TuKDXypItwKMhL4VjZDmxKtQF+9euCnR4KIXm7yIG3nPPop8/Hk412uBI
         Dl5LFVrXoYdRxTl4JDYw9FAxWwUsggAdtHkazO5TOsXF/esjIHDxWYLNuCTVi1n6ft07
         2GNEfOXkFhugKYiS/84k7eiSXM6oZgNzKSdOveFerPvpVcITO04usy/VM8e2CbgihdO8
         n+IyFKI6i4WQX0IV8CHg1mvvvqqF6EZ3jALSc2K90wJPNtd3lpJyiXwUJ0XimZsHmYKW
         k8ErWQ0mOrNr2DfiMsGKIGE44S1cb6Pp3f1r2YAC33u27ro3X9ZuMNBXl6rLvDd7ps+N
         fGww==
X-Received: by 10.194.120.40 with SMTP id kz8mr12277517wjb.21.1424603319366;
        Sun, 22 Feb 2015 03:08:39 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id g10sm10957668wic.7.2015.02.22.03.08.37
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 03:08:38 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: lustre: Remove typedefs
Date: Sun, 22 Feb 2015 13:07:56 +0200
Message-Id: <1424603276-26391-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING:do not add new typedefs.Remove typedefs,the names of the renamed
types changed.
That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/include/linux/libcfs/linux/libcfs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/linux/libcfs.h b/drivers/staging/lustre/include/linux/libcfs/linux/libcfs.h
index 4fe50841..83cddaa 100644
--- a/drivers/staging/lustre/include/linux/libcfs/linux/libcfs.h
+++ b/drivers/staging/lustre/include/linux/libcfs/linux/libcfs.h
@@ -136,8 +136,8 @@ do {								    \
 #include <linux/capability.h>
 
 /* long integer with size equal to pointer */
-typedef unsigned long ulong_ptr_t;
-typedef long long_ptr_t;
+unsigned long ulong_ptr_t;
+long long_ptr_t;
 
 #ifndef WITH_WATCHDOG
 #define WITH_WATCHDOG
-- 
1.8.3.2


