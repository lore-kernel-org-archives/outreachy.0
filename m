X-GM-THRID: 6663618170330284032
X-Received: by 2002:a17:902:7044:: with SMTP id h4mr1215574plt.4.1551825250634;
        Tue, 05 Mar 2019 14:34:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:a041:: with SMTP id u1ls8033996pgn.0.gmail; Tue, 05 Mar
 2019 14:34:10 -0800 (PST)
X-Google-Smtp-Source: APXvYqyp3hevP9kw+fF7Y/ZffeHYlMJ0aintdL87NBmfAjqvn7W5bkuTdaK0E9lCPARiXi6K+Wk8
X-Received: by 2002:a65:6657:: with SMTP id z23mr1645211pgv.103.1551825249985;
        Tue, 05 Mar 2019 14:34:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551825249; cv=none;
        d=google.com; s=arc-20160816;
        b=SRzVSkZeR4MWJAenjod9adyAKHM4RFBw/fMSAEqlejAVn+wpOA0/+WngA1y3hrU78v
         eVbbqe8VPsSJRIhfH/PEfsyq0XZn7+ZiGRVvrp+6OumGz+FPOilPDNNv2SeJqdQrcU1s
         0gEMo/6EdEZmONiIS7TMbBLrirovHpq/vBaKmkI29LhEgETFz59vrnZxWAvQO4pRuANE
         32Nczu05U16/9D/TWEdNMm8zMX77j4FaiafZGNrR6SlvS8a8EQksjgaet6sM+TQ6kqmo
         SWR+AAQXTYVib1Ag2EVQWRVIHMG41OqOVgXaK5cK1cVa6o4yNH3A5SgSYH9o7RUe3dcE
         Maig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=9jXOApECu734907iAk8PxofCoqjIcjMnS7+sloMsTdE=;
        b=ZOgtMW2ZTv4dcC1QH3Oj60ls2ks1aGvj5TEJxNraKrvB880mL4o9mZZ+6LqTe2O9Oa
         7hkuPdcjaZacsbQwrJTVmRvw3M0kyIuTigGyXhdp63zpKLDR4+RjK8clJ1k8LsAxH4OC
         YsrvzbWDr3INvhjh10xz+msKQ6I0wbRbdsvA4/kSZY62v/rPDnaoc1PiTp84ls6rrgnC
         LbuenqVHJ6wwxzhVIWWPL8HXDBJ5Z19TxfX8Pd+toDw2QOqMxC5bRqPwLmTjV1GmH6rf
         nxaPff3e6KGqHdMxHGkQTBspmHtWR4biwVMoqrU15Ci5p6GWiRsfMt3MZJCr8yVuByGJ
         MwAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pfykap09;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id 197si214827pgc.1.2019.03.05.14.34.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:34:09 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pfykap09;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id v62so8932818otb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9jXOApECu734907iAk8PxofCoqjIcjMnS7+sloMsTdE=;
        b=pfykap09J3qDX3IbNLXVUV6H4AgN7NqnQKsYNQqD2OCQmLb8efa8aVjCmQdKPd3gmI
         Hmqt4YXjTUF4ryEnkzKvTmV8d5y5RHeK4GKlxEKV0ODnxZyVi+vd//NZb4kUDIU6oUk0
         km/lo7s+IvoJwl/f5Y+inyVj3xAktvXJnrzNGlzti8OSFCEYhfk/APU6bkzBAt63CDjN
         P05ElT120VlSde+nWil+azTko/pn0h7gGt0an71HpF89qnipZQe+YLMUZQccd0nirdTb
         GqHHAQ+k+0Mgn2snMoyybbo1PylbV1NY7g82b3ZbbydJ8cHaQKJTk7FGA9jzFj2bKH/I
         XIBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9jXOApECu734907iAk8PxofCoqjIcjMnS7+sloMsTdE=;
        b=O2Sb3NC1g8SZmUmyJ/xrofsvLktTrTpvtH1eVnHw181BtN49jNR4cu7NlnNvagl27c
         1dVoNnEzOPTQUFIvw+bVERXKjZQLJjD5ddTDxmP8v4jdY+a/MKbaunJNbRKyGN0+/zCs
         Frq7aB0vEGLxan1sLpahMVTcjveP99lzNKAPh/vlWxCHWqcr69P/PZfGKP6G0j6IMDn8
         6aR5Az0eSDe8YP1Eho5xIiIOduCKKaVKLCsTkpkDEb4zd+XlGLmJCwDPz2Xl9Bm+7D7E
         JdSDSS1NzIWZJjXYqOWo6zxMxAaS6MZ23KaeqaCdlsLCgB0LeIItEIwUm7Haz+VdcVxg
         Xmig==
X-Gm-Message-State: APjAAAUYxVdSOI97SOP5UqGMasZ4Nqq/rIT/q3L+ahQVvxENxxP9f2g9
	5LE+aTMx9XdjGN1apiXM2htEpRJz6tg=
X-Received: by 2002:a9d:7657:: with SMTP id o23mr2624590otl.260.1551825249507;
        Tue, 05 Mar 2019 14:34:09 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 21sm4241970otj.6.2019.03.05.14.34.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:34:08 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 0/6] Staging: vt6655: Fix checkpatch.pl issues
Date: Tue,  5 Mar 2019 16:33:59 -0600
Message-Id: <cover.1551824831.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset modifies following -
  1) Fix comment style for SPDX License Identifier in dpc.h
  2) Fix comment style for SPDX License Identifier in key.h
  3) Remove unnecessary blank line
  4) Fix comment style for SPDX License Identifier in mac.h
  5) Fix warning line over 80 characters
  6) Align function declaration 

Madhumitha Prabakaran (6):
  Staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
  Staging: vt6655: key.h: Fix comment style for SPDX-License Identifier
  Staging: vt6655: Remove unnecessary blank line
  Staging: vt6655: mac.h: Fix comment style for SPDX-License Identifier
  Staging: vt6655: Fix line over 80 characters
  Staging: vt6655: Align function declaration

 drivers/staging/vt6655/dpc.h   | 2 +-
 drivers/staging/vt6655/key.h   | 2 +-
 drivers/staging/vt6655/mac.c   | 1 -
 drivers/staging/vt6655/mac.h   | 5 +++--
 drivers/staging/vt6655/power.c | 7 ++-----
 5 files changed, 7 insertions(+), 10 deletions(-)

-- 
2.17.1


