X-GM-THRID: 6754760383787958272
X-Received: by 2002:a5d:55c2:: with SMTP id i2mr17559891wrw.176.1572740367166;
        Sat, 02 Nov 2019 17:19:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:82:: with SMTP id 124ls13504757wma.1.gmail; Sat, 02 Nov
 2019 17:19:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzpSvzsnclMOaBJ9d5ZRpVvxdqPWVypk23BCkkhya9/4LzGGeQJVbJhn5XEZL1r7qZY/PPL
X-Received: by 2002:a7b:cc86:: with SMTP id p6mr16827056wma.116.1572740366288;
        Sat, 02 Nov 2019 17:19:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572740366; cv=none;
        d=google.com; s=arc-20160816;
        b=MCoAN8XN1ii2fns6uP5MoBryTWg4+Ut6WkfgJzeSQem/8Zj6WDsoLIfBehARhFIMe0
         zqhXlWE8w8UadGiMJifsxssTj8aNSqHDSmDJMpTU9k6muxD+0uLLxtPXZpSxl4JTbn/L
         mGvcc6XqS+fhWFD8IPUMRYUoBIxSgaEmep89Pxnfr1AC+4Rp6o8SyaZycGQpcZWtiu1X
         1qkTMg8tMIQqtABCH5wKu+s3Y2f2yliaSBLxtIU/RxoSf6BDiVtvNW1/6SoFEJp0/tzd
         KQCSMmTvH4aqztVOLBSEyXzeeNM70lasEgaULdn4nkXKFsmqjdi1DtE4uavaD3JNhGsb
         +hqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=sOwBU1ZVZpW5brXX8SLRrPy4DLWQ7lyFKMXmtaW3Ol8=;
        b=TnxtthC0/XmwNm8iybA8CCdoEI5z45XjMFkXh4elFPwjmezwW6dbBTB67xtXTGfWOM
         1Bw57skecESHuIHrPPPM2EeuQhVzvDE4oHZocjNRNVwMl/W49OBJcj+F816oXEjiyB8y
         lYB2i1Ikp4Fdngsbz9KhEV/lspO014Gh2EL2dn9JBSYaWAIPuWSsZENBZmSBY/Ke94WL
         Lp2Wp9Ckn7ds6x13vLPqEpt+ayRAJtUO4IZ/4JLogdaf4QLlYFdomCC2wVvSp/Z23Sh8
         s4pOmKQ3w4oj43vlmj+W6ZEuhvzJND9nkGhdhKV7zLDBqZASBuBkxcUokGiTayEIs3Vu
         C9WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p41d6Uoh;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b66si488398wme.2.2019.11.02.17.19.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 17:19:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p41d6Uoh;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id o28so13161052wro.7
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 17:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sOwBU1ZVZpW5brXX8SLRrPy4DLWQ7lyFKMXmtaW3Ol8=;
        b=p41d6Uoh49RmsF4xRSx+r80LlJwQDjjzH0UQl7Nc0++Hm2e/BKgLPO7U4wYXTsaDXo
         2AcFVBbVTfL3KbInEFGQCL0C10wYFV4YtMG4JOfV+X0En6BDAwbBuPCdocPtpG/iwYEt
         mWFmY7kzVRHXAFn01wALGFfqBttS/Z+HQMQMrbhApQCrGnDWQgNFA6NrJ6m+lx8Bw2wY
         cvg/z66tr9LCg2a7sdUID8unT2e9e9UYJQ0QeavFfaP3Uikij85hQT1mb0w5BTcHgG9A
         HsD2UsbltWVsZrOP5Zi+2sLJNslR9/Uj6QNh8IAVBxS2mRu+ZsEC5RtoGCZTqQmKg4cz
         5APg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sOwBU1ZVZpW5brXX8SLRrPy4DLWQ7lyFKMXmtaW3Ol8=;
        b=OxmVT6StuOFhIayr4Ji2uJnueMZzX/ombk8Gb3hkj4PHEAc8+nYICOkHvicK12OCpM
         dBomUUykwTy4kYRDj84BD0zGy1jjyPShBwxU9nCTneue5tvnY9C8txWtXV5GoxLly8m8
         Yvv5yvmoYHOHQqpvSXhCK6aEiRo1FCca2aKNfzGOU0lKNuHfWEEjlW7t01+32afO+Q6N
         jTdq7qgpuHm0RSfeikrCYes322ErllyI9dMy0Fr2K7gQyMoChhwndkH5SrompsD0B+do
         3fDJDzMZbFzTi1p8UuX8pA3faWzes/Rvc4C4+9u6PRYV/JyXzXEta3X5rPE4JgUE5FkA
         66Ow==
X-Gm-Message-State: APjAAAUM6uHubY6mSNCIsOj6Tk+J3kX1kWNkyAlaqcAtZZACC8v6qMJM
	YrnZDPvan+E3O+X0gT5ne90f6Px7eguS57s=
X-Received: by 2002:a5d:4f8f:: with SMTP id d15mr17757727wru.126.1572740365680;
        Sat, 02 Nov 2019 17:19:25 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id d2sm18237934wmd.2.2019.11.02.17.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 17:19:25 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v3 0/2] staging: wfx: cleanups
Date: Sun,  3 Nov 2019 00:19:09 +0000
Message-Id: <20191103001911.10066-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Jules Irenge (2):
  staging: wfx: replace 0 by NULL as the return value of a
    pointer-returning function
  staging: wfx: replace 1 by true when stored in a boolean variable

 drivers/staging/wfx/queue.c | 4 ++--
 drivers/staging/wfx/sta.c   | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.21.0


