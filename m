X-GM-THRID: 6536210357179908096
X-Received: by 10.202.236.129 with SMTP id k123mr8195913oih.38.1521830091777;
        Fri, 23 Mar 2018 11:34:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:478d:: with SMTP id b13-v6ls5599261otf.8.gmail; Fri, 23
 Mar 2018 11:34:51 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtqjhsSxd7Ki3INzhwwE/nPe0kPZWJuag64pf1bgbBg4bfaV4WiX77wb4jIdTLriFs0SL7I
X-Received: by 2002:a9d:6055:: with SMTP id v21-v6mr6822234otj.91.1521830091095;
        Fri, 23 Mar 2018 11:34:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521830091; cv=none;
        d=google.com; s=arc-20160816;
        b=hUVqyW+cYGkQwdo6wFxLjmSDpMVS557XDnqd4Pcst+eFPxz3WP68QLrAJhn5aNG35X
         jy0dnlumilDraD7k/TDK1JLA9K2NedP42957qxB0DRHuxvUvnVVorg68mkaW17uSKK8X
         LQzL9Mfkm8v3MvRqaE2j1fm7LUVuAGLuP52Mxt+ihMmteWDaXDzug8ev4sshkDKPdkvr
         pZwyHKvQpeCfvrs0XcLDVaWir8tk38NR66Jr2gugKO+OuZwUzSkVOf7sQad34JlrnKOg
         Nr9ZN9+k6m43cwXJkvVCpnvDWC7jniGh+wtw9ejhGKbj/Luc1RPshPTqCEKTQ7rM1CWt
         gekA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=FQ32A4kUQUCTdqdy6sgMRbEU2/xSZODwr2f7t91KwFs=;
        b=Y/Vq4ywj+6x8pbYXMCu0ehmjSOapw2UTZSs+SL1ZNolly3LYcn6MWt1HkO/Aayc5/+
         DHwbeZdFnYBeBySlaHnOQNF9FRa5oJldiN35JBeT1IkmJxvY8ZoVY5tR//rSLZJh+eBL
         7a7qw9AVe0kymVhJk+BuwjzEwOHoicN3vs44KJc2ina+TjTTpjxUVslJogAp24ml5Iey
         OBlkPlhmUZyaaa4r4OXN6DC4DPyWNGz6DvZuixs8tPCfi6XJ0e4QmiGBzV39fl3aRSmm
         498dZe8/uzsieMZ/DT0Wo6Ds8YwdxeDL4f3tJc107iQawcqrq8CpGjDb0JNriab/x/MX
         eL/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=cTaIm798;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id 15si694076oix.3.2018.03.23.11.34.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Mar 2018 11:34:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=cTaIm798;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x243.google.com with SMTP id m22-v6so7951479pls.5
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Mar 2018 11:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FQ32A4kUQUCTdqdy6sgMRbEU2/xSZODwr2f7t91KwFs=;
        b=cTaIm798YiK19HAoW/Lv2wRLWw0fLxNlZL2OP1IpMT6s7k7EAAFZ1Q68P/+wSM+Ezm
         ohDjeSmu/glY7YMiBmltFoa0opAlt7GuT5sE9f09/gpgUd1/o8ksHoGj5q66PNaNCIvF
         lAJYibUCL5Cp4chf906HrJwwSgMMVBFdcof4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=FQ32A4kUQUCTdqdy6sgMRbEU2/xSZODwr2f7t91KwFs=;
        b=TJvcbZ0erUz+5yyyBYDXSajBHUqwhe0VMkSb7LVLCebuXu8E7UpGb9c7SB4cZCaAf+
         RGi2LaYtjDN6aobP3ZdPVwfzZ3rOqDZtWiMNt85gXjkzFwu31pKZW8jaq9YCmqLdP5t6
         lqJ5RWCHHggtcNS69rWZQczFJtrMQ5BeE962TJn3sH4tmt2OF8MxRtlPcSMnoiYIoADL
         0pL2jIsOAWSyYFaqzE1S8ea1sBwqGxK1hpbhvyySlM65DVWvnS2jBcA/MTgM49+79AIn
         upSsLMqn5ZF0TQf1Ou5i70bzlC+Wij37mCdE0LsEz4UKPikxgtgmzxaFjDgvqrVOUxDm
         wuZg==
X-Gm-Message-State: AElRT7HdIX/gk6jrS7YLtaVh6/7G8cjMelIDVDwGssbXuB824Scg/lBE
	JZKrhGoaU9qMj9yGQxfiCeX71w==
X-Received: by 2002:a17:902:6085:: with SMTP id s5-v6mr27364669plj.307.1521830090773;
        Fri, 23 Mar 2018 11:34:50 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id e14sm17799445pfn.180.2018.03.23.11.34.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Mar 2018 11:34:50 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2 3/5] staging: vt6655: Change _version from typedef struct to struct
Date: Fri, 23 Mar 2018 18:33:58 +0000
Message-Id: <1521830040-7138-3-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Change _version from typedef struct to struct. 
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Make subject and commit message clear.

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


