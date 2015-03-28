X-GM-THRID: 10161736384512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,95867e213b91c555,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.39.11 with SMTP id l11mr5231179lbk.12.1427506268231;
        Fri, 27 Mar 2015 18:31:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.1.3 with SMTP id 3ls406114lai.36.gmail; Fri, 27 Mar 2015
 18:31:07 -0700 (PDT)
X-Received: by 10.152.88.33 with SMTP id bd1mr5319669lab.2.1427506267425;
        Fri, 27 Mar 2015 18:31:07 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id i8si196732wif.1.2015.03.27.18.31.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 18:31:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wibbg6 with SMTP id bg6so44966697wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2015 18:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ZLHRTuL3VQekueywBszEgDKOzTyW0zszBFnd+0ibjRU=;
        b=DbAc4kr3dU1//6wyeupSLkq+K+eDHIWTAsGtT83yl36CsContdrZhyVgPXZixV44Tq
         +n0XATBEoUcBA0JdAyXPR9orMY6B//gE1X3auly4MDQT+lNWbc1tgfaxuYiwQi5nZWtK
         qkFhe31fR5TM+XM+9g4kPPoDwWNPTx86bnRey9T/VzhdN4BIegu0E+CVhNEYoJEgE2Vh
         1ZpfdQG+3WYHkR2XREW/21Hy+mSKTDImz2wVjXHuyyOdDnZeacFP06BueNsqDqSuZA6M
         K+65jY1bB/BCPpbFOFHbwhifOAuiRm3mXIvmq0Jjkhnjz3aUajwDPyw5Ykgs0xD9PERm
         OnOQ==
X-Received: by 10.180.187.67 with SMTP id fq3mr2387593wic.59.1427506267343;
        Fri, 27 Mar 2015 18:31:07 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id pm6sm5706923wic.20.2015.03.27.18.31.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Mar 2015 18:31:06 -0700 (PDT)
Date: Sat, 28 Mar 2015 03:30:12 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: Remove duplicated argument to |
Message-ID: <20150328013012.GA7624@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Delete duplicated argument to | for the state argument in
the _clr_fwstate_() function call as it is redundant.
Detected with coccinelle.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_set.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
index bd1d1b7..22262b3 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
@@ -266,8 +266,7 @@ void r8712_set_802_11_infrastructure_mode(struct _adapter *padapter,
 		/* clear WIFI_STATION_STATE; WIFI_AP_STATE; WIFI_ADHOC_STATE;
 		 * WIFI_ADHOC_MASTER_STATE */
 		_clr_fwstate_(pmlmepriv, WIFI_STATION_STATE | WIFI_AP_STATE |
-			      WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE |
-			      WIFI_AP_STATE);
+			      WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE);
 		switch (networktype) {
 		case Ndis802_11IBSS:
 			set_fwstate(pmlmepriv, WIFI_ADHOC_STATE);
-- 
1.9.1


