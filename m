X-GM-THRID: 6753034664415330304
X-Received: by 2002:a63:ff66:: with SMTP id s38mr14448753pgk.84.1572360930848;
        Tue, 29 Oct 2019 07:55:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9a02:: with SMTP id v2ls6715224plp.15.gmail; Tue, 29
 Oct 2019 07:55:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwkKOQa1EmtQnYlEo3xnz08Z6K1T7PsSxDUc4RrQhkB1qJAef1LfhUy/d32T4C8H0z+HDvK
X-Received: by 2002:a17:90a:a401:: with SMTP id y1mr7361152pjp.118.1572360929414;
        Tue, 29 Oct 2019 07:55:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572360929; cv=none;
        d=google.com; s=arc-20160816;
        b=z8lvUsOJ/w6Kt2ZlE5t2GkePlCVrLJsUq92KURUvUl2gz3+xY/YF3wESsaAmWAeznD
         6WEeCoYGdLb5+sg+aCVr2mYuk+2OxlSPpI0j137TBwr8scOdod+s/nIIXYJNiuErv7pA
         a285qaidaRTUBeF2C3dDwwB/Y1jg1yProEEMyAVW4rcr/gvXNOLn4TbZEvhHoUHhZDwI
         CiByAjng2SNeuCFSxqBcGoI/FtGp62RfW7cjfIBbqf+QqMchBSkP8pKKIdhV1lTJqWfa
         9u/tOEnbGBekOBthXWmp03usLNbsRNSHqT2otIRh4omynFdzWnGVqnKaubUfU4sRiphN
         6uXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=/vP/tPXtiesV5kB5mEzKaZW6NBZ7crh1MzX1nomOw+s=;
        b=RdA2HlJ4naK8PpqXgjO/1K0S2zjLPfrJMNIgyc68Mffi3fcGAmXb++NFtHolAzTFfb
         qCrw+dxuSuaAjm8TA2PPcGGGh9Xx1Dj9w40Xcig5s9EhbcfyWUQGzdxzN3RhXXItnj5F
         SjC2bmwYAjY0ZNo2vjGp/Cn74FrQINQX3qi0wpT5bb33kI/DZjys7mvJMk3S7srtrP0V
         YF2vmX8EFFiPniyB5eBVGXIoL7arPZUVwahUrNR1EBtX5vsj8CjDsRNIDgSdh9gMaX2I
         z//Mv0C5aEI6f67EAsf85VK5Om56YLwNex5BcjQLTnJtnjE0Hxi6IgzVzEe+PYmzwNvy
         d+Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dc6iR0wL;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id x10si148095pfi.1.2019.10.29.07.55.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 07:55:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dc6iR0wL;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x835.google.com with SMTP id u22so20549803qtq.13
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 07:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/vP/tPXtiesV5kB5mEzKaZW6NBZ7crh1MzX1nomOw+s=;
        b=dc6iR0wLBze6KXkgj/ttZaCRQWairyeIVKneMK0++6eThqhImkw6LTWltEeYiWefmM
         PRUg2vohcd21Dcn/nP35r/GWn3Pkwp0o4sj2lsqt4UWiyBrm+NsaBqy+oj2MYfiTcNxS
         FhEqZcJpLHks2cWHRZ5DrjDSP4WzVLfC9FJeU133fKH8/7htnhHe4N0Rxey++O9fFwjb
         tinQxNnUA+kjUD1lvh9XvFkcI1ZQV74GUVjE3YTyZTTrYHiZZi/jTz37VODUVxpO+zP0
         nZ1e/z2+hkjdjVAeFRU0VPrefIGuLJEBE9EvilcSfegq42CwIWgSl6lyuaX1kpl51cLW
         5D8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/vP/tPXtiesV5kB5mEzKaZW6NBZ7crh1MzX1nomOw+s=;
        b=KmqcTp8U9MH1d+Hy8MWXZQ7gUU95Ya5IkSdf7PwzG0OcoZ1R1UiY/giNCOcbPiodE3
         +OvHmhYsMRWV7NorhAjwBXbMnWh1clbDpJmJXsPrv+P5628LzIacxgYOI2rAix0W4gYF
         JBF/GweVxSauPRLBW1fI3ccTRGAVfW4gHtvyFNwzOfKX1J25aCEw/3SSr6jumWXq2O6+
         rYNXThYRFTWllgcZqEZRX3fLlJCXv7rKVWnZTlbX5osti4SbookaUyUPFGNMV318cipf
         /wbX0rU7OJdil0rInVU05Cc4WS/eWYWvTpnaTGXbcehJQGXGN2k/qbyEtQGvrGqFKdyK
         uu2A==
X-Gm-Message-State: APjAAAUPLxrKe44fWcy+khnZe0+b/qyd+MWtBzoZGnhbMNzRRyr4v7RK
	GawCjCZEDyoH1fpVJo2Y9k2UjHGrtNQ=
X-Received: by 2002:a05:6214:70f:: with SMTP id b15mr22976629qvz.97.1572360928363;
        Tue, 29 Oct 2019 07:55:28 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
        by smtp.gmail.com with ESMTPSA id g17sm5978069qte.89.2019.10.29.07.55.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 07:55:27 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v2 0/3] staging: rts5208: Eliminate the use of Camel Case
Date: Tue, 29 Oct 2019 11:55:14 -0300
Message-Id: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in tree rts5208

Gabriela Bittencourt (3):
  staging: rts5208: Eliminate the use of Camel Case in files ms
  staging: rts5208: Eliminate the use of Camel Case in files xd
  staging: rts5208: Eliminate the use of Camel Case in file sd.h

 drivers/staging/rts5208/ms.c | 86 ++++++++++++++++++------------------
 drivers/staging/rts5208/ms.h | 70 ++++++++++++++---------------
 drivers/staging/rts5208/sd.h |  2 +-
 drivers/staging/rts5208/xd.c |  8 ++--
 drivers/staging/rts5208/xd.h |  6 +--
 5 files changed, 86 insertions(+), 86 deletions(-)

-- 
2.20.1


