X-GM-THRID: 6806516278512058368
X-Received: by 2002:a05:6512:1095:: with SMTP id j21mr7426947lfg.124.1584765566030;
        Fri, 20 Mar 2020 21:39:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:804c:: with SMTP id p12ls1805219ljg.5.gmail; Fri, 20 Mar
 2020 21:39:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv37lAaHwXCRxYsTZrOryYnIR13M1RN8qL8/45wbTuC51MPulfi8GSA1WPpIw4oEtr5bm0E
X-Received: by 2002:a2e:8945:: with SMTP id b5mr7256361ljk.140.1584765563996;
        Fri, 20 Mar 2020 21:39:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584765563; cv=none;
        d=google.com; s=arc-20160816;
        b=yFHHijD7Veo8FF8WpQQ1l1dwdbuKKEIi8n+b7z5BVxrAUyuZgLcPn6WvZWmIG1oedl
         aOH/owvi7GdvIIcjdHLDxf2HJn7iNDQXeaZQJSGR0uFhmfE2jwdW4gRYvNLhJ3iEWKWU
         yq7EbQsBz/DcNJX6kaEct+qhO5CrSlqBfR57TBm0ClT2kbjtsakotsKRGJNwO2t+BQD8
         GmGBMbFcK+ngx+c89V1BRsTd8Ouxa5o5NKIj5Zdl2o9L/6opfA7JHjcv5D85otOKLuwh
         hB2981lfd9yNFS6KZ6+M9LSyC1XqJrcsudmBPJPdal2qT59w3vZeXXJI3CaYwBGz1/Xx
         Iiuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=X9WcaiuuIaZ5FAgDvd4w6saN0XHZrkR+xkefxfvsF3M=;
        b=jVs62XPXZmNh2Yo7gNuRhhx+/vWf5B8YakEUlr2z2cli1gSPvDM3Jjddi6Wt7tvsVc
         OobIVzKPWNJIwbIQa3HXRXE7kQwdDmAm8+cLxlshEVNHbpHFKt/tT8phNOfdZ1Sh8a4k
         R0hlxrPD5dsCsk9+nPQ5FVK4P2Z8mFW77SBCEkXiP7Qn35vQ/PYzwf6Trd7eThMgFjc3
         SAQvHpPdmIbUNqnuMongkRkMx1KKleEpmB3hFzDPhtmuVrJi5KMxt4w42Xpdm/KB2VWq
         JZibEJEC2duhT44dAi2onx9J7RIDvEjbXiCT0J2+AOJ5sl4uQKMCqUDTQAtq/PfZwhT3
         Q3hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id c15si402200ljn.3.2020.03.20.21.39.23
        for <outreachy-kernel@googlegroups.com>;
        Fri, 20 Mar 2020 21:39:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 24237 invoked from network); 21 Mar 2020 04:39:22 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.250.241)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 21 Mar 2020 04:39:22 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 0/3] staging: rtl8723bs: os_dep: Remove commented code lines, correct longline comments, remove whitespace in code
Date: Sat, 21 Mar 2020 10:08:56 +0530
Message-Id: <cover.1584764104.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Patch 1:

Remove multiple commented out code lines.
Remove blank lines next to them.

Patch 2:

Correct long line comments to match coding style of
respecting 80 character per line limit.

Patch 3:
Remove four leading whitespace characters in code line.

Please apply the patches in series.

Changes since V2:
 - Remove commented code lines
 - Drop a code line with correct leading whitespace
Changes since V1:
 - Missed staging: rtl8723bs: os_dep: in cover letter
---
R Veera Kumar (3):
  staging: rtl8723bs: os_dep: Remove commented out code lines
  staging: rtl8723bs: os_dep: Correct long line comments
  staging: rtl8723bs: os_dep: Remove whitespace characters in code line

 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 30 ++++++++-----------
 1 file changed, 12 insertions(+), 18 deletions(-)

-- 
2.20.1


