X-GM-THRID: 6251895142300516352
X-Received: by 10.13.204.85 with SMTP id o82mr22585445ywd.51.1455632770941;
        Tue, 16 Feb 2016 06:26:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.169 with SMTP id x9ls38348igl.25.canary; Tue, 16 Feb
 2016 06:26:09 -0800 (PST)
X-Received: by 10.66.141.102 with SMTP id rn6mr22158806pab.26.1455632769319;
        Tue, 16 Feb 2016 06:26:09 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id ui7si3965991pab.0.2016.02.16.06.26.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 06:26:09 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id x65so106086558pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 06:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=PhL8oZ9IMP8Yve1wws59L98yzydOToi0DCAbnmVdSkE=;
        b=EMk1p7Nf6Ngfzp8B0s2sTqZ2tEgeKifMugz91USUqNEq6YAZf6v6QU3ScH2QK4M4EZ
         OnyvlOm7ukuZhxFnKQIrP90T+QhB5syDe02/VxKNiq95tajeIZo7Pn93hK3yU4JDhJv5
         XZPnu8+Q/PKf//3GlrRHR/oZYQMAFhCjpcfDs8iK0IRFjsQAPwbTIUZkChyuB3H8+Xsl
         qXHx2hnbiht+z0k1VDJ2wwk/jsvISLiYpM77UdwvVxJEmWc1sxG5Ao3QLcy3+WZ3mf00
         mHK57rdtXhhpz+ljjRgDPwsXXTYTlfV7YvZbMiIZgiuAWw7ApWGxKUNg7Be1fbaMWVZi
         FGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=PhL8oZ9IMP8Yve1wws59L98yzydOToi0DCAbnmVdSkE=;
        b=bpWpTTEubNX+LJ/vbaAa/RjQglQyh0KJifR5WGMDVIK7DoMDEqEz0NdZFbgN2VtPwY
         LWsif3LA0yyA8TRH2S/gHVFxZwupD5uqfeuyq5EzMy/nLx0vH/Uojp67HLJdzynA6kxx
         vxI6NAVxwTwwTJE5pgLEFlrYE9J+KJrMVt+AyhpBM00Zh+mvBHxKv0Q++Dfs5eUnlhET
         DiM9Fs2B73uEgIj179UKNCrNiK0Tlzs6QLK11+G0iVtdV917jywevOzdAnxZ+NKTGFDi
         DJy7kpFXX9JjytiptExYNACBqt+7MxSuohV0LoIVdGuReOai5tRlH2Mwk3eUjjL6sB+j
         5naQ==
X-Gm-Message-State: AG10YORSOV3lODgP9sE+yj1dsjZ5XqRJgz0DtPro4w21aZ3kuEyn7pO6MqHVBNogZS6CKg==
X-Received: by 10.98.32.150 with SMTP id m22mr31213735pfj.27.1455632769147;
        Tue, 16 Feb 2016 06:26:09 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id n78sm46288261pfb.53.2016.02.16.06.26.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 06:26:08 -0800 (PST)
Date: Tue, 16 Feb 2016 19:56:05 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: core: Use put_unaligned_le16
Message-ID: <20160216142605.GA22613@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Introduce the use of function put_unaligned_le16.
This is done using the following Coccinelle semantic patch:

//<smpl>
@@ identifier tmp; expression ptr; expression y,e; type T; @@

- tmp = cpu_to_le16(y);

  <+... when != tmp
- memcpy(ptr, (T)&tmp, ...);
+ put_unaligned_le16(y,ptr);
  ...+>
? tmp = e

@@ type T; identifier tmp; @@

- T tmp;
...when != tmp
//</smpl>

Corresponding header file has been added too.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 96e5c6d..e3add48 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -20,6 +20,7 @@
 #define _RTW_MLME_EXT_C_
 
 #include <linux/ieee80211.h>
+#include <asm/unaligned.h>
 
 #include <osdep_service.h>
 #include <drv_types.h>
@@ -1027,7 +1028,6 @@ static void issue_assocreq(struct adapter *padapter)
 	unsigned char		*pframe, *p;
 	struct rtw_ieee80211_hdr	*pwlanhdr;
 	__le16 *fctrl;
-	__le16		le_tmp;
 	unsigned int	i, j, ie_len, index = 0;
 	unsigned char	rf_type, bssrate[NumRates], sta_bssrate[NumRates];
 	struct ndis_802_11_var_ie *pIE;
@@ -1073,8 +1073,7 @@ static void issue_assocreq(struct adapter *padapter)
 
 	/* listen interval */
 	/* todo: listen interval for power saving */
-	le_tmp = cpu_to_le16(3);
-	memcpy(pframe , (unsigned char *)&le_tmp, 2);
+	put_unaligned_le16(3, pframe);
 	pframe += 2;
 	pattrib->pktlen += 2;
 
-- 
1.9.1


