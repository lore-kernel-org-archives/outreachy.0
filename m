X-GM-THRID: 6753034664415330304
X-Received: by 2002:a17:902:7c81:: with SMTP id y1mr688467pll.308.1572360947712;
        Tue, 29 Oct 2019 07:55:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8488:: with SMTP id c8ls1989348plo.7.gmail; Tue, 29
 Oct 2019 07:55:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZ4RgXClVnG8gczKJ37r8VB3HS6YGysaTXe2QD0S0fdzebMFZXr6Lxq+5Jp6Trmqvm1UjF
X-Received: by 2002:a17:902:7284:: with SMTP id d4mr4511929pll.141.1572360946784;
        Tue, 29 Oct 2019 07:55:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572360946; cv=none;
        d=google.com; s=arc-20160816;
        b=m4Db0jQLwyrmEHBvC4uMq80vkyGsRs1r4+WTxZ0EGIP1z1ANTEsk6L1tbTOFcSSLFG
         m8yLobW5AATxwM226KOxqcITc82C6Jiz9ux1eZghHpqrris3ABh8TgoFzDlcvvVqpso4
         yTnG4fipPZmB4IDhKZKqyqelH5E+PPuLIZ1qk62Gjc+eMDECjZTh9gnuuKLr8ZeQiQGY
         o7deBYDzGkNtOSYTSAV8ccWKVhz5TMwhX5LzuLr2nxRaS3Vh/rK2a9VIl29ym0fYluUr
         PAdTOUrYo55KEvq2cP9pEf+EJnaZ3sGu3XGcsUKKdvhvOJvYQAppBTI0tE371nf3er2s
         GfPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
        b=aheanOj6DwvjGZ+0n8+wEUfS+CG8Y4zYu3dVakO148PR0ztkilNarHChDR10mgGXBB
         QaLBiIivuLFJU5C4pBnwFbHe6uwz4NHhC3VhAvV1zE6ZBODMlXXbXzCS/x34iOgeT7K7
         xm3jctISRZW1csI+Odc/zmS9jYUjH+VHQiFpox+FH51rQXzfdFLdA474PGwVUfHtUihh
         wp2S5WpuPjiqedPm6b6QV2F+UFQNzCl5g4Hg/3VqUMeXdjEZq+5+9sGk354NjPnln06C
         uwIj/8u2qIXoJ1kDd8Es1HtDHBLS2WA8lnWLTjX2t0aD65n6CNAn9J93iC8BxWJidk2K
         vA8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nqjytfxo;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id x10si148117pfi.1.2019.10.29.07.55.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 07:55:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nqjytfxo;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id z22so20560295qtq.11
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 07:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
        b=Nqjytfxo50WBI6vopuCch0cZIF9IsPsdiznwtPJh2upsT2yU5o/cBcYf04skhUd055
         GvTqocNvFeTBJ9f3Zr2g4q+CEk6El1vH0NlgAOXr4iEegmv+/R1aV1rH+AQQ/XslB4FC
         kusVCwCuGJ+JtM1V+EVjp2GX7fj8e4WTuz8bUpi+TwHutxdqtgmlRder7f5gAqDDHgFC
         HsY6tY+hCeRwQ9bdxWkY4pnGY2CtI6tLXPKr1W1ZjUfn/sM15xC2zmgpJnWIuL3a3NUT
         rKl9W+VGcYEBSPaZzNVoXKupSMUse9iE+MVhx41bX/t1gjl0smAwBAJxL0eJS9oI0FlR
         KbJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lAvEaeqENeVb/DhAt46H1R5niz9Z9sNvfAe5diIhyRY=;
        b=WuJ7W1pacGnTIap+t09hLQvkYFmC5MFcUU+o7wAoUz5mUIEYl4oqg1r2oVuL4PnHqg
         epbkE1UAZXTUOvoR1yqHYJ9UDqm1E2XzrieXghbmLll6XeFGyxdGpY2S2q5x19jlqvoF
         CrYxbNJhQWIAMIjtNrUnnLeBQtKdyUPjT8jFZInJB4dRK4Aa9IDKVwyRcrtbzPs/EdrU
         HJJchuOkCpGSmNP+99jQ/rTswHkcp1r6cTsMyd66Y/oeV8QuLbFGTKNnaQ1p0nijeJ0k
         caEg5IkgeNArtiEUq7XZkTp8t/lzBifROK0OgMUqbCEqYUTBHgH8wrqWrTch0Rdbl70C
         CRHQ==
X-Gm-Message-State: APjAAAW2qpZ6t3nFymkFOaYSuXTL+XiRo3ts+fHjXWHzD7q3sCeB8k0o
	N2sOvKLjQQqGgngr0jTQ5g0dfUyC0Cg=
X-Received: by 2002:a0c:ec0b:: with SMTP id y11mr22443155qvo.123.1572360946108;
        Tue, 29 Oct 2019 07:55:46 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
        by smtp.gmail.com with ESMTPSA id g17sm5978069qte.89.2019.10.29.07.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 07:55:45 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v2 3/3] staging: rts5208: Eliminate the use of Camel Case in file sd.h
Date: Tue, 29 Oct 2019 11:55:17 -0300
Message-Id: <20191029145517.630-4-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
References: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in file sd.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/sd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
index dc9e8cad7a74..f4ff62653b56 100644
--- a/drivers/staging/rts5208/sd.h
+++ b/drivers/staging/rts5208/sd.h
@@ -232,7 +232,7 @@
 #define DCM_LOW_FREQUENCY_MODE   0x01
 
 #define DCM_HIGH_FREQUENCY_MODE_SET  0x0C
-#define DCM_Low_FREQUENCY_MODE_SET   0x00
+#define DCM_LOW_FREQUENCY_MODE_SET   0x00
 
 #define MULTIPLY_BY_1    0x00
 #define MULTIPLY_BY_2    0x01
-- 
2.20.1


