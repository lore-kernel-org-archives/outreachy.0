X-GM-THRID: 6746031998697996288
X-Received: by 2002:a54:4419:: with SMTP id k25mr5489531oiw.0.1570682972726;
        Wed, 09 Oct 2019 21:49:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4dcb:: with SMTP id a194ls468056oib.7.gmail; Wed, 09 Oct
 2019 21:49:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyWjRJKHt4KNACMklSrPrcxamCfywj3NR/aLwEm9v3VGJlVOeNGrGEO4YIvKLJFdOVnXjZf
X-Received: by 2002:aca:e0d6:: with SMTP id x205mr5859774oig.3.1570682971928;
        Wed, 09 Oct 2019 21:49:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570682971; cv=none;
        d=google.com; s=arc-20160816;
        b=gK25Dqt0hf8OtfREQUpDu4R68C1AqOoSaXlK0alskQ07YNF/GTPG/7b08Kfk1gdU9f
         AIVYnGq/B08loXrGCpqmd6F1f8uXC1Az/Yyhk2GTMFAZgNPFaAa3TvGbDwAB4m1Twxru
         D2csEobwCvg5XfRi5svKLubYLNBhyNcMfiBnbo3ipZ9vPUXo4IH1tIBy5YRhNRfXjDAs
         +cH4XQxu/qCX3SfIpHBgnzU+0ZnbSsA8TC+fduKP9R571CZrI2SplLl9uJOy94s8L1RF
         aFxyfnwjx8YM/pJSauZSjhNHLow3rl4RDYAIWISTlu/YCPGAmr+8jjTeP0cbxI/DjEbb
         2L/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=EW2+5LFnHdMStT1dkkpA3jxVK45XROxzbrFNtkIJRsk=;
        b=zJ/KjOvXbgl54LBHw4PKK0fbEOe/dKhDDmh5OVfkePw7uH1ZX67ByFy+pHM+dvEsvY
         gWG5zywAkX4y+7xW4rdFCpf/tGGcYIfQLa+HpPrlSBEsoObMPWZPo5tw4c41jSWzV60k
         v7k81Q0kBkr+nEiXUg9O+LAJ3EdybnUp4/VLOIpDVR52CJFUsIM6q5rLBM75NRNBFaO7
         R9XHnNIldk+bIKfgkngUj3FFvYwsEJus14DVWluIMbHQk4PFC1BhjyE3B3ccq8pl3Iq2
         fUJSDPfLrB1yap91CJi5th/lAjbN6cYRIPMAQw7h+JW6gP1QGf28ufo7u/W1dZ5BIB9i
         5evQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FH/TRfN2";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id i19si83826otk.0.2019.10.09.21.49.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 21:49:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FH/TRfN2";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id y72so3050909pfb.12
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 21:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EW2+5LFnHdMStT1dkkpA3jxVK45XROxzbrFNtkIJRsk=;
        b=FH/TRfN2aF35YrrTZyPN8RZZb7vzilxg7Zd3Jh83FAqN0WRCTvQrfY+HWd7wDUY1kk
         urVszhsRNOMkI6oOsBw/X3KGgW29MSONMet5cp/MVnP4XDuhS9WbQ2QAtOztoLqKKGJr
         opwJ8XeVqfCzE3kcneWuHLtFFW2UUqvwFFuZhGUOLjzhIXGp3zmlLouR+GH+lybtYX7O
         CRoKRRk+R13nKYRuLpgEsbsizt4r86FjnE6zuYhvlQCudx/pqnm8klejnEDD1Ejwhl1z
         6tuZZ5wuHtkIeHnoIp1W8Y1MNa6wJ4qqjymHYyRvFJPcUb3HtAqDczZ/0ospqZvkyF23
         bfFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EW2+5LFnHdMStT1dkkpA3jxVK45XROxzbrFNtkIJRsk=;
        b=PcfxAF+EUDYzXZZkryhDLTX9vEqBHh0iW8ehVteiFoochVwX6JY5fMreaLsLHnIdti
         sRXs+1JznF6v8oKGc/jK97wDIU+0SulaNqikc96+JNPmadbL8pTE+VVdVb0+ZCK8Dk4y
         9ufDO8y1miamSIS1NRaYCa2dttU1I4NzaPdvLVADuROBQZfFanslUn3+z9vw5D+jZEcc
         4PQHmMUTjecZ+PqgbcAbuk8r4MG0xZ0xinudbrAsJab/b8wTcUQIwK4OP1QmwvHya1YR
         mYtcDody5oRdjyNyTnPYjCKjUTd97ckGNPTYx1c1gp/ewJrXDIVj3gjAM+VZa27agzw1
         bpog==
X-Gm-Message-State: APjAAAUJXG35eqgohkpF+QCTw0uBivf1dD659BUZCKRIOa4wWf1KAXYA
	Y48xa3eWYfFDyft5xYeOgHmJASzpUegHkg==
X-Received: by 2002:aa7:9907:: with SMTP id z7mr8102923pff.133.1570682970937;
        Wed, 09 Oct 2019 21:49:30 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id q20sm4520090pfl.79.2019.10.09.21.49.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 21:49:30 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v2 0/4] staging: rtl8723bs: Style clean-up in rtw_mlme.c
Date: Thu, 10 Oct 2019 07:49:04 +0300
Message-Id: <cover.1570682635.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset addresses multiple style and formatting issues reported by
checkpatch.pl in drivers/staging/rtl8723bs/core/rtw_mlme.c

PATCH v2 of the series corrects the "patchest" mispelling in the
original cover letter and provides a clearer subject line.

Wambui Karuga (4):
  staging: rtl8723bs: Remove comparisons to NULL in conditionals
  staging: rtl8723bs: Remove unnecessary braces for single statements
  staging: rtl8723bs: Remove comparisons to booleans in conditionals.
  staging: rtl8723bs: Remove unnecessary blank lines

 drivers/staging/rtl8723bs/core/rtw_mlme.c | 157 +++++++---------------
 1 file changed, 48 insertions(+), 109 deletions(-)

-- 
2.23.0


