X-GM-THRID: 9088756875264
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,436ffdcf88b191cd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.66.135 with SMTP id f7mr32082365pat.29.1426751822451;
        Thu, 19 Mar 2015 00:57:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.194 with SMTP id j185ls698576ioj.46.gmail; Thu, 19 Mar
 2015 00:57:02 -0700 (PDT)
X-Received: by 10.42.64.67 with SMTP id f3mr73944403ici.5.1426751822259;
        Thu, 19 Mar 2015 00:57:02 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id pc4si128478pac.0.2015.03.19.00.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 00:57:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id ni2so68753827pdb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 00:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6MsTPrEtdMB6Crxu3Ouf34XPzg5oYKfnC15iX7/zVHc=;
        b=Pxgn8wAwM12fIpJaIYvCj5kPAViDqhCoJt/dtV0w9eVJriwM5PJ9jGWY9ayEl7Fuhz
         RnEdvUcaErBOWBDplnRlOoQcBei99aA+4YhcaIayrQ1qE/F4QO7jhFwW1rTBPVrpI458
         R9s5yEEkTHKzHftQBQYbz5uUYZ+RsiFVaXA/lfeu+Rd/MZdvIBktmue8+ALtdnyV/1O6
         zkctyGNZXqomN7ielRdhDnZENvnJSp9urNTqIUMx55OBRXo2TClFu/zOyul2FBqZ7Fat
         QyP4sxtmoFdLdMP5q3tDKCV14rr96aQucjmNK3n+r4RyuDFKPsu2Yu/+1kY2LwM3uY7g
         lLcw==
X-Received: by 10.70.30.225 with SMTP id v1mr47588533pdh.104.1426751822177;
        Thu, 19 Mar 2015 00:57:02 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id zi10sm1417808pab.35.2015.03.19.00.57.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 00:57:01 -0700 (PDT)
Date: Thu, 19 Mar 2015 13:25:06 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: rtl8188eu: Remove unused extern declarations.
Message-ID: <8a4d035dce98b590c6ad0000ec0132a7b024f1bb.1426751449.git.vatikaharlalka@gmail.com>
References: <cover.1426751449.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426751449.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

These externs are defined but not used anywhere in the code.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtw_security.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_security.h b/drivers/staging/rtl8188eu/include/rtw_security.h
index 66d60aa..a00d1e6 100644
--- a/drivers/staging/rtl8188eu/include/rtw_security.h
+++ b/drivers/staging/rtl8188eu/include/rtw_security.h
@@ -245,10 +245,6 @@ struct mic_data {
 };
 
 extern const u32 Te0[256];
-extern const u32 Te1[256];
-extern const u32 Te2[256];
-extern const u32 Te3[256];
-extern const u32 Te4[256];
 extern const u32 Td0[256];
 extern const u32 Td1[256];
 extern const u32 Td2[256];
-- 
1.9.1


