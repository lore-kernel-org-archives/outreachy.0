X-GM-THRID: 6155043602432
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,30cbcfb1097dadf6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.96.234 with SMTP id r70mr29705862yhf.39.1425368369153;
        Mon, 02 Mar 2015 23:39:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.7.72 with SMTP id h8ls1280030iga.24.canary; Mon, 02 Mar
 2015 23:39:29 -0800 (PST)
X-Received: by 10.70.123.200 with SMTP id mc8mr19331399pdb.1.1425368368975;
        Mon, 02 Mar 2015 23:39:28 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id m1si12889pdc.0.2015.03.02.23.39.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 23:39:28 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjp10 with SMTP id p10so9154261pdj.10
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 23:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=aOZWywbc9PVoN+aJX10i4SDiFp06deJmxfykuTF2t7E=;
        b=KxMRvtwiY/FZgx24bpNfF28WksD6gUBCD/YsNsoEPfthOvgfK6yD8G3L/O2O4mDaAG
         N5sYrOOS0YsKl444guAAS7XmhGTgvm+HsplPabArx9y1u2DEpvUpCi7tI+IWPs7S5o4+
         TAVvdeeDhungurJfONmZfRKVH3aMkBAxw2neQsBPzrX3BwASGblCIyVR3PvAVT7JtuQY
         0dPHUiGeL1+NtkTno2Nj25FQ2SjATXSvNq5KTS+BVMbtxGppOFSmMj9Oort0ROcrK0hO
         XpWnNfaLyZawCC6yyy+MfvAruN36ishJIo5ZJ4x1eBZTl7zl+jzpwdbQKWpasLk37w3O
         7oWw==
X-Received: by 10.66.154.162 with SMTP id vp2mr52869555pab.73.1425368368886;
        Mon, 02 Mar 2015 23:39:28 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.152])
        by mx.google.com with ESMTPSA id ca4sm47901pbb.24.2015.03.02.23.39.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 23:39:27 -0800 (PST)
Date: Tue, 3 Mar 2015 13:09:23 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192u: Fix duplicate conditional branch
Message-ID: <1bdb9ff234b262793c0537cc9e11cf087202e61a.1425367678.git.vthakkar1994@gmail.com>
References: <cover.1425367678.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425367678.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace duplicate branch with correct value. This branch
is supposed to work for low thresh value.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 7199616..5a01b7d 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -1628,8 +1628,8 @@ void dm_change_dynamic_initgain_thresh(struct net_device *dev, u32 dm_type,
 		dm_digtable.rssi_low_thresh = dm_value;
 	} else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_HIGH) {
 		dm_digtable.rssi_high_power_highthresh = dm_value;
-	} else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_HIGH) {
-		dm_digtable.rssi_high_power_highthresh = dm_value;
+	} else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_LOW) {
+		dm_digtable.rssi_high_power_lowthresh = dm_value;
 	} else if (dm_type == DIG_TYPE_ENABLE) {
 		dm_digtable.dig_state		= DM_STA_DIG_MAX;
 		dm_digtable.dig_enable_flag	= true;
-- 
1.9.1


