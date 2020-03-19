X-GM-THRID: 6805867897863274496
X-Received: by 2002:a5d:5089:: with SMTP id a9mr3583605wrt.187.1584615414210;
        Thu, 19 Mar 2020 03:56:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls942028wmb.1.canary-gmail; Thu,
 19 Mar 2020 03:56:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv7JfVQgc6iTN+qmhZwz9tKMx+Vm/wZZJEC2uFEzL+UcxnqxPAxpnfyhedPJHUULlUQgcmM
X-Received: by 2002:a7b:c776:: with SMTP id x22mr3137601wmk.135.1584615413039;
        Thu, 19 Mar 2020 03:56:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584615413; cv=none;
        d=google.com; s=arc-20160816;
        b=rv3ULis5lzoKvMgm4QHNDKr6lQIBIGEdIDWd2u0PdNq08w52QewOZOlBVUlYB1SvZz
         j89DkbpgtI4UPd19icua5dvbBwOltcCI7gObFmzs+A92KdESuxMn636qraqxlfsodEvV
         7v1tPXStRNGH/K1P2wCoup1poGo7IyF1h/rnTzjhH38NwOGmEF0BrWpDstmnSnBbBFkW
         4JKCHlAbf6smZ4M5Xbnujp2R1i9A1D4UigRLas3RGDSfO1jtMcAZ/gGQFeGqpTCtOMW+
         3/EoK3h+C5zCpj5fQNEDGkkXW0jQfTRuVivu3lTI7FvJdiO2efradUdhGFjvaEdMQ+4G
         todg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=hk9u745GCz/3UdvTyBqrSag4jj86flla++x7IUIekbY=;
        b=O48qntvVows5BU48uqWxXVn8uSJpEik429yznnYTsPyFQX3CxNeqTteGByAY7bGJdY
         JdNdEEvejQP0NZEU1mg9B2emhFvqtvzm1x38iNb96sTPZmLN4qmkKuua0kSx14SIqI1Y
         Iyk7HsWsYsP7Y1oYmHay/jOYWyvbQosH1VBYd5bRQprDzxAzFvApcNAG66dFlBta319V
         XrD8EDApxIKseT4IMs0zFw7nHKqV6g5eo4Fn8afoggVB8cWEZ1mw7I1RhONrZZTF56Pi
         wjerYfVD3PqfW+jpOffSNG6TCoAhWQpAArZL1HT37pDXLBH4zXCyCYeRitakDF43/Oju
         Uv/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id l13si66976wrp.2.2020.03.19.03.56.52
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:56:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27445 invoked from network); 19 Mar 2020 10:56:52 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:56:52 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/4] Correction of typos in comments
Date: Thu, 19 Mar 2020 16:26:37 +0530
Message-Id: <cover.1584517384.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typos in comments.
Misspellings found using checkpatch.pl

---
R Veera Kumar (4):
  staging: rtl8723bs: os_dep: Correct typos in comments
  staging: rtl8723bs: os_dep: Correct typos in comments
  staging: rtl8723bs: os_dep: Correct typo in comment
  staging: rtl8723bs: os_dep: Correct typo in comment

 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c   | 4 ++--
 drivers/staging/rtl8723bs/os_dep/os_intfs.c      | 4 ++--
 drivers/staging/rtl8723bs/os_dep/osdep_service.c | 2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c    | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.20.1


