X-GM-THRID: 6754760383787958272
X-Received: by 2002:a2e:b014:: with SMTP id y20mr317048ljk.223.1572915845818;
        Mon, 04 Nov 2019 17:04:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:760e:: with SMTP id c14ls934384lff.13.gmail; Mon, 04 Nov
 2019 17:04:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqxVJYt+xzbSYUnF5FrK8jask78mhdXqtR6AUW6fQ+aWOcvHT2YiZrtXRrFpBODhwfPli7pM
X-Received: by 2002:ac2:5bc2:: with SMTP id u2mr18315764lfn.173.1572915844914;
        Mon, 04 Nov 2019 17:04:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915844; cv=none;
        d=google.com; s=arc-20160816;
        b=ceZfNt5h38oFXlUMfd0amCFsYNAUHumyYJm06Vl+X+MorsGuu4FmSxv/zXvZaSfPSX
         VYUxeoNJhjutTPhU984B1newjXJ1GGHowgqykcoyeAYp2gybamWUhrx69Cc4IV6vMgJK
         Rplg5+YOHPKYgIfUk04EK2NIspgDweGo5wDqZ2/jP0oJuGgHEkfZg7WTBpBvo7ksoH9q
         kEO5MijMfXyLXl3b9Z/tgXMaxX5Z7mx3YgsECitbe4333V2cdyHoQWbW3Xc2jjrNvF1u
         6Dis47srYhCklJjV03jnnJNbERhZKltJYHZcI/LV83MasmToRVz+sP2u2rojGX7jiRpw
         tDbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Xah9TA3iFjlwJKzVksM/AXXdocV6hxwzzRZ9XCcQs0s=;
        b=WkFNz9stbroJt4eB7iCUBybh0eA9LW8XRXyh3e/tE32Xy+iczVrgtFjj5K7uEq9zpj
         aiD0k2PL/SSjBXHGYt/x8iWaUOKLXjlqAtzGByIoA5lQCoMeLZOjODhYpF1dW2doMOvZ
         OfZkoesQ+dmEowo31c6TP+m2XtPZjQ2IDUYXTg0+kDHbZhkhZLw2850fUjGFhwMJWXXC
         71ThaXIOTpU2W3ohRAGD7NvJpYFhoVgwXycRcCVuSpo5kA9PuvqidZD2UT0rqnlCurfY
         CZa6oMJxTUbSYA1BF++INXvYbjiVbaMeADT/P0sSzcx8FXY9W2MZXHs6+u9I917CiUiV
         tFiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oXjU0AOq;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id j14si1063676lfm.2.2019.11.04.17.04.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 17:04:04 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oXjU0AOq;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id q130so18108775wme.2
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 17:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xah9TA3iFjlwJKzVksM/AXXdocV6hxwzzRZ9XCcQs0s=;
        b=oXjU0AOqVoiPIo6hYumWxK+TjhzQaX5ncEM3WT7ZMhY5Ac1OzxrH0C8LQeMr30g6Zt
         JUGh94wBDzRb1bcfFlOBy1dSsuezjVTwtrzCTQ8RNTyedn/franPOXwJleZm8Q7ynHYy
         C0NGlYi050M6LUUPPRuuTa4hHG44J40hmd8WE5QB68hNB+6546fgeQNb8EIGhgiferF0
         inBWARaZMaNd7CR+2MCeZANFeR26GARF5yw0/LUEEkxhfO7tG2tgDnRvsJK6PmjI0tRi
         BHMJuJhWLK4mKYl60sCJ42k/hYS2Jta24EpStUULreW0x7hX6Os8y0oiWsKe3k4nJQY8
         vO9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xah9TA3iFjlwJKzVksM/AXXdocV6hxwzzRZ9XCcQs0s=;
        b=XiNf1/L8KHtVxo5XvTYpCRMwYwZoHxYnHjmvnM9Y8boJsjeCD1HkInpy9mneSdYvLv
         d2kACGovDmwBL4X56yMy36kbbNPRilvEVx2qH4D7RTsFMZ5ApUJ10yJk95O6GEKsZQEt
         FjToH7i1K+vxidkanrW4oDySlaj7wGoU6RIaVJ4Gf1jDogmhipbTPtWD1Zq1tN54MRJS
         azTTi02gQnOtxcjyB2HjmSI4+3+b1jTvQhF6Djk6PTGcyZsd6gLfNMSfBDhPL0bpdRcG
         GQmEe/2xl3VyX+oj/9kb7oI1f1RhXJB5BT8m1ySGAVyZiIj0KLHjIIpr9EKKUKZEZrpF
         BHMQ==
X-Gm-Message-State: APjAAAXAzrtZwQo0Ro3IapcXBfD3JYeex1N1N8X3LTsBS9Yb/gQFPoEs
	JTnxab0kySAz3cFKTY2gBuPwtQoONoUW
X-Received: by 2002:a7b:cc0c:: with SMTP id f12mr1603537wmh.40.1572915843979;
        Mon, 04 Nov 2019 17:04:03 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id t29sm35903399wrb.53.2019.11.04.17.04.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 17:04:03 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Boqun.Feng@microsoft.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH V5 0/2] staging: wfx: cleanups
Date: Tue,  5 Nov 2019 01:03:50 +0000
Message-Id: <20191105010352.222479-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes since
* v1 submits changes with no accurate log message and title
* v2 improves on log message description: remove the word "fixing", rephrase
log message and  title.
* v3 gives accurate description on the changes and reasons behind.
* v4 includes a log of changes done on each version.
* v5 shorten the subject line not to be idential to commit log.

Jules Irenge (2):
  staging: wfx: replace 0 by NULL
  staging: wfx: replace 1 by true

 drivers/staging/wfx/queue.c | 4 ++--
 drivers/staging/wfx/sta.c   | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.23.0


