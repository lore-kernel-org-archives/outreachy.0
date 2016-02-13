X-GM-THRID: 6250667330513141760
X-Received: by 10.140.143.200 with SMTP id 191mr5355821qhp.3.1455346897086;
        Fri, 12 Feb 2016 23:01:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.5 with SMTP id p5ls1032462ioe.23.gmail; Fri, 12 Feb
 2016 23:01:36 -0800 (PST)
X-Received: by 10.107.164.208 with SMTP id d77mr6579589ioj.22.1455346896820;
        Fri, 12 Feb 2016 23:01:36 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id tn7si1911444pac.1.2016.02.12.23.01.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 23:01:36 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id w128so4345052pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 23:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Nk3mFtzWo4tyKBAcoNRLs/G1GcEYXoZ2A25F0soKmeY=;
        b=ay0TmYz1sqINUCt73TGraRh7SsFY89oy2haaRbGqny5ZwLcSHUz7ycTNHAVRnnDH1Y
         In7OOUj9+522KL71+zjlSE/pEfbLUnUCmN/2pzmj2tENDtjYIiwVUbaSJmSfj63BDtK5
         uVdmh7d8bxm9kECw5yDHghNnSvpwL1O/PL5DCNR5dvDNy7+LbjEGmdVQuIJwIpo6jXiO
         kt8sddKkqvtmflVeIRybJlbi6pOMX37/5HjWr/MKi6xjgrbf9dm1UedREA/2g2gr9X5i
         t1khyNZE+fhKW6ngc+0lELDnzSUlITBOueyDptPpmMWlnp5RpQxeHsC5vmlqyWxFegc6
         iZFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Nk3mFtzWo4tyKBAcoNRLs/G1GcEYXoZ2A25F0soKmeY=;
        b=JuG9b8qlvvau/oDDOVGxhmJ8NIBtwJ7kbebP2WnxpuL4A+lIcvmfDY80JscxEqIRq6
         OYTlpjr32PnJHdGcom7h2mMER2NikP9ZEanvUFdHs+NDTrH7KYfC7Qk276nkrXMSJ5ic
         Ft1uepPjKhOT4+Yiobd7OobeGDZprdL3UjByt7mPddeknbtwM7uW+YXykHnKsEeHPo5m
         nIqL5vkfnUpzdelEuJptSYrma++MoELBU7sqLF4kkZoOi6LziMwwZlkqI4IOuC/0tprP
         P7QZEnHHVkUjVbmXwLGGUXmzG/sfYxNNwe4kf2xWJhmDVsUC0V+CbsvGHID8Ew4i7M47
         KXyg==
X-Gm-Message-State: AG10YOR6hBBe6MQoWLgTAlXwNkCCPyxkesE3tkYhsLbmaK44b08HGBrn7PeriPSE6u07bw==
X-Received: by 10.98.72.133 with SMTP id q5mr8088514pfi.166.1455346896655;
        Fri, 12 Feb 2016 23:01:36 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id f12sm23778538pfd.87.2016.02.12.23.01.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 23:01:36 -0800 (PST)
Date: Sat, 13 Feb 2016 12:31:33 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8192u: ieee80211: ieee80211_softmac: Replace
 driver specific macro msleep_interruptible_rsl
Message-ID: <20160213070133.GA21052@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace driver specific msleep_interruptible_rsl macro with direct
call to msleep_interruptible.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 6d85648..c1995f2 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -469,7 +469,7 @@ void ieee80211_softmac_scan_syncro(struct ieee80211_device *ieee)
 		if (ieee->state >= IEEE80211_LINKED && ieee->sync_scan_hurryup)
 			goto out;
 
-		msleep_interruptible_rsl(IEEE80211_SOFTMAC_SCAN_TIME);
+		msleep_interruptible(IEEE80211_SOFTMAC_SCAN_TIME);
 
 	}
 out:
-- 
1.9.1


