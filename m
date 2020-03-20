X-GM-THRID: 6806098614327181312
X-Received: by 2002:a17:906:1001:: with SMTP id 1mr6131852ejm.267.1584668321415;
        Thu, 19 Mar 2020 18:38:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:1d99:: with SMTP id dk25ls2436395edb.3.gmail; Thu,
 19 Mar 2020 18:38:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtqrKFGu8tF9igDUdTRm6jrqcgLDxfQaW421RiosOsyNZrnLU6uNkaXfDTPX5/TbgD6uyrB
X-Received: by 2002:aa7:d345:: with SMTP id m5mr5752844edr.257.1584668320260;
        Thu, 19 Mar 2020 18:38:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584668320; cv=none;
        d=google.com; s=arc-20160816;
        b=JhrzwXicV2KMTNm80mAh8QS+v7XDdAPhsBcQAvb0iiAbr+J/6eXvHvnFPljQC41LD6
         mgsRRdyyaAtRiPnLxgv7gW/fbKCg1ETuPZGPj4t4wl6whICRTXw2ysFJfRwrgZUdny/d
         Ls2q7o3oVp5Wtw8FF/Id5xN3ZY+MeZOaWV/Fse7nBcAQWHaMw5oDE81tg57xySoDoIVR
         LSYrIJjqcYI+NmrMLziImqGxMOkXQTvJPDdzuCczj1j2glUJotOToyasJ9zYHVhCC82P
         sKXbN6JtotQdmWN5TOFiQsV20UbLBg/0QVU6r1R4WpWf2iN6VOGl+EpFplcqEyC/l6JV
         TSRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=gaGvWZ9WwqVcQ6UWI3l4ZUuKzyc7FykL09fpVocel7U=;
        b=Is6QUk1737C0Vr/TRSU9/jRF/bdatS72dVGwCJorp5Oqr1Ykawti9F/ahFhbWYiQr6
         cpqDJv9BMfjgAPNy8NJ5LoOaG28q0/yUyDUQDRu6HFvTQpblX9Y9vlhpxcYsc9T5zjma
         VFXGQEehV8ovu1bnfiwR+/+o9vardwxd5wxYrfeLSc8bfvRqbLfirW0pX1W7RyrL27hI
         Ku310Fnu+AXdnmfdGz09D06wJLnZ/gf+bMSVoz9y5j8iADmoWKe5h3iu9Rjezmc5TmBE
         XgwUNDR6Ndl9oHTLpUgkzoRw3bc02wtPZ3PTrWriXO8NuvMSJHjzK5FFu3gswNKCoXTX
         dqPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id e19si215431edr.3.2020.03.19.18.38.40
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 18:38:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 3100 invoked from network); 20 Mar 2020 01:38:38 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.188.29)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 20 Mar 2020 01:38:38 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Correct long line comments and remove whitespace in code
Date: Fri, 20 Mar 2020 07:08:21 +0530
Message-Id: <cover.1584667932.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct long line comments to match coding style of
respecting 80 character per line limit.

Remove five leading whitespace characters in code line.

---
R Veera Kumar (2):
  staging: rtl8723bs: os_dep: Correct long line comments
  staging: rtl8723bs: os_dep: Remove whitespace characters in code line

 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 38 +++++++++++++------
 1 file changed, 26 insertions(+), 12 deletions(-)

-- 
2.20.1


