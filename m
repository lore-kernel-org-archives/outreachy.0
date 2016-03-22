X-GM-THRID: 6264891675025342464
X-Received: by 10.182.91.9 with SMTP id ca9mr27767910obb.7.1458658761309;
        Tue, 22 Mar 2016 07:59:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.29.5 with SMTP id f5ls1210835igh.30.canary; Tue, 22 Mar
 2016 07:59:20 -0700 (PDT)
X-Received: by 10.107.131.230 with SMTP id n99mr27341843ioi.30.1458658760833;
        Tue, 22 Mar 2016 07:59:20 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id tu5si4008262pab.2.2016.03.22.07.59.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 07:59:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id u190so316014668pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 07:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tnqfVANYWBc1C/I5gRwUIaWlGX2LPei7wy5NREXU7uk=;
        b=NeZGrbcb4p91nbnUpkiNOXaaJ+ITYxuP9OZ86bDO1Kk5WMUGozMlmYTkZtaaR3wuln
         GHjvH1neSejjStpKuvvVqA+99AVvUiRuQogWBMHDO2cHOvk1hDmOnPyHQMIhdmKmUvvA
         jDeNRjmapkDuOxOLPq74qMQCUmhcw2NzjreD1yaoOdnVuhCiUVw7sDo/7xEjdW9wXsED
         G5/FlIWOBeO4WhGzSxhaDNyzpDa706dt3e2bJJxQgcjezSUBA839zpgme46IuezfCMk2
         aBSLEBfSSUs0HT08nmgg6i4fnbQdYC1FXE1zleMWMPJNkC2sDAsWbTjYmlEjR6oHwxXN
         EFRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tnqfVANYWBc1C/I5gRwUIaWlGX2LPei7wy5NREXU7uk=;
        b=aSSFYwP8TLXTN1t904NMorjl4tzc8VmY2IhFc58Jb/mQOzhWqIIlGgg4RIT+FaHAu9
         wqI8tLJp4IXmwAvDlUJZ6jvZ58TSNpRrNAVRzxCr4MrALUYDqU+Rdhtuf130Us3uyqNM
         w7jj+XC5AsnlsMz1mZCHgMXan68xlZtZqCM7K9T/AWOmUUWYMpndkoIuSLzf/oW9DRgw
         lbHAu29jLoZ33+Ne7DX8A3o8+ifpKUPU56w7tcW+0q6PkKVRKY6NPrjfiuS5b56ZnuUj
         EvNXasgxuLp2yWCskHceNEcf4QN9XgAAxjft1ixuuZyr8xZDjPoEkOTdFUjHxWCcNB0T
         vjcw==
X-Gm-Message-State: AD7BkJIKYa4AJuKOzn6UqV8m0kYdr0sjcWVy32g27MTmClYB6CToAZ1k1H+PCWo8ql3r7A==
X-Received: by 10.66.193.202 with SMTP id hq10mr53529698pac.6.1458658760398;
        Tue, 22 Mar 2016 07:59:20 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n11sm49010917pfb.74.2016.03.22.07.59.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 07:59:19 -0700 (PDT)
Date: Tue, 22 Mar 2016 20:29:13 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: mlme_linux: Clean up tests if NULL
 returned on failure
Message-ID: <20160322145913.GA5282@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Some functions like kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:

@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/mlme_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index e4e4bde..af7c4a4 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
@@ -153,7 +153,7 @@ void r8712_report_sec_ie(struct _adapter *adapter, u8 authmode, u8 *sec_ie)
 	buff = NULL;
 	if (authmode == _WPA_IE_ID_) {
 		buff = kzalloc(IW_CUSTOM_MAX, GFP_ATOMIC);
-		if (buff == NULL)
+		if (!buff)
 			return;
 		p = buff;
 		p += sprintf(p, "ASSOCINFO(ReqIEs=");
--
2.1.4


