X-GM-THRID: 6946206210186018816
X-Received: by 2002:adf:fcc9:: with SMTP id f9mr10218964wrs.420.1617289662944;
        Thu, 01 Apr 2021 08:07:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9ac6:: with SMTP id c189ls3112032wme.3.canary-gmail;
 Thu, 01 Apr 2021 08:07:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx+lFffqHFRs0lrHkAHbwUA1TBaG1/1nbls1l0luT3aZfhBRzz9Yj/gBVnfZxF012CfGbNB
X-Received: by 2002:a1c:9803:: with SMTP id a3mr8532095wme.161.1617289661488;
        Thu, 01 Apr 2021 08:07:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617289661; cv=none;
        d=google.com; s=arc-20160816;
        b=tBNFxnqRfXf/gIX8p2dKjYKbWhBHdMCdqyDoX5Zc23NebSO0ZKTbITmDFX1sAKuVtK
         G7lAQngBVN8GdA11wh9uEGB5Nwa4UOHDvwcvoptFI36dMxbGSdxOsAnWgY8qUBWHfu5O
         34r8vWf24EzP3s/tfEqjirmL03HA9NxvQ0fXXdo8WGPG7eDwLh84QCs2YlnaY3GX+uLU
         UI/hl9niHH/J9RxkLLBJKzNH0R50Y/wlLX+rBqJuNTXhBHIaLMRULgedXxGbZIOjG0xP
         7vnxVxeiCpDUQlJXHPJZYNIEIJaX6kyl1iPnCDhCSMczPNmSxjmmp6sZoZkrjhY0+9Ho
         IAXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=kB6b35TkKeBEpWPgQVDGgf20f9VdNcsRCGKE/IEecDU=;
        b=m3mTFr/7zAyZrPlVmVQrojZlaIO+MlYbtWkBXXfHh19gOPX+kgKWJ2+xCu4nahLAh1
         GWjFHhhw/LcJOFzG5+bAkMuchgZY/b+YMXlyWN2yzNRbY4zppW7C+RrIV+ndND+5WYkT
         EVbrcVtZb65U0/nbRIjpYo0IkM1Mqj16ki04J9MeOhy9kSt3ztR2P0mC9hlRsYkncLxN
         qmbfRaJvvez361a8GuoI9hyaZSrSO7HlFyCjGHwan6ItHFGtWCjRmjFupqcYgkr48O26
         cIsWaNJhZAeig/2YiG4alUOmuLu6GeU9IQihSI90fcOkBORkKnWtvnvg82j105UfV6qJ
         o32A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fiYgqtRb;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id p189si516889wmp.1.2021.04.01.08.07.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 08:07:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fiYgqtRb;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x433.google.com with SMTP id v4so2141261wrp.13
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Apr 2021 08:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kB6b35TkKeBEpWPgQVDGgf20f9VdNcsRCGKE/IEecDU=;
        b=fiYgqtRbuHkAOIB9pENfmYb9zlD+pRfCDLUG+YkieQk7mjFtH6p2GAAQdasUBiQbp3
         wnmiNcXg21EjkroMnjElV7BTQhJZOliEG2w4cPWVcs1i4vIrP1+x7eEV98xAo/82ZaR4
         kTWtiQ+NG5fyJQUBBa1X06X5D2kSadWkTSIppl6bEZnOc3vT7sp+TL4xD0NyQzm3wIwX
         oL8ziPJfasSMRa9W6DXxQ49thzeIQZQcCWzqFs9n7cU/CxYGu5mP/7D/iiGviNGt5JH+
         BnA3bea56LqRMbGP8OPETfZR/GCuFE1Mw8GaClX9W377R/PvhvpGLl06kyjLkJoZ5TXg
         rlUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kB6b35TkKeBEpWPgQVDGgf20f9VdNcsRCGKE/IEecDU=;
        b=lm+iqBlV+Lxa1UTJro6ZfKMW1kr+UikBYf7jLTc1hrO9fCIzArj3dmYWe0xnVq1FTL
         wYXrKUaiZFfpN3zBsBKpRMI6NDHioBXhQHv54FYcwU/BxvI6xCK3QIPvwy8u7rnR5QGm
         PF5y/+9XmxY6jcKL+UzfNr3S05eeFOo6J8V+Dj0DNxV/jRp+T1/I0+neh9H7XtBXDVB3
         iLpCxEzADDA46lVedGvLwUsWiHZLn2h2e9ksbekhlxiq9IsxxlvqApN52xo9qi3rud4S
         VKsU18hKbf0p4K2/Aqw8ERBftYyvFlVYT9oCbkm0syxlJUbCDY+jB0l17kQVff7sqap0
         ZjJQ==
X-Gm-Message-State: AOAM533Ar14oMb9T75/AaGVolybCdN96dABMW3K8zozgXPBZGORcR1mc
	VIaA017GmQHcohTs6CHxMDY=
X-Received: by 2002:adf:f54c:: with SMTP id j12mr10303387wrp.264.1617289661280;
        Thu, 01 Apr 2021 08:07:41 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:a182:b5f0:9f7c:c891])
        by smtp.gmail.com with ESMTPSA id n8sm9710108wrm.70.2021.04.01.08.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:07:40 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: media: omap4iss: Patchsets cleans up in iss.c
Date: Thu,  1 Apr 2021 16:07:37 +0100
Message-Id: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Clean up checks of "Alignment should match open parenthesis" and 
"CHECK: Lines should not end with a '('" in iss.c

Beatriz Martins de Carvalho (2):
  staging: media: omap4iss: Ending line with argument
  staging: media: omap4iss: align arguments with open parenthesis

 drivers/staging/media/omap4iss/iss.c | 48 +++++++++++++---------------
 1 file changed, 23 insertions(+), 25 deletions(-)

-- 
2.25.1


