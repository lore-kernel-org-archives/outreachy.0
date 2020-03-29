X-GM-THRID: 6809434547497730048
X-Received: by 2002:a05:6808:b30:: with SMTP id t16mr3653731oij.66.1585445028656;
        Sat, 28 Mar 2020 18:23:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cd45:: with SMTP id d66ls5948578oig.7.gmail; Sat, 28 Mar
 2020 18:23:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtvGEGll4RMe+pw7rUMfTlHihVSLNtdCyH10ii3offytwxRLR86ioIrkDjIu5D3z9TQE/iQ
X-Received: by 2002:aca:5f8a:: with SMTP id t132mr3794588oib.132.1585445027466;
        Sat, 28 Mar 2020 18:23:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585445027; cv=none;
        d=google.com; s=arc-20160816;
        b=UDQmSW6bhX0P9EFenHf8U1J+UM2NZwlej7HHDmgbw4RCxfC3NVztQ0oz6uKE4DeDvt
         QnefGWuFcLUUiIR1IU+j6yr1w971knlBieiU0jwdpBy1W4uyCt7oyCyb+0Is1AuSEBVD
         2vqX5i6mAlHbzZZjoz8JtoSVaFaXDfb98F3TbcBvObphz1qpWmnZpS1gsYvKqKTHZKWO
         c8FY0D3tM/7XPN+AVsEsJljDHXRtvrR5RQVlXCa+WMZ1lfLHOHCTR1T/V+jp6MHeEXBD
         OkA+vbTedD08zr6+UUgAtCVCRjsc+podvSUA5eTY8bRX7G0nwq6sBuM8FX7XItaVXK/8
         AwaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=UrKswLECvLF50VGZEIWpbT/sC87+pcUgEL0QEs27/vk=;
        b=tLQGirWPDkqFRb4z8bC+or2clTEvnpLs1GJONFwq0mSIgrdKZ99UOO1LUG+Gmy0aHh
         1hURLdl4cJny/f46hDjJnN3gpwUaHibd2FA2yyxaBfP4PC46DVe6duuZkmuo/arpve7K
         +exiCxFWq3eZTpU2FICai49ius5Om6cvgr8QvRfwsWpeZ7jlu9yJWEarqwGC3d8eGelV
         QkldAP76n3TJIgzMUOny6K6daITHdndyEDDp7HHpc0uEa8Z7AA0Xa9f5jhEE14eMCgM5
         wdEQiv5J4uXQeg0v86b57uZQFH0ieUQ/O5m8SLbB3kU9K5VSqJz/a0U2ksNR8aH5tS2G
         b6lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WQ7tSAkk;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id d16si819592otp.0.2020.03.28.18.23.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 18:23:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WQ7tSAkk;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id j1so6701984pfe.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 18:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UrKswLECvLF50VGZEIWpbT/sC87+pcUgEL0QEs27/vk=;
        b=WQ7tSAkk9jW6Stl6Awr7GaGCyCsPlfFXek9EI6dWTU3LxVkUVFDYS18eYfDY3K+kkh
         MCIqqg97XMgFGogwjKD+d+HcN79JXOy4BkW76ZpQubk/Xe+ZDDeCd6KhFott46Dn+ALR
         JdQ2btRTJ18DUA89hMT6cFQZn8GIZOFFn5maKaTNUZRE87jEmTyJUnSn2L5Dtfssl5iU
         qsGDRcVMMbfQsYiEody49PUaRdlhOTL/FEz3xKNLPgvfTp9vCLaKLGiXa3VL/P8PXwMn
         n6pSYUp8WALksH/rR4jpMbUvU+hI8s6WMEiDMIp4vaK9uzck1k/l6BezbkYHKrad2L0z
         9YBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UrKswLECvLF50VGZEIWpbT/sC87+pcUgEL0QEs27/vk=;
        b=oc76lEuHS33hK9u1RTpc3DmPwYpAD66vptsY/mp2MejsNOxLWIwJ8wgdXSNc37TeRI
         n1wsDaII3cc/Nx6zT6Aio2Njoi0ucwZ54IPEPqjQVrd4CCK4KUiP4mhydTkaJ0nlqmAy
         LGQmOVvxKx22DLewxmhTq7fuXWHC/CArdsbPXeXf2kzGeZ3nC3poVdiMtDHzhgu0doIa
         UdOhvt4t8l+wRd7MyKfvdFJGrZfNJ+2Oenw2YOqm9eh0AjZrrBaSmLQhaBS5BUBn6+5L
         KESySPdQ/6QvRzmp4rX8wz7iR0qHRbjmbvCyyr/y2j9krTN161xcKuYPNc5V2z3Rk3ET
         8I3g==
X-Gm-Message-State: AGi0PuZ1RD7aM1L2ajHy/kT7zZHTrK7A6AnIdKC5nZ+7htrljJ+7bhMe
	f5YKrZcDzU+aFTo9CxbhTGs=
X-Received: by 2002:a63:553:: with SMTP id 80mr1770376pgf.147.1585445026768;
        Sat, 28 Mar 2020 18:23:46 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id i34sm6713074pgm.83.2020.03.28.18.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 18:23:46 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH 0/3] staging: vt6655: Remove uncalled functions.
Date: Sat, 28 Mar 2020 18:23:39 -0700
Message-Id: <cover.1585442480.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset removes functions that are not called in the driver but
are prototyped in card.h. Each commit limits its scope to one function
definition and related documentation in code. References in the
developer's initial changelog were left in place.

Functions were checked for calls using the Elixir Cross Referencer and
git grep.

Briana Oursler (3):
  Staging: vt6655: Remove CARDbSoftwareReset definition.
  Staging: vt6655: Remove CARDvSetLoopbackMode definition.
  Staging: vt6655: Remove CARDbRadioPowerOn definition.

 drivers/staging/vt6655/card.c | 105 ----------------------------------
 drivers/staging/vt6655/card.h |   4 --
 2 files changed, 109 deletions(-)

-- 
2.24.1


