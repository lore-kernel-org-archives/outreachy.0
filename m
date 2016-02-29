X-GM-THRID: 6256792083376373760
X-Received: by 10.140.134.134 with SMTP id 128mr9966500qhg.29.1456773379261;
        Mon, 29 Feb 2016 11:16:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.15 with SMTP id 15ls1450383ioo.92.gmail; Mon, 29 Feb
 2016 11:16:18 -0800 (PST)
X-Received: by 10.67.30.161 with SMTP id kf1mr14205596pad.21.1456773378822;
        Mon, 29 Feb 2016 11:16:18 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y20si1803907pfa.2.2016.02.29.11.16.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 11:16:18 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q129so3192770pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 11:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=n/ekou2CB1RCPoNojYhrprBi8xtLjhxAlZ29lDTAsr4=;
        b=uEZ95ivJn184E7sealYsdAvM0paioXkhozY44kzpkA7bzjxRYGadJgpQdG+Ef4gm6c
         kv3hmd13U6X2muuk+PDavfZisHIf9EdDiLIi4XMJL5XkOpZ6HlCTpnOwxDMqTVztCgK3
         6TqCaDYzxdr0Y0JIvDMTa3RO2Fl+H+3yK0q/8pSgXa/Uo6yveCVJ3CUZ3XXkB9FRf9GE
         IfQ0VP9vKgmlIKuQHEil653bbSOeYbNQWO/aQncAvvfoGlKGd0IwdZ3D8LemtEVpKJuS
         P1Ldvec3v7YeeiCpoopsX2T6RG53nKdBPwGzIB38mxnTnENhRPxca7oDm1b56NZIsQCe
         k3HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=n/ekou2CB1RCPoNojYhrprBi8xtLjhxAlZ29lDTAsr4=;
        b=emMzt0fsCTMAedJBdDqi2h2AE9F2yt5aHx5VMO0iZ3WKw4X1TBGqbQubP1gn+UWvdk
         lgPGfZyYpb6xKzs1ODF40Nr9Z0mmQisbAAyjW4/WRfx5kNX06YGsQ66tM1NymCEsiA+p
         8pGANSgWH593hMDQn21zrT+fP0evrwD+0uy9YSWZXwkGgC9lYWUEr4oBOkn9PuY9YpZ6
         Qu3qnBFa3H1QUF/1/yGJmpjZaTrc/7gT4usNZXUUmnCZocYWkbMtZR8SqqOhZ4SjW3M8
         cayW9TW8xRqiKIhy7MEc9xyNtopDfIhdehuMtHpKGTHAB8E6K6YNLt2HDQnwNpS0hXfG
         Ilxw==
X-Gm-Message-State: AD7BkJKCxg7JxNavASyEck2pOxfrF6JEfh6PziznonYE4ImACsWFAIqP2sdViE3n0ilQWw==
X-Received: by 10.98.72.24 with SMTP id v24mr24236402pfa.15.1456773378681;
        Mon, 29 Feb 2016 11:16:18 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.65])
        by smtp.gmail.com with ESMTPSA id cq9sm39934964pac.26.2016.02.29.11.16.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 29 Feb 2016 11:16:18 -0800 (PST)
Date: Mon, 29 Feb 2016 16:46:21 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] Staging: iio: ade7854: Remove unnecessary goto.
Message-ID: <1f6d0a1ada00c114df4989bfa438bcecd1a70969.1456743650.git.bankarsandhya512@gmail.com>
References: <cover.1456743650.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456743650.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.
Semantic patch:
@r@
expression ret;
identifier f,l;
statement S;
position p;
@@

(
if (<+...f(...)...+>) S
|
if@p (...) return ret;
return ret;
|
if@p (...) goto l;
l:
return ret;
)

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7854.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7854.c b/drivers/staging/iio/meter/ade7854.c
index a838835..d37a69e 100644
--- a/drivers/staging/iio/meter/ade7854.c
+++ b/drivers/staging/iio/meter/ade7854.c
@@ -426,8 +426,6 @@ static int ade7854_set_irq(struct device *dev, bool enable)
 		irqen &= ~BIT(17);
 
 	ret = st->write_reg_32(dev, ADE7854_MASK0, irqen);
-	if (ret)
-		goto error_ret;
 
 error_ret:
 	return ret;
-- 
1.8.3.4


