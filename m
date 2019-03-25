X-GM-THRID: 6672385186959720448
X-Received: by 2002:adf:e3c6:: with SMTP id k6mr16401256wrm.319.1553535739012;
        Mon, 25 Mar 2019 10:42:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:dc43:: with SMTP id t64ls2121566wmg.5.gmail; Mon, 25 Mar
 2019 10:42:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz624NY7BkrrhDmJ+lz+h4yzt96FXbFus8MoZllBUQcTWeWu6Dr96/dWrfoBJxwh357EWLV
X-Received: by 2002:a1c:d106:: with SMTP id i6mr11392794wmg.134.1553535738182;
        Mon, 25 Mar 2019 10:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553535738; cv=none;
        d=google.com; s=arc-20160816;
        b=1FmCOLu5ufpQn/cG98YTvPkvAp5dNJCqqL12AxwQhkxa5bfMlbCpJ1ISZ0aY3YBfAA
         qkAxuEMZ701CVOpZ5sYuYfrVfRuPsKILC9FwH3LdTySZgXlFj+/bHGL0u7Fnll+zNTUp
         Uzh2HyqbJg1C9MfcC9jgLDlCZxCATEdjtWLHOXStbMc6SZ0kmLCMGMyA9P6kqWlLja/H
         JeA5AF/UhWattuj6kPUUNoIouGScXLowDyEUqq/alZM0l0I4qEEvo5UpFmEK6k6Y7kU3
         ewcSVQSLGwF7/B1E5q32w35sbrie7Kl303azxCabR5FxQ/3l/Q1DxnGVc/vJKR4BkhfJ
         rlqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A5r43SP+74SdWPqkAKeb2wHV6kQHSTTMji5xJhlLCx4=;
        b=DngCjHtZ8b2LyRC+2JkKGF1Gayrq9JTn1qAW2yO3KMfkn7KvtWONwHLdpQ49CKlZcN
         YBrbPKrsehclSXXMZZzquL09j5aS8ARV3ET1bdlpoG88tUvUKc0HjM2b3dAYpbfFNEVk
         57Yp26W2bOTeMt7P63eV9YbiTeSaJJFRTF3Mq2HQRhQJI5eJIGVN2T7XCq87FJtwvGna
         x3UamTJ53DE0chN6L57pQ8vIji7pzOsVgMzPDutlv5erGfcU0C4TOz7ecrCS4FCqpuJP
         k814eUV3czqmoGJlwMXtOid5iNVxjGfyLeGPeXt10gHOZYI8BiqyLFGy89DNuM0GUGMV
         EHEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=daZfGJC+;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com. [2a00:1450:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id n65si74084wma.1.2019.03.25.10.42.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 10:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) client-ip=2a00:1450:4864:20::32a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=daZfGJC+;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32a.google.com with SMTP id o25so9868153wmf.5
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 10:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A5r43SP+74SdWPqkAKeb2wHV6kQHSTTMji5xJhlLCx4=;
        b=daZfGJC+7pPWjVKk1CDOw0M/olnXrnsFOjWA8Qeyz7nlR2uZ6+bSSNBEqWBUUCAb9R
         MXy2qrR+VFSgGb1S4hJjOGJERE5JuaHAkyGzKG1A6d3cvrmIbmGZJEDoqUAo0ACiNqnk
         KXuYFGPwRx2fKWt6RcagG5Wfn7txWFJ6eddBJ64CHrEjrqnJwPER5rOGxZSURfmqd6BW
         wxxasx9AUKhpKEvDkSIk9PoMh2Y09NddttcDz814pRAFYX4yhmsxM2xrnQGdDQm3C3BK
         BBBKmy4YG6XvhphcxAiZXesDyoHngNPnntH5Yur9tr9fv/3JaKfjPAA9GOCrjXi11gFN
         dctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A5r43SP+74SdWPqkAKeb2wHV6kQHSTTMji5xJhlLCx4=;
        b=HMx7x2fdgBZfnfYm+z9BDym2XVtmdm3a/B0JkZhM0AkUXlmm+oV8boUwpewCMxHIgd
         dBqrIz34BLltxOF4eKaILG3X4LkO99E5KO6t1XZwbboAViO8iqDR2+69lYTOuW+CCMKZ
         Xw6vwa1QA95MD7ofPKtyaHzdvcj7fxwhUZbowLwE40Ykn/mw4ASAe12+u3vuN8SAjPuz
         4rCb25ycpwS1VhgRqHuuphgGa2Mk4jvPoj5HgkvqIK0azoP1SPQqGE85GIB8AglxkYt5
         VWJJ48M0kiKK4b022qu1CwQfZvYqgr8tjH1JzF6hU/v0knpRFjLfdPufSclc/dqci3jk
         IG5g==
X-Gm-Message-State: APjAAAXKNim8lB93nizXMfotV50ruX/wn54CSvosxHLz5kway1lS0EWE
	PpFrA3Zx4Wz7yVLeBjglnQ==
X-Received: by 2002:a1c:1a4d:: with SMTP id a74mr12219141wma.50.1553535737801;
        Mon, 25 Mar 2019 10:42:17 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id y3sm11630524wmi.27.2019.03.25.10.42.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Mar 2019 10:42:17 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: mchehab@kernel.org,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: [PATCH 1/2] staging: tegra-vde: Add SPDX GPL-2.0+ license identifier to fix checkpatch warning
Date: Mon, 25 Mar 2019 17:42:05 +0000
Message-Id: <20190325174206.16626-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190325174206.16626-1-jbi.octave@gmail.com>
References: <20190325174206.16626-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SPDX GPL-2.0+ license identifier to fix checkpatch.pl warning
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/media/tegra-vde/tegra-vde.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/tegra-vde/tegra-vde.c b/drivers/staging/media/tegra-vde/tegra-vde.c
index aa6c6bba961e..8adf1c011bff 100644
--- a/drivers/staging/media/tegra-vde/tegra-vde.c
+++ b/drivers/staging/media/tegra-vde/tegra-vde.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * NVIDIA Tegra Video decoder driver
  *
-- 
2.20.1


