X-GM-THRID: 6465983114452664320
X-Received: by 10.176.2.107 with SMTP id 98mr16483084uas.47.1505479010456;
        Fri, 15 Sep 2017 05:36:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.139 with SMTP id k133ls6700520ioe.34.gmail; Fri, 15
 Sep 2017 05:36:49 -0700 (PDT)
X-Received: by 10.176.89.1 with SMTP id n1mr15307946uad.86.1505479009475;
        Fri, 15 Sep 2017 05:36:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505479009; cv=none;
        d=google.com; s=arc-20160816;
        b=UXWRvxfcYgRd9MtWPHKRXONNxCw4yji1hTLEA2kpQ07c5Tc4U/UnSHvGYXGQ03/AaJ
         aOcZzlSeLTXjp4gqDZ5y9eLTdHz6kpxG2TYymCMLdnmfl0hh1IrSY6u+GHr7egmVUMSZ
         8ce3HhqBz059/DJVy8dg+fqaV4EqgzVEpxceCm/bpRrSTPxQUWiHC1+0rEsEY7Id8H9L
         DGrKKU8yzML/hfINoIqng5xjy2yqHYvebGedCfa48l5kFkpWDpWDN50Z4pqz78VR1oui
         b3a3Bn/mqiRCvVM8n4LmgaQjHd5NJe6/RFSwFc5pxHILo57tZP99Z3iy8OBU9qMwVe/p
         JwMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=bfIlVG3OYTVMdWgJO7sF/NiQU5bh8wvNjroijnNP/b0=;
        b=PZWciM51ljeermC6s8DZliEIFUwoYlX92ReqrwtbFmw6TEYkbZlhiCFLgBfrEtV9na
         LqXiUNC52rUHbYT9hj7uc/LzC9gLzK1QE0qFTI38URzGCbtAtY7PQecTGf9Qy1G1RAZp
         yOG9R/4M+cH0c3DvsAiIUyU3tRjo500wziyBwCcirHWvAYQIzbGaiNjaMSXAyrpaub3r
         kXBMAGsG4XsT+D68fiiIHOVQ/Q/Z0DKKoBTGs79FltFm44NqsKZHpaqcGmzJ784luxti
         b70Aru1PDIrYLEE88RL5Kp3kKkRmyX7/AkK8uWopxntQHip/dJkv4uEjlYEGWOzmOmCC
         3FMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BDdYnaVW;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id k76si63048pfa.10.2017.09.15.05.36.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 05:36:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BDdYnaVW;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id i130so1278094pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 05:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bfIlVG3OYTVMdWgJO7sF/NiQU5bh8wvNjroijnNP/b0=;
        b=BDdYnaVWcqGthb59oxs2GvV0q6EU7YiK0OZKNaT0W+nyKy2vrzoH0uJwyoVqbzI+Oz
         O/y/KssSZ+H/YweSPdsZplwQ+66Js/mQXhQG589As0/VpzQcspz7O8aXgRqyQ+ks+oq8
         XnJ4zDXpiDQHcH7jNvHVmy6PwPbXggnarFvTyM9Unoz8UihpeXpDqFzdGjyqDEtrXY0r
         0NADLMhJTUfZ3+kKZNNOABFJjxS30dB1pFeyMgR+Etb2x93YXLuOnvDwcKIoJ+6QaKHl
         W9AT62M7fMaibDJZEWzHCDD732ckA/sjkGkJ6/eZht8nM2b6wuAiIGumKyZHpl57biqe
         n0Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bfIlVG3OYTVMdWgJO7sF/NiQU5bh8wvNjroijnNP/b0=;
        b=IyDlcJjgFP5HRtzAuE/alItC+lfKVgHa9ztKTKderYhaoVL47dxt1je7fYD+yZ0kS5
         31JH9hcVV62/psXS3J//jdS0WaI9rXOHS7uWMD5Rwzpt+JQ+Id2ARdI+SyFg1oJNcU/b
         emg1GcMzdWXt/l34zm2AIjdz/KYcM+e1A1odwcf5H50+ipVcN64Ap3iOLE3jptb6K/bk
         4rd/Mt8NmeL3ngGwrSokTT2iC080JXXjWtY43JKiOPI7SHESYsNGfIPD0Dl6AxtEqLIs
         gqTCGA8NwvO2+m1dVZE1MOJ9j9h+ctniF+1ADqSPvr6qbxT5beh7eE+GsuATcCcc9DA7
         /Rqg==
X-Gm-Message-State: AHPjjUjQ2oy87zIAU1Wpbm0WqlSmc3zXRWIi46e5rh7OROgGApsxJ6YA
	+vrvtQ8FlGftyg==
X-Google-Smtp-Source: ADKCNb7lzItQwjOQ6M2Bmdv9RJeQ/g0qVR7bj5JcopmZ2j5bU0QEvOonYkyue1JjjcjgmPIZzHQGng==
X-Received: by 10.84.129.193 with SMTP id b59mr28443106plb.108.1505479009107;
        Fri, 15 Sep 2017 05:36:49 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id z24sm2597938pfk.3.2017.09.15.05.36.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 05:36:48 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: rtlwifi: delete double assignment
Date: Fri, 15 Sep 2017 18:04:47 +0530
Message-Id: <1505478887-1820-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove two adjacent assignments to the same location.
In practice, many such occurences are intentional but
this case don't seem to fall into that category.
Done using following coccinelle semantic patch

@@
expression e1,e2,e3;
@@

(
 (<+...e1++...+>)=e2;
|
 (<+...e1--...+>)=e2;
|
 (<+...++e1...+>)=e2;
|
 (<+...--e1...+>)=e2;
|
e1=e2;
e1 = <+...e1...+>;
|
*e1=e2;
*e1=e3;
)

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtlwifi/base.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
index b88b0e8..68bd124 100644
--- a/drivers/staging/rtlwifi/base.c
+++ b/drivers/staging/rtlwifi/base.c
@@ -1536,7 +1536,6 @@ u8 rtl_is_special_data(struct ieee80211_hw *hw, struct sk_buff *skb, u8 is_tx,
 		/* EAPOL is seen as in-4way */
 		rtlpriv->btcoexist.btc_info.in_4way = true;
 		rtlpriv->btcoexist.btc_info.in_4way_ts = jiffies;
-		rtlpriv->btcoexist.btc_info.in_4way_ts = jiffies;
 
 		RT_TRACE(rtlpriv, (COMP_SEND | COMP_RECV), DBG_DMESG,
 			 "802.1X %s EAPOL pkt!!\n", (is_tx) ? "Tx" : "Rx");
-- 
1.9.1


