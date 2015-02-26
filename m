X-GM-THRID: 3635562938368
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b905441b98bf8956
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.1.5 with SMTP id 5mr1133944lai.4.1424942951038;
        Thu, 26 Feb 2015 01:29:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.25.134 with SMTP id c6ls8098lag.103.gmail; Thu, 26 Feb
 2015 01:29:10 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr1146176lbb.13.1424942950611;
        Thu, 26 Feb 2015 01:29:10 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id r6si83089wix.0.2015.02.26.01.29.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:29:10 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgha1 with SMTP id a1so8771963wgh.12
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=PQ5KMTPC4qIo1+sQJVVtC6UMlB5K3DP3YTH4iqBfwJQ=;
        b=I+3IhU/SVesMQhGsEbsXVDUaY24i93bE4Z/7ubbzzYmJduVu2/oD2r7wmbaZqwIN1L
         LZCVVoukVxxt2Nbxkvi8bo+eIe/dsehDJZVYsjlxA72nWLh1bzyOpbl9S8DLJ3pGqbxg
         qZecR/Lm1+A5tO+p800h0KcwVusaluinL4ThQ74vLMU7+4poWWbOUS8S+Szag8PMYPuZ
         XSW6JcQ4KOkJTiLZxN0e7sK59fwcGpGtXPYptfgkTQeue8nqyT6JKYkU4YKhOepk3Ba/
         /ZGF4EXiilLo5+0dFVg2rEqYXgsYA988cYMVk8/7sozgblyL5piZS5H+XiuciFSW27h4
         tqBA==
X-Received: by 10.194.103.228 with SMTP id fz4mr14574393wjb.82.1424942950511;
        Thu, 26 Feb 2015 01:29:10 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id lg18sm28932139wic.23.2015.02.26.01.29.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:29:09 -0800 (PST)
Date: Thu, 26 Feb 2015 11:29:04 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 02/24] staging: rtl8723au: rewrite the right hand side of an
 assignment
Message-ID: <cfc8476bb3f41ca4c417a4e008461d0c422db59b.1424942339.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8723au/hal/hal_com.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/hal/hal_com.c b/drivers/staging/rtl8723au/hal/hal_com.c
index bf4cae2..f0cf598 100644
--- a/drivers/staging/rtl8723au/hal/hal_com.c
+++ b/drivers/staging/rtl8723au/hal/hal_com.c
@@ -231,7 +231,7 @@ void HalSetBrateCfg23a(struct rtw_adapter *padapter, u8 *mBratesOS)
 	rate_index = 0;
 	/*  Set RTS initial rate */
 	while (brate_cfg > 0x1) {
-		brate_cfg = (brate_cfg >> 1);
+		brate_cfg >>= 1;
 		rate_index++;
 	}
 		/*  Ziv - Check */
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

