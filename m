X-GM-THRID: 6255856161067630592
X-Received: by 10.31.154.65 with SMTP id c62mr4180538vke.8.1456555016095;
        Fri, 26 Feb 2016 22:36:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.112.42 with SMTP id in10ls64430igb.13.canary; Fri, 26 Feb
 2016 22:36:55 -0800 (PST)
X-Received: by 10.66.220.67 with SMTP id pu3mr4137575pac.19.1456555015585;
        Fri, 26 Feb 2016 22:36:55 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id y20si226447pfa.2.2016.02.26.22.36.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 22:36:55 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fl4so62477663pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 22:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gmtrEg2bq0ycJC/r5oIfb5vKAJVoAc0hAcmlL3fbN18=;
        b=dbbtZXs0JZe9Yf2agCZ4TfPwLlU0FKBHtS502zeItYKVWYIUZor2FUazw9RBGsl1FR
         RVUSYk744dE7I47N5tucMs4CbOhfcr4XYZzvmgBlZR6pCok7W41zuyuAg94+NfbN56cP
         F4jGgfTdxucJCVrWwzAU5rPoLwX7OO0xOQGItDylOEZvUNCu6xbnXAePHrD+g4RCyj79
         UP5x4Oy1HOhMG9Krdcn5kscQ4oJiwfdJcIMGjSvvnPhBArVDC5+jNxSrg5payVoPGkoK
         1E131+Fjryi6LtEgnURD1gyLTqjJfa+rUq4iUsrwdAioglew+hDsnCkbsBWSIXU2shfd
         IwtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gmtrEg2bq0ycJC/r5oIfb5vKAJVoAc0hAcmlL3fbN18=;
        b=Al8zUs8dibj4lIAf/boQer66NPYyCDKTdKIKvVCtvGK33p0D58Wkvlh8r5ZpqV32LF
         Eg8jNhhMFHhj9j0z3kC+Q7ni4doCaaiKxBMAjrgqhEqVgnhSHxo+65a68j9rdZEtmDVv
         a5Qge9weMA6L2no+xB58Al8VUKx7G8mDvvFaWuvJRPEZiyxKFN9GDYYX5bED2ubDuws4
         teYXbYMuepYX0um4MYeynYT9xGlI3/M4rt1yV6dUowTyaZglxXFNMGx6dfXMypzkysRX
         305q8hdoaC51XTLNWreiqtfUuFY1TAli4QtuL8LRNjtybkT11do5I3S7VnxGx9HEEERx
         DC+A==
X-Gm-Message-State: AD7BkJL/0jX0LS/4mA634yBTJoNy9e2XdyIoUstQlKBbJ/AIAQZw20nVXFTCBZDXgOcGIA==
X-Received: by 10.66.102.104 with SMTP id fn8mr7526738pab.129.1456555015435;
        Fri, 26 Feb 2016 22:36:55 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id cq4sm23467387pad.28.2016.02.26.22.36.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 22:36:54 -0800 (PST)
Date: Sat, 27 Feb 2016 12:06:31 +0530
From: "pooja.shamili" <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Clean up the tests on the results of
 functions that return NULL on failure.
Message-ID: <20160227063631.GA16337@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Functions returning NULL as a return value on failure can be tested for
as !x, NULL == x or x == NULL. As !x is commonly used, all the tests
need to be modified to use !x for a consistent coding style. In this
patch, the function kzalloc is considered.

Signed-off-by: pooja.shamili <poojashamili@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_wx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index 84e6272..8060410 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -373,7 +373,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 		/* take WEP into use */
 		new_crypt = kzalloc(sizeof(struct lib80211_crypt_data),
 				    GFP_KERNEL);
-		if (new_crypt == NULL)
+		if (!new_crypt)
 			return -ENOMEM;
 		new_crypt->ops = lib80211_get_crypto_ops("R-WEP");
 		if (!new_crypt->ops) {
@@ -618,7 +618,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 		lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);
 
 		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
-		if (new_crypt == NULL) {
+		if (!new_crypt) {
 			ret = -ENOMEM;
 			goto done;
 		}
-- 
2.1.4


