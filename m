X-GM-THRID: 6401746378661298176
X-Received: by 10.157.0.74 with SMTP id 68mr6112091ota.133.1490522729968;
        Sun, 26 Mar 2017 03:05:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls3039502otb.38.gmail; Sun, 26 Mar
 2017 03:05:29 -0700 (PDT)
X-Received: by 10.157.12.232 with SMTP id o37mr3628991otd.121.1490522729601;
        Sun, 26 Mar 2017 03:05:29 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si1158010pfb.2.2017.03.26.03.05.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 03:05:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id o123so2751406pga.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 03:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3wznqciE2QSNCdICdK3Mm++zQ56wHRVOQpMbQT5dn08=;
        b=JKBXGeuNPxQVmPUH4lAfZXzKnOCdrNAkc0bwN19EbXuYZnczy5TZV1RW2jZnoYy3Vp
         S4b0jlJeiIBRy8Ddi2csq9lyuHNDhH4Jq1VQFkAEcK0KU81UC3fi9xSEfzoaYN1so8RZ
         lbs1C0zgON2e8Z/dxfrjjQP+wAybjoC9xS+odCs6RP6HguB7fgWGx8/59uxis+h+LZJ7
         rVXt5sSFHhAqC+/ZGDMn8EJx6Kp83UUrX62QD41LcTPgUimGDMioSTVCTAYBSuX1mAUE
         KuIJ4IcclV8Xp8Epo977aOQW4L3rwr0bfnIC1hF9T4DVv1u5MvTA33j1ZKKV2pDAW8km
         nRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3wznqciE2QSNCdICdK3Mm++zQ56wHRVOQpMbQT5dn08=;
        b=cetNQQ/qFZ4Beg8d/OeE6KnEjmFx/aEV8MZ2R5I0gcJziXOKPxs+4RHBDOSfi/iIFD
         bUNHaIyaTY0qxu99qZO0f0pwGm5C+eJb7cDBPmHn8UczJd9KzrwodNVgIg/I4jLi0rjE
         rbyPcLvnLC1EsYJ7H9F8LwfEUfFuDSMepSayKVEhmzelrCrclTVSnt0rFxlZkeQy+53z
         5KxCO/Efmm4AmJsH25Y1Pr3ZIdCNzYz8SN8R5o37+8EKsqBDwv7cloRmwQeuYUYYGzoz
         bYC/SqbobZD/oZaBfS1CsqelngzV396hCvs2tr/yugHyCXO45/Z9ygZr7aMn9+fxrK6H
         FRxg==
X-Gm-Message-State: AFeK/H1/114N6TD9SpkSum34/RpMDXePaS9+OSq0ta1nm4iHTGKgNDO72sTOxyyx0O2Cmw==
X-Received: by 10.84.229.73 with SMTP id d9mr22199262pln.177.1490522729200;
        Sun, 26 Mar 2017 03:05:29 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id u75sm14482000pgc.31.2017.03.26.03.05.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 03:05:28 -0700 (PDT)
Message-ID: <58d79268.4e79630a.22370.502a@mx.google.com>
X-Google-Original-Message-ID: <20170326100525.GA16137@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 15:35:25 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/5] include: linux: pid: Move open brace to previous line.
References: <cover.1490516333.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490516333.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Move open braces to the same line, as that of struct and enum. This patch fixes
the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 include/linux/pid.h | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index c2bea47..a465173 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -3,8 +3,7 @@
 
 #include <linux/rculist.h>
 
-enum pid_type
-{
+enum pid_type {
 	PIDTYPE_PID, /* Process ID */
 	PIDTYPE_PGID, /* Process group ID */
 	PIDTYPE_SID, /* Process session ID */
@@ -67,8 +66,7 @@ struct upid {
  * @numbers: Instance of upid for each level.
  */
 
-struct pid
-{
+struct pid {
 	atomic_t count;
 	unsigned int level;
 	/* lists of tasks that use this pid */
@@ -84,8 +82,7 @@ extern struct pid init_struct_pid;
  * @node: List element.
  * @pid: Pointer to the struct pid of the process.
  */
-struct pid_link
-{
+struct pid_link {
 	struct hlist_node node;
 	struct pid *pid;
 };
-- 
2.9.3


