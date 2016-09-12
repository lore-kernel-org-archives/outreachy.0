X-GM-THRID: 6329556258155134976
X-Received: by 10.31.190.199 with SMTP id o190mr17577572vkf.14.1473714657929;
        Mon, 12 Sep 2016 14:10:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.178 with SMTP id h47ls11503903otc.37.gmail; Mon, 12 Sep
 2016 14:10:57 -0700 (PDT)
X-Received: by 10.13.203.69 with SMTP id n66mr5362579ywd.42.1473714657487;
        Mon, 12 Sep 2016 14:10:57 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z4si2748612pam.0.2016.09.12.14.10.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 14:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g202so8600532pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 14:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TReXs/M3QaJt3yrUcl+vKQ8TR9Ro7dNPw/g3cp2WLA0=;
        b=ZFUKHZER9z9UJA+CXpLwBr4NMwsvDdnplyiJ1tRU9+kZotadlnatgITgaR5BE+rswu
         UP/GHwGMoCWUiQzSz+CX4xb4kd3l0o8MGzd7W9DbzmO7fE9Md8Kxps56MnES4pxU9u35
         ut910OW+LBc259c4nlH3kwdKf3ezCubV91G1PwYVpBXlNN0RAhTpUg01X3z/Wknc2BeR
         CeeTm7UbI6fP3WH1a0MuyI2BbXmlXDiOTAEVsNZs+4XYVJ3R1fH6G3WG+N45yRg3o8zP
         9HeLxU91Zwx6Mz4LyvGEqfEXv7BThcOluF8R46YHlT7hrbfDPo8HhKK+39tdNDre3E/U
         vGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TReXs/M3QaJt3yrUcl+vKQ8TR9Ro7dNPw/g3cp2WLA0=;
        b=idmRobGVS+8cDdfDSKLcGzTUIQUaqAi+qr0MU7SWN1ltVXDHHbDcKFKJ3fPeNFb932
         0yv8x7AiE/IgpujkeEOD2ekrdkG1w+5gooPwa1RQcrFSS2nb5+kTlX9uu+wiasIzuK3P
         uJnsR7SdJ1fr4xmMgt/Ns9hh9kMHD6awV6m/I00cMgE9EaOtpXzTCm1/nC/tBe3E5Jxz
         ofON+iPe/Lvv2nMgXOuf4GCB2c2dyBNIkjsMCco+bjygcws5HOtV42dTmFzCTNRNjJS1
         G3DISg/z0pl+Zf1t0lqEZPktB47ObsaAt0PqJnJhJpgWEMA4SnvzI+uTNmQ50vIE4gj7
         z8SA==
X-Gm-Message-State: AE9vXwMsddYaY9WQQH4PrK2G6qmpF8W+rbhzucZVJHt/aRpTMMLMsvDkTyrAt7NAXKhjow==
X-Received: by 10.98.138.201 with SMTP id o70mr37925651pfk.55.1473714657127;
        Mon, 12 Sep 2016 14:10:57 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.35.146])
        by smtp.gmail.com with ESMTPSA id ci9sm21063903pad.34.2016.09.12.14.10.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 14:10:56 -0700 (PDT)
Date: Tue, 13 Sep 2016 02:41:29 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: speakup: Spaces preferred around operator.
Message-ID: <20160912211129.GA3309@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Spaces preferred around operator.This issue is found by checkpatch.pl

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/speakup/selection.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/selection.c b/drivers/staging/speakup/selection.c
index 0149edc..ce4b946 100644
--- a/drivers/staging/speakup/selection.c
+++ b/drivers/staging/speakup/selection.c
@@ -99,7 +99,7 @@ int speakup_set_selection(struct tty_struct *tty)
 	sel_start = new_sel_start;
 	sel_end = new_sel_end;
 	/* Allocate a new buffer before freeing the old one ... */
-	bp = kmalloc((sel_end-sel_start)/2+1, GFP_ATOMIC);
+	bp = kmalloc((sel_end - sel_start) / 2 + 1, GFP_ATOMIC);
 	if (!bp) {
 		speakup_clear_selection();
 		return -ENOMEM;
-- 
1.8.2.3


