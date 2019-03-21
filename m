X-GM-THRID: 6670934867500335104
X-Received: by 2002:aa7:d954:: with SMTP id l20mr3495706eds.156.1553198058226;
        Thu, 21 Mar 2019 12:54:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4c83:: with SMTP id q3ls1243768eju.7.gmail; Thu, 21
 Mar 2019 12:54:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqygyfhP98t+cFmb1nL2Esor8PpuLsLI/LAwL4+aW5kLgbY1ftf8Pp5cn/bQI9OExoZCcVm1
X-Received: by 2002:a17:906:1853:: with SMTP id w19mr3244566eje.75.1553198057281;
        Thu, 21 Mar 2019 12:54:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553198057; cv=none;
        d=google.com; s=arc-20160816;
        b=Aykat3OzwEf7cV/p47ZOI7egpZn2YsWIEIck1MC/jAYSbt2NikO2XY2oWxzAkrWv4B
         39c2GjTTl7pFDZ0SD3qflTKYCgwiXdG/zgznJOn9b2V8NrEoZMjrNlktVkzP6SXZprLV
         RD7UkG4ReY5jz1v/lsoMutIQh11M6WqqvyaPYtv4Q7Et/VZfHGsKhqar05d80TK8/qdV
         NI7P7pxbjs3XxboFDtp6RgD4r3cvnrhw7Qloz2j4rOrV9qe9uK7puH/05fpIBAo5vzdP
         o9hwwC5CD1D8CyoCAahe+1hNrC+lmcV6U64eQaYJvPdehJAVusFLRdQ+oOVcGgebqwef
         4j1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=bLRQr8h860AnO0KgGpFj1U1TTpu4WfW2zC5lEmP7e7E=;
        b=OhlZbL+3OZ0wXbCCYwg8EUpTgIT1enrFkurcCjXne14B+3misvgvGDdBBHy4r6/pno
         qfnpQZUY1SbsSO1y0bA1bkeuaCaXLZkpXj6RoRHNds7CkyR2va3Ji/YhvywKOUyR4FET
         pwB1Qih9REt8jYDLKmkECTyDiBqgDUFm30+XTS6bZHyUqv4doyfaOwshMOJTC0XWWhqh
         moMvQCXKcbLgHVmPvnF8EdD6iFClcgb29kHnhElq3tCk7Kzis0SfZPvDWtco0z9wcJLf
         qSmWyCQe52koXbVtIZYMXSYuwmZurJOhGJu9APa9dMn3uCM75jp6e/0SBVoNHrEehoRO
         27Bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qrKFAilu;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id i16si259478ede.0.2019.03.21.12.54.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:54:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qrKFAilu;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42f.google.com with SMTP id g12so8012605wrm.5
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 12:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bLRQr8h860AnO0KgGpFj1U1TTpu4WfW2zC5lEmP7e7E=;
        b=qrKFAiluRewbZB2xUCC9D0+8Yn+sHbJtmM1Z1NRNHHWeUWam7gBSIoqtmqtecNPZ4U
         wIca+lHF4t+spZYjbmJ6so3NOvX0HglAhxDcvLY9m9RANrCukLaso0MdBfSDnZb+qwWU
         FSjxWf9qHRlGVtCgPwB8fSuaIV8bnOh+I3rE6LJznuLdDaUsiWNPLH8pVw2YVZ+CMSRm
         oRQQ/g9WPrEwTv9XCRxpTJ/dyeojviuGyGFtNgVZpjCMbiG/5cvnM+F82x1t5V5Jl5s7
         1IFlXr6LE+Fwj+zoDJYLKDOgdaoTBajmhP5Qds+0Mk5s+wTKm2XebGd3l+FplXNweIYt
         7hjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bLRQr8h860AnO0KgGpFj1U1TTpu4WfW2zC5lEmP7e7E=;
        b=rYtFn8QnmdF8RraPcEzM1urrLoW6EJMG9/VbwwMmYqi4Iy48mNbSr9or2OaxY0YJTa
         222VA54cCANGnX1tKFq5JF1+VCyFqfjBByRtgj3/PdDm/wir79eOoMYhWocIV60Pmkpk
         Ai+HrTdP4adiqDI86clqKTsDmS0rEKLytxiio9HhDIFgfi0Xs8Qa1Ksz3er4aeZIT8nw
         q8NMIkKXP1SAJrsYueGuzVhtd/4XI99CdLPUplyi1wH0a3VJLir5RZGkllyt3JThM8Uo
         f/s3L8XP6Cn25PvhU8pHLoxAUNo7azn8RWaxGnotyfZuHUd/v4dSn6RNVMq+qdBdBuaM
         gOGA==
X-Gm-Message-State: APjAAAWs5eDLJTf6DNuYvPUJ+MoV1RD3gZ39JfPQMvsSUO9l6LwXugS9
	A6seVNA4O+8tHQhLaXvtRA==
X-Received: by 2002:a5d:4047:: with SMTP id w7mr609697wrp.255.1553198056910;
        Thu, 21 Mar 2019 12:54:16 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (host86-151-41-196.range86-151.btcentralplus.com. [86.151.41.196])
        by smtp.gmail.com with ESMTPSA id y1sm6423805wrd.34.2019.03.21.12.54.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Mar 2019 12:54:16 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] staging: pi433: line over 80 warnings cleanups
Date: Thu, 21 Mar 2019 19:54:06 +0000
Message-Id: <20190321195408.30440-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This v2 series improves on the naming of the patches 

Jules Irenge (2):
  staging: pi433: break line after comparison operator to fix checkpatch
    warning
  staging: pi433: remove empty space to fix line over 80 characters
    warning

 drivers/staging/pi433/pi433_if.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

-- 
2.20.1


