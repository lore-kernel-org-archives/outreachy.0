X-GM-THRID: 6666290525545431040
X-Received: by 2002:a1f:7244:: with SMTP id n65mr6498118vkc.0.1552116753755;
        Fri, 08 Mar 2019 23:32:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:5c94:: with SMTP id q142ls1978136vkb.1.gmail; Fri, 08
 Mar 2019 23:32:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqzJA2TSY40E/PPwFj78+EmDyBMrWUuAJOtXtAp4YtAtEx67c8VSDADD18PFoX5W0/ZGbvap
X-Received: by 2002:a1f:9644:: with SMTP id y65mr13909250vkd.23.1552116753160;
        Fri, 08 Mar 2019 23:32:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552116753; cv=none;
        d=google.com; s=arc-20160816;
        b=kYZ2AyTL6Mdx6tACDsgSwe/eQ1+Dvt+sb3Wba49BvROkFfogoFaEQMDqwtISYL0xP7
         S9XmzC5eOxCHG7NS+SOHaGibFVP6O5X5OCMVP94Bhz0P3nXw7BpxIzaADNOr47MjyTD2
         ArsB0iFf/Ym2NKGJrBGvRLdRXOno9vT95YYjfFJqm6OSys/FQzNSDLLvvhVfSoaocsLt
         evtpfm+F2CgRSkCXsat/x4/POurKEnO+EYNeVeIYUqO4APQ3ZRktVXipETv+wywyVvWL
         MxR7QEtwLtdDDPre1f9OYRGFBJxOcKBXPMWsMS+TrMv97cAD7y8eXEEDOLAal8Gv+AKu
         XhzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=XCXWmiF4sjCpAl6wuN9OECqjnnOUaoltRMkCFp0VC4U=;
        b=d6i2YDCBgkYGckysGOg5LMpkFZ/BxGyEq3ET5VnLDV2VbZSOfScH930kUx6+G/jYh2
         7Fr1E8dZZniVsXAk6ZoWhVZl78EXd6Vv4dTmLBruLGWlqpBNoFfAae9NSAWM0zDON7dl
         Jy/I5u3pjxU9pemdCD1qZOFBQtH/ELmNW0Hs21IxvjHaru+vkHz4PB1lWpB/hIja498u
         /eDFHS5VIWtNh1TZY0kNdaNHWHpOeBS7KFc9BRRfyMcZfii9JatV/0KQzwEKpGoLh7nz
         Yzbu3iGLDb/2vpdXCVPxy/mBJ7o4V8D8qWMnBjEdziD5RkfzxnF/ZG1SWPsXXKdmCR3u
         2VXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qaMkvkuk;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id k19si515038vsm.0.2019.03.08.23.32.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 23:32:33 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qaMkvkuk;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id m2so15944067pgl.5
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Mar 2019 23:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XCXWmiF4sjCpAl6wuN9OECqjnnOUaoltRMkCFp0VC4U=;
        b=qaMkvkuku4XZ3tWK3HOXiwW0MbLhUsBQwofGonDfl8T/Dd0RUksUbhGJjY1S63fKXn
         jv5ggyNw40d9dg+Ibx3F1IVDZEvk3JqYz1RRDHxfnOvr/7VzVw0SIpGzPk0Q6aOn4z79
         4vADFXiwHoLD3g6FbRQw7HptP+HY37yxo9PwXfSDBd8x7dO2/VGbVHJdOEiKhU7VYleg
         MUHfJ2DiSyaKKCQPHO+jig54SB5Ecr66rzdZbclTEqepWK/CJeH2SWxxAqUQFHKOf930
         4qbU+WYVKkdOl+L3QrBrqByIqik6tFkay+vUeD8RelSXXD53FfvqBk4d6iDVkjo9jfWb
         wvjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=XCXWmiF4sjCpAl6wuN9OECqjnnOUaoltRMkCFp0VC4U=;
        b=sHaucBWoC6PADC9nOBIBHxqVMJlMTJhGcrS1sudVQgEfXtqwnHzpTPJH08QDWXc8tY
         xKVFfHSGskJWxavUXOlnWyBGjB+L4fLy7hl9Et7YHmiYhfSTgv2Ki8ROrvHnLYZR5M17
         3sNm9im6lUN282alL8dGWRDe9TIM6sZgLQ7kcIGb79CV1RS6RWAcH9w1eyVPMCJsCwlS
         RTxDHUrAHC2a7EOnA8Fex1c+HUaR+DVGFRE/MguVfbhzLjdd8pX+S8JJ0j1bJrE6+10R
         1oCWvUAZmVjiKrnz5Ar7B2HsnMCbvYKROcLqXdE7pKxAvR7qyrbtHrVO5RG7c6bdd4XR
         4g5g==
X-Gm-Message-State: APjAAAWMuHAXnHsv+xZo2H1q4ZLNHFS5q5uXkbKVsg8MSHCirn+Dwmf5
	0vI5QBdJzQprAm/0xN150aQ=
X-Received: by 2002:a62:b801:: with SMTP id p1mr22577113pfe.25.1552116752286;
        Fri, 08 Mar 2019 23:32:32 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id l184sm15897827pfc.41.2019.03.08.23.32.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Mar 2019 23:32:31 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v4 4/4] Staging: most: dim2: reg.h: Correct SPDX-License-Identifier
Date: Fri,  8 Mar 2019 23:31:25 -0800
Message-Id: <20190309073125.5610-6-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190309073125.5610-1-etsai042@gmail.com>
References: <20190309073125.5610-1-etsai042@gmail.com>

Correct SPDX-License-Identifier comment characters to silence
checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/reg.h b/drivers/staging/most/dim2/reg.h
index 4343a483017e..b0f36c208a57 100644
--- a/drivers/staging/most/dim2/reg.h
+++ b/drivers/staging/most/dim2/reg.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * reg.h - Definitions for registers of DIM2
  * (MediaLB, Device Interface Macro IP, OS62420)
-- 
2.11.0


