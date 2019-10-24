X-GM-THRID: 6751409971660849152
X-Received: by 2002:a81:1d4:: with SMTP id 203mr7400061ywb.173.1571935129211;
        Thu, 24 Oct 2019 09:38:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cf05:: with SMTP id f5ls1028150ybg.5.gmail; Thu, 24 Oct
 2019 09:38:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxoU3QSXB8cXSxVrOdnP36jktchsYdB6l4sODHfilR6o/OHq9jhGVokv772GDbOAD9W2b0R
X-Received: by 2002:a25:5d4:: with SMTP id 203mr11515969ybf.181.1571935127663;
        Thu, 24 Oct 2019 09:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571935127; cv=none;
        d=google.com; s=arc-20160816;
        b=wBUpoUcSJscewDJTin0X8dD/Kf0YR1COaWOZa3jWHlqvqClaLj9wpTrEsh7kCJUYlU
         QZsntb2cAifpFYj9nUhHRkk+Wfk9VEriSTvqfSpW6Flsa/RjhIZRPK4BwN8P2mNBJFs8
         EkEpnQeMTNdyEHf/udQKThniLDKGlOoYy6wowIo+AC4+wOrrAk/dEInBigW3QMPaQPE7
         q04c5ohlgY06FatN5UfOR9k+d4xv4OLjh6gNdDt2zV70NgKPLitmo92B8mi7CvBD+OLm
         W0vmxdavH+xS2g00kc+LK3Op24LHg0t1lKkEabbs4yueyflygyttoPrpzD0aTGO/i56q
         VKvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=l2yusJk1T2eAi0Mq1ot9gMKxrwCuHF+Xt6FpV+s1S4E=;
        b=Z7gTu+jJ9+rBqNAE8h6R0nQlcFn67DnPPIeBrPVGaK68o76rU8pD2bAQS/B0jr/RQY
         mDvf7I65gmBrMBq9ORlmQTNYgcvx5k5LHILXHp1FqUur2D0Udddh3LccouoTOGsrIliQ
         MtRYQs5TazN0hKzzt/mlr8TFAySM/QKIC9pA9prNX9VrEfXJWnLzSvDnXC23DJpvU5J3
         w3cN+vI+6MqBrWpaBI1/+KF9XRkF4IyN1xw15tF8EdV+89vJpRmgKq8YeojAte74DcRQ
         ws6QScyNRFzEaoA2HhILgWXeU1BgieV12eC8OW+mJSNpPsaMiN/mVO2ix6NmNseWS4ay
         Aq/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=adQ5Otol;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id a1si1412170ywh.3.2019.10.24.09.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 09:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=adQ5Otol;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id c17so35781259qtn.8
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 09:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l2yusJk1T2eAi0Mq1ot9gMKxrwCuHF+Xt6FpV+s1S4E=;
        b=adQ5Otolw+zTWgesd6OwBpQcFllS/xFs0LJdZLldoprFN9NEqkJSjKteCzmP/uH1mL
         ZZwMZ8844zT4GyV8jjYBoHDKWXUrrnnbdUwdyy/+Gavs9Y8mAiO1jE4tNy+tIfchX5BA
         mVZgWcQRSKvmJVIedrdoLUgQhXccIPBMQYV/A57ds6OSNCYfeNMkSGyuFj7fgqUDEQW/
         m4//xCZIo9igPHVDuUVBP33XJK6C/B350WGqzj7Ki2KupN5cbWfCLZ1kp7ftYLY7+paX
         o4dhuRaNHGqtyP6nGwGgwJQLIcWx6CNF4diBPAjJtvkRqRVOkeznmah7k/mhTsYgLjSi
         U/JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l2yusJk1T2eAi0Mq1ot9gMKxrwCuHF+Xt6FpV+s1S4E=;
        b=ftQMjBw7IaEbEKiQHJ7tjYxFc+cLWjZ5uRrb8g+9LvAeEUUJmBrMT6kaO5qbX+QgMh
         xPc4WW8wktjXFz84ZddI+UHaWhu+jvCMZ3GRPjHvmCcI8jk+4CCMJNvPHzqvR0gyNu7v
         LqMWSHECh92q4k5+NZkvG5Poi+Jgp3ClI/X8qzA6NdHDPjpZiCbZ5g6VsCd84COnLTvS
         hRLSOtdYm1LkFGFDf3dMxcMOrCSoOauVpf9SFpCjn2FRXg2P8KyduTfM/aELHeRhTZMF
         vpeZsScuTAdNfhAL+YpFf1K+uJKZvOxopEalNmXMHkGnvGxC2cJoP2RL5jTMCdM58HIK
         3GMw==
X-Gm-Message-State: APjAAAWSiPb+OnOAEX6cSF+vOJmSpBWE+LOt6SU+Zl2YEU4OWOpX8cng
	VEpPq9Brrr/qN3SZ5jqdmPiFpPHHpok=
X-Received: by 2002:aed:21c4:: with SMTP id m4mr3562060qtc.342.1571935126820;
        Thu, 24 Oct 2019 09:38:46 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([201.53.210.37])
        by smtp.gmail.com with ESMTPSA id l15sm14660121qkj.16.2019.10.24.09.38.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 09:38:46 -0700 (PDT)
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
Subject: [PATCH 0/3] staging: sm750fb: align arguments with open parenthesis
Date: Thu, 24 Oct 2019 13:38:19 -0300
Message-Id: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Alignment should match open parenthesis"
in tree sm750fb

Gabriela Bittencourt (3):
  staging: sm750fb: align arguments with open parenthesis in
    ddk750_sii164.c
  staging: sm750fb: align arguments with open parenthesis in file
    sm750_accel.h
  staging: sm750fb: align arguments with open parenthesis in file
    sm750_cursor.h

 drivers/staging/sm750fb/ddk750_sii164.c |  2 +-
 drivers/staging/sm750fb/sm750_accel.h   |  6 +++---
 drivers/staging/sm750fb/sm750_cursor.h  | 17 +++++++----------
 3 files changed, 11 insertions(+), 14 deletions(-)

-- 
2.20.1


