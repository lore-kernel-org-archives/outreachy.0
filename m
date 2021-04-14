X-GM-THRID: 6950478192224239616
X-Received: by 2002:a62:1503:0:b029:245:5ac6:6749 with SMTP id 3-20020a6215030000b02902455ac66749mr27176036pfv.65.1618384907484;
        Wed, 14 Apr 2021 00:21:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:ab81:: with SMTP id n1ls810269pjq.3.gmail; Wed, 14
 Apr 2021 00:21:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw2xt3g5YGSLrI5VX4cBgC01+4IJxAlNDPB03HDFmOaGKIpxx4vwDEktfSjI+KEU5IbTk7F
X-Received: by 2002:a17:902:8ec1:b029:e9:998d:91f3 with SMTP id x1-20020a1709028ec1b02900e9998d91f3mr30104079plo.59.1618384906470;
        Wed, 14 Apr 2021 00:21:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618384906; cv=none;
        d=google.com; s=arc-20160816;
        b=fvL1w/QvYGdPtPGs92cxnAP5AmOKPXaVOpn+pl34lSAldlUS1dFJDVCT797JrVxZnA
         abo94uEbA2q8u1h7MRLKHBmpzu0Bs2kGH4j5u7rAlH0w1UdcXJxpQRWNjMKJUROhwDfV
         U6utRKB46PGlcEOSI/U8jTKIYgKEP/ZDf4sKMvI1qEM0tmS1rieBoBXaBoA1yinHy/pi
         ZWO4fVc/gTbOVz7dtGuXllAA4O20668S/B4f40EnWljiawsXXKtwH/GO0ariIhhADwP7
         V/jiOLXsuXiUF9mTcEJa2I3zVyYqNppvwIB6ZJDwRN6DThwB5CNVdWd726hOc4POJJo+
         /Tnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=5M6lZDHmRsVmI9+ZaAWTX2wcWhrGZNQhEEI4YOQh3oU=;
        b=rv2Fly4ulc6rJlcdjCIBux8R8t0uvW3fp8eX96yZXQH1vTUKkRQoV/oH/OLMpYafX/
         oNcepD2Td8guZrt4Vd92Neujoo2pLkbIvWjJev2ft/Hq4LxfbxP2a62WCJZD66fp7nwf
         IQnI6rXdzvIEwhTKhxs1X20eUzjn9X/sF/5qxmWjF1vjOBViXXl/sAwtdcQ01M3WceBn
         4PeQm+BUekWesWKhWvvWsPbNkHvWIC7s5WyKfAqGEmPyeYw0nJ6QWeVsHastSkcD+2SF
         VhiUIp9tXrCWh+Dgm1ZAcXSIfWOfzpmeHw4OvJ+1wgvzHFsSQjX6p8TeaOXSLefS9G+R
         7x6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ChZh3Dl2;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id i18si487873pju.2.2021.04.14.00.21.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 00:21:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ChZh3Dl2;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id a12so13127509pfc.7
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 00:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=5M6lZDHmRsVmI9+ZaAWTX2wcWhrGZNQhEEI4YOQh3oU=;
        b=ChZh3Dl2or1rhHPDot1lrzwIiiA6KRu5T1fe5TnRdZP5sdWQ14awGLuWyEw5GtNYm4
         V38HkjKYWV5ciOTEdLjKikOttbjRK6dxcOeh2IrCdhAqqdFee2wFDXKSl9ALq41aY+2I
         EqCkqrrx9GR6A2hy0LWanqayxplsLvtQ7ZIeqt+dvzthLBdXqAFeiOXoOwSWiWpCga4B
         4ywq953KplFvQnvTey7m3Gx5ztx5H10uGjZ+VBo4Xh5vO8iVBrDErqo2KQeLQtnrof+u
         eqCeRFAKm16/9rBSd43uMkTrJIliNYPkjKb3zL7BkZadoJPAD1sZc4q3WV+2zmuxYHhR
         a+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=5M6lZDHmRsVmI9+ZaAWTX2wcWhrGZNQhEEI4YOQh3oU=;
        b=t1Alcmfg4JbIXcTHIDmB72n41wQ9uvAhDxFFOOtjZ1FHC8L37wyLD01Uhbyh2CEZxn
         kdY7aYAI+TDgs/mTjH9W5nclPS+NN3KdNH+AvNgUADJ7UJkknEjDkloZp33kLmeCGp9Z
         pOfHBrxa2/+4vc+Kbxxgfo/YKAFDx2dHR+9rVHUWPqh3+ZidecFsKbsNAp5ErEsdmJtz
         YFibksq6GQ/8KaQiwOTR6PlQ/0/LIA0RLkLdEx7YRXXV/xHAztZLKcUuZP6GRR/cWb8k
         pQPl2qhwSIV179TTLd1Cm2C9r33TngoPVsffTa5JcQfqlAiaJ84vIXIwMh1jLrnmGznU
         u0Bg==
X-Gm-Message-State: AOAM530o8o1Q0BvkmvZ9KSTg1Rgegj3Uuin1Rjbu6ea3wFJeQJ9/0Ulj
	t+6gLYXs8GqSqlDiCtUXoG0=
X-Received: by 2002:a63:c4f:: with SMTP id 15mr35326894pgm.379.1618384905996;
        Wed, 14 Apr 2021 00:21:45 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id c2sm13931755pfo.53.2021.04.14.00.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 00:21:45 -0700 (PDT)
Date: Wed, 14 Apr 2021 12:51:35 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v6 0/2] staging: rtl8192e: Clean up patchset for style issues
 in rtl819x_HTProc.c
Message-ID: <cover.1618383684.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Changes from v5:- Rebased these patches and dropped 2/3 and made this
a patchset of 2.
[PATCH v5 1/2]:- No changes.
[PATCH V5 2/2]:- No changes.

Changes from v4:-
[PATCH v4 1/2]:- No changes.
[PATCH V4 2/2]:- Removed casts and parentheses.

Changes from v3:- Changed subject line to match prefix on the patches.
[PATCH v3 1/2]:- No changes.
[PATCH V3 2/2]:- No changes.

Changes from v2:-
[PATCH v2 1/2]:- Modified subject description. Changes has been made in
v3.
[PATCH v2 2/2]:- Rectified spelling mistake in subject description.
Changes has been made in v3.

Changes from v1:-
[PATCH 1/2]:- Removed unnecessary parentheses around boolean expression.
Changes has been made in v2.
[PATCH 2/2]:- No changes.

Mitali Borkar (2):
  staging: rtl8192e: remove parentheses around boolean expression
  staging: rtl8192e: remove casts and parentheses

 drivers/staging/rtl8192e/rtl819x_HTProc.c     | 14 +--
 1 file changed, 5 insertions(+), 9 deletions(-)

-- 
2.30.2


