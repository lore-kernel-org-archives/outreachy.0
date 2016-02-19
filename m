X-GM-THRID: 6253019031634182144
X-Received: by 10.107.135.93 with SMTP id j90mr8514881iod.27.1455894445069;
        Fri, 19 Feb 2016 07:07:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.75 with SMTP id b69ls174406qgf.53.gmail; Fri, 19 Feb
 2016 07:07:23 -0800 (PST)
X-Received: by 10.129.90.84 with SMTP id o81mr7729265ywb.37.1455894443800;
        Fri, 19 Feb 2016 07:07:23 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id ff2si1754876pad.2.2016.02.19.07.07.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 07:07:23 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id x65so52555791pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 07:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6QC+XYAmkX8lNkDcmRLaBslqd7i2ZcfZZyHw0aPsa/8=;
        b=nS28Fc6YCBh9aqg2deL7pYvavQZaNLIyVpYPKXTAf4EtyGrb08hv13b5LVM+JKKfVJ
         +rwceOVrynXZEvSXaZtd5lgx4Y9oe+9IOynTXCnLwdpCmc0eHVPLpryxSEuHK6hqBTUM
         NYFYd/lz4GKRkVGaB8iB5kalaa4aca9195rYWAnnj46w6QEJu3oUPxQxDlHKKwti8ZJ3
         VjfC2NSDTmJsO8yU3uBr2jjpiKEWa7DyDTJFTY9BKrtZXzV80ftbn2Jyr9+3AUs5w7ky
         /1/X1Q7wK9af7xlT4uILvzP5TBrhd8052/D942w7+f2b9tkEgquJ/3RCoDMKV9rxJKaj
         NQ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=6QC+XYAmkX8lNkDcmRLaBslqd7i2ZcfZZyHw0aPsa/8=;
        b=dSVuPZbUQHdE9f8vTvrkfj7G5BKLXBlv4Wq87fblEOzS1dKoOuEsKNQtSEefdO3GXg
         ujjl0FRFUMjNg8pP88LiB8N+YQSf7zIMg6uUjjcVXOZ1BKZPFRlAnJKrTVwDuMWlDhM0
         fjmEMTNhjUu+f9cvfYiUO+OrB79hk6Z74OUGLYrObqY64/9xxKWWqixydp8CmMJEPw3+
         W6uGO1hxu+XLo9/T7NstSoJx4C8j4iOwIM2zRWgPSE+KPXeL8yxh5sz9+qUD7j/r0l+b
         KTU4QsSfT/E31mvAM8NvzkvvCkIDq5uS7mFhc80xeA2+r8HQk4b8LPoz7pfXJsjPZ5jv
         U3mw==
X-Gm-Message-State: AG10YOSBagyAsC/+/U7Nkdx8LtX2BJYz3CdMRdKFnJWlhmih6rkyuHNWKq6QzMakDcxR6Q==
X-Received: by 10.98.64.4 with SMTP id n4mr18707800pfa.58.1455894443589;
        Fri, 19 Feb 2016 07:07:23 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id l62sm18541089pfj.7.2016.02.19.07.07.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 07:07:23 -0800 (PST)
Date: Fri, 19 Feb 2016 20:37:14 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Replace sprintf with snprintf
Message-ID: <20160219150713.GA13168@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace sprintf with snprintf as sprintf does not check for buffer
overflow.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index 84e6272..1116a88 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -602,7 +602,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 		char tempbuf[100];
 
 		memset(tempbuf, 0x00, 100);
-		sprintf(tempbuf, "%s", module);
+		snprintf(tempbuf, sizeof(tempbuf), "%s", module);
 		request_module("%s", tempbuf);
 		ops = lib80211_get_crypto_ops(alg);
 	}
-- 
1.9.1


