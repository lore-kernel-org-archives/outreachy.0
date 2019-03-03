X-GM-THRID: 6664125238569074688
X-Received: by 2002:a1f:1e4a:: with SMTP id e71mr9439495vke.2.1551612568847;
        Sun, 03 Mar 2019 03:29:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:4247:: with SMTP id p68ls2244900vka.3.gmail; Sun, 03 Mar
 2019 03:29:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqzmI4g1heVrGkh3WA8zYkDJ+b31MCp7swHDfCVRXa2l6knZPRBoXQCbcCAywDwy6R6hJEiY
X-Received: by 2002:a1f:16d4:: with SMTP id 203mr9406952vkw.3.1551612568197;
        Sun, 03 Mar 2019 03:29:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551612568; cv=none;
        d=google.com; s=arc-20160816;
        b=pu0081IAGWIXWEKvCxhFbIFqpDaK4aJfsfVKe6FhzQWOkIcYaApEAIiJnGJoq0kf2W
         kx3/Imw/URhGOKWleRjjaObdPQD35kRlfu2EjqYEIIargA1J8FQ7pAqi/mjgsl0OOdEB
         bQYET6NMxVFGVIFnGVu6XraFYcnInsKZx2KiMErJupqNqUa4AuDdBGlPd4OZXHDngrZO
         6Dji8WaSeWA6f2K4IQqffQGYpG60ZtkSd6XvJAgvv392nYzDvpi65eidRgDQIXM2ZuVR
         3yBdutczBHuDK6NUKi7pqwvq0E0sOhGavbQflcHw4EUYtQFKUjFIz+3h5xFOKiRJBf4x
         bwJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=dr1pIjz0z4H8rrflYR11F6jRullBEeZacg9zR0k5pHU=;
        b=LsAlzUxYfdjqClc446/yHWjesXz3Iv6O8CjVkxQA1bOH0CbDTHpCNf07wy0MWyN6Dp
         FFmRrqRPvHrrJY6fRm996NUb9eAcX5W9pnGsigIDsYvzl+XM51WLahLazflzXzUqHADx
         dqaRwBzqfmc48Cxpre/5wONW3e94NcRh8dUhW+5SmAeXHbg2sHWQkkajAVrs38bv6OD5
         C8/o0iFIdW7F478IWTJGWHc6DPpCZRRe+PrmIFKNHaYvXzkS2y7Bhg2PTM5a/IR9TxYS
         RdHHD67xJiMySDQB3QFxIp9VWeYHL0JbUfyc+ev8QtlnrSdqAE+Eea09cvkjpF/wdViJ
         TVOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J4epbdbE;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c22si134572uan.1.2019.03.03.03.29.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 03:29:28 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J4epbdbE;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id i20so1090961pfo.6
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 03:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=dr1pIjz0z4H8rrflYR11F6jRullBEeZacg9zR0k5pHU=;
        b=J4epbdbEKYEwt32xsAsHi85PeEbidnuvfBFTkZMwNX5Dq2OCfx8pkIEeSnwYP39a1Y
         d05pw1X2E2TWEc6u2TLm+Tn6gJo5YUH1WOGXvodgjoqljGU3HdrxstowNwcc12nqXJKF
         tyoEH2fJZ3OMNfym9iviCK978NxBkkdd71GPb58WZzcqlNXYjXLJ38K4msdXE6WIVY1E
         eIH7ZOcCsdEXOuGg387XxeMAdHAhPAstvfVbTS8KIbkc1e4xGIdQPty1xZlCQuvKS37S
         4TjsZYiDENSwed7Gcme4DxGTijgXNll4CLq1URU0eajSMG7Y/iYsobiD7AJb7WWkhaKb
         hBnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dr1pIjz0z4H8rrflYR11F6jRullBEeZacg9zR0k5pHU=;
        b=CjHVG9t7R4nC7Q0hDs2+h0jLJhcBLRooLFtGgtauwDQJ1u3IQWtvLWm6MZTYY567hM
         tDhvR2HQQbkLIlcIv7hRe0+4ECscKVT5CMiE6A8g6lLtpdayD5qVG46LbY7CyV2ijnPg
         ooh1Yfs0nM4d+6KgsQsF0xq/2sRp0eQkHDoUVw9CYiZ9X4nuYxGeWkBEUKw5VkneHR8N
         pz8iWODWEyCWx+C+TXJ2sySnRcnA97D146wo+BFueaDceiFE9T4HxfnuQmc16iA28dvB
         gB6Qm4Ez4ATBUEqIRuK0S03aauzMRZ70IuuC7JilFkJ7JAuPwNvoq/zPdTJAw156DlLn
         Vj0g==
X-Gm-Message-State: AHQUAuYzOXi6XyUZNjQlGabiEI75Nc5eagi9XdfFvi6NDQtQ0XjCY2nm
	ca8cnf+G2X04ZxMBp3cFDEY=
X-Received: by 2002:aa7:928d:: with SMTP id j13mr14907337pfa.112.1551612567363;
        Sun, 03 Mar 2019 03:29:27 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([114.29.227.194])
        by smtp.googlemail.com with ESMTPSA id b138sm12530978pfb.48.2019.03.03.03.29.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 03 Mar 2019 03:29:26 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH] Staging: wlan-ng: Fix alignment match issue
Date: Sun,  3 Mar 2019 03:29:05 -0800
Message-Id: <1551612545-54801-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

Use tab to match alignment with open parenthesis to remove
checkpatch.pl check:
CHECK: Alignment should match open parenthesis

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
---
 drivers/staging/wlan-ng/prism2mgmt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
index 7350fe5..7d2a140 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.c
+++ b/drivers/staging/wlan-ng/prism2mgmt.c
@@ -228,8 +228,8 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 		__le16 wordbuf[17];
 
 		result = hfa384x_drvr_setconfig16(hw,
-					HFA384x_RID_CNFROAMINGMODE,
-					HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM);
+						  HFA384x_RID_CNFROAMINGMODE,
+						  HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM);
 		if (result) {
 			netdev_err(wlandev->netdev,
 				   "setconfig(ROAMINGMODE) failed. result=%d\n",
-- 
2.7.4


