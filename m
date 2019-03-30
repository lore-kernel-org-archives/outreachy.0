X-GM-THRID: 6673442126229929984
X-Received: by 2002:a05:6830:d1:: with SMTP id x17mr3565847oto.37.1553959945420;
        Sat, 30 Mar 2019 08:32:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ac8c:: with SMTP id v134ls905314oie.6.gmail; Sat, 30 Mar
 2019 08:32:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz5fKMc3rWc6jxx1ytAtziInLQwO74Hka+sJMrr1wtU8ZHnX2kshH41TgC1uR+iT771ucOJ
X-Received: by 2002:aca:3841:: with SMTP id f62mr5198175oia.9.1553959944567;
        Sat, 30 Mar 2019 08:32:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553959944; cv=none;
        d=google.com; s=arc-20160816;
        b=JtHMwhXmhB/zka23sweF+JipNbaVXxBHFfkuzzhWWKC33zKj8k0W0DEeudhIh0uR9C
         ZFw8O7Op2DtJLNttxiLzZACWQZ7i/voPKvFq2t8DiX/kSM1uRBsp2F5ca3MKRuM4aXtn
         WcsnDRGRQM5pHUBZCPyksaHGJQZa+9aUnX+GYUSwXeN/cvuiSzcGsgrRMiFwTI3rG3FY
         ZwLF5BCPYYGXlWaku8PU9fEXKzOLK5ePT1KcBtMW3HhqJRsBSMgIqtNFsjS+AVuX5NlM
         J6/MeTEHh6XKhuGeFYEaXfeVGoFiutcz/Br5XaXqLaBqbH1ijnLtaxYD8crQeV9kOKgl
         nmTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=DwLj+56TGbcP/y69KPeg/8untrwh+L3HIS5yLm8fX3g=;
        b=g4xzFlhJ3SJkMKJTdhERLk93gLmDQKYwUVqA1dKZjnkstYjMGzGFGbWuSo9lheuzMc
         HQaN33D7tvxu8vD55x/7v7nZ4l1gqJNlBGRQnig1RAdDltY/bST/IZvXFSa0ia9ltsLo
         2iM3TLrbpuNGW2tBj1MA99jf43Ba5SK4TLZxLUbRwL1LNobKeVe8ZVvmEu2x+RpUc4/6
         95BgZLq4fiC0OFONnuGZKZWUG3D8g6hWLSgWb+WI1Vn9qo0N4n9DEBCMWgkT61YuFW+g
         iYb+giSjHJY92keFIeKeDO6ogR2COJJnhBlpfwvLUkxg1cmBP00oAktI0nDFdv4xfJJu
         Sxxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aWpQT9BW;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c13si253793oto.3.2019.03.30.08.32.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 08:32:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aWpQT9BW;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id b12so2630987pgk.0
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 08:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DwLj+56TGbcP/y69KPeg/8untrwh+L3HIS5yLm8fX3g=;
        b=aWpQT9BWX8XM61QeG6wujCcWkmkyZwo7IkpOMxr8GqE93VS3QciFcRGHBix3X71EwU
         J4KeX3/AjE4R3MWa1lBOmXnY7SPKthqWgNj04KK1ROdpFp2N8bF0qtGjS4WQ8rcxhieq
         KZCsGs3GnnzIKPZry5EyWPdj0tBs4pGDEMwAMgDFuWu2fR1JJaRhEN9Ac7vEkAYuO0Et
         g+e+gUJ5XHX31lPm0lyLCj/IMjpjLnUW+NyXcrwmMq+v3MsYmAl1Kqj+YG7Ee65XQsen
         KIYpfmFJJeLFD5NFSGz7HrjwyThnOHBR4YVWt3qvZ/7ZVO9nG05P+nIJ7xbZkfbjn0ar
         XFUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DwLj+56TGbcP/y69KPeg/8untrwh+L3HIS5yLm8fX3g=;
        b=fj2n6+fWVDJroYEMHSuGPbkUyFl7wgp6y8rcThcyDeNZB/PP7sqf2KD32TMMEw/w2Q
         4X3eJJ2FDMxp1DFCi8h3ZTde+S02tsNkJt5D0EtiJATSZMQYrImMIYWL1eSafItfF2cB
         g1IicRdRsOJ7eEL3ZXsCv2SPxCb+M3M1W7U3vnwq4Yrxqerk7jw3bpu3hWLyLkaajNG9
         CLlh9i+zzRcj6WVwsrEaFNSgg0t334PHcY5/G7G0Tta/pDjUV9UBSaFOxzUgN2P9bwKW
         cWCWSYUEQ6ABHDsL9rV3esxp+fwJlBDVxfF9NYc2J85e6SQHagaxwum9vq9B1BJ2/mpd
         GGFw==
X-Gm-Message-State: APjAAAX2A7GcAUYSbN3S4N5/U2l7v1xdpeNiPzJf6/O7dEM4RqhPMIHu
	Gjm+U1hHvpAaVXJFWYN3mRUo+Cmq
X-Received: by 2002:a62:3583:: with SMTP id c125mr11781207pfa.169.1553959943624;
        Sat, 30 Mar 2019 08:32:23 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id d75sm15301638pga.66.2019.03.30.08.32.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 08:32:22 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 8/8 v2] staging: rtl8723bs: os_dep: ioctl_linux.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 21:01:21 +0530
Message-Id: <1553959881-8361-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Remove unnecessary parentheses around an expression.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
Changes in v2:
	-Patch made separated one(this patch) to remove unnecessary parentheses and another to fix the indentation issue. 
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 8fb03ef..7ca7d0c 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
         if (pPMK->cmd == IW_PMKSA_ADD) {
                 DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
                 if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
-                    return(intReturn);
+		    return intReturn;
                 else
                     intReturn = true;
 
-- 
2.7.4


