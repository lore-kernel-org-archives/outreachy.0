X-GM-THRID: 6330303746353922048
X-Received: by 10.129.0.194 with SMTP id 185mr3852554ywa.12.1473888706347;
        Wed, 14 Sep 2016 14:31:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.224.3 with SMTP id c3ls668261ith.7.gmail; Wed, 14 Sep 2016
 14:31:45 -0700 (PDT)
X-Received: by 10.36.225.200 with SMTP id n191mr7145523ith.12.1473888704521;
        Wed, 14 Sep 2016 14:31:44 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 142si1625303pfx.2.2016.09.14.14.31.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 14:31:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z84so1276247pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 14:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ALSpL6ohxzUmZQPDWpTFYe+PcTs88gCbUUSONtAqHPc=;
        b=TWj2A0kGSy1tf8aQ0b2KDEBjF1z5Gd8HqrmHKHoo0+yjZvq+M65q3YqYNMcgZVH5dY
         m+goYWZw/2BQtMMm6/Ag8D0sKbd9Rqr5r7Z3XPYwPd698396mmBVDb+eBVzX1jmmEyfh
         t+pVrp1Zc+yps6aSa5ZiHIj7UsJ+nIQtqEBsmHT+LUVXvMfwLhWaAX9OXTLLxO2X4cGE
         kTYYk/3aGM0jOreOR0e6r1YEqAo5SKJil+JMkw9ttYjvWSGZvPIlLAD0L3mHppsFXVNl
         FxHDDEh7PMhq+NO8ypBl1rOJmHYfA0kVHwF/ByYErIY1rhcSMFUlBJvWVBvXRKekOozm
         qPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ALSpL6ohxzUmZQPDWpTFYe+PcTs88gCbUUSONtAqHPc=;
        b=YucGEh2f/1my7JaDn+2Px4i1Jj3jR5OScCGvukIrDzqZxK+kkGNnz6RyASzR856yW9
         7e6gbfGvqv/NrlDlJGycEra1aczt33yCV73KWyQBExrHTJPhR+lvkb5P7urwszoOTo8R
         edWmosA5PBRagzCwCT8PT2ljF1QMjLc/m59J/jSP0+0INGpUkZdGraVe891UuYiOh+/e
         q1m3oZXHqCKWqYptRUHbA0qvqzM1tHnO8X+sijXx832fP8d140SM8NpdHtvgfDs9JNAk
         M2Xwm1/nFDrlO2bOgOwmJf5gzTDiNMpcaEb1tagFCGciFCs7QIs82tWurjIi1peN134S
         VbsA==
X-Gm-Message-State: AE9vXwNQvm6rfzhQYHlRo4IbDtCZZ6k2EtT/3XiyuYcjFPWn8GIuSmHqE35SnAMFV6TxsQ==
X-Received: by 10.98.96.193 with SMTP id u184mr8400162pfb.85.1473888704353;
        Wed, 14 Sep 2016 14:31:44 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id i78sm7889970pfj.67.2016.09.14.14.31.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 14:31:43 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3 4/6] staging: xgifb: add spaces around |
Date: Thu, 15 Sep 2016 03:00:41 +0530
Message-Id: <15a1c25fff3c0c553ef8826fb0ad3b019603f633.1473888416.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473888416.git.gs051095@gmail.com>
References: <cover.1473888416.git.gs051095@gmail.com>
In-Reply-To: <cover.1473888416.git.gs051095@gmail.com>
References: <cover.1473888416.git.gs051095@gmail.com>

insert spaces around '|' to fix the checkpatch issue spaces preferred around that '|'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 41dcc6d3..b0ec981 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1914,7 +1914,7 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
 		}
 	}
 
-	if (pVBInfo->VBType & (VB_SIS301LV|VB_SIS302LV|VB_XGI301C)) {
+	if (pVBInfo->VBType & (VB_SIS301LV | VB_SIS302LV | VB_XGI301C)) {
 		if (temp & SetYPbPr) {
 			/* shampoo add for new scratch */
 			temp = xgifb_reg_get(pVBInfo->P3d4, 0x35);
-- 
2.9.2


