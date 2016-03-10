X-GM-THRID: 6260472921139970048
X-Received: by 10.107.134.68 with SMTP id i65mr3280166iod.33.1457629939635;
        Thu, 10 Mar 2016 09:12:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.248.226 with SMTP id yp2ls786418obc.38.gmail; Thu, 10 Mar
 2016 09:12:19 -0800 (PST)
X-Received: by 10.182.72.137 with SMTP id d9mr3403389obv.31.1457629939349;
        Thu, 10 Mar 2016 09:12:19 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id tu5si555120pab.2.2016.03.10.09.12.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 09:12:19 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id 124so73723389pfg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 09:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VsA6kH9h8gXjuUU/a7qJvzuqDnhr4/DTedTmJ9rN7/Y=;
        b=Mt7NBy9hJSxe9bHVDRANuoGiZiewRHMqWsfay7nPzX++I4DTly5EJj6XAEtMHLSEFx
         p3Pr3Jt0CsqThE5hUzN3kyHUxKrWQ1SfqbcAnxHnAmKl+q+3X5UH305OQ8oEN4CfVb90
         TWuyS5wcUxeXwIrbGS0GOc9NQXE6ikpwGPdMOwgybZhJr7ViV3Roj0rbke7NstaRVRL3
         GGmEWV6RW7cJKrHMEBOWVMPu69Fd4vKdwa+ndm0YJnDu+l9HDG9uHzZF4Yjb2pEfbYik
         WNo1n+Rlpz/oKb0+a0unJQkwDeZ3xQqiBf6cqQlZ1NAdP7/QFde/Av4Ig2MejZhwKTjl
         Wweg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VsA6kH9h8gXjuUU/a7qJvzuqDnhr4/DTedTmJ9rN7/Y=;
        b=CI9ZlvoeXuDjT3Dk4PIO9FPsXXmmtzp5MEQnwp1F4Mqy07uUi3Qop1x2O4ZRD1DvuU
         ZdpCwI6MsE5QUPs4zwmzDVOLS8rRO711L4HT4UkgZhFCuth1bFGbLoKFkHtjybhv9Ywd
         0dP2ND0T+spFACXuqu/jrdh6kE3WF5fvGWQgv48cM1YspnunxL8PutHUxs2z5NakujmJ
         K7hEOeQtX5OmFGC1uImjypSNHwwFwKsjwvGr7wQ+xcU4gKmQMc3mSuqyvDUZVixn+otJ
         FDFNABxWgHva4D0EZl2cNGt6ds/XeoHhX03MJcjIFFwsOY2WFKf3IMJcUIs8k7BAJkwh
         8Tdg==
X-Gm-Message-State: AD7BkJJ6EjjrfYLt/rDvwMkRIPKO+Xh4bcATp/FnfwxBqW4bGbk0LnbaEZkfPHE19k/t3g==
X-Received: by 10.98.65.203 with SMTP id g72mr6581750pfd.138.1457629939122;
        Thu, 10 Mar 2016 09:12:19 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n66sm6879620pfj.39.2016.03.10.09.12.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 09:12:18 -0800 (PST)
Date: Thu, 10 Mar 2016 22:30:07 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: core: Remove unnecessary else after
 return
Message-ID: <20160310170007.GA18952@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index f174b4d..359ef41 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -269,8 +269,8 @@ u8 EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
 		}
 		data = rtl8723au_read8(Adapter, EFUSE_CTRL);
 		return data;
-	} else
-		return 0xFF;
+	}
+	return 0xFF;
 }

 /* Read one byte from real Efuse. */
--
2.1.4


