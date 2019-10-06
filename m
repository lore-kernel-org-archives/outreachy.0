X-GM-THRID: 6744763915639455744
X-Received: by 2002:a2e:8ec1:: with SMTP id e1mr16218738ljl.14.1570387764586;
        Sun, 06 Oct 2019 11:49:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:651a:: with SMTP id z26ls1860641ljb.2.gmail; Sun, 06 Oct
 2019 11:49:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx/QmYq/VUlkKbqgte0Tx5utzOzOXyoLzy8sq7QpcdafV2ld3HOugYQ5/tA9f97WDNHa+Ng
X-Received: by 2002:a2e:9f17:: with SMTP id u23mr16280182ljk.241.1570387762900;
        Sun, 06 Oct 2019 11:49:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570387762; cv=none;
        d=google.com; s=arc-20160816;
        b=aFTAxdgBvL2AgaAR5dKoe415RsWCguOcWka1fuK+3SZJvnfb7E+ePAuUQ2IZsCsfVz
         BdSHhNLREeVGaP+XnlxMN+E8N8ZNGSwMYCxRW2JXs0YRMt2tDdumyOCmhMjvzcX7Inwf
         +rQrsXX2Y7HhknjxGyvLPmlNqY6nqq7reTokNUf32noy6+1mZjWSFuYqdD8qIW0uKocn
         KRsJYnSpm60Z1XAVOkQrKCfwKZMKEajhXOJj7bmepBwizYc6kgM+Z+ia1CjXvcZRSPAj
         BFJozRM4SxY5ZDA/3qJ4Sz+h84/tud8V0tXGWL9ERLzLbMdgGVNT3QBnAMU8xCBdPY5s
         1wqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7Ryt44dYF+Okzl6PcwuHu8tX6xIio9b6pLvqbXSxoGw=;
        b=rUjUYfzUklB/vUNw5je6IAjraFKuw9Hu0NY1fgQ0D3Sc6oapBT61XcMeb34kSOgWih
         Hpi9tekM9H97a4xmi++17gWq5jOdsSFMUBWulcB0Rn+95USFJMvQsE1s87vqA2x5MnBn
         ngLdPsi6sQ3WwGAI9akWiJ9cdWk0xZz4PQ8MPxwbzKVGqWogIOlIqxdl7UG/nBbsdO7+
         kWvcoS2V3s8O0P9i1l8Lkzp79Uy7o3xhXjpR72QKygkPn+AS+IC1JjV8iQizQjeigFro
         5TgT2jKd75zpJQkR0kIFhb7AGfI+nsH6tpQiwLtE3Eg0qd6/MseSmQN0uUevnjDC9saN
         u20Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RZxIzcaN;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id d3si784024lfq.1.2019.10.06.11.49.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 11:49:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RZxIzcaN;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id r19so10319794wmh.2
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 11:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Ryt44dYF+Okzl6PcwuHu8tX6xIio9b6pLvqbXSxoGw=;
        b=RZxIzcaNW/zmOf7xrOPscWt36vmU0tmuUzaG8uZe54nJZelFA3sje3BS0lkvKRZJgk
         qiIJ/XD2rRizNK1ed54/U4dsliO+kJkisjVClY7kMkRTwSEhUznnyxSR4LAxxinZkeSW
         laRmA8vHJWO1I9lcqt3kiZ0L2ldf+HIkAmElfR7OYaKWQmG4M/MsUGv9MeBstFI67Jw3
         7NDdM1AB4hR3dea10XAuBHmwgXbi3K/nufOSeqC9hiWT+8hv6G6hakBJ0Zlyt72HKNfD
         tGd0EDyYfYIsenmLmfGgi6GeATMtcHLL/2iYw7d8FJmt6NuOPwILzrrVWVxSKTV553kq
         cCGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Ryt44dYF+Okzl6PcwuHu8tX6xIio9b6pLvqbXSxoGw=;
        b=dvxVprSWlLQ5qgMU1IqJIg++FayvJsZ9Wq7kkjZLy+rHfppT4MkhQflV+sw4tcfzRV
         qi08sgKIMEAunn9AJLxBwsvY67bFmcwrsYvYwkCh+fGEygxBL8qVzVh1K8dS01Hk/WGf
         6g02V/neUP9CHh5O5xFrO7xqwDXx8gyqLhJTxcOEkJITLaGI6ULCsghjZX62lwbrt15H
         udfcUoV6ErBrZK6KYfyLKMEWrb7ds+UVCCnlL9acTeaEJIjF49hPjjmRt8Uf/r0qCUEn
         ZKPvW0tptpG3302OxMTYojHH6LIHc3Sm4+fVwQN10zEon8J0o7KK0U4qICoz2WhPwGxQ
         z+uQ==
X-Gm-Message-State: APjAAAXg7r42PAtjeRe7RdazhPAcQSKJF4VrsMXda1qao9z+C9MfMNK9
	FbzAjgpNUds2xzEgU3f4Z+U0J0uXzzbw
X-Received: by 2002:a1c:2053:: with SMTP id g80mr15504217wmg.18.1570387761995;
        Sun, 06 Oct 2019 11:49:21 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-15-175-166.as43234.net. [92.15.175.166])
        by smtp.googlemail.com with ESMTPSA id y186sm29037459wmb.41.2019.10.06.11.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 11:49:21 -0700 (PDT)
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
Date: Sun,  6 Oct 2019 19:49:03 +0100
Message-Id: <20191006184903.12089-1-jbi.octave@gmail.com>
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


