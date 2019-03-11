X-GM-THRID: 6666918096348905472
X-Received: by 2002:a2e:2c1a:: with SMTP id s26mr1546600ljs.12.1552262832392;
        Sun, 10 Mar 2019 17:07:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7:: with SMTP id 7ls1730137lja.13.gmail; Sun, 10 Mar
 2019 17:07:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyMA9zBJV4CFacFolD2I8No//xxtWd4k+22lnoHnuMsfTUlPYdJg40doTMPA2fvC4xmcNTi
X-Received: by 2002:a2e:91c4:: with SMTP id u4mr1494309ljg.29.1552262831555;
        Sun, 10 Mar 2019 17:07:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552262831; cv=none;
        d=google.com; s=arc-20160816;
        b=UPM+hcj+TAcWVTn1CVq9gRnF4/YUyPALk+HkM9y+aUfZHPK6n27RXOW6+ky4MZEcRH
         NTb28FZg7ISLBfrFCcYnGO+h4rERSWuJYdwIpVGtcwVu8NHYHriBs3v6pw+qZPDXdkRj
         odu8nPcfSkPl8yWoNoy1ae1ML3LDu94NUmZWr5WP0voSPU3dWRtRHGSgYkx28cfIO6Zs
         T1zY6KPoauK31jO2sGvqez/ib+/d09jTe4tC2DiJL1rLzN8046P1mgPO9nEof65pQI9m
         glMubjNvfgdU3PVhyjzbeFTuh3ry+RCDfPUdkdP1J0uNoT89yKoAlaNg4qu6bNfwWgo9
         qGyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fWLmMWMO9VHBsEg8sVteTFxwVGvSLAAhy3ztTfRoQ9w=;
        b=MEIIGs3HZj9gkXs3E7k6yuQnvV/xwsNz4lPldxUL7V2NCXUMAXEGezEgS73SpBClqH
         YGpzS6YRaVLmzuQb/Q8oXsi5qpRk0mqAexNuHDdrhtkxAv/p/IgkXN9yKolKEqVGFx8L
         6Vo54OBNx7TY/ce/LlZaInV+JKpWdxvqQbGg8lRpx8afrtoqxmbuC8SxBzWn26MOf93V
         hSkPc4OKmCoLfxOo+vmX3QYlQ1Bp1z7Sq961iDcSzg3iwKO2pY5XlWKzM1hJ6FdXfyRB
         xqutK1xjt6STOXKARn+actUz/9DzeC2lQjLTeWPPtIsAHA0EEwF7zmO2KisrAet9hdrR
         +QUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jc9hoIqo;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 19si144795lje.4.2019.03.10.17.07.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 17:07:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jc9hoIqo;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id g20so2569255wmh.5
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 17:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fWLmMWMO9VHBsEg8sVteTFxwVGvSLAAhy3ztTfRoQ9w=;
        b=jc9hoIqoIgcc+epDZ/LT4WyEfCaniJy67/A/58XZp5TmDlrN0Qw9ADREj2/Mdk4edJ
         9YRHcqtC23ToqIdI0UxAcCBt3m1AdfvxR9HAjaW5j40/gIF4/GuE4Grhlm+DbDOnzHnH
         D6AhwTnIIotA3Objf69EN0ftSWUeuZqJBrZt/LWnPhVnW72e8EUT2m3I2XnfHWZSpL10
         4BE8epTws/KH7NalHmNXXmzyKDNvVpBRWkbyR1D/7/HqxbHgo7Bbj2LHjJVMqXcf//Cg
         jop6/JNuON1S8+AfcrltHcH7wTdx7vyJ3gJNnWYrp8val9jhj3Uqiz83hmvffGVLQ8Mk
         721A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fWLmMWMO9VHBsEg8sVteTFxwVGvSLAAhy3ztTfRoQ9w=;
        b=ZeLFNujom3LcHHUZIYP3vTmqevMYjKnBfRR6uvxPGXG6oFUexw6Q2+Np1OBd+cuN/t
         8G9Js3iwSH6pZYI0X+nFlspL9ju5rV0GmEg7o8MDhy+mPTFUAiUFA8/wg0nZTWXHJvak
         5L1p8Rdg8kES//nfQmdEAdhQNAqKEYRkdw/vNMFPlu8pdEszTog5ogt20FOxfXPC1+pj
         zTUQoX9pvnzx/GGLZI+7YSQLqF1R5qKfo3IXZudV19Rz2lztzeWeebVfUZsF/qeIfemA
         LWe/I9boBsT/ul1o1FreDUmbd9hwc5y6GJv6y2CuRtgzIuOyclsHHEoM8adxnV8zsO3Y
         JpgA==
X-Gm-Message-State: APjAAAV5hl6Dy6Qn8e5RXPJrMeJOe3JezyRU/6AqUAiP84ppPxC7uU9E
	XtsrwgwOq/dgorVtwGO1odKLCdQ=
X-Received: by 2002:a7b:ce83:: with SMTP id q3mr15186379wmj.108.1552262830753;
        Sun, 10 Mar 2019 17:07:10 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (host86-151-41-196.range86-151.btcentralplus.com. [86.151.41.196])
        by smtp.gmail.com with ESMTPSA id x17sm16313142wrd.95.2019.03.10.17.07.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 10 Mar 2019 17:07:10 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v1 1/3] staging: rtl8192e: add SPDX GPL-2.0+ license identifier
Date: Mon, 11 Mar 2019 00:07:00 +0000
Message-Id: <20190311000702.12740-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190311000702.12740-1-jbi.octave@gmail.com>
References: <20190311000702.12740-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SPDX GPL-2.0+ license identifier to fix checkpatch.pl warning
Issue found by checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 68f53013cb95..74adb45efe73 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /******************************************************************************
  * Copyright(c) 2008 - 2010 Realtek Corporation. All rights reserved.
  *
-- 
2.20.1


