X-GM-THRID: 6209462121071116288
X-Received: by 10.129.137.133 with SMTP id z127mr4423813ywf.25.1445753506302;
        Sat, 24 Oct 2015 23:11:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.164 with SMTP id f33ls2936498qgf.29.gmail; Sat, 24 Oct
 2015 23:11:45 -0700 (PDT)
X-Received: by 10.140.151.198 with SMTP id 189mr24416303qhx.11.1445753505567;
        Sat, 24 Oct 2015 23:11:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id sm2si1645160pab.0.2015.10.24.23.11.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 23:11:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fa8so494082pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 23:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=gZbwkq5qXTmdikEq6DtG6dBh73yFj2R4bP7cqstcN54=;
        b=Ow9TGz05V1krKDGRWXqB/EhimJRoQGHypxz6gQ06qJ65EIOBTSUK4S7nAe7JnetWWF
         GH/Yw+B6Hl94c+zIYO1YI47bR7g2e7fSoEMI+YetKuLeslJ67/cEisZpRdozWCZQ2+YZ
         /zXfVDX6488VGR/FFN1RBlO8OaQLTfYCzj4bl5pZIRTnK1KcEasheCrGvL6KuthOmz+v
         jAoWANMaaz8HdTpSOzGXcUgFSrtKjf6lJ0o3FlwgJZDx1b7OPLaAxX1/DlBWwGqhkYvl
         BY52KGIdLrFX8/YyPoq/GxRvvSVNTNdYWLbEr+DxE469cpiQjb8GdsfD+QIKs3x6ojPN
         Tq2Q==
X-Received: by 10.68.134.39 with SMTP id ph7mr3128111pbb.106.1445753505443;
        Sat, 24 Oct 2015 23:11:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id c3sm27124822pbu.24.2015.10.24.23.11.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Oct 2015 23:11:44 -0700 (PDT)
Date: Sat, 24 Oct 2015 23:11:44 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: r8723au: remove external function declarations
 from .c file
Message-ID: <a039d39e612445309cc6263707209995cb3cc071.1445752141.git.amsfield22@gmail.com>
References: <cover.1445752141.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445752141.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unused external function declarations.

Addresses checkpatch.pl:
WARNING: externs should be avoided in .c files

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index bf27ea4..906b578 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -274,7 +274,6 @@ u8 EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
 }
 
 /* Copy from WMAC fot EFUSE write 1 byte. */
-void EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value);
 void EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value)
 {
 	u8	Bytetemp = {0x00};
@@ -502,7 +501,6 @@ int rtw_BT_efuse_map_read23a(struct rtw_adapter *padapter,
 }
 
 /* Read All Efuse content */
-void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse);
 void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse)
 {
 	u16	mapLen = 0;
-- 
2.1.4


