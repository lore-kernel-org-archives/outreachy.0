X-GM-THRID: 10238161846272
X-Received: by 10.194.95.67 with SMTP id di3mr6170914wjb.0.1427577397177;
        Sat, 28 Mar 2015 14:16:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.211 with SMTP id jq19ls564456lab.32.gmail; Sat, 28 Mar
 2015 14:16:36 -0700 (PDT)
X-Received: by 10.112.35.135 with SMTP id h7mr6061009lbj.23.1427577396434;
        Sat, 28 Mar 2015 14:16:36 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id c8si539550wiw.1.2015.03.28.14.16.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 14:16:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id m2so57601406wix.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 14:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=rYpCz0/r7ZbEA5Bdt/xOPyOYt/T7DWvVS0ui0l0MHvA=;
        b=Z0Sj7WjM1IAXbVYLk283mUd+lla87zvDtQ+9rBjaSyMAInHvPN3IqNfWGAeDsFMk0Q
         nVKheO4nJG7+rHDjfu5ur7OiLZB+XVIIkYGgqQGCbid9x7mLsmCpEBlPNZ1zslMRO6Kd
         y31YROaZ3+cU8J4sByOG05o2SPi3k4+68mJRjNIstTJHOs+Slv1A1EFNYB9gHs2ZWa39
         HU58I3900RPLMO6ywyAUYWzrdCqi0Emb7DvvyMPcfegZGjL9DbM8Qgftq0VZwt1lhxOL
         /L8eUOS0ySj+hcCIj0i+vFjustciVN8HleX+FrQvH6/nocJllvHl+rKoHwkiL1Pp4/hH
         bR2Q==
X-Received: by 10.180.75.73 with SMTP id a9mr8662665wiw.45.1427577396365;
        Sat, 28 Mar 2015 14:16:36 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id j9sm8633149wjy.18.2015.03.28.14.16.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Mar 2015 14:16:35 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: r8192U_core: Fix switch-case indentation
Date: Sat, 28 Mar 2015 23:16:29 +0200
Message-Id: <1427577389-27585-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Indent switch-case to follow the kernel coding style

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 190 ++++++++++++++++-----------------
 1 file changed, 95 insertions(+), 95 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index bce44ba..d612e4a 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -3538,107 +3538,107 @@ static u8 HwRateToMRate90(bool bIsHT, u8 rate)
 
 	if (!bIsHT) {
 		switch (rate) {
-			case DESC90_RATE1M:
-				ret_rate = MGN_1M;
-				break;
-			case DESC90_RATE2M:
-				ret_rate = MGN_2M;
-				break;
-			case DESC90_RATE5_5M:
-				ret_rate = MGN_5_5M;
-				break;
-			case DESC90_RATE11M:
-				ret_rate = MGN_11M;
-				break;
-			case DESC90_RATE6M:
-				ret_rate = MGN_6M;
-				break;
-			case DESC90_RATE9M:
-				ret_rate = MGN_9M;
-				break;
-			case DESC90_RATE12M:
-				ret_rate = MGN_12M;
-				break;
-			case DESC90_RATE18M:
-				ret_rate = MGN_18M;
-				break;
-			case DESC90_RATE24M:
-				ret_rate = MGN_24M;
-				break;
-			case DESC90_RATE36M:
-				ret_rate = MGN_36M;
-				break;
-			case DESC90_RATE48M:
-				ret_rate = MGN_48M;
-				break;
-			case DESC90_RATE54M:
-				ret_rate = MGN_54M;
-				break;
+		case DESC90_RATE1M:
+			ret_rate = MGN_1M;
+			break;
+		case DESC90_RATE2M:
+			ret_rate = MGN_2M;
+			break;
+		case DESC90_RATE5_5M:
+			ret_rate = MGN_5_5M;
+			break;
+		case DESC90_RATE11M:
+			ret_rate = MGN_11M;
+			break;
+		case DESC90_RATE6M:
+			ret_rate = MGN_6M;
+			break;
+		case DESC90_RATE9M:
+			ret_rate = MGN_9M;
+			break;
+		case DESC90_RATE12M:
+			ret_rate = MGN_12M;
+			break;
+		case DESC90_RATE18M:
+			ret_rate = MGN_18M;
+			break;
+		case DESC90_RATE24M:
+			ret_rate = MGN_24M;
+			break;
+		case DESC90_RATE36M:
+			ret_rate = MGN_36M;
+			break;
+		case DESC90_RATE48M:
+			ret_rate = MGN_48M;
+			break;
+		case DESC90_RATE54M:
+			ret_rate = MGN_54M;
+			break;
 
-			default:
-				ret_rate = 0xff;
-				RT_TRACE(COMP_RECV, "HwRateToMRate90(): Non supported Rate [%x], bIsHT = %d!!!\n", rate, bIsHT);
-				break;
+		default:
+			ret_rate = 0xff;
+			RT_TRACE(COMP_RECV, "HwRateToMRate90(): Non supported Rate [%x], bIsHT = %d!!!\n", rate, bIsHT);
+			break;
 		}
 
 	} else {
 		switch (rate) {
-			case DESC90_RATEMCS0:
-				ret_rate = MGN_MCS0;
-				break;
-			case DESC90_RATEMCS1:
-				ret_rate = MGN_MCS1;
-				break;
-			case DESC90_RATEMCS2:
-				ret_rate = MGN_MCS2;
-				break;
-			case DESC90_RATEMCS3:
-				ret_rate = MGN_MCS3;
-				break;
-			case DESC90_RATEMCS4:
-				ret_rate = MGN_MCS4;
-				break;
-			case DESC90_RATEMCS5:
-				ret_rate = MGN_MCS5;
-				break;
-			case DESC90_RATEMCS6:
-				ret_rate = MGN_MCS6;
-				break;
-			case DESC90_RATEMCS7:
-				ret_rate = MGN_MCS7;
-				break;
-			case DESC90_RATEMCS8:
-				ret_rate = MGN_MCS8;
-				break;
-			case DESC90_RATEMCS9:
-				ret_rate = MGN_MCS9;
-				break;
-			case DESC90_RATEMCS10:
-				ret_rate = MGN_MCS10;
-				break;
-			case DESC90_RATEMCS11:
-				ret_rate = MGN_MCS11;
-				break;
-			case DESC90_RATEMCS12:
-				ret_rate = MGN_MCS12;
-				break;
-			case DESC90_RATEMCS13:
-				ret_rate = MGN_MCS13;
-				break;
-			case DESC90_RATEMCS14:
-				ret_rate = MGN_MCS14;
-				break;
-			case DESC90_RATEMCS15:
-				ret_rate = MGN_MCS15;
-				break;
-			case DESC90_RATEMCS32:
-				ret_rate = 0x80|0x20;
-				break;
+		case DESC90_RATEMCS0:
+			ret_rate = MGN_MCS0;
+			break;
+		case DESC90_RATEMCS1:
+			ret_rate = MGN_MCS1;
+			break;
+		case DESC90_RATEMCS2:
+			ret_rate = MGN_MCS2;
+			break;
+		case DESC90_RATEMCS3:
+			ret_rate = MGN_MCS3;
+			break;
+		case DESC90_RATEMCS4:
+			ret_rate = MGN_MCS4;
+			break;
+		case DESC90_RATEMCS5:
+			ret_rate = MGN_MCS5;
+			break;
+		case DESC90_RATEMCS6:
+			ret_rate = MGN_MCS6;
+			break;
+		case DESC90_RATEMCS7:
+			ret_rate = MGN_MCS7;
+			break;
+		case DESC90_RATEMCS8:
+			ret_rate = MGN_MCS8;
+			break;
+		case DESC90_RATEMCS9:
+			ret_rate = MGN_MCS9;
+			break;
+		case DESC90_RATEMCS10:
+			ret_rate = MGN_MCS10;
+			break;
+		case DESC90_RATEMCS11:
+			ret_rate = MGN_MCS11;
+			break;
+		case DESC90_RATEMCS12:
+			ret_rate = MGN_MCS12;
+			break;
+		case DESC90_RATEMCS13:
+			ret_rate = MGN_MCS13;
+			break;
+		case DESC90_RATEMCS14:
+			ret_rate = MGN_MCS14;
+			break;
+		case DESC90_RATEMCS15:
+			ret_rate = MGN_MCS15;
+			break;
+		case DESC90_RATEMCS32:
+			ret_rate = 0x80|0x20;
+			break;
 
-			default:
-				ret_rate = 0xff;
-				RT_TRACE(COMP_RECV, "HwRateToMRate90(): Non supported Rate [%x], bIsHT = %d!!!\n", rate, bIsHT);
-				break;
+		default:
+			ret_rate = 0xff;
+			RT_TRACE(COMP_RECV, "HwRateToMRate90(): Non supported Rate [%x], bIsHT = %d!!!\n", rate, bIsHT);
+			break;
 		}
 	}
 
-- 
1.9.1


