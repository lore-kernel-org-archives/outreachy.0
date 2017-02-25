X-GM-THRID: 6388328536690655232
X-Received: by 10.157.61.37 with SMTP id a34mr3078413otc.128.1488038710186;
        Sat, 25 Feb 2017 08:05:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.129 with SMTP id c1ls9975576ote.14.gmail; Sat, 25 Feb
 2017 08:05:09 -0800 (PST)
X-Received: by 10.157.22.184 with SMTP id c53mr3105456ote.87.1488038709823;
        Sat, 25 Feb 2017 08:05:09 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s64si2234187pfk.0.2017.02.25.08.05.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 08:05:09 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so7052252pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 08:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=suSiNfWjwhOJQ1npsFbxhWP/Qp6kmkGM/hxmQqIJAEc=;
        b=YMvNVWZ2h84L0TSaPrn+2qdJzjbZ84K119Kug4zllqWD0N3cw54uP5r5VmPiSOqhVh
         iIoVvohLafm+PjAzRBGE36wZXpeJNP260aQ/GEPzRT5FC6/zxZ8KnJ4VwXGPG/D7FTKo
         XZYKPlzFXDSoGIc5mUG3ZuBUNIpXK47r1wkNFfnqkAS2Lt4cILdnf2IHm0f1h5ySS8Uk
         8Yvh3l9sSjDc9ypn8Os6a3HMdBOmJTPP8K9MykWJ1nzjCKJKTndh2lly6h/nu3beVXEd
         j25OReVlalSsaDXS7gx2ASyV1PfKVH3JpqrRDXbgg5RHX8QhQLnuga2MGtRpVDbpyrf0
         0ytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=suSiNfWjwhOJQ1npsFbxhWP/Qp6kmkGM/hxmQqIJAEc=;
        b=DNstj6MUbDYX/Iiw0kJQkwCnSSPsucP1rhmGHcQ1HIAx+6y4ekbxtotpM4qfoRx7q1
         SsMSHkPHksERDP8gtc68yM1yKdLwLBfkRF9/M0gAD63+BgeP6rETVPrWTOznr+3og8Iq
         +LYDQRHm5ByGL5RrRQmAOYXFRusCuSSdq+vxrsKjdam61P2J2aQmnqCVAnwvnVF2S/dZ
         GkJ6Smw2VUj7ZBz6Ohot9v/bWu9/CeUItjUuCBKxir3SgJfFMvooggU/FmBrMEXqEZ+O
         uNRhinoNLGRxzC4mQVhDIxvehokdmf64PD7EUoJu9wzm2PBxABiu1autvr5kXeYjlayN
         n/GA==
X-Gm-Message-State: AMke39k2CIG4KqRP6R/t7MRYPJgHA63PLtlMiPqGaAzEl8GSYbD619gpKDsQEWLF6H1Tkg==
X-Received: by 10.99.227.5 with SMTP id f5mr10884870pgh.102.1488038709536;
        Sat, 25 Feb 2017 08:05:09 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.221.104])
        by smtp.gmail.com with ESMTPSA id f3sm21479124pga.34.2017.02.25.08.05.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 08:05:08 -0800 (PST)
Date: Sat, 25 Feb 2017 21:34:41 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: rtl8192u: ieee80211: Remove typedef to structure
 _bandwidth_autoswitch
Message-ID: <20170225160441.GA11349@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Using typedef for a structure type is not suggested in Linux kernel coding
style guidelines. So remove typedef from the _bandwidth_autoswitch structure.
The typedef pointer pbandwidth_autoswitch is not used anywhere, so omit
it. Also rename the structure to bandwidth_autoswitch since an underscore
is normally prepended to indicate a hidden name, which is not the case
here.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2:
Renamed the structure from _bandwidth_autoswitch to bandwidth_autoswitch
Changes in v3:
Changed spacing after 'long' to as it was before

 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 176083e..c1fa229 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1461,13 +1461,12 @@ struct tx_pending {
 	struct ieee80211_txb *txb;
 };
 
-typedef struct _bandwidth_autoswitch {
+struct bandwidth_autoswitch {
 	long threshold_20Mhzto40Mhz;
-	long	threshold_40Mhzto20Mhz;
+	long	threshold_40Mhzto20Mhz;
 	bool bforced_tx20Mhz;
 	bool bautoswitch_enable;
-} bandwidth_autoswitch, *pbandwidth_autoswitch;
-
+};
 
 //added by amy for order
 
@@ -1873,7 +1872,7 @@ struct ieee80211_device {
 	Fsync_State			fsync_state;
 	bool		bis_any_nonbepkts;
 	//20Mhz 40Mhz AutoSwitch Threshold
-	bandwidth_autoswitch bandwidth_auto_switch;
+	struct bandwidth_autoswitch bandwidth_auto_switch;
 	//for txpower tracking
 	bool FwRWRF;
 
-- 
2.7.4


