X-GM-THRID: 6744763915639455744
X-Received: by 2002:a7b:c412:: with SMTP id k18mr18376688wmi.149.1570387723790;
        Sun, 06 Oct 2019 11:48:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c8d9:: with SMTP id f25ls2977606wml.5.gmail; Sun, 06 Oct
 2019 11:48:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyJlA+ceNCQZIOI2EAtrQZqJOWYcF5WrhmqqP7FHRMfaELZK1tNf1AoH0reJrTfj4hsKJ5B
X-Received: by 2002:a1c:9ec9:: with SMTP id h192mr18289823wme.105.1570387722614;
        Sun, 06 Oct 2019 11:48:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570387722; cv=none;
        d=google.com; s=arc-20160816;
        b=ud4pv+BxER9Rh7lkj5WhMOQzt4LC/lhDEcBeqtKNow2nNvcmnN9iSCCKq/Ya0pRdoP
         vYT7Z5MI9YIMledyfYDCqdhvUIf5ufqhPhEbaQYwTv8xxclV17Tq9s5OlIQoJgEWM2ca
         SuVLpEDFvxOnqul0W6ssaD3VRmRdwZbeTnss6teVWMkV44ZQYjm7JD+4HC7xHjLw+Nr4
         llKc5clfWVxOj2CEgdG1M927rW01Lo5+dLpSH6i2UKzPR/WoA5Y6sOtPfIva9t++zCPh
         hwInRZBzZhHGJTdtpIDnzCHq/SDKGYP3Ed9Y45HIck2EfexR/IaKEywaoZyW8/KbUsac
         kO7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7Ryt44dYF+Okzl6PcwuHu8tX6xIio9b6pLvqbXSxoGw=;
        b=wDt+xK029AHZMNlS+r/kn86Co5ltaJOlKQNQnG52WRRydxS0wAUKhqk1+MdNKApmQd
         5iYWVaZkU0d2d8K2looMPVu97tbEn9fJmvku2xn0ASQMbh9pXbuRqePPR8GKWDL8mS0F
         MIcOL4zjjZvS25U3rhjmVUoIjl1glTWrx13S4EAz7wfX7Hiuq1hMJYVW1Fk/K1/CR/O1
         Gz883R/+yB9kyhD7GpVhPRwDdg/yKMrZKoj87SlZB9V9ZWm6HqxTa9O3lg96PU+qNsA/
         ZFajVgKkMLyW52TZSNQp5YLn1UnGjGies1pPoVYUcQ+ezVq8nu31mkILLHNeroTY/0Vc
         0Pgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IUMJUuDS;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id i21si1576359wml.4.2019.10.06.11.48.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 11:48:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IUMJUuDS;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id y19so12678280wrd.3
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 11:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Ryt44dYF+Okzl6PcwuHu8tX6xIio9b6pLvqbXSxoGw=;
        b=IUMJUuDSyGC30dYtWcqFZg0pw9BmW0YroviA+PkfOUjpUqkXlTZf2vIVVdoizOTW7V
         wzob5JK8fY1kNAJ68SVj5tqVoP75rcrjuOK4ds/K5OM4bokrur8UbAUIm4cNB6h7QMrQ
         41WWskkUWLDuZtF6Hq7jzTyWcuFBMIIQsq2dPzxO4n/IVtiLGHO+Q6RAZV2Ae1Qu8H2f
         f7EMyUZ2bf/JKN6gjZI/iBahHCLcSwp3lVgihL5CUptJ5YY9sDgqsE7S1BnvwREIv95U
         Lq3u98GiNKtIFr+wJZncX4/zPMZVqECmE4zTig8t5Wnry35aIYLbBL2nM+QrQmdEfVVs
         c3UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Ryt44dYF+Okzl6PcwuHu8tX6xIio9b6pLvqbXSxoGw=;
        b=Y5c0dge6PRklahs64QhI3VcNTQFu2l3X55RkBfph5Hu69hxSGjE8Zan6O0SxLbZDkC
         K/x5sau3LCw0fn6c2Wp/ncL6sCzRG0GPsZcjVOWLmGe3cuwxXesXSJdOW8ivDGV+VKQ5
         1UlytmQ7K2gHJ74TrV/64BAhmj8goCZgcV76mAPhlVWMvxLpbro+RMFPsTp9OME5mJYX
         5wuryVY3IdHhOEzjD3znwtiwHa0aYZ7XaCaxpNrPgjFqF27u5ZrNqplpdDXJtbHlCGLn
         uPkimsuBLRHI+cL0bPv42KAxwH5Tz0CbMX7fBjZlm0ZsP4l/FLo/MJ+lkDKSVO4cAA14
         SRzg==
X-Gm-Message-State: APjAAAWvRHbZjEKxVHCJrqBAxRlvWC1TWQI+lnf82O2Zf0D0kIHCTTo1
	jZdGyUqxnjh3Z1TOguecg/dSrLPytKwN
X-Received: by 2002:a05:6000:1632:: with SMTP id v18mr20634231wrb.61.1570387722052;
        Sun, 06 Oct 2019 11:48:42 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-15-175-166.as43234.net. [92.15.175.166])
        by smtp.googlemail.com with ESMTPSA id a3sm23689372wmc.3.2019.10.06.11.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 11:48:41 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	devel@driverdev.osuosl.org,
	olsonse@umich.edu,
	hsweeten@visionengravers.com,
	abbotti@mev.co.uk,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: comedi: Capitalize macro name to fix camelcase checkpatch warning
Date: Sun,  6 Oct 2019 19:48:27 +0100
Message-Id: <20191006184827.12021-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Capitalize RANGE_mA to fix camelcase check warning.
Issue reported by checkpatch.pl

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/comedi/comedidev.h           | 2 +-
 drivers/staging/comedi/drivers/adv_pci1724.c | 4 ++--
 drivers/staging/comedi/drivers/dac02.c       | 2 +-
 drivers/staging/comedi/range.c               | 6 +++---
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/comedidev.h b/drivers/staging/comedi/comedidev.h
index 54c091866777..2fc536db203c 100644
--- a/drivers/staging/comedi/comedidev.h
+++ b/drivers/staging/comedi/comedidev.h
@@ -603,7 +603,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,
 
 #define RANGE(a, b)		{(a) * 1e6, (b) * 1e6, 0}
 #define RANGE_ext(a, b)		{(a) * 1e6, (b) * 1e6, RF_EXTERNAL}
-#define RANGE_mA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_MA}
+#define RANGE_MA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_MA}
 #define RANGE_unitless(a, b)	{(a) * 1e6, (b) * 1e6, 0}
 #define BIP_RANGE(a)		{-(a) * 1e6, (a) * 1e6, 0}
 #define UNI_RANGE(a)		{0, (a) * 1e6, 0}
diff --git a/drivers/staging/comedi/drivers/adv_pci1724.c b/drivers/staging/comedi/drivers/adv_pci1724.c
index e8ab573c839f..f20d710c19d3 100644
--- a/drivers/staging/comedi/drivers/adv_pci1724.c
+++ b/drivers/staging/comedi/drivers/adv_pci1724.c
@@ -64,8 +64,8 @@
 static const struct comedi_lrange adv_pci1724_ao_ranges = {
 	4, {
 		BIP_RANGE(10),
-		RANGE_mA(0, 20),
-		RANGE_mA(4, 20),
+		RANGE_MA(0, 20),
+		RANGE_MA(4, 20),
 		RANGE_unitless(0, 1)
 	}
 };
diff --git a/drivers/staging/comedi/drivers/dac02.c b/drivers/staging/comedi/drivers/dac02.c
index 5ef8114c2c85..4503cbdf673c 100644
--- a/drivers/staging/comedi/drivers/dac02.c
+++ b/drivers/staging/comedi/drivers/dac02.c
@@ -54,7 +54,7 @@ static const struct comedi_lrange das02_ao_ranges = {
 		UNI_RANGE(10),
 		BIP_RANGE(5),
 		BIP_RANGE(10),
-		RANGE_mA(4, 20),
+		RANGE_MA(4, 20),
 		RANGE_ext(0, 1)
 	}
 };
diff --git a/drivers/staging/comedi/range.c b/drivers/staging/comedi/range.c
index 89d599877445..dacdd7b6f1a0 100644
--- a/drivers/staging/comedi/range.c
+++ b/drivers/staging/comedi/range.c
@@ -23,11 +23,11 @@ const struct comedi_lrange range_unipolar5 = { 1, {UNI_RANGE(5)} };
 EXPORT_SYMBOL_GPL(range_unipolar5);
 const struct comedi_lrange range_unipolar2_5 = { 1, {UNI_RANGE(2.5)} };
 EXPORT_SYMBOL_GPL(range_unipolar2_5);
-const struct comedi_lrange range_0_20mA = { 1, {RANGE_mA(0, 20)} };
+const struct comedi_lrange range_0_20mA = { 1, {RANGE_MA(0, 20)} };
 EXPORT_SYMBOL_GPL(range_0_20mA);
-const struct comedi_lrange range_4_20mA = { 1, {RANGE_mA(4, 20)} };
+const struct comedi_lrange range_4_20mA = { 1, {RANGE_MA(4, 20)} };
 EXPORT_SYMBOL_GPL(range_4_20mA);
-const struct comedi_lrange range_0_32mA = { 1, {RANGE_mA(0, 32)} };
+const struct comedi_lrange range_0_32mA = { 1, {RANGE_MA(0, 32)} };
 EXPORT_SYMBOL_GPL(range_0_32mA);
 const struct comedi_lrange range_unknown = { 1, {{0, 1000000, UNIT_none} } };
 EXPORT_SYMBOL_GPL(range_unknown);
-- 
2.21.0


