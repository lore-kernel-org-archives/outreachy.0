X-GM-THRID: 6387794741064368128
X-Received: by 10.99.109.138 with SMTP id i132mr1225259pgc.117.1487274361997;
        Thu, 16 Feb 2017 11:46:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.194 with SMTP id 185ls773483iof.19.gmail; Thu, 16 Feb
 2017 11:46:01 -0800 (PST)
X-Received: by 10.107.170.221 with SMTP id g90mr1440247ioj.20.1487274361268;
        Thu, 16 Feb 2017 11:46:01 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h130si258190pfe.1.2017.02.16.11.46.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 11:46:01 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 19so2261611pfo.3
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 11:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FF6pzsVDxM7PiCakRp7582iAUVMNUgE7lV601OGnIto=;
        b=eabBliF8hFzAerzTVm0JJ7Ekkdeo4eqF2ZozB8nI9Y8iqoGtS3VRYqCOn5DrqhLFmk
         WmTBp0jMhnpxLWo83MWbzCqZJ+uL0tn8zmBLmpfiQrcEzjClaxWXogLA67Sz7GqjgU0f
         KV32OfLn70x7cvL6Vxocn8cru89BRwi8YHj3EXf93T40guGtzxzONjbhMI0Qjz2BGDqv
         WtNWF9NxxF/0dJ/26BfiUMQR3Z7O9TcoO2ssGIrIsdDMYu2sxXpAnGorsw99wlc6mFmO
         D7UIhjzkpBmizEGPZvweXxgeEOMS2RV4srDDwNQZ+bYmDLK5PcGoRqUZDYxfkVt3yuDI
         +7Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FF6pzsVDxM7PiCakRp7582iAUVMNUgE7lV601OGnIto=;
        b=OexT8+rgIlx7z+Wh5bjAexa18dSr3dNmIxrm0q5X9PG282RsGIYK3k+msa0QUK7vMm
         JXFM+yjAt/9JI6cUh/dF1E41mJfZswAK9uo1WPSb81+Vc8C/5Waw8YW5PNEMFu5ygyPG
         Zcc8iPcg/E+lpkHQlYlV6VpJw+k6qRVez4oiDrUehyksT5H8XVC4XWCgoRz9XSUlNUL0
         Ju+WCDude12yeHgZ6IewA0BiVEUppCjz7JsdnVlL5X59zFGh1DOvJMMLfuTmCowgsyc+
         R20vQpEtdGWKfwGGPhavWApO4vcrQX8/k9QI8U+koks5U8bqF3/xiSMVldoJuSwa5i6j
         55ew==
X-Gm-Message-State: AMke39mB+hoa7sK3OhAQ2GMlasuD4R/ogMvtpixCQtD/xPlR+qH2rlpsCWFGWofvUqw7gg==
X-Received: by 10.98.86.203 with SMTP id h72mr4671197pfj.108.1487274360790;
        Thu, 16 Feb 2017 11:46:00 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g28sm15308755pgn.3.2017.02.16.11.45.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 11:45:59 -0800 (PST)
Date: Fri, 17 Feb 2017 01:15:57 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8192u: Replace symbolic permissions with
 octal permissions
Message-ID: <20170216194556.GA30632@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

WARNING: Symbolic permissions 'S_IRUGO | S_IWUSR' are not preferred.
Consider using octal permissions '0644'.
This warning is detected by checkpatch.pl

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index a9a92d8..2ebc320 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -283,7 +283,7 @@ int __init ieee80211_debug_init(void)
 				" proc directory\n");
 		return -EIO;
 	}
-	e = proc_create("debug_level", S_IRUGO | S_IWUSR,
+	e = proc_create("debug_level", 0644,
 			      ieee80211_proc, &fops);
 	if (!e) {
 		remove_proc_entry(DRV_NAME, init_net.proc_net);
-- 
2.7.4


