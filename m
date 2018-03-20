X-GM-THRID: 6535126466824241152
X-Received: by 10.107.52.66 with SMTP id b63mr7525507ioa.66.1521577745871;
        Tue, 20 Mar 2018 13:29:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:598f:: with SMTP id p137-v6ls445059itb.8.canary-gmail;
 Tue, 20 Mar 2018 13:29:04 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtIWP5TfCdbuHNrfuv6jXBRx2/uZzix+pCV5imnl7dpM7foG2WmDQ9g9fNUtvQtWNcWueMc
X-Received: by 2002:a24:a089:: with SMTP id o131-v6mr578800ite.10.1521577744571;
        Tue, 20 Mar 2018 13:29:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521577744; cv=none;
        d=google.com; s=arc-20160816;
        b=aaXa0wE351/zzqNESk1dNw+jBojgqADkn1grh5yjnvJU2WJPZqU+OzbMon4L5DoCag
         0za4Au1B3hUo2LIX9Dp4eodjbZrZiirktZYJxN9I6GvoAzeTyp/tGwNxWXhLCbbMuA4u
         K60Z3iljkUcN8b6tpnHckK/jepBT/zdzRE2Kfbap2upcWzBH0dMZOuFKis5y4wlTEEno
         FNAyQ1Mlwj+mPjMpcZMLI+z4V4OTM24fsFKPmxQWjJxCVnqOUobkClQm4aFICjook4Zv
         7iZzUnBVCtFWXG0uw5xPUDnQYT3jvLYRZYmwd3urHwsLSTN+9PrLQHbs2HYSVIeHKOvD
         qYXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=F/1NesSlXDabDlCibBDLZL140rZ/3Lyht64ezjW30a4=;
        b=QgYNJrKwhFdvwdni3BItLBEXXeM3ulbpIFx5qHZtmz7wf/4OGRCpd39Sfsa/5HF11+
         1uH3xaa+7uiHwUcl9bzLpwMDBKPrLk8d95OxIUcU0QxrmqWV8hBEoKkVpyMld9lf9qzS
         fAHhMX7FiWIhrgZxO2U/LCkmLCmXh3pnKBrmq0z6AimfvOvjW/wBGtDd4dkh7jj5Pp+6
         Dq3F6hr3++Fd6ytNRpcPSJEaOtHohidcQTM/nt+maXHv2gW6Fq6RJN9uaWTXa5MNapxK
         EC8rt46/WeG9O3xOC8jzdhepyKd2eu13fxqTyY+QTpVjlV/bI1QKTXAVCj4u01ntn7Lk
         5/BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VnVQNOeX;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id t65si117055iof.0.2018.03.20.13.29.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 13:29:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VnVQNOeX;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x242.google.com with SMTP id x1so1107665pfh.7
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Mar 2018 13:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=F/1NesSlXDabDlCibBDLZL140rZ/3Lyht64ezjW30a4=;
        b=VnVQNOeXg2mCpuC0A7hlVj9+i03x5lnjjTp3VRaUvCujFcOdE8XQZ0AVkOIoTVDx5A
         p09fxiTPHefC8q8D0yLWuaEjzbBh6N6GcIke0S1T3Fi8ArKESmrCN+a4Y7MrbzachZ8x
         V9SPcXMBknE4usLxe+mx2GGAq5QBSxDOm4evw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=F/1NesSlXDabDlCibBDLZL140rZ/3Lyht64ezjW30a4=;
        b=GCWDai3aHbfnX/Scm6EYCs9LSSPnkWnlgLkBcQMUiWWtrBB4QtGZegcVOXFiEovh/B
         FGhAknjUyYcaJH6ZNv+yTq5CszwLa3xPQL2hmd5wWoJBsKxxw+mxA2e0DSqzjAiNOb4F
         6uRpA+mHxwIDRGdqDivJWtdJDdovbCse1b4X9dmBk2jLTy7zkE0wEqEAqCf5KPngvQN2
         NhmkvRyHednaSVYCH5vtpR4K23Mo10lBA7EzOde8UbbRsNxXLlWDv7oJqD0iJhq4s5T5
         5YyvhwBkcsUKtv16MUbVdhbuMYnjKUatxbl4CbTjCj06qMV+upSa89xtrnpXTs86JumY
         c/ZQ==
X-Gm-Message-State: AElRT7G2DiyBxLi2HpA+aUhVm+NNltua3SwBITWfQs+i6gw6AStyJCAJ
	vdX8iTu/J08mN1Avb6j4uWyyDg==
X-Received: by 10.98.155.137 with SMTP id e9mr5114228pfk.109.1521577743647;
        Tue, 20 Mar 2018 13:29:03 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id d77sm5480831pfe.20.2018.03.20.13.29.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Mar 2018 13:29:02 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 3/5] staging: vt6655: Change typedef struct to struct
Date: Tue, 20 Mar 2018 20:27:57 +0000
Message-Id: <1521577679-21104-3-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521577679-21104-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521577679-21104-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Change typedef struct to struct. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vt6655/device_cfg.h | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
index 73f904b..3972881 100644
--- a/drivers/staging/vt6655/device_cfg.h
+++ b/drivers/staging/vt6655/device_cfg.h
@@ -16,12 +16,11 @@
 
 #include <linux/types.h>
 
-typedef
-struct _version {
+struct version {
 	unsigned char   major;
 	unsigned char   minor;
 	unsigned char   build;
-} version_t, *pversion_t;
+};
 
 #define VID_TABLE_SIZE      64
 #define MCAST_TABLE_SIZE    64
-- 
2.7.4


