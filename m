X-GM-THRID: 9490543935488
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8bbd6d04c601b280
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.64.143 with SMTP id xi15mr12354791icb.0.1426985597184;
        Sat, 21 Mar 2015 17:53:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.118 with SMTP id i109ls2001656qgf.69.gmail; Sat, 21
 Mar 2015 17:53:17 -0700 (PDT)
X-Received: by 10.236.32.238 with SMTP id o74mr3858612yha.2.1426985597014;
        Sat, 21 Mar 2015 17:53:17 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id pj7si324884pbb.2.2015.03.21.17.53.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:53:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdnc3 with SMTP id c3so147257792pdn.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LdnmF4U8dZxKtX1mv4ni3hpYAZRUTqsXQR9S4I8iCGo=;
        b=IAgzbEVkBosPmPpH6nJL1V0CH2O5qMDDwYX9RSlfOnaCxR8wvwqm+J6dGE6rm+hj5f
         dDnmi4slEtZkFS3P3I0/BHtSVh2rMkbeUpVPOLVZNZPBtfgIFhy3Avueeuu6fviWterO
         GnmGX7XKEcvljumoVQPR/kTL/e9sj1p5uTXR7TOxd2diUmaGpWOYJXImFrmDp2oU9FJb
         eER0eLqzpLqpCix9QHSdxm6A0z10/0DZWx1b85AdHu0+8CnhnKsGkGzVc4U4tOCUAx1B
         Jw/FXCmliyx4sMz8zul/CalByUE0I/i8X8b1KKAifXeM3Kb1Hj3e0IC381MpSlGakHQZ
         Br8w==
X-Received: by 10.66.55.42 with SMTP id o10mr149440799pap.148.1426985596893;
        Sat, 21 Mar 2015 17:53:16 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id y5sm12694059pdh.21.2015.03.21.17.53.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:53:15 -0700 (PDT)
Date: Sun, 22 Mar 2015 06:21:14 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 05/10] Staging: rtl8712: Fix cast to restricted __le16 in
 hal_init.c
Message-ID: <5711e9a4fca06c5f60a68f66e18e6609cb81c214.1426983594.git.vatikaharlalka@gmail.com>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following Sparse warnings:
drivers/staging/rtl8712/hal_init.c:124:29: warning: cast to restricted __le16
drivers/staging/rtl8712/hal_init.c:125:27: warning: cast to restricted __le16
drivers/staging/rtl8712/hal_init.c:127:29: warning: cast to restricted __le32
drivers/staging/rtl8712/hal_init.c:129:33: warning: cast to restricted __le32
drivers/staging/rtl8712/hal_init.c:131:33: warning: cast to restricted __le32
drivers/staging/rtl8712/hal_init.c:133:30: warning: cast to restricted __le32

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 0a1c631..7c5956a 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -121,16 +121,16 @@ static void fill_fwpriv(struct _adapter *padapter, struct fw_priv *pfwpriv)
 
 static void update_fwhdr(struct fw_hdr	*pfwhdr, const u8 *pmappedfw)
 {
-	pfwhdr->signature = le16_to_cpu(*(u16 *)pmappedfw);
-	pfwhdr->version = le16_to_cpu(*(u16 *)(pmappedfw+2));
+	pfwhdr->signature = *(u16 *)pmappedfw;
+	pfwhdr->version = *(u16 *)(pmappedfw+2);
 	/* define the size of boot loader */
-	pfwhdr->dmem_size = le32_to_cpu(*(uint *)(pmappedfw+4));
+	pfwhdr->dmem_size = *(uint *)(pmappedfw+4);
 	/* define the size of FW in IMEM */
-	pfwhdr->img_IMEM_size = le32_to_cpu(*(uint *)(pmappedfw+8));
+	pfwhdr->img_IMEM_size = *(uint *)(pmappedfw+8);
 	/* define the size of FW in SRAM */
-	pfwhdr->img_SRAM_size = le32_to_cpu(*(uint *)(pmappedfw+12));
+	pfwhdr->img_SRAM_size = *(uint *)(pmappedfw+12);
 	/* define the size of DMEM variable */
-	pfwhdr->fw_priv_sz = le32_to_cpu(*(uint *)(pmappedfw+16));
+	pfwhdr->fw_priv_sz = *(uint *)(pmappedfw+16);
 }
 
 static u8 chk_fwhdr(struct fw_hdr *pfwhdr, u32 ulfilelength)
-- 
1.9.1


