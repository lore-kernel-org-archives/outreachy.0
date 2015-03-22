X-GM-THRID: 9490543935488
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8bbd6d04c601b280
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.103.41 with SMTP id ft9mr5057399igb.3.1426985573515;
        Sat, 21 Mar 2015 17:52:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.243.234 with SMTP id xb10ls995449obc.19.gmail; Sat, 21 Mar
 2015 17:52:53 -0700 (PDT)
X-Received: by 10.182.176.35 with SMTP id cf3mr93237846obc.8.1426985573240;
        Sat, 21 Mar 2015 17:52:53 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id gu4si1335579pac.1.2015.03.21.17.52.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:52:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbni2 with SMTP id ni2so147167700pdb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=RcxQDCOmNcnxmNHBfnVjWHgn2kMKRPHdBE57N98/2Hw=;
        b=rU+J8Y2mFkNiONaw61ZjZdJPS4LjTEu+ikT8NzgmwPGAdNdH1gPWjAlJ/xKSx0sXx5
         SQi33JKXy22jMfAezgER/Mu14VNmqEgrf8Gg52fO4M09BySJE6QSlM+vvvz/Nv2t9T55
         ZXj2DGKAoqaUrRly4dPZCaNGUruisgsfIZuZbJ6EfGHS23mXHzs7lbmeKWi7BUSLdATY
         wdPYoNj3luIna7ImEg4BSNIcNAqgVeq3ldnhd/MaSDEcRRIkNAdia3QtwulStLURMQ/N
         jDLLf9wOQjWaRcWwdShTq6wkA3q5ZxUKoUPAyLJCHt5476cTX0AVhBvjuujEpiVAPv3c
         OZyA==
X-Received: by 10.70.3.162 with SMTP id d2mr87689826pdd.5.1426985573005;
        Sat, 21 Mar 2015 17:52:53 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id y2sm12681771pdm.31.2015.03.21.17.52.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:52:51 -0700 (PDT)
Date: Sun, 22 Mar 2015 06:20:50 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 04/10] Staging: rtl8712: Fix incorrect assignment type in
 rtl871x_cmd.c
Message-ID: <e72b5880a18ec7b7e18dbac927c3920cfe407ac6.1426983594.git.vatikaharlalka@gmail.com>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following sparse warning in rtl871x_cmd.c
drivers/staging/rtl8712/rtl871x_cmd.c:240:31: warning: incorrect type in assignment
drivers/staging/rtl8712/rtl871x_cmd.c:240:31: expected signed int 
drivers/staging/rtl8712/rtl871x_cmd.c:240:31: got restricted __le32
drivers/staging/rtl8712/rtl871x_cmd.c:241:35: warning: incorrect type in assignment
drivers/staging/rtl8712/rtl871x_cmd.c:241:35: expected signed int
drivers/staging/rtl8712/rtl871x_cmd.c:241:35: got restricted __le32
drivers/staging/rtl8712/rtl871x_cmd.c:246:41: warning: incorrect type in assignment
drivers/staging/rtl8712/rtl871x_cmd.c:246:41: expected signed int
drivers/staging/rtl8712/rtl871x_cmd.c:246:41: got restricted __le32
Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 1a1c38f..4cb595f 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -237,13 +237,13 @@ u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 	}
 	init_h2fwcmd_w_parm_no_rsp(ph2c, psurveyPara,
 				   GEN_CMD_CODE(_SiteSurvey));
-	psurveyPara->bsslimit = cpu_to_le32(48);
-	psurveyPara->passive_mode = cpu_to_le32(pmlmepriv->passive_mode);
+	psurveyPara->bsslimit = 48;
+	psurveyPara->passive_mode = pmlmepriv->passive_mode;
 	psurveyPara->ss_ssidlen = 0;
 	memset(psurveyPara->ss_ssid, 0, IW_ESSID_MAX_SIZE + 1);
 	if ((pssid != NULL) && (pssid->SsidLength)) {
 		memcpy(psurveyPara->ss_ssid, pssid->Ssid, pssid->SsidLength);
-		psurveyPara->ss_ssidlen = cpu_to_le32(pssid->SsidLength);
+		psurveyPara->ss_ssidlen = pssid->SsidLength;
 	}
 	set_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-- 
1.9.1


