X-GM-THRID: 6665828102544818176
X-Received: by 2002:a1c:c704:: with SMTP id x4mr1319355wmf.7.1552009048849;
        Thu, 07 Mar 2019 17:37:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cd99:: with SMTP id y25ls28374wmj.2.gmail; Thu, 07 Mar
 2019 17:37:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqw9MUleYzlKig03Gzh7NpW1HTLUjF/+mqjRtqq85U+Hx9bqPpFl5kXGiQaZk+DzLG+r4TGk
X-Received: by 2002:a1c:4087:: with SMTP id n129mr1321694wma.13.1552009048076;
        Thu, 07 Mar 2019 17:37:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552009048; cv=none;
        d=google.com; s=arc-20160816;
        b=HJvD3h7xEuOGKo+r1jKJazj51LBE2BaM1kOwv7Y5Q51zNxpKRcIyQwYxV3BUOkkdT8
         CKtd/5nNBxomYH98TTmuNq+AY6x1pMxnu8xvlrHQHPrkYyDK22vi9QI0ikf77MKXe/RY
         ts4UHUI4jyNlX4YyjsWQH+ETXRx/cTUvLe0AonFUM+GIqGKumyBpSzlZXqddhohCZUph
         HLCbPyaMi63kssk5SfbQh37/F8FGrSNSa0a2oQeuZMPWzi0Cf8EAvO3XhR6cMKIVb7qk
         N/IimC6hIHs8iJxLs81zzqpnCh0qOsb6jtjZndxXdsQazSXKyUBqhXWcHDCq5leNy/1F
         Dp9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sVY0L0lx4UCznAb8UmZ4o4wFyl+MxlW1Ssqn8tPBzCA=;
        b=eCN/MNIgRRt/LcP+41wlARXJ9HGPYVDDiXSvGDuueIUL01r2hpwd7wTQ3qv2eHYMZz
         HPsBz7tyfpJu0Sigb+mNngX7josYijE1wHUiTp+xLmsHIfe5r0+r74crEa1tK2kqo2w1
         aeA/HFPyNMbAJkQZYskQYcdBNWZ2ertuaJG1dgLP3JHix+EnMo09y9AnhuWld9ickHIJ
         ARBc76D3CQg27INDFTLl9BR55om/4ppw59hJUp02MlG3fQL9F9rD0HZMY6wnm9/UlH/A
         Lnsqd4Dv+AFbahlPcMQNilJJncrTLnI53y2kuNkF9uWb77fqb3nC5Qu1CcZOpbIMCRwc
         GYNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GH5eP0yg;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id f185si289315wme.1.2019.03.07.17.37.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 17:37:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GH5eP0yg;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x434.google.com with SMTP id w2so19612714wrt.11
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 17:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sVY0L0lx4UCznAb8UmZ4o4wFyl+MxlW1Ssqn8tPBzCA=;
        b=GH5eP0yg2sHLJudkrM8+CGS3MYOyE8dAg/1WdDttbXQVJSoZjQBnmQe0qQyNhK7O+u
         Odapf461PwUllMBglXxVjZmVOxQuNBAmB1G7MO9lJ9YXwwjewjLMt/PGGi1qX1qjbrDm
         zrwgcEqBIi4UIqtnXaNOOuCrTDf8B83CQ9syIygXpc3MJUxefqboC3Fmii0KpDdhrQHU
         PEVPPV3RjzWieaDOAyieuy2ljej1gIHqjG4pjcCx+lzRgW+Qwa6QIl7X9k6JLw13AT8V
         lCJZyyqJJBaUGFbI/VRe/TeFCa6dpEzhXnOnf0YO5Kd0eyitRWLWShWhxbtZ70kMzkXM
         JMpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sVY0L0lx4UCznAb8UmZ4o4wFyl+MxlW1Ssqn8tPBzCA=;
        b=BD0FlYFBYqb7UhuvK4dRrhSR0+TcqMdEgc3f+OgvcKlIVBvRJWC72u7Pqxu+gnLj1e
         fwL/F6mqYrrJ/WaKQAKP2xMvuCzO3eOl/gQhgbbHdgx8g4PMsxAtOfDuberWUO2ytoZ5
         wdbErGaJZM0uIeQMGKI8lFYS7OpFiuPaddn7tv0DLTtDkQw7O7GJkPNRr/5imBz7nOPU
         fk1imHCi+V9YT2SGKyS1/CNsFM0B5gQS9A6hMyvjOukvNHd+0otg+tFIjkx2gdcZHoue
         sCD6BYcsI/ArK2i+ucpSD1iYe0waFhXM22J9b+eX2OS3XT04KDvle4AI1AWiTFWfYeVI
         26eQ==
X-Gm-Message-State: APjAAAVrue+T13L6PRIMyzefmu75cVvTcyBribiIpBzRSUL2tOQN4WD7
	KnmpLCqw/cDHBDnouxa2bJgQXqs=
X-Received: by 2002:a5d:6744:: with SMTP id l4mr4156947wrw.226.1552009047642;
        Thu, 07 Mar 2019 17:37:27 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id a82sm7897490wmf.11.2019.03.07.17.37.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 17:37:27 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 1/2] staging: zoran: add SPDX GPL-2.0+ license identifier
Date: Fri,  8 Mar 2019 01:34:59 +0000
Message-Id: <20190308013500.27350-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190308013500.27350-1-jbi.octave@gmail.com>
References: <20190308013500.27350-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SPDX GPL-2.0 license identifier to fix checkpatch.pl warning.
Issue found by checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/media/zoran/videocodec.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/zoran/videocodec.c b/drivers/staging/media/zoran/videocodec.c
index 4427ae7126e2..468e5f33b8c9 100644
--- a/drivers/staging/media/zoran/videocodec.c
+++ b/drivers/staging/media/zoran/videocodec.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * VIDEO MOTION CODECs internal API for video devices
  *
-- 
2.20.1


