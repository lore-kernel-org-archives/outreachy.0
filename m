X-GM-THRID: 6528466201738215424
X-Received: by 10.31.168.8 with SMTP id r8mr3243529vke.51.1520026994823;
        Fri, 02 Mar 2018 13:43:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.85.152 with SMTP id v24ls1159672uaa.5.gmail; Fri, 02 Mar
 2018 13:43:14 -0800 (PST)
X-Google-Smtp-Source: AG47ELsUw86JNwnKFz2SKExfqhf/X85RTBIvBM8ePan+p3HD7OhnAZ4rFIpPgGUHaba1BEL8TAOZ
X-Received: by 10.159.56.109 with SMTP id q42mr3559623uad.120.1520026994020;
        Fri, 02 Mar 2018 13:43:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520026993; cv=none;
        d=google.com; s=arc-20160816;
        b=Bi6UFihK4FYGdrt6PMmNefq0uBZn4jPaIJRCUYV5GeGzomA5MWQbH/+AAfCIUwnvCM
         yKbrJso7AMOFbBFLWQL2yVspRd+FOQ9CioiWObHY4JBxo/zajPzdmagJJOczDZMSRZsJ
         sheMHsoeZDXkv93DJlrBcnGvgLgZrouEbW7ocGMzem+Gmnbp/FCsD9IXxessypc19pbW
         7/rSZgIDtiioZB1fTnPxcSkDJdS2SujoZ4Au5baC7pw6XGVNHdsKbf2MZW2fsYGFqFSl
         /kyirCqFMFbK2EcsjcSPIV2CIHS/ucJhR4Y+wfiBH2LHSLpMgrlGhQm81a5Mq1u6wScO
         rZXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=OenGUY4I6Mdt5wC2v3ft1v5VENx7q39YC6+F92Xp3Ug=;
        b=0fbctVCfbnW2KP+6iP8ce6La9ROBK/iVCm0wsA6U5Ucmj2kMsTkdBQMZWXu2Wzvpuc
         mDqhel8i0P8xr3AlopklLHLmkhypwKqApM9fXprSHYNbH8ibLo6uYW8jTDyaaTfaulgu
         FYVVWWkdJ9I9XLaU1AoX+svO9uqymLiyZ79KY1TJOSjQTT1Wu9zqOmLZhNzAFbphideQ
         5ZPhd97as8n/xoBbkfHlPKR9gbwwbxF+FlLePZgBT0zd5AeiJeJ7dhQTgGlPPh2fbYbF
         JebNR3y7ZT4JOa5XflNjC1dcbLIjm8mxhJDt/C+GhSu6SR3mqqb8Z+iGPdOftaRgap/u
         uZhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TUohz53Q;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id c184si497395vkf.5.2018.03.02.13.43.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 13:43:13 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TUohz53Q;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x243.google.com with SMTP id k8-v6so6411327pli.8
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 13:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OenGUY4I6Mdt5wC2v3ft1v5VENx7q39YC6+F92Xp3Ug=;
        b=TUohz53Q1rXGRETnruBbu5VPkg1B7iaAIgp5Tkc2dp9QlQqo4AnWEfozhF0Z1d158t
         h8NfUJHO59iMmc8mZoiqAZzn7lW0v+Oy9GidCdt0xh7dAyIS/hHnV8VlzH6HuEdJ2rFS
         fmQ9rAQAP7Xu8K+hf8E1nyU70njvJ4kjoLoBOVcuZOz6Wt6Ejzl+coaxeQgPUb0td5Xf
         gmFMkkCrMvqFkLeqE0KRkKJoU+85tlayXOV+3cUO7D4eqpsuHi+gZ8nfYXz3ERe3AMNT
         aPBofZMLp6tKUZvscLp44Sq7qgDn7GGmNhdJzJgXyBBw0P1Nf+3WfUiBqvWReWo9IyfI
         g7FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OenGUY4I6Mdt5wC2v3ft1v5VENx7q39YC6+F92Xp3Ug=;
        b=CgD+pYQ6AS5AT/tez50RRlinUi6axHHXpoZIUwl45uC5Mapf4/mW3jMNHnF9S4mV05
         mgm4l+ZImC8rltZdHPXF8SLS/EODrLaKjI9QZx2OFGGGf8BuhmzBV6R+evbgCCEvxsQT
         guI+6EHxlgbS6SRHNfAceHQ+/ur/4iGrBDYScbCLgZTgB93Ms7bCgV427TZw+u5ZPP3h
         xSwUbNIXX8y1oOGe57NiPViR8TSBV8mp5lZwm8DKtOpkigZFNwl2qG1kjOtP7802CK2C
         mAluQ+g2kEgjoUI0D4Ll6uLl85BjAmsIvTLB1HJOnISogYoUyPS0lluJEicm9pkopDtf
         MYAw==
X-Gm-Message-State: APf1xPCX+cYmiu4rjSQwBbb5Jbzguf7BM/UhCaI4Mw5b9KKcksZqTWqW
	YGPoUdFpKgpcbXLFhHX9bZE=
X-Received: by 2002:a17:902:b2c6:: with SMTP id x6-v6mr6397262plw.285.1520026993101;
        Fri, 02 Mar 2018 13:43:13 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id a28sm13774531pfe.70.2018.03.02.13.43.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 13:43:12 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: outreachy-kernel@googlegroups.com,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal@gmail.com>,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 2/4] staging: rtl8712: Added spaces around '+'.
Date: Sat,  3 Mar 2018 03:12:19 +0530
Message-Id: <1520026941-16548-3-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>

From: Arushi Singhal <arushisinghal@gmail.com>

Add spaces around arithmetic operator '+', to fix the checkpatch
issue.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.h b/drivers/staging/rtl8712/rtl8712_cmd.h
index 67e9e91..9181bb6 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.h
+++ b/drivers/staging/rtl8712/rtl8712_cmd.h
@@ -145,8 +145,8 @@ enum rtl8712_h2c_cmd {
 #define _SetBBReg_CMD_		_Write_BBREG_CMD_
 #define _GetRFReg_CMD_		_Read_RFREG_CMD_
 #define _SetRFReg_CMD_		_Write_RFREG_CMD_
-#define _DRV_INT_CMD_		(MAX_H2CCMD+1)
-#define _SetRFIntFs_CMD_	(MAX_H2CCMD+2)
+#define _DRV_INT_CMD_		(MAX_H2CCMD + 1)
+#define _SetRFIntFs_CMD_	(MAX_H2CCMD + 2)
 
 #ifdef _RTL8712_CMD_C_
 static struct _cmd_callback	cmd_callback[] = {
-- 
2.7.4


