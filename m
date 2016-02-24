X-GM-THRID: 6254956747855757312
X-Received: by 10.182.24.199 with SMTP id w7mr37401539obf.48.1456345605919;
        Wed, 24 Feb 2016 12:26:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.160 with SMTP id m32ls199574ioi.82.gmail; Wed, 24 Feb
 2016 12:26:45 -0800 (PST)
X-Received: by 10.66.146.193 with SMTP id te1mr37708733pab.17.1456345605664;
        Wed, 24 Feb 2016 12:26:45 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ff2si712272pad.2.2016.02.24.12.26.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:26:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id yy13so1518268pab.1
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 12:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=j77mTGwBtwPYqWh8nsJ5SWOj9P11Z1p9e4YE9PAZrpw=;
        b=dxwvcIg1fUhja+O0//vFxANtbag6wYhMueqsNLWjbpp+Z5sK5J2u70qngKNn0tuj/o
         5JYSNowgDQ2qp+KfXA3QdvNKu57+vq1TcmCdJDAl8KpB3ypYQXtSSUeqzErd1mR8vfqb
         +/d4kbhxMpkz5J16dP8Ct8RTF57OX+ofUy0Arv3PkMM9YttNoBe0qusu4078a+Ulsirh
         fIMbzqK1UhprboLEtm5SNm/gcZgFXpnmmI1tNseyzjeiRH8VRYEJbn8brYVBVMXKBnTD
         uMAAtOHwUJ0BZOU1sI/6vWJKZGiQG5U+u2Q48Z1ODuQbo8kqivsA4h5fiThNnWxvQP+r
         8d4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=j77mTGwBtwPYqWh8nsJ5SWOj9P11Z1p9e4YE9PAZrpw=;
        b=BrNOGlKr4Nr9jitdcJKOZpG2DGLu5ARm6GURWuBxECV5XWjPxK9mOe5HywvR4ncEHa
         k0JtSDrjEdtCE14CWU89uhkFjDSU3EVFbIMtKET2Kaz88bF+8j5c/+2alhtUZVEa15Cf
         Pf8L18M3q96imWWQojzwZk9dv2x7LDRE4LPKA0ARAwtdX/rdPtuEmx/7BiSlpgytbGyH
         /G9SJpk/AuE/JiA/WSAJMA5qB64jLbP4Ln9WKtn7daYEJ5SFCUwZ+8iXKT82lurVzslG
         qVeYYsrkhaix/q9HlphofRT06wFzmK7PNzHiXLTJEXPzrEky3JyOVjR+LucX7CwBfIAm
         2OfQ==
X-Gm-Message-State: AG10YOTGXp6oZtb5ALrInHrv8352kIw1YmvBORIO42MMxPVqQh6SfvjyrVaqDnDQgy5nhA==
X-Received: by 10.66.142.168 with SMTP id rx8mr57921342pab.14.1456345605529;
        Wed, 24 Feb 2016 12:26:45 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tn5sm6972191pac.32.2016.02.24.12.26.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 12:26:45 -0800 (PST)
Date: Thu, 25 Feb 2016 01:57:20 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/8] staging: rtl8188eu: core: Remove useless return variables
Message-ID: <20160224202720.GA22977@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:

@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index ce655b6..d002f4a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -488,11 +488,9 @@ exit:

 struct sta_info *rtw_get_bcmc_stainfo(struct adapter *padapter)
 {
-	struct sta_info		*psta;
 	struct sta_priv		*pstapriv = &padapter->stapriv;
 	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
-	 psta = rtw_get_stainfo(pstapriv, bc_addr);
-	return psta;
+	 return rtw_get_stainfo(pstapriv, bc_addr);
 }

 u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
--
2.1.4


