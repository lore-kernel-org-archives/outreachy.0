X-GM-THRID: 6807521221589073920
X-Received: by 2002:adf:f14a:: with SMTP id y10mr10815850wro.43.1584999547173;
        Mon, 23 Mar 2020 14:39:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls2627154wrp.6.gmail; Mon, 23 Mar
 2020 14:39:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsu/FNlU9Q+42BdZp8c6sOI4czkFzH7qDYjCWyuKIohcws0XxQaIf0tP6DaCa1+SyTZOZoT
X-Received: by 2002:a5d:4ecf:: with SMTP id s15mr21564843wrv.302.1584999545865;
        Mon, 23 Mar 2020 14:39:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584999545; cv=none;
        d=google.com; s=arc-20160816;
        b=qXW7t8eeRcgHwjnHGaXwsN6VZScVISSyIjuXohQECt/Y50KWhcKeiT13DodV3tiS7R
         7ImMSZ1altOlVYXOWxkFj9Vfg4KE98dt3uTexW554n5OKTmRRfrfiEhRX6CSJcuzXOLd
         219NcGCZumXFQWlH7XqjE8CTusGkfJw0U95s7tRPPc0/CMoO/ikMZi3bKHeKZI9VETdS
         Wx5UZ8/NaTm2qvNryPyDfYsMd3V1L9k1lm5pUviJZXBRJe5+zXQTY0+YRWorJYwz+Y1h
         YbUzd64GospwBIaJfy0Dd4oegBndPjq1yab+p5fkpiQGhGKco8O8aMFGDmNuAbVhC5js
         nSyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=xYSExYQZyUE+75TTsYFHBfddATY7/N4pAWCofNa9rcc=;
        b=j/+Mpl01tFEvrzYr45VAPaLdRgl5xDAHKTpT6wq2dUz8p02plU3JfRhWXXXRIi/ZDN
         OcwQv3HWDjTune2Wvu8R3+16fj0Hcw33OK5lwlkBVCwkU1lPPLhLDw2XJlsXRuFcl/m7
         ikbOgrnmV29jLgy+w1AHQwLi31ifJIf7l27OhZMlnHMSEKb2b8N5YaxfDD62bMZjq9r8
         GMw+StQocmD75TcasFxxzHMJTWtgujymFwFwS6qAc6MPwyALBrKdKT9lfiEzsGe8eDVh
         f70ptn2URYCHgrM64h5DgWRE52NSLKR/cSaXGj/t5w3q7faJTIvZA0/YCA2vtSWbVz6c
         7biQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HnWcfPb6;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id l8si133133wrr.1.2020.03.23.14.39.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 14:39:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HnWcfPb6;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42c.google.com with SMTP id b2so18990447wrj.10
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 14:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xYSExYQZyUE+75TTsYFHBfddATY7/N4pAWCofNa9rcc=;
        b=HnWcfPb6JFnpKkJRm9mp/BLUBg/vOP97ucmNE3wRmWwYJXA31TN4HijPTSdnycJiZW
         qxMKb58gvGoq/mpEk8+YrSqpqK5DHp7BDti9qUIPDVqA5nSMByGcNXMTfVUssyIzCwBW
         zL1d18bkNBfadPmOGk+NzSym1COltyimsSdbIEgcat0ohLEX7CRWvL5RxhdNoNhRWmIu
         TKG8oaDiSOS0u94lD/v53FRg4qeCsMGjwm/bcA7v1OUYCY7cuKlCzknOBGE7DYVvSrha
         i5PKfM6+2ISo/gSL50X/qLS0vh44xsYwq5cLPeA6syCGfRdZLPaAryAtrTAOq2hSgJz8
         1pCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xYSExYQZyUE+75TTsYFHBfddATY7/N4pAWCofNa9rcc=;
        b=QvF5PhEEpk2lWjpWLsMkZ7KHlsCtGR5cDXqa/Qt+YYOduMbm4r3ugd9tHGmQGM2qHa
         nH3ja1HKL8Ol/BRcpMWlVdCLttTu8/JuPdVR5ekDNpHzbA18+ioX8KvF1+JFrg/9aDzF
         YLGWdGdRg02ndtPr6v8qEBCNDO5LPFELY6dzXaUNShfnQiBtv8JtDzjnHSK0RbQka1fM
         XQwgw2TriEPkchrRUJjwTezLuIkni4D1WjahVVvGbVnF4ZANfjTLzfUiCXJhtsK4ddi4
         stUntCllc0LKBVBhtCXRTCALqNnjxFF8CuJs62+UXd5XmSjB1asLUfljoSdGDmagXvvg
         KujA==
X-Gm-Message-State: ANhLgQ2J/0AjzKyXd64QhzjLWm6X/k2F3CQ5S6iacPHVyutmiRwFZVaz
	NjEQhozz8fHqwSkktOmdYgE=
X-Received: by 2002:adf:ff82:: with SMTP id j2mr25255211wrr.48.1584999545675;
        Mon, 23 Mar 2020 14:39:05 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.222])
        by smtp.gmail.com with ESMTPSA id w9sm2844816wrk.18.2020.03.23.14.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 14:39:05 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 0/3] Staging: speakup: Misc cleanups and code reformatting.
Date: Mon, 23 Mar 2020 17:38:42 -0400
Message-Id: <cover.1584997290.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes to clear multiple Checkpatch.pl CHECKs of
reformatting multiple assignments, proper use of
kmalloc(), and adding identifier names to function
declaration arguments.

All modifications made to match coding style and
to improve readability.

Sam Muhammed (3):
  Staging: speakup: Avoid multiple assignments.
  Staging: speakup: Use sizeof(*var) in kmalloc().
  Staging: speakup: Add identifier name to function declaration
    arguments.

 drivers/staging/speakup/main.c      | 18 ++++++++++++------
 drivers/staging/speakup/spk_ttyio.c |  2 +-
 drivers/staging/speakup/spk_types.h |  2 +-
 3 files changed, 14 insertions(+), 8 deletions(-)

---
2.20.1


