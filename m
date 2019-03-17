X-GM-THRID: 6669194328626167808
X-Received: by 2002:a50:aa70:: with SMTP id p45mr1259844edc.6.1552792808269;
        Sat, 16 Mar 2019 20:20:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:453:: with SMTP id e19ls107373eja.9.gmail; Sat, 16
 Mar 2019 20:20:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyo1MZtncIaa8wHLtjPTwjUno5qC4nNF2T8OeLOZsxoiHvHsMs1Bc1G87eYVrz09qI9eEu0
X-Received: by 2002:a17:906:584c:: with SMTP id h12mr1121913ejs.2.1552792807320;
        Sat, 16 Mar 2019 20:20:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552792807; cv=none;
        d=google.com; s=arc-20160816;
        b=e4nV+jwSw4CgEfbeBvknkb/qc0rsdfluezWYM6M8fUsQ4lbQozrjvfQjs1d7j4EUIJ
         ru7GatoYV4hdh5Kq/U3muVMu1FF6peURI9bw39+Lp55KpfkULjXHubwyN3xlOVOckJcI
         PAD6XflMg9uCcsWZSgzWSrPqFuT5MWwQCi2v6qq9V8o19eTR7T/hrOOFj44INXAMTee8
         m48ZnS1SUv+SjjA0JQYhCcooJf8hmNyMar0ZXAuPk/uZ8sQz9kO1I5gBs/8Za9av5u/B
         OqrZV/bkgVgIX3aBx/LcdP8UnLmhKaVB9/bG6BUdMUKrjn8K0nuQihGWPq9NK6225z2V
         3zwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=802ltgax1LCDj8epAVG2dVurVO3MfstKh1jldLXSlEo=;
        b=nlgzXDxtn4B8dVC3c5hiFXPoaUPzJIq6zcwCrzBawzfwJL7YFpPWcc8grfMw1JjIU4
         f9fEkhLm72WsD+vXqpIjAzzTVVThYoEwf7kmUpQKxuyGLAJQEc3kSo3SdHn92cG9PgnV
         EZpHMNbuy+5wXLEpCdpNqDQOmlp+53k4ThePJRBUmPvaxo2XpXmMAFlmIRF1RtHSjaZg
         Gohq9JzGyWppObXuZm4o6e3s4lp/84xDjU/uKz3IBHRl33lUYLojVNxZ0TtmTWDTac1L
         xs3FTPomBTufoOdX7P7c0AcY9RbdVqaDIZcBZPw0x4cchOM1Vfv7SmFQWEfqjREbTYIj
         EHsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dxycykI8;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id n8si102369eda.3.2019.03.16.20.20.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 20:20:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dxycykI8;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x430.google.com with SMTP id p8so13374372wrq.6
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 20:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=802ltgax1LCDj8epAVG2dVurVO3MfstKh1jldLXSlEo=;
        b=dxycykI8ysC8LrZbU+qlPzkrPtUy56gWGRcAER3ROlFjTgUlTysTzXp6GLtp9adZRK
         eijU+yR53GfA7uTqqmP6N+m1wNCsTELmgWrbZmcSGSbiGZ4dJ3Jomwmj+oHYTWsHPHJ3
         mTONF2Syd5R2k2d5BN1SPff0RHrvkykssiAMjfYOJsm81TCzjq7wMZpY/RbwXcs2JTe/
         O/Xukf3P6VsGLySY7PiGQA9DGezJP0b+O/Zpx/4731XBHyiPEDg0JrBitw9x79jR1YdN
         WWRYmRQAuHGDUqOS8s433CyykFtpLQLqq0+CPVNxZB8YxLa3Skn7kqklLPcVTAdZ7o+D
         8kGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=802ltgax1LCDj8epAVG2dVurVO3MfstKh1jldLXSlEo=;
        b=gZhG4iaiIqF+Cf01hkxf9ZeFrCLUrHN48dePSs+MhWW/yl2StCEIZlYW7ElIQSj+mO
         FlLpmt9FPPymzGdtwIMIDyQKQ82qbUgBo/AfU8U62dCW35Rf3XEPqQ4C8AQbqWgjWQDL
         ui3Q2Pl9g9MGVVwLT73BnsV2hU3qQxLNEbMgzw7L7gnTSSV5VnCphDsOIfKjkZzHUl6J
         JuuqWQDczZ/Fj0Ynt8vw0+AeVPrB3JKKSLIzGBlc9Tbl2dSvvuX7762Eh69CbbKn7Z2O
         SURDLHlqNoR60dMjIoiaQHEq79yLHZTwPjYn+8Ke9iAooOPZ1frg5d3NGa79LEqyOwos
         3/gw==
X-Gm-Message-State: APjAAAVQZyrG2JAwdObEGbwXxtvmrSXPRf/qLxGs8eKajUSJ+/qOBe/1
	hVNezUYW8RsVboOO1BnLG2oSx/A=
X-Received: by 2002:a5d:4802:: with SMTP id l2mr7294117wrq.148.1552792806921;
        Sat, 16 Mar 2019 20:20:06 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id s187sm9687842wms.7.2019.03.16.20.20.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 20:20:06 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: fix printk KERN_LEVEL facility level warning
Date: Sun, 17 Mar 2019 03:12:36 +0000
Message-Id: <20190317031236.9361-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace printk with pr_debug to solve checkpatch.pl warning:
 " WARNING: printk() should include  KERN_<LEVEL> facility level"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 11c704b27c3c..2eb5af3debb3 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -99,7 +99,7 @@ static void report_char_chartab_status(int reset, int received, int used,
 			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
 				 " with %d reject%s\n",
 				 rejected, rejected > 1 ? "s" : "");
-		printk(buf);
+		pr_debug(buf);
 	}
 }
 
-- 
2.20.1


