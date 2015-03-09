X-GM-THRID: 7206241042432
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fdd6094d2153d18b,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.131.37 with SMTP id oj5mr26351287pab.12.1425891385064;
        Mon, 09 Mar 2015 01:56:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.137.167 with SMTP id qj7ls351979obb.67.gmail; Mon, 09 Mar
 2015 01:56:24 -0700 (PDT)
X-Received: by 10.182.33.97 with SMTP id q1mr26884286obi.42.1425891384536;
        Mon, 09 Mar 2015 01:56:24 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pc4si2508083pac.0.2015.03.09.01.56.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 01:56:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by paceu11 with SMTP id eu11so57188752pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 01:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wmF8kzWQUePwNejVNGkVuwityJlYP30qu71097hyvT0=;
        b=V9P26XCX9wFUTlxh1wUiMjmzE2nsUmowFnm64gjbP6CJnWWi1i8bDXkTuNloTvGjPr
         d3gMLenlX5J0Ac3Lm/CPvgFWEzTdW+zXWOEyMtTZgOdrSA4uNECNDku52Th+SvZlktX1
         bPAUgSZMJB3PXAHCZLUAh612zIn6gNi5qCCalpaqI6+kZxkawmNYIDc+9IDTf3lE+SAO
         uIPRKf8OlB5p/VhEKmLr/E8f0JJ11ijU2Ti8GU0TIPy2vRVHfXxmBXXNfGNLbwlwXZR8
         97CehAUYhAbhddwlU3IENSr4cSwnv9ghPS3m4WdMud3pgFRGyPdAnC1WPt2DSa9Ap1hx
         4DVg==
X-Received: by 10.70.54.130 with SMTP id j2mr29505603pdp.122.1425891384379;
        Mon, 09 Mar 2015 01:56:24 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id fz15sm3793477pdb.54.2015.03.09.01.56.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 01:56:23 -0700 (PDT)
Date: Mon, 9 Mar 2015 14:24:42 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging rtl8172: Remove unnecessary typecast
Message-ID: <20150309085442.GA3223@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Using addressof and then casting to the original type is unneeded.
So these casts can be removed.
Issue detected via Coccinelle script.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 324da34..0a1c631 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -92,7 +92,7 @@ static u32 rtl871x_open_fw(struct _adapter *padapter, const u8 **ppmappedfw)
 
 static void fill_fwpriv(struct _adapter *padapter, struct fw_priv *pfwpriv)
 {
-	struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
+	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
 	struct registry_priv *pregpriv = &padapter->registrypriv;
 
 	memset(pfwpriv, 0, sizeof(struct fw_priv));
-- 
1.9.1


