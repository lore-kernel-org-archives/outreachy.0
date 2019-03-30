X-GM-THRID: 6674230099683835904
X-Received: by 2002:a6b:ea14:: with SMTP id m20mr1116332ioc.33.1553965290279;
        Sat, 30 Mar 2019 10:01:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:dd1a:: with SMTP id f26ls2020061ioc.1.gmail; Sat, 30 Mar
 2019 10:01:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyKVHw95VrTT9NxDSVp4cg9g7AK3b3mn/eErSI11RcBrpvHW/ggvzOGQXd/M/9RprWfucY3
X-Received: by 2002:a5d:8c8f:: with SMTP id g15mr7420521ion.36.1553965289361;
        Sat, 30 Mar 2019 10:01:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965289; cv=none;
        d=google.com; s=arc-20160816;
        b=Vu4Bt5sR+F07Jqb32/pwWG5wnnmKHqKBSyCTf5tgVUvEMO8RAuEfC/5TWTTeL1i3NH
         EBpUsbmlkH+Pb8j4vXpby3UgtfM6c9eg3Rism2IazNjfbxFwSoBNZlOm3n6XSrkq0zkw
         qbyI5V/I4Cqh0XAT2UYa/iMA7727tKo6LSuiLKZ0Wn6am6GDpqGYq97f3zsiAk8+PeYR
         P+NW+dKJbSpUSXECKvQm9PQKA19NjfsYVOvbPRxG6HSK7fmoeUFThcq6wToqs16AUMJO
         JWcTOZcP3pAc45+miok1L2ujmDajEbWeMlZ7a1NYGLx6WdlgezTGPVemXl44hGqSeHor
         iPVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=2JRQ/5kFmG7fMJJAKrafzWXNGu9uhxdSgfK0Jc7yf/Y=;
        b=uz0O9Q9QER0fjNheT704fYk2ycV/y4NeoMHdFUWnOK1RJSxt9vXvwfsAx2UJ7O8oLE
         uZt7/YaI/s8jp1ZL65oXBz3LODskGOjfSl48CvGYxRPbHgO9PE0Ffu4n50mGCdKdvYTd
         uYX/0t1GwwgxfOMWTFw/LhGrnUtIuukVMT2F9+Kz6y0Y5VYZtx4cYdSl+9LcgU8d7wKQ
         paJjLpo408d7OOsJtV4meqkHDTiP8rj27rPg8lPNFD9SGKDl2LZ6+hgqUVdD0FDY4KYo
         RivNl8lETRr6co5lBfbO3/7pyUDZxpQLerM8DHolty47tSii2xsLBTCEyLcWhg4DT7pO
         PymA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PiEh+Brc;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id t201si285141itb.2.2019.03.30.10.01.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:01:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PiEh+Brc;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x432.google.com with SMTP id i17so2496821pfo.6
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2JRQ/5kFmG7fMJJAKrafzWXNGu9uhxdSgfK0Jc7yf/Y=;
        b=PiEh+Brc7I0pvIwsMwuHQ33mrh3eROrOVCwcO9ojYibyBpulJirCZxE2h+d6NAg9ma
         rFu/k/R0GH3gji+eqpgumqOtJkFHkLs8pXOwSlvCPsODQkwOi/+f2MR/bD9SjOXCSN8+
         qhjEAdowrDI2WCwPxvZ5daoSG2YX60akVoQz4y+BDLdVX4hHnvfk5X9omywkZLU4T27g
         cm0x0JFCYS+fNRE24NVHkyA/omQ4jLFARq5JdbhVoYP6z0cO9L2ZgDW6Zee9sNDU2S6o
         OT6J7sb1Np+eT6Bkx3uT/H3TjwMkBiDxSgSCwhTfSeT06vooidSO9rFymGbokUCf/UcR
         oM8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2JRQ/5kFmG7fMJJAKrafzWXNGu9uhxdSgfK0Jc7yf/Y=;
        b=svcZuSC9zi6IeLA+djJ/7MF9TsyQaHSXiWi2JZccNpwpiQ03TyD60MV9TZOeF/9A4K
         Phmas8/j34GJGBrVQj4IWGuJ0RpGijDIA3x6H6DgEvsC6GtGNGvhuZd9zlcsLsateaSh
         yLWh+077S/6YIGN8J2zMWNelDh1o1h3FEHQ0b6vUoN5/Fcv/FEgvFmuq1r0soxCpww4f
         Ps7MnMstLtEdeVwTbaymotL/PMNCBGnGsv96KTMbjAk8BPxIZr7Cbp4nFm7XTpKJuY/v
         kYV5ibPKhDvFRvJZqOPG3yNc5KtdOdytjGNa83uM5VZCx/1sEnHh5Tk+Rv4p9PDALoAW
         iTbQ==
X-Gm-Message-State: APjAAAW2brlfRjHHCxqYum0MpqsZGfVJ/0WzhPcAn+4EzFFcmtSZ7ZKs
	VdUrNIuP8F4euU+9DoWn/Tw=
X-Received: by 2002:a63:5d04:: with SMTP id r4mr42417856pgb.117.1553965289006;
        Sat, 30 Mar 2019 10:01:29 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.90])
        by smtp.googlemail.com with ESMTPSA id j28sm13105026pgb.46.2019.03.30.10.01.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:01:28 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: wilc1000: Modify return statement
Date: Sat, 30 Mar 2019 22:31:16 +0530
Message-Id: <20190330170116.4761-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset does the following things.
1.Modify return statement in wilc_spi.c
2.Modify return statement in host_interface.c

Changes in v3:
Make a patch series.

Changes in v2: 
Adjust spaces for last argument in return statement host_interface.c. 
Adjust space for last argument in return statement in wilc_spi.c.

Sanjana Sanikommu (2):
  staging: wilc1000: wilc_spi.c: Modify return statement.
  staging: wilc1000: host_interface.c: Modify return statement.

 drivers/staging/wilc1000/host_interface.c | 31 +++++++----------------
 drivers/staging/wilc1000/wilc_spi.c       | 10 +++-----
 2 files changed, 13 insertions(+), 28 deletions(-)

-- 
2.17.1


