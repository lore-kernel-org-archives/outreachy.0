X-GM-THRID: 6751409971660849152
X-Received: by 2002:a62:ae0d:: with SMTP id q13mr18685749pff.53.1571935153504;
        Thu, 24 Oct 2019 09:39:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:db42:: with SMTP id u2ls2203760pjx.0.canary-gmail;
 Thu, 24 Oct 2019 09:39:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyTmDmYP3BCk+wIfrS5rq5H+hN4+iuNtxuqHhmmggpOddXrxyFjf+7dz9brMmkEW2wxWQpL
X-Received: by 2002:a17:902:9882:: with SMTP id s2mr16894189plp.101.1571935152402;
        Thu, 24 Oct 2019 09:39:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571935152; cv=none;
        d=google.com; s=arc-20160816;
        b=wdPYoAUhQpIybNoDzWND1/SSlfRR2LbjIT3f6NoNS8LyY+Sd6SB34Yspzm0xD2ZxjB
         WEeepeCLq7po70oPZa4jHvp2b2pMT3dI9UJTBneJpkdCkumsebcZ2FsZBbpW6wxnm5JK
         YccLXLUNVFjljLItFQOYarDicOgaRR6seqxMWNEfxfiRR5laf6X18STBrGhhVFgrBQSl
         HshW+UxSg5mCJzGkZfKQRZeDtrwDAn/g/CvuSyvGsn5VQ788+BzHnLW7km/dHwFbkAuu
         N8RBr8+Wq9wQZ1/5iOpS8YqaxLzp0xkqcDiJcgk5OFL9r/moK0TiUgKPt88Zo1M/v0Xa
         xrng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PBStHmHEV5B5bW8UOdDVAaSdAsUZ6zk/15tXrG1wW9k=;
        b=zp2AyyIiYnSc9XC7KvekPJEw+MnCB/NYyuTNtrL3E9RtoH/G89Dp6tTL/HZZpoajJd
         6fBoi9/Lg4FcQmLccdwaXZN4jKfLPGqfDQK5tXxsx52KTbFwve1egxgOAVQHnxaCgcfY
         Np0nwIJ3e9XbQuXmWTvszatrA5gQ3tkOR49ucyPlgkfV4Y1u2iqshZPY6dLHMBYhq53/
         X6lF0OsqO2AIOTC9vHfO0ZevpSQOnNV3UiEgrG6fiSs3x1W/aZaGeOtn/RNra+TnM6hc
         AvH4ZfPZ31zfc9uk5PhiaaLNZC+oF93XazAgZAbFiK5QIMS4dslkYwEM+lUlf8iTr4rr
         7s9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="RIXq/4wf";
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id f17si1270595pgk.3.2019.10.24.09.39.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 09:39:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="RIXq/4wf";
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id e14so19015309qto.1
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 09:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PBStHmHEV5B5bW8UOdDVAaSdAsUZ6zk/15tXrG1wW9k=;
        b=RIXq/4wfdukLU5uuWuQF2OK8a4dUMHXkUmt1Ftle/qClyK9CzBLcYC0Rm6YzufgGOQ
         jSuqdlsNKDchwzegUeM3Bb7VhPXkL2Pff271WlEIX8eoQMSmGyjxcVfRg6U2wnBVlY5t
         S4Z0L90uHwuHpRbim+lNpzPn7ZT9+O4F0m0ylnzgriPk4XNrie0AdQdjVSpcJwJR4zve
         ia16euZ4t0T8cOyak/+6e+g0TDFP7VBYlvEU1Zm2TMifaulcsYHTRX42omvOdLtnSD0q
         xMRDpyaGJZ7NAV3JU6yUvJqVhC2bCFQmoNDLEmBR5aAos8qWmT19EVhadgmioTtC29JD
         hAfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PBStHmHEV5B5bW8UOdDVAaSdAsUZ6zk/15tXrG1wW9k=;
        b=iHuBjk9rCrkWSiPIhFB2e1DLpLn9b7h+HuPPwxHPcge+QW00p/4ZTIPtHmdAgqXLQs
         l4TozZMGr5/KBfgL2UEXSxS/4ssLUYXDpfZsaqVepdRrm1tsERfmtEv/ktvyvPHL3r1P
         uR3iGPSh8MLY64Se7ym5jg2LdyNxmjn/N3IMaYQtlxO7MLePze/YbVrP8tLM2TSeakpj
         1j5L04TZAkZD5CJP84egxU+o17hS1mJBQxStL9EhhCZLftmegORuANr7OX1Qx0jV7U6w
         dBGeBrfMwA+VaRsiamKxzy9NRtcAL6J16H+bY/aQqelcrMGg9v57HuxOaZ/QZ+mrw201
         cfdA==
X-Gm-Message-State: APjAAAWpVoYljVeRKb201hrOyoEEJhaiCKkL0CcWKn5DwZpAoJyeN4vu
	ddN2frvK/n2lyY81gPvcx+bDOW95D2Q=
X-Received: by 2002:a0c:e801:: with SMTP id y1mr633274qvn.76.1571935151427;
        Thu, 24 Oct 2019 09:39:11 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([201.53.210.37])
        by smtp.gmail.com with ESMTPSA id l15sm14660121qkj.16.2019.10.24.09.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 09:39:10 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH 2/3] staging: sm750fb: align arguments with open parenthesis in file sm750_accel.h
Date: Thu, 24 Oct 2019 13:38:21 -0300
Message-Id: <20191024163822.7157-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
References: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Alignment should match open parenthesis"
in file sm750_accel.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/sm750_accel.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
index c16350b5a310..2c79cb730a0a 100644
--- a/drivers/staging/sm750fb/sm750_accel.h
+++ b/drivers/staging/sm750fb/sm750_accel.h
@@ -190,9 +190,9 @@ void sm750_hw_set2dformat(struct lynx_accel *accel, int fmt);
 void sm750_hw_de_init(struct lynx_accel *accel);
 
 int sm750_hw_fillrect(struct lynx_accel *accel,
-				u32 base, u32 pitch, u32 Bpp,
-				u32 x, u32 y, u32 width, u32 height,
-				u32 color, u32 rop);
+		      u32 base, u32 pitch, u32 Bpp,
+		      u32 x, u32 y, u32 width, u32 height,
+		      u32 color, u32 rop);
 
 /**
  * sm750_hm_copyarea
-- 
2.20.1


