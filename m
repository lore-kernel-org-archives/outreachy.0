X-GM-THRID: 6806100951859986432
X-Received: by 2002:a17:906:4bc3:: with SMTP id x3mr6122214ejv.38.1584668865950;
        Thu, 19 Mar 2020 18:47:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:bb02:: with SMTP id y2ls2442126ede.1.gmail; Thu, 19 Mar
 2020 18:47:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsYTpJCLp6h5tcgsdquOzCT4JMpWTAgrW5k05YCwLZbv7nUIjX1YOMn7O31qUwoB+4Hn8+x
X-Received: by 2002:aa7:d14c:: with SMTP id r12mr5791824edo.17.1584668864532;
        Thu, 19 Mar 2020 18:47:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584668864; cv=none;
        d=google.com; s=arc-20160816;
        b=MphadHRf2lIPDnnr/j6g2kCFy1wyECJnx91dFHKuOyqZn/fxU92S9f+Rx212vY1TEO
         Xp94VR3ohKlpJSTf8PzhjMgUVuZG4V05UEqZ87anQzsQZws/TUvqyfgew+wuzugwlv7F
         F8h+d/84D7c4wjPJHuuQgVwlw1h0qftz548Tl50hT0x6Vgmi+ePAlJ7XOuJRGxIn9Mgd
         PWCQboevudjd108KvQNxQozAQtrL8tyNuABUwGGcIRe8QpfWR+iJYqmUez83N7F7yhVo
         w+DJrKJIL9CAyQR7CiP0XUzc9XngzeezbHGc4wktDzRemJLMMFTPlQdCysPQwo8kYGGb
         jIpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=odAi2VBAuCXdagAx0ZQpoWilzX0vB7+EdIkCCzK9eyQ=;
        b=IF7JYO73cnN3+j42vadlp5zQoy9vh6LyimtXlVc3vT2YjiboZxe6s7R+Ix1OIm9uqj
         X0RRqHDi/VNcAJKQ+kjhauZko2m61sQ8azBpetUojhslQombL6K6GCqglu5Md3Ebc/jy
         wE3CJzEi+2FvGEhqGLMUKVQuVlu8g1b0q+PGapNjtElEtM4viB3ZSX9lqHouB5IsGd1p
         avD0g6miKPcHEDLUxcAimVR8xFAI3hTtLaTzPvGXP4luhqwUBUeob6ZJKVEpy5RT80mF
         rCWfg6pPoIHYNjUC36jNPI9mRIST4bR+l2a6bV18PaVxcq/sW7B12px6LEBx/fU+DCdm
         /kwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id k14si32611ejb.1.2020.03.19.18.47.44
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 18:47:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 3235 invoked from network); 20 Mar 2020 01:47:43 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.188.29)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 20 Mar 2020 01:47:43 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/2] staging: rtl8723bs: os_dep: Correct long line comments and remove whitespace in code
Date: Fri, 20 Mar 2020 07:17:28 +0530
Message-Id: <cover.1584668433.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct long line comments to match coding style of
respecting 80 character per line limit.

Remove five leading whitespace characters in code line.

Please apply the patches in series.

Changes since V1
 - Missed staging: rtl8723bs: os_dep: in cover letter
---
R Veera Kumar (2):
  staging: rtl8723bs: os_dep: Correct long line comments
  staging: rtl8723bs: os_dep: Remove whitespace characters in code line

 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 38 +++++++++++++------
 1 file changed, 26 insertions(+), 12 deletions(-)

-- 
2.20.1


