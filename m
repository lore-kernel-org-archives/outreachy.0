X-GM-THRID: 6666290525545431040
X-Received: by 2002:a9d:5f81:: with SMTP id g1mr11752199oti.8.1552116713684;
        Fri, 08 Mar 2019 23:31:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:ee6:: with SMTP id 93ls3673562otj.5.gmail; Fri, 08 Mar
 2019 23:31:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqxBeKem42eQy/uIHy+R3Ayxw904M7NxsOQV8W8ahr+L2nnA5VCQig5Q/tdEFT2srAWKLEaw
X-Received: by 2002:a9d:6d14:: with SMTP id o20mr12585857otp.23.1552116712933;
        Fri, 08 Mar 2019 23:31:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552116712; cv=none;
        d=google.com; s=arc-20160816;
        b=ujBVNLW3vbQPoIV5Qct6f7EnE+C+hkSG5ACUAWMpVypEdYYXzJ74qvQB7qg49e5KKx
         PGiDf7vjUsQS4+zw7Daqg105TK5weRgIvGNuF/JS8wDUYuKjUVxBobcOIvjmitLxMAj2
         Bno7ugj8QKASS8TRE7IWdGAhDVH8hBs9zHG+AZpLFPLYzF4r7q9YUxGdjvmxJ5PjQ8pu
         SK9HKdmma1ujvXVD/VMxbheBTqG+7VO58tp4YOSJiS7RewP1eUiKIIkF0KApstbb+9QO
         yOi0xrF1IM9PBemZ2IVm/eeB0eyr2MrECM2e8IxWipjWM0MffXHRdwiKdFfiMHspNaIa
         Zq6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nCcrvjKV2p1P/BVFTWGCvfqF8VvsohIJr9kqCyO9Ask=;
        b=s+0swOAaEKmqsNOBlz+bCCme/PtsG8QtlS1aS6nR8HaFqESCgnG58oH5DC0pPZpkyw
         2pHF5s1lVchlqgrDWMUc9Y28qpbqNNQJNzNSb+/cWPSf7OzHoHz2Ml9/+LxN9n+AQUtO
         2fXYjMLLxpQTSlkfhgTKJdQbROgH2jZzs3shHVGqEUuiUeXr0WxlB+7ll/ykUqPBnN5R
         qeD55fWEdDh5UuPRxFs8Oh+Q89J29wihCSsCMn+fFFCMjbkGrBRMh4Td4BlvK9iewKdt
         XCGPt31xeqCI7GrSWvA7bkVFBVHTV6xCi14mNhIBxp64d6SAmxHElWx0nzyqHR4OUgjU
         6IMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TND5JbXq;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q206si528937oic.2.2019.03.08.23.31.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 23:31:52 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TND5JbXq;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id r124so15954808pgr.3
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Mar 2019 23:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nCcrvjKV2p1P/BVFTWGCvfqF8VvsohIJr9kqCyO9Ask=;
        b=TND5JbXqOW6/zUEj5lx3pYl9v7BQFEPHjvDZTqzelcyM12y2xMcJgH5GdgEJEDtTc5
         LRXwvRxUBPsLEgyUZ+kmPBW4kdhMtdciEem8+OCawBvGlDftWZX6/5kA1pD6c+2O7yRz
         YvgPVIFwmTk0oIaMOWotljqb73wLh7p2NDHv4uipurj0rClvvQgRRiWA8Y8Wr+FQfdDa
         oKx4CUMOOJq6+4yglJT5+WRYpxhX8DecFNHsF504ixlEGG7j6dkwcv9pqLA5HY0V+k8x
         DVPdK8pUg7Z6qX0zNrSENab0c/RagnEIBzzPl3k2RcWjRf4Qt7Haa93gcSDLtpsRqAkb
         5qBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nCcrvjKV2p1P/BVFTWGCvfqF8VvsohIJr9kqCyO9Ask=;
        b=lF/7013Hd4snWzAMcE5WX6dstF+Cw9B8khy+vFoflxOSSi3pgtf2FtxmBPqqz9Gw75
         l/5fcEAMDicDWfmMkuxMfEzXDvVI/ifH4OeLP5iMQjlv9bawVodrDg/RmpT/EckyerQN
         sbY5AgArOMFRJCvU56JikVMNl71RDOZ2RAAKGoGkp1n6m3opBySsDXvsQedLwpqTFp8d
         u5YRH6uy5l8rDirZ03GXfJBvmQS7jRtWfSvvpBcoKr3JThNwXpctxem7Grljrzndwyzk
         fTDXCf2TNfXZ2ufnTxnD0DtYuB55LXKBrBAUnVQj2elzzdoFI296qafe196bZFH/ZGcx
         xtUA==
X-Gm-Message-State: APjAAAW8uehkOG6mY001n4XCr67QEF+EDRMa2D0xGx3Gxpgp/XTH1f2n
	S2N/F/33EVkktvSZJBL0gy0=
X-Received: by 2002:a63:694a:: with SMTP id e71mr3356991pgc.129.1552116712268;
        Fri, 08 Mar 2019 23:31:52 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id f2sm11626587pgn.43.2019.03.08.23.31.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Mar 2019 23:31:51 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v4 0/4] Correct malformed SPDX-License-Identifier
Date: Fri,  8 Mar 2019 23:31:20 -0800
Message-Id: <20190309073125.5610-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Correct SPDX-License comment characters in drivers/staging/most/dim2/ 

Wentao Cai (4):
  Staging: most: dim2: errors.h: Correct SPDX-License-Identifier
  Staging: most: dim2: hal.h: Correct SPDX-License-Identifier
  Staging: most: dim2: sysfs.h: Correct SPDX-License-Identifier
  Staging: most: dim2: reg.h: Correct SPDX-License-Identifier

 drivers/staging/most/dim2/errors.h | 2 +-
 drivers/staging/most/dim2/hal.h    | 2 +-
 drivers/staging/most/dim2/reg.h    | 2 +-
 drivers/staging/most/dim2/sysfs.h  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.11.0


