X-GM-THRID: 6754475582330765312
X-Received: by 2002:a17:902:a987:: with SMTP id bh7mr14557617plb.181.1572648897833;
        Fri, 01 Nov 2019 15:54:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:62da:: with SMTP id m26ls1874866pgv.10.gmail; Fri, 01
 Nov 2019 15:54:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyi4J6JDTkIP6h2fb4dl8WCZb+akYCriajtYB3N6CWqCyPT0myguqNoqhew2r1ZmKEWvq5l
X-Received: by 2002:a63:6782:: with SMTP id b124mr16646441pgc.220.1572648896401;
        Fri, 01 Nov 2019 15:54:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572648896; cv=none;
        d=google.com; s=arc-20160816;
        b=xK4FK3HeshBlSabKcYb1E+ndd2GK3tcyQhMdh5eWVjyhf53jeIcg+QFmkf86lsfY8+
         6EQhqZRZxElgPrWodybNMWcWcvf1udk0sH7sNm1SzhIACUdDdwIXIQpmgTCbeR3Hfn9H
         sL/gFNzHQGDQ9MXpBgUbseckj2iac+r3qaIuEz653tlpH2Wr+0xMy97HkH24Lqj9JkMX
         rt3m1UWrUqciqVmB2LpcyAJGAt/QysRoFNDsi3tt2X3jbeP4sysDnfqZ/PL2FW/7x88k
         NjhTR1Lk4d7oJWqjvbbVHQQAxrWVsWE48SAM5HWsZIBruBjQkJb22jvagOjXiXzAt0LL
         5/3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0BMCpT72dRjpkqFgUeq9kir+Nwv2GcpwTGuqryrW0A0=;
        b=geZ0VwYVt2l04XReG0TiE+3yJ4oaixlQjMFmy0Yu6rAOKqGJXSnGFSeumCMgws8/eH
         Q0Bm0jBmYoAHPX3nYeC0mhZ6GgqEXCUUr1sKtFAg3N9JdcLg6jpDc4q/zCZOK6SFEfgX
         HeI1wNGW0w3Z9NVG0DN9G+BQbFIuuXHOdQRmX8VLHz7NVIIWKygSQfI0PwaaNT3FFnRu
         kxosizM/xVWHLJhrwXUGh48LQSCK/H76KP0/t7MCIeOOO1tZfobpNYkWBLJVibz4+eQX
         ToKsur3CItw5qI3aZGKMRtPArJiRAeSn90o1QGfM0d5BXywi0Efzj3/gyAzajLU7IBCw
         Oc/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u6OHNZqW;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id az24si780840pjb.0.2019.11.01.15.54.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:54:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u6OHNZqW;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42c.google.com with SMTP id 3so7986652pfb.10
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 15:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=0BMCpT72dRjpkqFgUeq9kir+Nwv2GcpwTGuqryrW0A0=;
        b=u6OHNZqWkItHP8bxmDBnPgG6o1zDwZ0c1WtLSuJ/YBHle/vpYj9Qq36XhaBhSybKtQ
         abMj0pTK6aBBH10TRmzZibUhXgNP5AyhhO9+8C+L3XinmGXfCQyA9cP7paQv5tTHnYgZ
         sTaQkH+I+da6wMrVKTz4D36jWPrDFSSdP/4YZX4hmOMPU/lSIvaUSW1RLuGMto5icY86
         eNwKzT3EOMh/pQGRm/W4vHSXhfJPtAY1UOvfvd/sMp4RhTPuVUSWSISh0qZU/jDrUZXM
         DH95oTeDK6+3wLAZM1pUTLqidcDEfkIyB2HxhT1Ixy5ksemAhjJh4fGe73RJH5TbQsGG
         APfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=0BMCpT72dRjpkqFgUeq9kir+Nwv2GcpwTGuqryrW0A0=;
        b=DcmB5V+Bx7urG5nwNwRY2Ahkv/AaOpuQwSwsniUWcjBYJCmtduQI743AHAd12TVB4w
         cCdHj28EPe2cCijKob5g6i6qaxM0CKcqWKNJAIPG4Je15SbVKvBbqR+sCahQfTUAHhoU
         hzTRzsY1iUcj6CgnrqANEdn7xeX4xSK6LaBYAVGJRZHr2poRFc5aI4BdxVmqq6u/5zRt
         S9RVPPVi9rORyQ90RhNOVUCUnfDta2fOQibmuQYkQKLcqc/VjGQYB9mREqj8ks2PW/OL
         meIqM/rozN0f5XtImeADYCg722i/4ryrdW25NA8+Gggf0xjdCaZAlPlIOE6/qx9RraHH
         SXqA==
X-Gm-Message-State: APjAAAV/CAC02cPJS73tbzTu1O+AejW3MjW8yoMwuG4xvXgcNLWl8Po4
	j3V/1Fa8V1cqhFPnrLeUvLQ=
X-Received: by 2002:a17:90a:5d85:: with SMTP id t5mr17927526pji.120.1572648896144;
        Fri, 01 Nov 2019 15:54:56 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id y2sm8159715pfe.126.2019.11.01.15.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 15:54:55 -0700 (PDT)
Date: Fri, 1 Nov 2019 17:54:52 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Cleanup tasks to remove blank lines
Message-ID: <cover.1572648706.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset performs tasks that remove blank lines in the
file rtw_xmit.c.

Javier F. Arias (3):
  staging: rtl8723bs: Remove multiple blank lines
  staging: rtl8723bs: Remove blank lines before a close brace
  staging: rtl8723bs: Remove blank lines after an open brace

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 94 -----------------------
 1 file changed, 94 deletions(-)

-- 
2.20.1


