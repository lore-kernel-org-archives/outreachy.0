X-GM-THRID: 6663210271515869184
X-Received: by 2002:a50:97a6:: with SMTP id e35mr308199edb.4.1551399536829;
        Thu, 28 Feb 2019 16:18:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:32c1:: with SMTP id k1ls1488491ejk.9.gmail; Thu, 28
 Feb 2019 16:18:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqwM5XEni8uq1fLpeDxMdIYUF6mMFent/CW4QzibvMD0Y2DDlCtpxIVSm8cdVATUwVUBYfXs
X-Received: by 2002:a17:906:1959:: with SMTP id b25mr170406eje.16.1551399536008;
        Thu, 28 Feb 2019 16:18:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551399536; cv=none;
        d=google.com; s=arc-20160816;
        b=y+1f/S2vuOJWwoyBqoBx8mrFsJ1m6nnl8pMlE6X1cSxEzL09kcckbtcK4IU2o3Q2v3
         2QgfXLSsB+KvWdiEjJq8RJdULqWg+9TzpKbqViANLEy0GGJGRVxhqtSncY4YSZCFJmBR
         wYk4nhnJuVaJrwQLDCQtmjOmAGheg7L6J2KvBX5fN4m2zrgf3u/0+tWkMyDEJ2w7Knvx
         zaSwTA/pigO0AkidLAfquiHhyHqhIkAtsMi/4NMUcz1Yk4l8aiK2QhrUSdr10eJQDSqg
         WROErTZO2m8IM2THp1aB90lR90hFiHRzHXaksq6fwmk9Hu/1NjNqqojZU/iySp124g8X
         WEjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=iZMTR35DRGRxKY4SgC0YN7PYATzYhbUEBXYwMYCHd4w=;
        b=HzXhNra4XpXEA6Z1/ChM8SDJVdEBc0N4phjnWPdBE8UwAn2Gw1fEmlhmkrvY29GnY+
         atj3yKb7JsQGnyvwpfggop+5oOKVP07xi7TyVs5NDFghL6Oz1VkLTLHJfOScHWpN1hYQ
         05JWJJufwOFmq3yZ2c7sk3MLbnB11H6pFoCuz6jA3Fm9zV6sf0e4O2/5e+ioumW9cqso
         u/stR6tQuxRJod50ekNA/wRZmHtIEOWOR7+mYmV5Qp1SRbqgO4+Tqd8qFyy5nGXuaBl5
         oDkFht97gwRnjNkRgk2Vh7FsWqFnUZZuFIqFiwZTMkzSEHsTiL7XAlXHvcGsWEMxM5CF
         ML4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WpmLqTKN;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id c7si512808ejx.1.2019.02.28.16.18.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 16:18:55 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WpmLqTKN;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42e.google.com with SMTP id i12so24013927wrw.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 16:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iZMTR35DRGRxKY4SgC0YN7PYATzYhbUEBXYwMYCHd4w=;
        b=WpmLqTKNsepTz5zz/a4IlSDMnMcMEInEY7EdfyUnYhHv92ROkyWmc2rE7YKA8yazdN
         +d/wm+wCR5rgqy+8ynPJpiqA9loR3CVHJCPnmMf2L6S5fKS1yjTJ2QitQsClV0csHBEt
         nNWUvWoRoR9E83ScOgqQjGcoRtdWMytwn8/uNRXX+THe8ZJLjZ3/bPM7UqYIqelsH02o
         jtL+L5E1ZB94GRcKrjIx3YtYmG+a06lZa4ukkyLvAbnFECsaagjZLKdu9rjb7xdG+vYa
         9oUq0B4H+abv0YMVeEQYzxm453N42rx1QwnFNvw6jdMDOA9XO1uJRXHEK7f8uPifHX8z
         GjvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iZMTR35DRGRxKY4SgC0YN7PYATzYhbUEBXYwMYCHd4w=;
        b=ICRy5eBrvlHUsj0locfNhFi9cGf+t0VDunoviKuZtfvA91zaFYuRRyN4nd37yecwSQ
         Wp5pHdU+vlHKKLA0CzC7DObTPx9GclyrTeyiiWZb+y6JVPykfMCJcWDuo+ao0ejyu8Pg
         YxrL92oitb/nIrLztahAO9yrimMiFClLXURXnyJHiIkcW3zkHa5HqgHadSvkJwihN2ff
         mkCq494m0UQrswLqpZQzmnuf8+h6Rq4rciuQjFaET+KifqhZevGXgIIx4j9A+cyuBZ+x
         R2wNF8r0Nya43/1qRG/cIaFKB5UVHyLRfnMV07dJYPN3WaOZIJmgJe9GYaFFkyF9rgHM
         0PWA==
X-Gm-Message-State: APjAAAUlElpuF6hJyxUVaR1LgwEteFxP8Huh+n9kw0YCWTcHzamtwK3M
	rVssCF7trygUXWejqiw2zsRBysE=
X-Received: by 2002:a5d:5410:: with SMTP id g16mr1305480wrv.214.1551399535542;
        Thu, 28 Feb 2019 16:18:55 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id g24sm8064618wmh.45.2019.02.28.16.18.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 16:18:54 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [v3 0/2] Add SPDX license
Date: Fri,  1 Mar 2019 00:14:15 +0000
Message-Id: <20190301001417.16556-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

 This patch series adds SPDX license identifier to fix missing and
 malformed warning reported  by checkpatch.pl tool 

 WARNING: Missing or malformed SPDX-License-Identifier tag in line 1 
 
 The patch then removes unnecessary license boilerplates.
 Now that we have the spdx specified, the license text is not necessary.

v3:
 [PATCH 1/2]:Commit log corrected, commit message clearer
 
Jules Irenge (2):
  staging: mt7621-eth: Add SPDX license identifier
  staging: mt7621-eth: Remove license boilerplate text

 drivers/staging/mt7621-eth/ethtool.h | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

-- 
2.20.1


