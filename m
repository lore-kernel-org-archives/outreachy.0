X-GM-THRID: 6754503275543789568
X-Received: by 2002:a1c:a751:: with SMTP id q78mr13241795wme.129.1572655345546;
        Fri, 01 Nov 2019 17:42:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:ca45:: with SMTP id m5ls10656724wml.1.canary-gmail; Fri,
 01 Nov 2019 17:42:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwxVZ/NuJGmJQ7jf/zTLX8zFAPW5GXG6syS55WSFt8MeyQtP0jmkIXL9ym5F3Bc/L407XSu
X-Received: by 2002:a1c:e08a:: with SMTP id x132mr12931623wmg.146.1572655344437;
        Fri, 01 Nov 2019 17:42:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572655344; cv=none;
        d=google.com; s=arc-20160816;
        b=SYDJx0SMRW4C/spCXap+uabY01eWKc+cQ5CP60g/w9plCFjLpzp52s+TwQs8jrc224
         QWwu6sbFlxOV43a99oYpNOqqSWbJOj91ElGw4SO6E81pCWud5L9cmnFPLemxirJ4mYAh
         VzquNzk5dgDmrbugUVcnn06mtYYDWwFfoIiLl/IOurKa+uT/jqXd/Ockhr/WFdBI84De
         El7lWG/Tvs1JUsM9bHRyROfzj+Od4m40gFwDx4/0DsS0akjvZ5EcM3p+2oJ9qoyuekhg
         /WJba3arxFUCZhUe6tvPw6SSFF7QLiskk2/wWV3NmZmhOVO/KRydD+qzX+v/zm3iTgfi
         jyKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=OebC6aVMcC2jE8zsuehSJZa7VRGYhUzWUik+Vnx7pS0=;
        b=HyGnfbG7gfnM37fFzDREi1Fdli9l7Rp3pgQQsERGv8I0jpd0Ryo2L3u0jO+nwsVeKg
         0qIoDtFXpFnnCtKMStrqLwsycayBoFXvbbcryKPPwljXc5CPkv8lSi2j/B1D5U0S0998
         ved2fdGBtDvmVWjZbZ5ciVd7inPk6hFkGRkOcggdsT8q4KqN9JabCL/0X9c7xG6Z4bRL
         tKqLEQiRn7uX1HvNlHVshWM2iWfS6gGm7CkfkOxte9obrTNTsiiPXZJj0GJRDHRSvaKP
         f4jNH8McKmVHBntbNLd3D438RPirksfi+QyPJg+zITDXzAsPANOMkv3m37QCZyatbWEr
         Nzjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dCR+ereu;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s15si469109wme.2.2019.11.01.17.42.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 17:42:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dCR+ereu;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id o28so11171260wro.7
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 17:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OebC6aVMcC2jE8zsuehSJZa7VRGYhUzWUik+Vnx7pS0=;
        b=dCR+ereuD8LxHOyd/DrOqk/4Z2UB/vmMo0sE+MIaxM/mXEyDlA6z99rafM+yvWIIvb
         utCF/mHGnwXbD3D2HJrGCzYFRnfTQCPu04oHH22mvdlrXAsXznVSoLE2n40cyu6Eprq2
         6mfG5aLjYHbp5CCPCnreKLYvtUsuRselKHa20RKzWYssSTMd1aTt0Faj/ITpt2rYEOk7
         CczhUgohsEf83N9OYkykkhv1d8jLf7DgUyueJwYurSpAdA/lcVjEsy6QkE4FZW0I3TKA
         DqzKPJMAktIjESZTZ9nHKgSh/h8OqgD7tBezlt5w9hQNsg7ZQz7F4+z04WP4dqaHbKgM
         eBmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OebC6aVMcC2jE8zsuehSJZa7VRGYhUzWUik+Vnx7pS0=;
        b=ek5xVcWvfUwvF6jfvBKHSH9lOMm+aB5ty40mcg8FDIfGKTOiQ691psi/tTqBS1By1j
         wuZQYYGfC5ATJ3zO9HT+BXdTZ2xZDX/UK06wdsc5Vo2xhhXIQkvA0UHH8T1JI+dBnoBA
         ZfxuHEVK5AtyNolKbGQFsEjMCqJ47RL0JjUz/Qk4PMbXsjhN0HSYk3hAY7dJIzdni2tS
         ME6/hNN3gdHgNcad2QQZhkLH8cKa7MDHcPOS1Ww1IVRLIzl7NnsCPbtXoCDE8/LEIOEE
         c2UZLk//4PjaeeEEYTnETwcfuks7KSa+GMXf4nnADP8kNisLoNFc7K21SSoPiGHV9kXN
         trpg==
X-Gm-Message-State: APjAAAWF9eTtFh2Epu9HN3p/Y8VN03b6tB/qXyREkGNm5aOu2Q7fH82M
	59QVELaFji275t2XRiJVd4bztHvwv63w
X-Received: by 2002:adf:e944:: with SMTP id m4mr13514286wrn.49.1572655343846;
        Fri, 01 Nov 2019 17:42:23 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id d202sm8667642wmd.47.2019.11.01.17.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:42:23 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	gregkh@linuxfoundation.org,
	m.tretter@pengutronix.de,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: allegreo-dvt: fix warning of comparison of 0/1 to bool
Date: Sat,  2 Nov 2019 00:42:13 +0000
Message-Id: <20191102004213.24909-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warning of comparison of 0/1 to bool variable.
Warning reported by coccinelle tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/media/allegro-dvt/nal-h264.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/allegro-dvt/nal-h264.c b/drivers/staging/media/allegro-dvt/nal-h264.c
index 4e14b77851e1..bd48b8883572 100644
--- a/drivers/staging/media/allegro-dvt/nal-h264.c
+++ b/drivers/staging/media/allegro-dvt/nal-h264.c
@@ -235,7 +235,7 @@ static inline int rbsp_write_bit(struct rbsp *rbsp, bool value)
 
 	rbsp->pos++;
 
-	if (value == 1 ||
+	if (value ||
 	    (rbsp->num_consecutive_zeros < 7 && (rbsp->pos % 8 == 0))) {
 		rbsp->num_consecutive_zeros = 0;
 	} else {
-- 
2.21.0


