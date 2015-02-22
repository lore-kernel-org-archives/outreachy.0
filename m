X-GM-THRID: 2517133950976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,25a6457a67aef068
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.61.197 with SMTP id w45mr7665725yhc.54.1424623219808;
        Sun, 22 Feb 2015 08:40:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.254.3 with SMTP id ae3ls136730obd.56.gmail; Sun, 22 Feb
 2015 08:40:19 -0800 (PST)
X-Received: by 10.182.126.168 with SMTP id mz8mr8310381obb.9.1424623219569;
        Sun, 22 Feb 2015 08:40:19 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id f2si3925074pdg.0.2015.02.22.08.40.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 08:40:19 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id p10so19747046pdj.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 08:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=JetcawYkq1nXldPq0P71WSzVcFxOfsUQRAgtxqVU5KE=;
        b=pRDjWQBZVF7tTtokAJvbauVwZ7btcSW2ITLMAbcljIf8K7Wl3j34tC5QShIRdZ+AHI
         jVJt3jrmu8rqd4UxkbdklmxE2m+iFA3dmsKreC7Nx62oguIUfr662jMlhZFoc6uz4G0T
         VQg6ijl3yLgBa7S1tNQy6TH6zncI5zGBzdJNO5bkzaHcu7w4rgNkPP9i4haheXOye6Fm
         REa10TYLbx8RZ4Vg90E41qQf3SVltbRgQnBdt+Yh7T/8/QkmMoF12E047U5sEOvJK64p
         l4ED88EsecK9ePKXpxKd1Gu80huSD4AEngIRPKWZ9gVk0WYDfmSwGSENLZTQfgpOi5Ik
         Hwgw==
X-Received: by 10.70.128.49 with SMTP id nl17mr8111156pdb.67.1424623219476;
        Sun, 22 Feb 2015 08:40:19 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id uy8sm32945611pbc.31.2015.02.22.08.40.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 08:40:19 -0800 (PST)
Date: Sun, 22 Feb 2015 22:11:20 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] staging: rtl8192u: Remove unnecessary comment
Message-ID: <cdd2f8779115dababd5ea08b04f0930d5380a464.1424622240.git.navyasri.tech@gmail.com>
References: <cover.1424622240.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424622240.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The <linux/config.h> header file is not used anymore,
so it is commented out in this file.This patch deletes
that unnecessary comment.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - The style of a comment was changed to C99 in the last
       version, this version removes that comment.

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index e517e81..cd31598 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -11,7 +11,6 @@
  *
  */
 
-//#include <linux/config.h>
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-- 
1.9.1


