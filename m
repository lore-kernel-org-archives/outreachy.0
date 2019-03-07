X-GM-THRID: 6665628449675149312
X-Received: by 2002:ac8:70c5:: with SMTP id g5mr7337156qtp.13.1551962562249;
        Thu, 07 Mar 2019 04:42:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4889:: with SMTP id v131ls2240370qka.6.gmail; Thu, 07
 Mar 2019 04:42:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqyOwSvFIt8d7ilEwjBlfyT1MWo5xuCpCXnSq0LJ4UWzASC0ZyIzV9K9BvPtnNpmJs0mgGFt
X-Received: by 2002:a37:d150:: with SMTP id s77mr7211003qki.35.1551962561667;
        Thu, 07 Mar 2019 04:42:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551962561; cv=none;
        d=google.com; s=arc-20160816;
        b=gS1fysfMA3edpqpr6SF5FSzfy2YqIqhlSnuXgxRpbMz+RBOnQhVwDfbbv//Bghqb7+
         7TJOs6kVXG9lA6m35SBr7LXyvY87LKdmViUCM7SzlXDjzk+F3Taji1U/HtLNRL+59UDZ
         tN8zXMnZTVtQbUPK/stiQvoAgMUReJpxl4e4cBSvf12117Inir5KEDXDATtbWxnCyHwK
         G1nmfkmaTzo6v+pMhHTmG2u6hwaYIXMkkUE4kYe6YFms7HMNpq6q+z7EaOLDngfVT+wu
         S0xiOvOBqRtMP9Q7F/MBH4uxNMFtLwDL3614m/0rG1g8chJlbDSX4pZogmfWen2J7FG7
         7nqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=xxOXfOpwOL6y5Vha5ec2FQCjet/qHUVtRdYUzXR98HI=;
        b=ypAqcwIyT4LCOz3+Je8lkYZnC0UPrtp7AObq3D96oN9kSPsOCEk4zX24ViEH8Oni+T
         UvTbFGXAURzqwaWraeUG5x9RZkSZzqfHgIxN25OIwkZ2Gldf+AuWR0q/iyrFbi3uhWC7
         InB2nkLSAixNcsZY3sF3LlaDTWijBXTAFFWGhqahf37X1Yyq7c1nTZvIUf58dovkIru3
         MZnZd4e6Fr8u3dK1WjSGBcMVWbH+/tv0lVHTQbplFetnD4UoSkM0VHH0bUDq8K4Rnsbn
         cpcU0xHcKWUoU2bZTp7J3NfQQnICIxNszrZez3qiZUs4grHl6C4TnrLdwFQ2S8yY5Or/
         gkfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kMAO3QpJ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id p1si310254qkg.3.2019.03.07.04.42.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 04:42:41 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kMAO3QpJ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id v62so13940678otb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 04:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xxOXfOpwOL6y5Vha5ec2FQCjet/qHUVtRdYUzXR98HI=;
        b=kMAO3QpJ71O4npR+c6zS2ob3vah9MA/Zq8RD9qXpnXk7yiV33U4sU2snWsqTxZjJq8
         h0wEX0663usMZj266/mDtJpDchYG1gR/NJGZ4O4mN1kKQMi/H106BfjGnkmCXw8j3q7f
         w3xZGNvbH0TKDEFX/GT2LS11DKjY7GUf3Jh/RVQ0LZwcFFEKjFPB/bRO69lvU5eYI9Jb
         nStRfkfmOzdKI3+JDe5GiPNlo6UPkb1G3OVg/rYdKTqTqRvVRFrW0qoG+FX6ONpv44fi
         zrQQQIuQn9IwDmn2vDbKgwRpo63WuXhm1CADlaTseq/sxCZY2qh+Nfl2iX4IW1uyNOSX
         XUvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xxOXfOpwOL6y5Vha5ec2FQCjet/qHUVtRdYUzXR98HI=;
        b=RuKjiKD1lLloG5TmnBCAfKMDrIbamBEfFSITPLpxOlNojXIAp92O8XMsJHE5+f+Xce
         kP74+j5gHi95tD8EVMhpOPiLsWebedBlHcW49njguhLyuVFFW1QcL04BqnmM2xAD7i+4
         IcUk6aCSrL/WKlAo+tP4FW7gpKblxp7Bwv9XsnU5tN4bqTpjQnA10SDR4yewT5rYNxe5
         S283Z4TnG5SBRK6gNVC/iqK7wFaxZ3aDl0JMhGmDg3HVuzymBFbA7sRdWQDavJoDENnX
         ghmHCAjO5U+G3u+jvMILyLYU4yCfCN8n3VT812E3vN92Xy0Smm+eA7c4oV9J9itbSgfb
         jYcQ==
X-Gm-Message-State: APjAAAXnhEaBvr8pdi77Zp9bJcIM+sCazUaM2fkC1Zq8FbQ26cO+dHiu
	imPa0jQgivPO2PtGcFCVX0o=
X-Received: by 2002:a05:6830:14c1:: with SMTP id t1mr8059630otq.48.1551962561171;
        Thu, 07 Mar 2019 04:42:41 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id v62sm1750760oie.21.2019.03.07.04.42.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 04:42:40 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Remove an unused function
Date: Thu,  7 Mar 2019 06:42:36 -0600
Message-Id: <20190307124236.20430-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove an unused function to improve codebase.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 99de843b4551..59538ac09fc5 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -887,8 +887,6 @@ void MACvSetShortRetryLimit(struct vnt_private *priv,
 			    unsigned char byRetryLimit);
 
 void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
-void MACvGetLongRetryLimit(struct vnt_private *priv,
-			   unsigned char *pbyRetryLimit);
 
 void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
 
-- 
2.17.1


