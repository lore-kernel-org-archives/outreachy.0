X-GM-THRID: 6401822888020672512
X-Received: by 10.200.54.91 with SMTP id n27mr314158qtb.61.1490896182486;
        Thu, 30 Mar 2017 10:49:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.228 with SMTP id 91ls630561otx.26.gmail; Thu, 30 Mar
 2017 10:49:42 -0700 (PDT)
X-Received: by 10.13.225.22 with SMTP id k22mr359692ywe.51.1490896182006;
        Thu, 30 Mar 2017 10:49:42 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id q9si448065itc.1.2017.03.30.10.49.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 10:49:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so11663435pgf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 10:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hLje0c0CNd/UHf+BrwzkYuCp1kjHmy43iiKPl75433s=;
        b=tmN1RUEy1643suHmt3hxBmsdyIuVjKF2NVXBG9KZHKvdAKoEeDeXmaXcpJkUzhvCRq
         p6I0KJvPvECIdF2P1xuPtJfNQKXk40yUzI4FV8IqHI1x3cRDPKmsaxunwBo4IlMTNQVh
         q7HoyHGGxanlup5ud82/j92C531rF+ThSuRlWqfPMe79JnoThvwB0gA7LfJnH+gSdQly
         1CP4PZVQSuqu0S6H3XbgZKFiozQ5NqP5lEzRxpYIU2zZRm5slHLEGHUfq3gnNZPADSxp
         nKTASWD48gVoJekqgRPiJNKlOLgnANk/F5W2CdjT9wOXjYKImaK5IyOkklBfllKci16f
         njuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hLje0c0CNd/UHf+BrwzkYuCp1kjHmy43iiKPl75433s=;
        b=VI3CtQ21mmSeUqwcTzd8xbeJbyOGSxF1ByiVtnHidE//3379r8vSs5KzDFDm+sLALm
         zlVlKcMy0bfWr2pI3IpuXx3B+HC8a6mVmdvcejazKDgAun8QpTHKazpLIuFbZEuMvGBl
         iWmDfRxG+XBgiedgdrRiDdBO81Nefpbi9mMIfbxz3hU9q3BhwsN5+Qzh/HUWw7ILmp8m
         q78Qcyfa+bziMTILo+2NuB9FII3rECKWSTkUTNZNhraydLVLwFfyGusNs4cmdnoewbCU
         eSalWeChTmOyY/z0uXqNqo4/U7zxWVykcti7iTjSQfX/O5a7wyMWzjWtqrzA1/FNWjsW
         htMg==
X-Gm-Message-State: AFeK/H1ph1fGqS0C9G83ABinLSDXQ9ZtSsx693Ny4NGfSKiiesCLnDh+4fCYO0914fzOTg==
X-Received: by 10.98.67.157 with SMTP id l29mr754575pfi.251.1490896181594;
        Thu, 30 Mar 2017 10:49:41 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([103.59.75.12])
        by smtp.gmail.com with ESMTPSA id a5sm5771167pfh.124.2017.03.30.10.49.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 10:49:40 -0700 (PDT)
Date: Thu, 30 Mar 2017 23:19:03 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Matthew Wilcox <mawilcox@microsoft.com>
Subject: [PATCH] include: linux: pid_namespace: Replace spaces with tab
Message-ID: <20170330174903.GA4426@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch issue: No spaces at the start of a line.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 include/linux/pid_namespace.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/pid_namespace.h b/include/linux/pid_namespace.h
index 5a7e664..cfd1541 100644
--- a/include/linux/pid_namespace.h
+++ b/include/linux/pid_namespace.h
@@ -11,8 +11,8 @@
 #include <linux/ns_common.h>
 
 struct pidmap {
-       atomic_t nr_free;
-       void *page;
+	atomic_t nr_free;
+	void *page;
 };
 
 #define BITS_PER_PAGE		(PAGE_SIZE * 8)
-- 
2.7.4


