X-GM-THRID: 1969702830080
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4dff6f9f1e12e8c3
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.151.75 with SMTP id 72mr3559151qhx.3.1424540803086;
        Sat, 21 Feb 2015 09:46:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.102.167 with SMTP id fp7ls463276obb.79.gmail; Sat, 21 Feb
 2015 09:46:42 -0800 (PST)
X-Received: by 10.182.29.3 with SMTP id f3mr3741874obh.16.1424540802884;
        Sat, 21 Feb 2015 09:46:42 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id bo1si3664362pbc.0.2015.02.21.09.46.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 09:46:42 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id kq14so16281562pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 09:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hPxwH6QZBB4H5FL3wR36X8GgUsVzCsg8EGzN9CVgEZo=;
        b=l9RgZt1qcTbqRi7zRQl1iUaYgWJ39Ba9ZiTfGqwaCiLcRAumoQwW+bSjNipAMG6qco
         4n2Yj7lBrdS320i58Jz/ybsbKQiuAMehqN6NM3f2yBXEc45Ad8kQ2kLeSeq0AYman0KE
         j+8XTf3dsKhUOnZzgtIkD4o10rzIBAHewHbZ6ejJf76+GGZlmFrS59hyoYbY6gbIopRR
         rD7RnKHgTXsj9A4lgH9aaDOkBHsrA2zUrc38O93aMKOFynxtye/YpIWp/Py7wb6vYDcf
         LgWctFtvzGZkWUVMsIvmVYw0MHKwWKnFqeN+usa7Vt7TPorqHCfB58RdWEXbLwhlzeyQ
         6hQg==
X-Received: by 10.68.68.171 with SMTP id x11mr5946356pbt.60.1424540802786;
        Sat, 21 Feb 2015 09:46:42 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id cy6sm22302268pdb.15.2015.02.21.09.46.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 09:46:42 -0800 (PST)
Date: Sat, 21 Feb 2015 23:17:41 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtl8192u: Clean-up comment line style
Message-ID: <8d7b9590155fbd1298fb2433e15d5bc40dd26475.1424538520.git.navyasri.tech@gmail.com>
References: <cover.1424538520.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424538520.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Convert style of comment from C99 to C89 to fix the
following checkpatch.pl error:

ERROR: "Do not use C99 // comments"

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index e517e81..8c29c58 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -11,7 +11,7 @@
  *
  */
 
-//#include <linux/config.h>
+/* #include <linux/config.h> */
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-- 
1.9.1


