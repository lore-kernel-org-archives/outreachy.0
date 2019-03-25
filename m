X-GM-THRID: 6672385186959720448
X-Received: by 2002:adf:e506:: with SMTP id j6mr9163602wrm.41.1553535737911;
        Mon, 25 Mar 2019 10:42:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f8c6:: with SMTP id f6ls183069wrq.11.gmail; Mon, 25 Mar
 2019 10:42:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqycqHIcf9N39LDqk6inJMvwUVKaWeW+a7gjoMfw+tu63jRrNQxcix3ftb86S5ckDWEZp6Hl
X-Received: by 2002:a5d:544a:: with SMTP id w10mr17152161wrv.276.1553535737033;
        Mon, 25 Mar 2019 10:42:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553535737; cv=none;
        d=google.com; s=arc-20160816;
        b=arUc+jhL143qipVo4TIROCFLLHvmRbX9LkRjSNCxK7Ql+5k5JgQAGuIl+ZZnfqZbp9
         A9dvfCJ5abnVerezy4841/Qj7TxarGfdC6uBoFG589aL88xfpebACcqdqCCh3oQoPvZb
         x6+5UYcvTcIXHrgRa39L2eYJY535WsKSWFCp5mYkOGkd7oXcSymZTF/v/Fau/3xzjwV2
         ctmMW6uX1I5l1VzigEEsSEW7JcIRFekNXM5oRxy3DCKFuq+zRcBunW9dpdg3LHyCOx4k
         gYDH76/lE1Wc8gtlVwklKS4PAt0WoIf+UKCoCqd3/UjfPaqYJefVKB3w02iV3dY4ivrW
         jLlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Amhtbqbih+TqvfE4PSiFzrEgyimw5QUSNqIGRfVlQLo=;
        b=FSITapbMRBHYUHmtTJo8mOolF/4522rEJl5CjbVFtRvp+Fbs20leVmARR9cj1szbUm
         cpysf6WO6mKfocfCX37EEYxBHupgGk/zeei0kM4Rft5AxeERJjSSoJl66SJe8WcP8UMW
         X0AB/4Ci6NCeDOdXk1PnYPaiY1w4Gnrg6A6tctFRTDCthFknsaxSFqvrPDRjguHbnTq5
         Y6Prdjhm+R2nr64dAk5mjpKn4laac9TKWTXmTtrnfKO+43yDEln/TnoA0gzIEwZxqfmR
         DEpMYF1r9ftMG2JdcEIEJUHf9WCs5RIiLS1fWNXzy6AIuI8kbGltVHKdCQIdIirlZIJ6
         yjZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b/w3+DPj";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id n65si74053wma.1.2019.03.25.10.42.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 10:42:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b/w3+DPj";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x430.google.com with SMTP id w10so11220959wrm.4
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 10:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Amhtbqbih+TqvfE4PSiFzrEgyimw5QUSNqIGRfVlQLo=;
        b=b/w3+DPj4+1R3UBs03OEkRRWBjniaUXWEF9pGke9LCuCUgedm3fcpqlvuMQgwaxubK
         CUa3nx8isgLY4BL80X4fL0D7qbW+mNtYN/vR7LtzH9kOdDrQtnUVoFWiVCIqv1Cfk8go
         DTNlkvnhqw08MpqXfrnyYFcjDSBh5nFmjeIAVPdRQ4X/QyGr8MDcVAOXB+KCfTUN4yju
         jv0e1t/EJaU1c2i1Bf0jqi37Y2XIadix8+5z4eGOqo8e7ftwJaYGngHhHhjpY8UlmMt1
         pA3eLFYBp+jO1aHLI9P43uMI6PSFzJYuWi+s5OEK7ZoiFw7kpLY564jXIGidblmXAPu5
         M/pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Amhtbqbih+TqvfE4PSiFzrEgyimw5QUSNqIGRfVlQLo=;
        b=ZF9AfYmITkBiMdpI4d/zvC0XX6D8PVBuBnY097xRByyHPwCKu2ZhUCzvRTuqLtyUPC
         AnZL2J1g6i01lLRQ7ov28z7KyHeHaMXTCRallvlfQTn7soy/YOEkbcJuCQyHnsBymSCv
         6OnbhFFMV550pg/L/Wolj+qL8HUrn3m8rkzbHKt1fD/YYDHiksa0KvXNeH/r9+CFp4M+
         O9+HRqN01gL05C0ZtNvQssaAJM2QwNziyhQyyhtqTuKVcoNlKUO1vcfIe9l2r4/yzdtC
         J0aaL9f1mDRS4/Qwm2K8KEMziU051TXQc4znlJGVGjPVHEIFsuHLtqumwrcaoRe3dFHx
         YCpg==
X-Gm-Message-State: APjAAAVMrK/jl2P6MPKCUKppQkI8Ou4oyyRkgIZChoKSsVBcOkoTdCo5
	TMLPF1SMb20y7a9AbW1BIg==
X-Received: by 2002:a5d:6681:: with SMTP id l1mr17517866wru.186.1553535736711;
        Mon, 25 Mar 2019 10:42:16 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id y3sm11630524wmi.27.2019.03.25.10.42.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Mar 2019 10:42:15 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: mchehab@kernel.org,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: [PATCH 0/2] staging: tegra-vde: SPDX Clean ups 
Date: Mon, 25 Mar 2019 17:42:04 +0000
Message-Id: <20190325174206.16626-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This v1 series add spdx license identifier and remove unnecessary
boilerplate text

Jules Irenge (2):
  staging: tegra-vde: Add SPDX GPL-2.0+ license identifier to fix
    checkpatch warning
  staging: tegra-vde: remove unnecessary boilerplate license identifier
    text

 drivers/staging/media/tegra-vde/tegra-vde.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

-- 
2.20.1


