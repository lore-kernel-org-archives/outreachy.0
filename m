X-GM-THRID: 7382846406656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ae38b1b49eac9065
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.70.63.37 with SMTP id d5mr18922219pds.3.1425988565633;
        Tue, 10 Mar 2015 04:56:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.171.168 with SMTP id av8ls251693igc.39.canary; Tue, 10 Mar
 2015 04:56:05 -0700 (PDT)
X-Received: by 10.70.128.66 with SMTP id nm2mr8660699pdb.7.1425988565401;
        Tue, 10 Mar 2015 04:56:05 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id m1si76168pdc.0.2015.03.10.04.56.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 04:56:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x231.google.com with SMTP id v10so1139344pde.13
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 04:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=VdU0hwnvV9/saQ6rzZ/nhI3dBaFxQUroC9QQ9i4wGOM=;
        b=XqqHJH7WsdR2nODsLVgPYXREbjYS87eAsaKxrQTboqsFubWD32ilYBPYMtpiLgy6NN
         EVdK9UVdXXuVkp8M8Iz4Ea6avWUInWf/zk7NzzWwJaUVY4am1lUAUW4wvweyE2I5nzpl
         5BJlDqM/Pm6wmdvVlrsgMup02ijzk2GsFEPBAVA+fIZ0rFjDaDi2pbQyh4c3yH34rq4G
         e0UCJSQcq/azhH3A5/n/keh8buwCFEWK2KkUiJAn2SmL9LyheSXxau1XSUwi2vOpirys
         idFn30rEN8KuPNtr25rwbWricqJtXy0I8dj8Rba/E0opk6D2nbv8suxzoqYatg576JdZ
         G9Zw==
X-Received: by 10.70.119.3 with SMTP id kq3mr65557509pdb.85.1425988565244;
        Tue, 10 Mar 2015 04:56:05 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id f8sm625503pdm.68.2015.03.10.04.56.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 04:56:04 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:27:27 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/8] staging: rtl8188eu: Use kcalloc instead of kzalloc.
Message-ID: <95db1d440f713bca4f3ac790f3145e44cf43af7b.1425987910.git.navyasri.tech@gmail.com>
References: <cover.1425987909.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425987909.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kcalloc instead of kzalloc function.
A coccinelle script was used to make this change.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - Make commit message shorter by removing the
       coccinelle script.

 drivers/staging/rtl8188eu/core/rtw_xmit.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 7a71df1..7ed60ab 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -1634,7 +1634,8 @@ void rtw_alloc_hwxmits(struct adapter *padapter)
 
 	pxmitpriv->hwxmit_entry = HWXMIT_ENTRY;
 
-	pxmitpriv->hwxmits = kzalloc(sizeof(struct hw_xmit) * pxmitpriv->hwxmit_entry, GFP_KERNEL);
+	pxmitpriv->hwxmits = kcalloc(pxmitpriv->hwxmit_entry,
+				     sizeof(struct hw_xmit), GFP_KERNEL);
 
 	hwxmits = pxmitpriv->hwxmits;
 
-- 
1.9.1


