X-GM-THRID: 6754760383787958272
X-Received: by 2002:a50:fa4a:: with SMTP id c10mr6578779edq.51.1572804814568;
        Sun, 03 Nov 2019 10:13:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6a4f:: with SMTP id n15ls3242964ejs.0.gmail; Sun, 03
 Nov 2019 10:13:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqwFSakTLhzPuW05wW+krbOoDSEl+q5/aJaVVM2sGNyq9afCEdawJU1tD3oQCL3sp7ykw40e
X-Received: by 2002:a17:906:488c:: with SMTP id v12mr20069717ejq.290.1572804813771;
        Sun, 03 Nov 2019 10:13:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572804813; cv=none;
        d=google.com; s=arc-20160816;
        b=OGqFo4M1lR5Y9A6cDdZrreUi530ouev3pHeBYWsmFwsleMl36FGlpMfrdd/2sEW5Jz
         gNDSe/qcHkm9rD4Rn6/is+OABIgt+SVUQfI1anJjQvzFrRkdPneKjcyYL3si82rDlEUU
         9NPPlPD+5hTI8iCaXEYC4XTc1mLo8fLnycyt8Vi1IWGo+zhsgbSZzsbwOdM0j5CkeIz5
         0GJY5LuLBnhtbX9yysTBWjJeqbfK8tAoYthARTsyyAmCpd8vJT5A00POJ6THjpXOpShL
         xCv046IW8ApwUEqUeyKMRFIQ2NB5sdNvNlaqlTZFMrsD5ZTgtB548VqUK4Ib1ekXLvpn
         mjOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Xah9TA3iFjlwJKzVksM/AXXdocV6hxwzzRZ9XCcQs0s=;
        b=YHOUIzxqMyD+8JKDozOFZNEW00GSltXF0/t5uXLhgxJT856SnhGrN58T9pPREEhr/v
         TKrc2NusTUZ9mcDswBmzIn6acNeXHsHrh6FOfpevE52mOkYCqAqIh116wrphC5fzMjnS
         VPVhq6wqmpRQ/Ky4aybwRz5kn+U7Tk2UJO3tekUFFtPezBw6G/DQ2+u8oXjqej2MXopD
         oYjVRPtUYPZEt86HATLADyp+keMyA4FRiD7mjFUOB7ka/aI2ApmmJfhyUCgRr4yH4EY5
         xjJZls/KLP/v40ssTivPobg5iAH1fV8QqpRBb+OzVSyEtW05SCMA7rhEu3I+7ipCm88j
         ibmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jVYOYAut;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y21si1011535ejp.1.2019.11.03.10.13.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 10:13:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jVYOYAut;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id a15so14548954wrf.9
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 10:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xah9TA3iFjlwJKzVksM/AXXdocV6hxwzzRZ9XCcQs0s=;
        b=jVYOYAutLeGYXoun4P18l9yrUshAzkNmkq6qmOKq0L0OIFqfZ8Gy46c9DNPbdwQI3z
         WBCyvFshO2j9DgueWs5K4tFCXxhaSylXoTz+Fa/RYnh08NdtOdjzPUi0iLkbNtRQkvm9
         JSt/lLtUSEqJsDShiUXyxNI4Ki2vZYsN5MRvuw9xS6nHXZsUQgJKFRdRh9kQxZ0CDsXr
         9IeRaWf7cDxQdbNDA+2h2EQCdvJ/bXw2KwPQvsyznGahv1UWiFID9Mb7Acood1WZkBi1
         mxv0UTYvC2AzlTnjAsDbwHeLT19fwQWYi59Ciinzh48+qx+z9jyaV1k6rSQKSs6gUl+8
         KocQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xah9TA3iFjlwJKzVksM/AXXdocV6hxwzzRZ9XCcQs0s=;
        b=KqJ83IP4uYwwg2aQIhUDUdBjWk1NfT56Cb+VDhIFA4nIk1Jv2EBtPibxEDRPZ0hXu3
         E80kjYHsuoGUINczPBdqTQZCEGW1VmcZE52EKk/YhZI3P1cvxwL/slLCa70yhmYzy8Oq
         fsOv7zh+LZmmnXAP0WD9iNEpPiB+8Geon92EO1AFZ8UwSjp1jaEiw8Thy48yhPmbUNNe
         Z0zTIzffyt1NstDb2FFoNa6vdjgzy0cfPTqWWgWsdC7paTFw9udEQEuiuE2wbYSI90HP
         C6u5BE44nnkL0xYe8WfhAGZZeAqeusFEViycRGasxwjdB6lqt3ryJk0F5Mrvw33j+hDV
         nMcA==
X-Gm-Message-State: APjAAAUKEh2gYCuLc1+GlM9Xxz9DbNYuFs9oaY5CTOijOa6ZeCAmkPPu
	u4uTj2YAFbhgzDD7AQi9wXKGaB6iQK0A
X-Received: by 2002:adf:9b9d:: with SMTP id d29mr4819991wrc.293.1572804813217;
        Sun, 03 Nov 2019 10:13:33 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id l18sm18467087wrn.48.2019.11.03.10.13.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 10:13:32 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH V5 0/2] staging: wfx: cleanups
Date: Sun,  3 Nov 2019 18:13:13 +0000
Message-Id: <20191103181315.26434-1-jbi.octave@gmail.com>
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


