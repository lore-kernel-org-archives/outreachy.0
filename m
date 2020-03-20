X-GM-THRID: 6806184818941886464
X-Received: by 2002:a2e:8595:: with SMTP id b21mr4330483lji.184.1584688392760;
        Fri, 20 Mar 2020 00:13:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls1090293ljk.8.gmail; Fri, 20 Mar
 2020 00:13:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsmFuxqCTW58gRVpq8BzI/OYnm+DN211a4LGlba6GdEfP7V9CGtqzUi9fDVQzXsJWtsMxya
X-Received: by 2002:a2e:2415:: with SMTP id k21mr4642273ljk.9.1584688391384;
        Fri, 20 Mar 2020 00:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584688391; cv=none;
        d=google.com; s=arc-20160816;
        b=dfJlyMqvYpZLh0GJUAbtO7jhBsJ7e/fSaY8D7QHxHxu17+AKthWXDnHTmdK/B6M9zl
         xjH8IsoHFp8aHD5L+LjTF4WZ883igB0eE2EX1CB/lTAszRgAZkswZAc9gkWsL/bkv3iO
         MzwpDlu2T+/6R/tQs8Y/DvMqiALLlQUtoAY23FxdWpAuD/3LPeNS+P7AFBJqFF2M6579
         yXEmkPYc0FXP/HkJR255YjxKpaIG1EWUjJo9iLxrevFvgeQnSNnyqBnB9AvXGLBWM4we
         CNJiL0P6P6OAvW1bUlrlN6Qn7K4CPXNKDFEJdp+c63+xzV+f8IBSQ0nD2IpLEZBpGGzv
         nKQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=QYIigB0vLHODwT0jvKFqL4FJASVRALl9zBQjFmZwr5s=;
        b=q8oRfxTNVb5ZoJGHEibobPiu/yUxD5UVV8u+3x0SZPYSOO03r3Q8kz2HU6KqivXye5
         rbBrM3Ci1Jgb6iWeLK+Iax393q7yB18HvYEXPBZ7vrFkwG8a92qAfqCVHGY142M5G4G2
         mNv0FqDiZcnP7kVGOQyqh+ffnyFvIjngvP75g1BhbsFLnXfDK5TWDjhG4POb+YueGQWI
         Gm+Z4vwgXeOih1PyGAu8EFYajeq3mqZHocV2JuZSf1eKO/gEBYiXtq+Jpdc9LZw/f8pA
         u53er3doclBCj297zsMcov+/ZwgniJ634P6XI+vXgA2K4PNHzS4IYM9HJSwJ9oDwxEqf
         trXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id c15si238995ljn.3.2020.03.20.00.13.11
        for <outreachy-kernel@googlegroups.com>;
        Fri, 20 Mar 2020 00:13:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 6256 invoked from network); 20 Mar 2020 07:13:09 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.188.29)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 20 Mar 2020 07:13:09 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] staging: rtl8723bs: hal: Correct multi-line comments and typos in them
Date: Fri, 20 Mar 2020 12:42:58 +0530
Message-Id: <cover.1584687545.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Patch 1:

Correct multi-line comments as per coding style to respect
80 characters per line limit.

Amalgamate individual lines into single multi-line comment.
Reorganize it for readability.

Patch 2:
Correct typos in comments fixed in patch 1 as well as new
ones.

Please apply the patch in series.

---
R Veera Kumar (2):
  staging: rtl8723bs: hal: Correct multi-line comments as per coding
    style
  staging: rtl8723bs: hal: Correct typos in comments

 drivers/staging/rtl8723bs/hal/Hal8723BReg.h  | 14 ++---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 58 +++++++++++---------
 2 files changed, 40 insertions(+), 32 deletions(-)

-- 
2.20.1


