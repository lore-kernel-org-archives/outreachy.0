X-GM-THRID: 6254956898139766784
X-Received: by 10.50.142.72 with SMTP id ru8mr2066300igb.10.1456401606998;
        Thu, 25 Feb 2016 04:00:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.82 with SMTP id w76ls301726qgw.44.gmail; Thu, 25 Feb
 2016 04:00:06 -0800 (PST)
X-Received: by 10.140.89.10 with SMTP id u10mr13238861qgd.24.1456401606412;
        Thu, 25 Feb 2016 04:00:06 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ff2si1228882pad.2.2016.02.25.04.00.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 04:00:06 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id a7so1274511pax.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 04:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=xYp2hYuuc7SNA4Z3esl2lfE8PJa8KHt/b/Msk1jdxuM=;
        b=EDTtM54afWkL3hS5DKfhVzUuqfox1yzhEXun1RsKjPV78e8i291aAzh6FJWRN6mkBS
         +V3gYFKsit2SXnmsPGdXrEsrwOvE6fAo69eFq3DaIJPZn1j8ho5b/IeIl2Cfseg/AxQL
         mA76GdRFRrcQ8cF/KISaHwXTPXovK75KsDMLKXF3FDx1np2SGtP0fumRWnuEk/OxNc3i
         AKkvJt+pJQe5/Pn0rpv68ZeBTu/UVzfPQ+FapekEDU8tEtvsx2PPsMmyM8a2tC3xGwXE
         DIn9RRBoPb4JxWsZhrJB+Q+GplkhPU1C5JeOW1yF/CvDykHcHgzKBUb4A/qvKBlI9saw
         AkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=xYp2hYuuc7SNA4Z3esl2lfE8PJa8KHt/b/Msk1jdxuM=;
        b=GoQ2Naxa/ylkvM6/cwv+eeeAtZHNMFBxPNjkv2AX+ldQ5p7Cg52O+M+JRrSZ2aZOpQ
         JbLePb9mby+RYHaY6IWogFgb8RC3xHlNro+wGDqL2STLN102O7zmjBcZK6EoD1uhJ80Z
         Lxa1c9f3sdBY9ii8S3s8fVicJm2SPxlDUMmLXEKPqdhE+GFk9BIBBCFgnS7GHNqCAIkb
         vnOWYX7kc1CmK/k3XH1C9DFp/VwcVlIohJq//kqKOv/oDmc5uVSvUT5xCHM7q6sWViS2
         Ygz510DeKWDsyMvhmXE8N+RYQz47hWKUv2IdeVNlsArXCCMg91QXTcmkvQeLonMcJRVK
         A60w==
X-Gm-Message-State: AG10YOTmWD+AZMoiYHKlPcJ3PfSwp2GQNn6dvvj17rlnTKUZnj4FGCxQyqtmHjH/L2ZEIA==
X-Received: by 10.66.140.14 with SMTP id rc14mr62427947pab.65.1456401606234;
        Thu, 25 Feb 2016 04:00:06 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o73sm11891429pfa.37.2016.02.25.04.00.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 04:00:05 -0800 (PST)
Date: Thu, 25 Feb 2016 17:30:41 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/8] staging: wilc1000: Remove useless return variables
Message-ID: <20160225120041.GA5438@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:

@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
          -No change

 drivers/staging/wilc1000/wilc_wlan.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 391173b..04518d6 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -1330,11 +1330,7 @@ int wilc_wlan_cfg_get(struct wilc_vif *vif, int start, u32 wid, int commit,

 int wilc_wlan_cfg_get_val(u32 wid, u8 *buffer, u32 buffer_size)
 {
-	int ret;
-
-	ret = wilc_wlan_cfg_get_wid_value((u16)wid, buffer, buffer_size);
-
-	return ret;
+	return wilc_wlan_cfg_get_wid_value((u16)wid, buffer, buffer_size);
 }

 int wilc_send_config_pkt(struct wilc_vif *vif, u8 mode, struct wid *wids,
--
2.1.4


