X-GM-THRID: 6663863789016842240
X-Received: by 2002:ac8:1858:: with SMTP id n24mr7420542qtk.60.1551589394323;
        Sat, 02 Mar 2019 21:03:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3192:: with SMTP id h18ls1040235qte.8.gmail; Sat, 02 Mar
 2019 21:03:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqzqvc7wH7+tzPuSgj22rkPo/pM8RgbbjqWLImk/4l0G3sC2hGCUjsI0anP/czgGXSD0hBwP
X-Received: by 2002:aed:2395:: with SMTP id j21mr7691082qtc.32.1551589393721;
        Sat, 02 Mar 2019 21:03:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551589393; cv=none;
        d=google.com; s=arc-20160816;
        b=cPH42QiKaU296NtkNFsOXgej/25vBSYVW5SKORXe6j3GJTO6aCsWJOueNd3sGasjJh
         CZ25Jvg6iV24bhb+7SDWjeYgt7KJUn8r85qPMpg+GkLf50SZCeBF1WF+RgkojAxuDF5b
         7yx7w8gckOZWPgPnLq7KTq+T2TxxjiNF4BChrQ4JG00j72373x1ckAsdzEADO/c/0aOi
         3DXC8FOONrKDo7s2fNJbkaFJSPThirTpXjnEygZ9xjn0RBG8sJQgsRJ/O4+hZ1y2jkX2
         20xdqBLh/TNX9QtS7sNCBw3ohfiDHEVcRojcj87LvPbQZZTDRV7hXIdTpHEHDLZYVMKG
         RcbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=sjuH5oXIxvxxMqqeMDhxdlsDGb+dhHat6babiA19/kU=;
        b=Nb/WG9vL8Ql/VJ3yyf/8zJA3e7PzKk1pIxF+57L8ZzhlW7soRbdrJCI8+XAYl+L0sO
         n4RkpKecm7zsH2Z2PqYJsrskXxAcmaD2yUU3Tok+oDJOVujcD+hRj5XnbkXc+PTcfVMq
         tjmpRyk5PLvh8/7mf+jJ1vzrhgyJNhpKMaYdhsc++gZMn642nC0l9c64ezAwSPRoSE8K
         DZM5y4eNr0YeF0Rcovc4I2NaKgEQHhPFFFgtgYZv1l0m3cDA8KKMRprxhdvPR2R82cj1
         YgRbCyZJl9CWE3pDkiTb9QCfNDDgRGijXSOa+aL9eUI79SJzIQktAm8dWwwEZRCtlRBU
         mA/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hPZ/9Wly";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id i11si173329qkk.4.2019.03.02.21.03.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 21:03:13 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hPZ/9Wly";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id n71so1560157ota.10
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 21:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sjuH5oXIxvxxMqqeMDhxdlsDGb+dhHat6babiA19/kU=;
        b=hPZ/9WlyRlTeGosbf0yjs1883mCelu34oE2jyPhO/4q+LJa6lOndJq/QL9Lc54w6TK
         e4NiSV/JHt+fAsfyr4DWyRxJJ/Pjhtk1pSl7u30smg3iYWM7MuRkw+vCvGq30eVexyat
         2R8gvUfTcoDH81yvD41s804dYSZnr5vrssNWyFspXyPjXic6P7ZhSoYVq6m9RO2LzVa1
         /OousndytphS9Gbtdvx1t+AqeJIugedO7/6rZjp3Pxw32QcJnBDhU2f1PFo5rM3VJwU1
         YzB4ThaEB5qE3oeFUn/vI+a1+qhZFSmtfjVjMamJtsXvEeXw8o50QTBOVnNDaWhwDC8B
         XHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sjuH5oXIxvxxMqqeMDhxdlsDGb+dhHat6babiA19/kU=;
        b=F+MVqP0j8dPPxXHmn+OH3X/VN9TwBhEBgYcLeXHamYR1zds3ASKRk5YHuoynZUie8m
         tIUsSJ/yKgCWChMYJigC9Hss5+90T0Dkzv/mFB/Da4lQzncFjqVrhKGQV2NUNjLgNzDF
         EDwaRPXSv0TnNtThvuK/uwtEBfjzcopZ+ZPNeSG7dvI7ePG2Sum0LpaCXYPO8uJLt2b0
         4+03aF/wehMCGtIHiEmH8DonT2c3enb/UBGqqyCldXplAE1H/0GmEGPGzGHrJUrVLwfF
         oF3Bg+83/5RcKIwEDmMN4wsbMRSOEO5GbSOg2XSwcGsGEtlk8NcMukntIRRCdwoYuece
         YqKg==
X-Gm-Message-State: APjAAAUj3qT6Ez/rWtWvBXbiIUeeIRjP4yKLQP+ewifFWYfevX/OB3Me
	RA39k+FKTklJDaS41d5FrM144q+NBoo=
X-Received: by 2002:a05:6830:1255:: with SMTP id s21mr8555937otp.18.1551589393181;
        Sat, 02 Mar 2019 21:03:13 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 21sm1114398otj.6.2019.03.02.21.03.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 21:03:12 -0800 (PST)
Date: Sat, 2 Mar 2019 23:03:10 -0600
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: madhumithabiw@gmail.com
Subject: [PATCH v5 0/2] Fix checkpatch.pl issues
Message-ID: <cover.1551588900.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

These patches fix comment style of SPDX License Identifier.

---

Madhumitha Prabakaran (2):
  Staging: vt6655: Fix comment style of SPDX License Identifier
  Staging: vt6655: Fix comment style of SPDX License Identifier

 drivers/staging/vt6655/channel.h | 2 +-
 drivers/staging/vt6655/desc.h    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.17.1



