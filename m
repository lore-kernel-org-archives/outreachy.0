X-GM-THRID: 6746283078211076096
X-Received: by 2002:adf:ed4a:: with SMTP id u10mr10642627wro.256.1570741438135;
        Thu, 10 Oct 2019 14:03:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cf01:: with SMTP id l1ls1904738wmg.0.gmail; Thu, 10 Oct
 2019 14:03:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw5MgjspTRQHp6Gj719sSKUR0Pg8Zhdk2TFJ0ZQlL6e8bnGsR3ZDnRYe8dOL+4Pzxiz3bob
X-Received: by 2002:a1c:444:: with SMTP id 65mr361281wme.73.1570741436708;
        Thu, 10 Oct 2019 14:03:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570741436; cv=none;
        d=google.com; s=arc-20160816;
        b=eJbzPz2VdJXi2/AuOASzr4GXqfRQXIhQJHX6GaRTQOol5mbc5BstzdwuXi3VrVlv6Y
         W4zMl8OxlkY3nwUM8kKBhOlWaWM1cCQW8NRFs/JrL/vGRvic2H9M/kRXXWPqZlAyNvut
         2U8ek2D1syvPnsPz9Bu4fvzlHZwsIS+g2vff7cFrP0fEojlhio7DhJX56lwcUbc0wVBt
         TMi8QlBFbnv55wQdpMBYsqrGLJ59plflj5yBYpqIAD47vV355tSlrN9vqRNlgCT8Te9u
         VK2tnuzAlb+4Bs8EL/TeoiYwsiF3UhPmoNLemdhvU4SMh9jbO/sBfC2+H3fvMTrhKH1p
         lSaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tcMFZrYzkXthDN2tPL7urUoh2Atq6M3SFm7VW5KGajA=;
        b=0pNDm7zpD1DOCfrB6ZkRxa7hDWT0d+SaySeKY0TtPt+gvqHVClPJX+Gd7jjZYUTuz/
         i1psem6xzcKiRx+fSrrdKwmXrmjvVYIdXpa/sBQxcDu1PtZXFOVpWDLoTpCBQPlXErEJ
         GdwQiXPCP3NMPBPNve/A/I2+0X47uxL2Pr8SG6Cko/fX6Kg0gLmH9i7MuLGb9Dvq+g/6
         qdRq8XqTFFCN/2SxULzRgeMxMwAVa9pQKdaRSc8eEMFOsJZ4KezbtFgqz+7FPy70vwrU
         QJlqP7fyKrZyMpwR7NAcfmiVLjI6nUjIY9HUJWZslRPwt52R7v5GY19GVATVPLemqcZu
         t1yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qVRd2kDX;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id i7si226341wrs.1.2019.10.10.14.03.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 14:03:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qVRd2kDX;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id y21so8144502wmi.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 14:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tcMFZrYzkXthDN2tPL7urUoh2Atq6M3SFm7VW5KGajA=;
        b=qVRd2kDXCGuHdq8Rioqkm/y4Cvp9wC2SLvitOm4/CLfVHMGQqMy2abS2ta8PQvL9qr
         K010P7Ka3y6HWE4Z8etiFd1izU85wjvQ0Mkk1UdSxKeMJEzUtazw8VrKoFLAU46lip/j
         5BFvtyW2YvTb7GzTIOfe+V87z1d3FP6zO4dJvNG5TEHCQ49/lqWErlJoBlfopTyTEHVn
         zIO2MtL2OKXg9Udi9yVreXCgRYrlVJli36CI8yAtk9IVy4UdLvegxZgpMtPWfTNfIKF0
         q3gjl1gJI3ekM8DeJ9bkxz+sEhUXyUWyzMYKd/nWk1HgkN4dI0KfENmXxVCFkYJXIiX+
         Rj0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tcMFZrYzkXthDN2tPL7urUoh2Atq6M3SFm7VW5KGajA=;
        b=p+n8CIpzOBpCAP96gQXLfb/w4QcDrHax7FP0pcO3fbj+/a3Tc7TAbXuAJaROWkrBs4
         NYTq99KyVw7DEL78g2iFP+SCZyYq2w7ZWUWEC/rj0HaxBASTxHRebSQkeks2eDq1Aw24
         QiyGI7D0ebx3zR+8xaSBGmLy4M93gaAXMmHhUsDklAhyhh1eVWdVonPatEXNoqLnH28s
         RYLss0XLQ+xO6IYD+9mUor+Z7QAjBhSjeLwUQI0pvf0ZR5R5KJRj4uWtNxV3yRpHPtQC
         igzPTsiwYPyn/eMLQhSQWd9Ci0FFkpG/Rp1vbb5TFUspCvYVk5bB1dzt9zP9vtvT+Bw6
         gClQ==
X-Gm-Message-State: APjAAAXtmu6WQ1YV55Ew6Z1cOgq3BVt0uWiwhHEoOXBazXqSgkP3W08Z
	lMAJSYcn4ohctKFjzwIe+rruEV5C6Ck5
X-Received: by 2002:a1c:f31a:: with SMTP id q26mr374827wmq.92.1570741436053;
        Thu, 10 Oct 2019 14:03:56 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.org.net ([94.119.64.0])
        by smtp.googlemail.com with ESMTPSA id w125sm14908956wmg.32.2019.10.10.14.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 14:03:55 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	dan.carpenter@oracle.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [RESEND PATCH v1 1/5] staging: qlge: correct a misspelled word
Date: Thu, 10 Oct 2019 22:02:52 +0100
Message-Id: <20191010210256.22522-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010210256.22522-1-jbi.octave@gmail.com>
References: <20191010210256.22522-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix a misspelling of "several" detected by checkpatch

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 5599525a19d5..28fc974ce982 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -354,7 +354,7 @@ static int ql_get_xgmac_regs(struct ql_adapter *qdev, u32 *buf,
 
 	for (i = PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i += 4, buf++) {
 		/* We're reading 400 xgmac registers, but we filter out
-		 * serveral locations that are non-responsive to reads.
+		 * several locations that are non-responsive to reads.
 		 */
 		if ((i == 0x00000114) ||
 			(i == 0x00000118) ||
-- 
2.21.0


