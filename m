X-GM-THRID: 6663318182228393984
X-Received: by 2002:a25:b81:: with SMTP id 123mr1772752ybl.40.1551424661844;
        Thu, 28 Feb 2019 23:17:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cd0a:: with SMTP id d10ls76625ybf.8.gmail; Thu, 28 Feb
 2019 23:17:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqwnS1nRPFdCWo9teZ7WzIDzZXgol1qDjRO9DxGeD/i0YAnFcevb1V4R2nG0d53aIlRR6ytx
X-Received: by 2002:a25:6602:: with SMTP id a2mr1787745ybc.60.1551424660987;
        Thu, 28 Feb 2019 23:17:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551424660; cv=none;
        d=google.com; s=arc-20160816;
        b=B7fsqDCciULZKnbXeNxbDppU7B9dmDvU1r/cB2BUcydkxGLjF5xwLTPK1uUsNSaPCd
         Ecxl/8nCeOhT5pwO9NDBgW103zyh1EMHQk1bTfEKEXeXkiamrHHyMY+pPW2WG+oSHqC1
         3QoqeqRbohoimDXSRmQsRlkm2IevmFg462R/dq8a4sOU/l7UB9ax5CRc4pT0zUO9NvQ4
         pQRSYfrLzAAmvsqPNexqMh2IYhsqQqxWPsoBfd6vgR+LmQ5+JX0S/38Qi9R920cBaqNK
         eU5CZA2Tiu1GY6QQXTYIqIFWtyln2rn0p8SS6sgIUBuBM0Jrd7GEBsPEOfihDyjRR+ck
         HEfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=bhSsJe+ZiPTJ77lQTCfpuniakyLjQnXawBUyLKB04Tg=;
        b=beWsiFSbCbFPZpNZYqOjG8kgoafhXd3V4pwKHa8A3OCguoaCfrCcTE8Xpas1riOG13
         Rb+oUSKtO3ffUnhQJNkszjPWG/klkAaROLTGuvBpu7MbHaRj/KWX1tc+l9Fhv3rJ7Ait
         aWhrd4JjT7q3mFgnduN8D4CzSipeXsPQGEGjlYv0zTGb3MHPSxZMncKOhv28j3nsPV5n
         Zz+M6kPEnFhKTqZ9K76ZV36E0O9CRX68Azy95up6Ksu7PKqEJgIh5Lk+6QqkbMa+fMkn
         lZzJ8lE6yaPPMzjErCTjo+KcYwIeq56FJUlTjN7CzLfQzSU80qyIfYZYtWFvlXYcP0Kl
         W5ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K58ZkS+w;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l39si1491027ywh.5.2019.02.28.23.17.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 23:17:40 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K58ZkS+w;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id j5so11013964pfa.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 23:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bhSsJe+ZiPTJ77lQTCfpuniakyLjQnXawBUyLKB04Tg=;
        b=K58ZkS+wfThx75V26HQlMlAddLrf4FHWPeh/JwgI3DVbrxMGnbspnBhoczNMmjD8Kd
         NKdPelVmhmfDwnOGWl8Nk4rhTD82Q4Z+IpBXMDi/UOEyT8Ybk67fKn2VOBaQxeK6hjqo
         WMZRypfIUOIktvl3OywUscdwcmlcIqsnNlaZTb0O6N0yiPB48conMY1BVXF9aIQlQOAY
         dGHR5c6B2U2d4ZpksCkUuLo/DUNfPOBua/sgDs1d2wTUrfquOmQEvjJ60UmNCnzPZUrh
         KA3lYBHF/087BiPtA1QqKYZaD1YGLKByH3ZSjr7BMALx3JuFaYtAgqv4ZiZJDXxcONUk
         qaqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bhSsJe+ZiPTJ77lQTCfpuniakyLjQnXawBUyLKB04Tg=;
        b=tGhYeis7iGRPNbjvLrBKkWUEoZpBIJHtqZd87Jk6ezNX0we0D3tEy6IheRnw7Q1tyP
         54R71a8UlwSr5sgYNfvHx0y96+5mVVpJCKV5a7Avw2kCYg9RRLzavfWaR2xlQIJsiaNK
         0N22lY2UaagEYSe6o8vkvs5todaAC40uOm5jW1Kx5j8ST5iFBnFfWLSw5on+JLNEfX/T
         GJcXwqk5oLXSQHtpWfUHXY9z1XtVqvtOl4YapnSzKL+crOJRqwiToq6yn0rsgCwbJZMz
         Mjdf/ETldNFrmYh9MgsdTlW1UrLknhsEUL9DeOolG87w+MrzAg0XmDOwqCqjJ0i4Zc/F
         G9Bw==
X-Gm-Message-State: APjAAAWFHbSp8Z/oafHku1a7makbnxrFu1lk+R7UbVWr4yXc2f8B4ROh
	4idGqvh7RNAMS2fGDpB/RvU=
X-Received: by 2002:a63:3d7:: with SMTP id 206mr3388833pgd.350.1551424660200;
        Thu, 28 Feb 2019 23:17:40 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from localhost.localdomain ([112.122.31.150])
        by smtp.googlemail.com with ESMTPSA id q62sm36657766pfi.183.2019.02.28.23.17.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 23:17:39 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH] Staging: ks7010: Replace typecast to int
Date: Fri,  1 Mar 2019 15:17:25 +0800
Message-Id: <20190301071725.18261-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch fixes the checkpatch.pl warning:
WARNING: Unnecessary typecast of c90 int constant

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/ks7010/ks_wlan_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index dc5459ae0b51..3cffc8be6656 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -182,7 +182,7 @@ static int ks_wlan_set_freq(struct net_device *dev,
 	/* for SLEEP MODE */
 	/* If setting by frequency, convert to a channel */
 	if ((fwrq->freq.e == 1) &&
-	    (fwrq->freq.m >= (int)2.412e8) && (fwrq->freq.m <= (int)2.487e8)) {
+	    (fwrq->freq.m >= 241200000) && (fwrq->freq.m <= 248700000)) {
 		int f = fwrq->freq.m / 100000;
 		int c = 0;
 
-- 
2.17.1


