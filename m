X-GM-THRID: 6671020394532569088
X-Received: by 2002:a67:2544:: with SMTP id l65mr4335516vsl.240.1553217972686;
        Thu, 21 Mar 2019 18:26:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8d06:: with SMTP id p6ls1625751vsd.3.gmail; Thu, 21 Mar
 2019 18:26:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw+X2Itz/sVIJuRjm0cCNPxodtL90wWIrWHurBqXP8kMPrdF02j+mV7UP1wRFwqrVgEwliK
X-Received: by 2002:a67:cf84:: with SMTP id g4mr2039959vsm.67.1553217972024;
        Thu, 21 Mar 2019 18:26:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553217972; cv=none;
        d=google.com; s=arc-20160816;
        b=SF38O1gaqOMyoX0AZS0u/z7JjFoeGdBH4Uq2nev7LkFhRfGcXr3CcMGfXnjKPzPSP2
         tHuNhIKWSSENdVS+iVqltkhYoxlEfGqjnWdlepcZqD5eNGqjFNTYgxeTyHAyO2RWRdmg
         93n4vKDB0jui9nSqDCZ/nDWiKIOc7x8lsHgPcXoByYoXDMWHD+uP/sISWn7W7yZtMZB1
         yOWgQ7lEHG1c2mhDEeNrbbLQlKdby1rcQWPI3tvlS+5MRh4vs5I15lo0xmZV3oF5HBpn
         N6UwSEiYLoRcTWg29kqBgIAb8pTJ+8Y0h6oV5aEDQnwa8glcHc0onbaI89CkT9F7AWlq
         Pqeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Nq2wClJJaHGjfzo08+e3V1cZ204ltrn5gVNhDDiQRSU=;
        b=YvFVOZJ/mFPRWeJknjJj0HAvDmctd5BXDCctajzMoH/II6UFkzu61BF38Z6OkY+UaL
         QvZYKmubiTwIiZj5MkkbS/ETsIAg+yF2fByrw+8wMREBVh9RdgA4W9zUij4eYE0Ny+Lc
         2hZ+0scUuzhhKNK9FDbF8dsaZoePXWg7t+huNcBR4/GVT8KpcbUoqp0mzhPN7i0wXhPg
         gZ6I9p00gIAswPBTRXQFPxNj1kNGb+uMjPWUIvGpSrK996hnihPzPFfQr2FBiGJ+mwMV
         fj3qNTxCuH+uv5A0oY+yrW9LZH+UE1LBq+dyzWAKXrs5S2RTm85v9b+7UH8QCo/H9t45
         DH6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iTlwCJm5;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id e17si349390vke.0.2019.03.21.18.26.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 18:26:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iTlwCJm5;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id 3so529834oir.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 18:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Nq2wClJJaHGjfzo08+e3V1cZ204ltrn5gVNhDDiQRSU=;
        b=iTlwCJm5+E4+p92fxq9NobXdaMcWRB/HBh2tDeqtXYW5m8uO7MQ0lAL55fYqzaZ1nJ
         mfHdvWnEF+hsWj2t10aquLtuF2Kuv95SrxIu4lcEK/4DUfPzJswf0ipTzyULU9hGEgLf
         O6ztoEBeQvEpq2BscpBQmm+RsT1hoyyIW33bQBGoaal/8dcX41orcozLtMBuyfv9Ksfs
         MWThn5v7bhuI4rK9uNhW3RpduFFxX0g4lwGEbyY4SyE5U16hXLfWmrHyY1nNiJBLB8Jy
         T91M/T9XKLyp0rkmQb/0qscGUQOMbNHLGdzfmGenrggC1C1sF2ny+Kby5//tBoz5mZRp
         Dgkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Nq2wClJJaHGjfzo08+e3V1cZ204ltrn5gVNhDDiQRSU=;
        b=t7MGu3aOY04ISIQh3qXERhXOw+9UZkGY03ntM5WhurdQ67zMh1pai8gYbNk3rhI1Pd
         8kbhZm7bgTgKd+nyufIh9hktdyB6qhcHfrhyGTOjTPHaJkJrAWJeJSLgkDVlbl+v+39/
         wXPXe7UVumBmICvbDBsXbOC+pTeWOKL8vbRqrf8KWjEwYH+Yq8rr7VLwg6cJSLhhpj7o
         M0xX8Mw8miGxSJujuKxeApgzNtQ38Jco6kPM77Z1x31nqnq5Yi+V7QDPuQ1nq7alTpOo
         GO5hOKiEp/gn4IuPOp26g86eHXcgAmCRGyy9MzstLATpjWma2RvMz1FrYilOuEJXE3KC
         CruA==
X-Gm-Message-State: APjAAAXLAEsYAOxS8pZHVEYN7nBT5WTfHXcERQ2BtKpFoeuhbgmug3Pj
	Rgzmlf1sbaWONsk1KU9IvVs=
X-Received: by 2002:aca:3306:: with SMTP id z6mr165827oiz.45.1553217971282;
        Thu, 21 Mar 2019 18:26:11 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:c92d:a4c3:eeab:413d])
        by smtp.gmail.com with ESMTPSA id t24sm765904otk.16.2019.03.21.18.26.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Mar 2019 18:26:10 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 0/2] Remove macros and use BIT macros 
Date: Thu, 21 Mar 2019 20:26:04 -0500
Message-Id: <cover.1553217781.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset does as follows :
1) Remove SETBIT macro and use BIT macro
2) Remove RESETBIT macro and use BIT macro

Madhumitha Prabakaran (2):
  Staging: media: davinci_vpfe: Remove SETBIT macro and use BIT macro
  Staging: media: davinci_vpfe: Remove RESETBIT macro and use BIT macro

 .../staging/media/davinci_vpfe/dm365_ipipeif.c   | 16 ++++++++--------
 .../staging/media/davinci_vpfe/dm365_ipipeif.h   |  2 --
 2 files changed, 8 insertions(+), 10 deletions(-)

-- 
2.17.1


