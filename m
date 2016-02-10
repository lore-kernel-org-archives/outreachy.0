X-GM-THRID: 6249367928124211200
X-Received: by 10.129.3.69 with SMTP id 66mr34227038ywd.41.1455058321118;
        Tue, 09 Feb 2016 14:52:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.229 with SMTP id z5ls957858igl.36.canary; Tue, 09 Feb
 2016 14:52:00 -0800 (PST)
X-Received: by 10.107.185.4 with SMTP id j4mr37457227iof.21.1455058320301;
        Tue, 09 Feb 2016 14:52:00 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id q187si22757ywf.4.2016.02.09.14.52.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 14:52:00 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id e61so131756qgf.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 14:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=azdIKIspvqQX3ZBGXWDppwr1PiP/cK+KUpvTCalKUg0=;
        b=L2FUNwWrd4wfYm4uh8i1WA8XlvurpNEx6PRJJLjKsL9ScRQxaJ3R5IzGD2t3OrFfOa
         YiW82AU0f7CrqVdAI79qjB6ztuXhiU1Nsu67a9lmIe+5TfLcB9Gl2cRz4FqQdSk9F9UA
         5sFQOtz12CPKB+evz1DtznmNu2qa/NpiUxK6hIgx3ek+5I26dKIpaK2jc7dRRG9VhncK
         gjBONOieN6/CSM/HC9JMY8NOPVFnHT6Mu2KQ+PUFKSeAkKYOAYQpGmefu6fiQ9GzT7CT
         dssIOYkj9xxX3+AoC+PQ1R7s6jOUPCRy6jvtlyOCh/b8/6e+3OQB2s5lLcX3yjDsiUDo
         ZhDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=azdIKIspvqQX3ZBGXWDppwr1PiP/cK+KUpvTCalKUg0=;
        b=XbAI/duxOi1TR7V3r+9rAz63lwlkMnaQLnJcRjjWo8yC3b32BfkeN4P8ikZF7uxDNU
         c5/Ux7kpfZWpZr2blOUmTldaIFyQxOD4OHaamCyfCxXorwMAjZkbJa1suQK5eo2vBG7I
         5qOuRVIa27GssrXBVCf9lzjhbKHCYs1msGSA4/qwDaYX6i8gWDb7z3Fdm1z2URfmE763
         uUexcbdlcfBt110yvw+eQvGDdszL7DwaS3cSkkKwUiVoyDExybD/K0fzU2nIYHY05tqf
         2U2mEu+z3TFQTOCCIp81S9kkpnxTsDd7sKkZgE/1WIUVtXfXz2H0VRYDHqCWF4EOcFCj
         F9nQ==
X-Gm-Message-State: AG10YOTKya/bHYvQIM+HZL/ci18l337gnfxn4bmBh73uHqWEqoTwXK417eQuzIumrAGJ/Q==
X-Received: by 10.140.220.78 with SMTP id q75mr46873039qhb.77.1455058320093;
        Tue, 09 Feb 2016 14:52:00 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id v65sm87484qhc.46.2016.02.09.14.51.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 14:51:58 -0800 (PST)
Date: Tue, 9 Feb 2016 22:51:21 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rtl8192u: Use kmalloc_array instead of kmalloc
Message-ID: <20160210035121.GA2786@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays. The Coccinelle patch for
this conversion is:

@@
type T;
expression F;
constant FLAG;
@@

- kmalloc(sizeof(T)*F, FLAG)
+ kmalloc_array(F, sizeof(T), FLAG)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v2:
 * Changed the coccinelle patch in the commit description to something
   more robust as suggested by Julia.
 
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 28ad63a..fb344d1 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -601,8 +601,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	bool			bMatchWinStart = false, bPktInBuf = false;
 	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
 
-	prxbIndicateArray = kmalloc(sizeof(struct ieee80211_rxb *) *
-			REORDER_WIN_SIZE, GFP_KERNEL);
+	prxbIndicateArray = kmalloc_array(RECORDER_WIN_SIZE,
+			sizeof(struct ieee80211_rxb *), GFP_KERNEL);
 	if (!prxbIndicateArray)
 		return;
 
-- 
2.5.0


