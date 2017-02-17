X-GM-THRID: 6388169805845757952
X-Received: by 10.99.138.194 with SMTP id y185mr1307358pgd.171.1487361687892;
        Fri, 17 Feb 2017 12:01:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.129 with SMTP id c1ls5352406ote.14.gmail; Fri, 17 Feb
 2017 12:01:27 -0800 (PST)
X-Received: by 10.129.74.11 with SMTP id x11mr3045662ywa.83.1487361687574;
        Fri, 17 Feb 2017 12:01:27 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s64si247843pfk.0.2017.02.17.12.01.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 12:01:27 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 5so5683154pgj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 12:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=R5T870w2gc1C0L+I1DP75XC0om1AtO01L7j/KZ+Z9YI=;
        b=J+Nijh9AH2qFNqpVRMYu6RvSE5RbC3y4oyalggW9LsbQgEE1IUyG+P4Kywi/Mbv6OF
         BTCZjflwlzZV2LXU2MY+mLvZiri3P2AkCK+/XuJ7cfqPEF30Xsa1hHdBlmtSJ8m5NMzw
         GMuVg0GF32KC3ClBo8j4jnHLm+CASl+4enkdf6wPh4x/L5G9itJa32QFllVZZ9tOPajo
         zPtPTL/D6xjGwK1Os7rusWEsM9RXp01zvb3dFBpWsYC0syqlpkR/kXbGze3jzlifhCMv
         a4ejJlzddalQh9U5qLfMntXOoWl7u1tzCt1tdswy10VVoUgFA3JKZR6DbOWL3/+s1FzE
         Ct7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=R5T870w2gc1C0L+I1DP75XC0om1AtO01L7j/KZ+Z9YI=;
        b=Xny3i+uksK5lZU/1lBrxdCidHlIlWtD7ARzML3ZVGUIT3GoK7xN+/7z5SSHTa9b4Py
         gAATsFiLVtGrd8INP93bpFVrlt88i9oP8ZrohyiJcHIqeITS0fMDWCkJn7RuyxXaIaEy
         B0JGQNZeqMVoLmFnay+evEY4kt94VMsGI5ZEYQQOoKpS6fW2KLS/5Ee9nByCShFwaXQl
         KXbpwPKoT4Etj3MK2khDsn0JIw1L6UPNkUW/9unR3lbBRWUI642gJhJ+SkVL11uGP/ON
         OZZYgoMp0GmMkgUpDPGW3XvDfBS/zT1Gz3GCMRf4zS19d4ryBy94J0vRm48fuJOgh20e
         3F0Q==
X-Gm-Message-State: AMke39klNkhlcQnx/mANDLOYXmkWfNNU+P0XZAZ0skaoWJqzottoM4ddEtlPIMGeeFegCA==
X-Received: by 10.98.43.4 with SMTP id r4mr3381730pfr.96.1487361687348;
        Fri, 17 Feb 2017 12:01:27 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5206:c79d:5773:ab8a:9cfc:4b88])
        by smtp.gmail.com with ESMTPSA id n70sm21143782pfg.34.2017.02.17.12.01.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Feb 2017 12:01:26 -0800 (PST)
Message-ID: <58a75696.49ca620a.c5fe1.0764@mx.google.com>
X-Google-Original-Message-ID: <20170217200117.GA7383@<rvarsha016@gmail.com>>
Date: Sat, 18 Feb 2017 01:31:17 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/4] staging: rtl8712: Remove space after a cast.
References: <cover.1487359493.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487359493.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch fixes the following checkpatch issue:

CHECK: No space is necessary after a cast

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index f5526a1..1141ab3 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -164,7 +164,7 @@ static void loadparam(struct _adapter *padapter, struct  net_device *pnetdev)
 	registry_par->ampdu_enable = (u8)ampdu_enable;
 	registry_par->rf_config = (u8)rf_config;
 	registry_par->low_power = (u8)low_power;
-	registry_par->wifi_test = (u8) wifi_test;
+	registry_par->wifi_test = (u8)wifi_test;
 	r8712_initmac = initmac;
 }
 
-- 
2.9.3


