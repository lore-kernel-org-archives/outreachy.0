X-GM-THRID: 6609263444479705088
X-Received: by 2002:a63:1b03:: with SMTP id b3-v6mr6489956pgb.13.1538839061084;
        Sat, 06 Oct 2018 08:17:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8685:: with SMTP id g5-v6ls4651064plo.7.gmail; Sat,
 06 Oct 2018 08:17:40 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63GOqZrP6Ux86w0KBSiByIgM5dvQFE3wLOiQN5pdLAxh3uxbU8ua/pai7Kmh0noMDn2uOJS
X-Received: by 2002:a17:902:282a:: with SMTP id e39-v6mr8055257plb.46.1538839060279;
        Sat, 06 Oct 2018 08:17:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538839060; cv=none;
        d=google.com; s=arc-20160816;
        b=l/In18VcDkElFvMw1qO6fn86ELPORclmXBCoo6k3Rmd3vNdlPtfhjuDmYtf3gBcwBG
         e+aQ0iBK7UqLJfSwmuKv2tBkTTqn+ijVBfbRQqaE1L3oJBYVqauJXmHv9YohAw7cdtFY
         Cq8qvBIv7b9WVC44cgrbdsf1gNSOfaiy9dw5sR59y2ZU9FRW6bMDxqkB1tbaAMVJ592m
         Dkvyl5h16xGqoGf5/BMRMpBN+HzpJOQW9aHxHDO9z+7ZoNemmjmd0gaidrGCWcInejTM
         lFE49zaRN7+rUkttLNSoSQ6owQIEZMahwE9wmhf8O/6P9KWEQp5utw6yekJwpir8fgKN
         Q0gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=MnVFXCd710MXza8deVP+Wx9HWq4/juypzz0oouo6CHw=;
        b=pOBFKL3TvaUUfwlC+JoeaPc/KFVkr36dzk9Xpqd4+UxAecASyg65SmZmXcoOYSiKFc
         0yHShAjrVnuCHgl5XwN1k1+NjPcOLkvWPszeSPYYNd+X97SXaenpCE1+/6ZEoenZiRLK
         dBKyEXNf1U5CUSV6Zc0Y+6EP0a2U4t/3vifgGTYhcX6JlZo5b+HbfKhCoqOv5Ag8mIHL
         nZXhWcCdtzL7YRHwStyUwthdojS2PhZxR0BTOfhrPwGvgCApbUtuv5Ww3r2nha9BS3DI
         g7SueBbAV2rtdfWXfL4szg515cUJjweLWfpnKtG9sNRaqkYatvFrN0tHmolXmZXCc5FY
         5kJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PGpeNcVb;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id 70-v6si296309pla.1.2018.10.06.08.17.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 08:17:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PGpeNcVb;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id f18-v6so8147985plr.1
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 08:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MnVFXCd710MXza8deVP+Wx9HWq4/juypzz0oouo6CHw=;
        b=PGpeNcVb3/1f+CvhHrOn94zt9amKpNGkJnr8+2PuM/Hp0ezKs7WTG+SCBCELxfw8JO
         rXvZfSoLock1XIavMEVakgYodGaZ7h0BF53odYfQ3OvnqYdlz5L5ROoADtx4nBnmlogo
         IwG+30h5K0cnZauR0H9pZlQzaX0pKUPkz60K1t4fYXwSJCUrCj20vDCftpQVhAQz9azf
         UxS0VGyOG9wwDHH8xPmTlwkNORJBpZ/3fuL2dj0+9GNttuKzQonBOTDJBFdcXccJYpRk
         BPDO1hCDpsLhFY5p5Iq27MGIh8wYsMlpcrTwxLRj0Sxhd2xThNLo2rSPV0tY43W/um3z
         /gLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MnVFXCd710MXza8deVP+Wx9HWq4/juypzz0oouo6CHw=;
        b=g/FuVAE94RQodsm8xSloxDRz7vGJlNmVYX8Qe5Mq3anHZBOgrBy8yamQKm1CVkOg3Q
         mNCEf2viXO6ukeXE9evilrKp5B6sx6fAFgWBsWUMVmY8ktiwWdq+Hfv5OUAN5j0iy8jv
         nCreYoToxeMYc5lwD9XaNeZFrFmC1ZiRfJX5e3dFijaMzgFLASOf21t/mhGl6eQpLYlf
         pKl50CuDVxSzyY94Dj2Tj9tPW5PY0zKZpfPrDxSUtBglRTXBsBIt7d7QwvVQxD6sodTj
         lfo+FqqSNRgJ7kwuahVL0d3VKHon7va2TTw3sglK5otQf50b3JmAqAmm/h4UmvV1MxyE
         B4eQ==
X-Gm-Message-State: ABuFfoic4M0gMZTqg1HnMKb2u2j876qLuxFwHFMyd9qWgALLRtoYLMd5
	FEd54a4U7K74UOiOOcVQHF92ct9oEQA=
X-Received: by 2002:a17:902:108a:: with SMTP id c10-v6mr15901331pla.272.1538839059860;
        Sat, 06 Oct 2018 08:17:39 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.64.93])
        by smtp.gmail.com with ESMTPSA id x186-v6sm17284978pfx.152.2018.10.06.08.17.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 06 Oct 2018 08:17:39 -0700 (PDT)
Date: Sat, 6 Oct 2018 20:03:16 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.com, rspringer@google.com, toddpoynor@google.com,
	benchan@chromium.org
Subject: [PATCH] staging: gasket: Replace symbolic permissions with octal
 permissions
Message-ID: <20181006143316.GA23864@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use octal permissions in place of symbolic permissions to fix checkpatch
warning.
WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider
using octal permissions '0444'.

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/gasket/gasket_sysfs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
index f32eaf8..8b563d2 100644
--- a/drivers/staging/gasket/gasket_sysfs.h
+++ b/drivers/staging/gasket/gasket_sysfs.h
@@ -40,7 +40,7 @@
  */
 #define GASKET_END_OF_ATTR_ARRAY                                               \
 	{                                                                      \
-		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
+		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),   \
 		.data.attr_type = 0,                                           \
 	}
 
@@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
 
 #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
 	{                                                                      \
-		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
+		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
 		.data.attr_type = _attr_type                                   \
 	}
 
-- 
1.9.1


