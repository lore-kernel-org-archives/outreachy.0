X-GM-THRID: 6755490770490228736
X-Received: by 2002:a2e:89c4:: with SMTP id c4mr6994244ljk.118.1572885264709;
        Mon, 04 Nov 2019 08:34:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:720a:: with SMTP id n10ls680902ljc.9.gmail; Mon, 04 Nov
 2019 08:34:23 -0800 (PST)
X-Google-Smtp-Source: APXvYqwSQJjJKI+NP7gI8kY3sl4IU2o1BLVVwFXlXRncuRQniSmkgcgdYxJk5CK3iJ1imE20wcEg
X-Received: by 2002:a2e:2e10:: with SMTP id u16mr15986730lju.51.1572885263538;
        Mon, 04 Nov 2019 08:34:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572885263; cv=none;
        d=google.com; s=arc-20160816;
        b=coBR50NXrlBrWnLI4F+GsRw/wWNwVcKvJ4g+/DxIiH5xbgSGr69qKlrik8UjVtQTyF
         gxdIA/lbYRRbMQ2r5jE/7NhtdJA7/OXEsDYgFXdKEyar2l/d8emEPCUzzPw1qAwVNh3R
         1utZa4dDlYIk3/5MuXXuZl776kBu3EtXCg3bBQ/ygQuMG1uMt9Xoc7vNQjsTnx7H2Esh
         kcG5+/dnHFOlsIYoUzS2GR+HDdJMx/1A2HsVIbZOgWzV4zhwgQah0Pwqj6Lg6RboKm0r
         E6Ox9PYGQhSiWHfuJi6XEaVijsHo866oKxXFs8/pLlhjw0qiwW2tFJHhK++rpM90uyda
         jP6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=JFkDbKsSeI6+K0jBeMW0GZTEnXuZ3ZSW0WVBKac1tL0=;
        b=Nt+6RtKnUuY6mPtq7qeA2gL02ZAH2B5b40PN6sdi/ebj9moriZ6eYU4zgjsJBnLtI8
         E1b9zyjj2VvZlTrjCvAHQaEqRhF6YUsoRPMXjs9D8P0EMQdkgEZbp3KoQRxYOhwIoJAJ
         aG1Z3Pge8WbWD9G2Fe7jDPBUpf8sNGLpTrrUJldY3I6LCxvQyLMla7nd3YlzP+eAX0pv
         8JjNyAD8o7rHtbMwRwQnsprwss0K6PUliydJa94lkMGtBVQT99iRlm3l2VDA7sPUeihg
         YfCV5hmtZ80KuSlr17XBF+OadbVhTPsD/P8pm+O7k1iHM8e4Y9wAPAVk036cJU3q/fc3
         hvsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="fHz/KuqT";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z3si1113140lfe.4.2019.11.04.08.34.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 08:34:23 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="fHz/KuqT";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id q13so17853368wrs.12
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 08:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JFkDbKsSeI6+K0jBeMW0GZTEnXuZ3ZSW0WVBKac1tL0=;
        b=fHz/KuqTSjH1izmh/ecYcpUWqeTHp/VgGOXvyKCgSKmsswFECT92U4eKMGjaGAy+OT
         /tc9SGYjnxdtRNm2HJWQRlncZ1OC6fiIgewfXPUui7RtjX7JdHFlyAD49OXwpUZpHQOk
         oKzQl6uS7XOdjODe5L1F5F9IHfev2jx7af3Vk2RLk9GwAz8NpLOBOvT5cU/FFdGPDXRX
         JXxx1+3IFgsEbv0SddcXvfxU9PQVT1dNWZvjPUXMZ4c79QFCTVmYA8Zj13B0EZHSgDd9
         i+TUaElLH7kHRSALqMTdd8huDBv6X6bZvajsUFWdxsdpD+qhETk3e8xofis9JSLksRoG
         bQsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JFkDbKsSeI6+K0jBeMW0GZTEnXuZ3ZSW0WVBKac1tL0=;
        b=XHW7GQ9HiNcJznuRA0waA4vJvc0NMFl8IUBaxozG/MHGL862bHzbvXQR+YJnBOp7dK
         rQMDp15hJClZX0dowyz8rds3xZuJKaY7CH7A+2E7mwlbPV+KlWssI8XcgApQvLTVHyAH
         d9SnQyxwGs8f9dBXGmKjcNJkHKdAoounqURWOZKl5A/Q/+K97JFpXhzzKApUhNIcPQV5
         FlqxlSRZZQ17d7Kyqg4EsV7rGx9KTA37xogB4GKUNaKPcIIeTTeOjkyFHPLplJ+Gnozc
         1jPcTTgSV33FF60cUUDXfonGVU1QbzySq0Bdgyxjt2BloRNuBKknWZOFr+CB2IEHHoTT
         LwWg==
X-Gm-Message-State: APjAAAVx9F/D/nmkzO7MzkMcQKESYjvT9FC9jdvx+UJWcSs2H7Qbxdqy
	YpPFV1qXdCKulisouW5cfeH+wqIbI6OxHj0=
X-Received: by 2002:adf:f4c9:: with SMTP id h9mr19343427wrp.354.1572885262526;
        Mon, 04 Nov 2019 08:34:22 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id h124sm18573509wmf.30.2019.11.04.08.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 08:34:22 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	hsweeten@visionengravers.com,
	abbotti@mev.co.uk,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v2] staging: comedi: rewrite macro function with GNU extension typeof
Date: Mon,  4 Nov 2019 16:33:31 +0000
Message-Id: <20191104163331.68173-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rewrite macro function with the GNU extension typeof
to remove a possible side-effects of MACRO argument reuse "x".
 - Problem could rise if arguments have different types
and different use though.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
v1 - had no full commit log message, with changes not intended to be in the patch 
v2 - remove some changes not intended to be in this driver
     include note of a potential problem
 drivers/staging/comedi/comedi.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
index 09a940066c0e..a57691a2e8d8 100644
--- a/drivers/staging/comedi/comedi.h
+++ b/drivers/staging/comedi/comedi.h
@@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
 
 /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
 
-#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
-#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
+#define NI_USUAL_PFI_SELECT(x)\
+	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
+#define NI_USUAL_RTSI_SELECT(x)\
+	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })
 
 /*
  * mode bits for NI general-purpose counters, set with
-- 
2.23.0


