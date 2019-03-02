X-GM-THRID: 6663442013681090560
X-Received: by 2002:a17:906:16c6:: with SMTP id t6mr507927ejd.6.1551530775060;
        Sat, 02 Mar 2019 04:46:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:97e2:: with SMTP id f31ls3287159edb.0.gmail; Sat, 02 Mar
 2019 04:46:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqyZdtkyXxLH8BZfqzrVqJxecibSRYo2cXmQB1TBHQHMP0GUVZJpNqWSOJ1bGAg5jSg5znME
X-Received: by 2002:aa7:c6c9:: with SMTP id b9mr1317755eds.7.1551530774208;
        Sat, 02 Mar 2019 04:46:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551530774; cv=none;
        d=google.com; s=arc-20160816;
        b=G3ofbSGLHIrgywk1E4LKUqw2hEtKPgutE472EsLe4q31EzEY/tk1yCeFohTHzC+DPE
         m4Sg1mjQWpGv5LKV8fM+QibVfH9yYq3knPOiiDuEflh3aASMcKOADoEI4HJso9KnHcUT
         cccnW6XOCyFJELzO4GCbxX4HeeTp2/1OEfr9frVzQJpanIRy1FU+EitMU6BV1jfvvhJ8
         sGs4vJuODzN3H+ItMWuQK8fmZatgEBJggpeJrqa0ehedliapFEisIEqlw4CQ9oOFgsbD
         KxCoIz3ne9ddsqMztJ/ee/oJE9tJgfPRqYGU7LJ0xYhk9x8A4C9fyXlEKtC/xC1/Lt6A
         /Oog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=UCFf7lY6ZfR5BAqax1yed2Tq/JMDp28/ZD6t7VAk1FM=;
        b=jSc3xI8XQcV6K5bUyBakse4tzJf5hNR4WuLtgValG3CqQWUTP3QKM2iLMf2qSksc9b
         iZpbOYFCXX5Y0vteCTEwWIX7ESFCNgvRvYOikKs7VSg6jwu16g/aObTuhPmZHeDSWhlF
         Snj8coBKyQcQ0A/n9lUQOv7pjWjiuIJOzIHzlNR1sYWqyY0+O9BQ06RFd4e6Yl9KHILJ
         9UMLU9ZZD7aGf34mvfl3x7KeeOKGPnlHZKwRe1P7HkMgB4asDDxXfIX9Afz4he0m+QPv
         XhSzvErNF25MZ+rLNr+LWxa0KFfShE5KaZRzciFJT+CnZatbo7j0bx8pYVW+ow/ebRcc
         8XeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YVBcdA94;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h5si31121ejq.0.2019.03.02.04.46.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 04:46:14 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YVBcdA94;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id l5so652967wrw.6
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 04:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UCFf7lY6ZfR5BAqax1yed2Tq/JMDp28/ZD6t7VAk1FM=;
        b=YVBcdA94xXByD9fjhrVF9B3aAD3EAoavHICW6W+QvaqplOrjpE0wzHKtSeLceFq0pi
         EwoA4AosO18n1WCfyC7svpav5crrdytC9hRrfvUhNLvEfBsTMF8G3A/Cz/WE5eUk+gdD
         kY/0a9uuzKlTeAflb6L6fCBgLWUVv/oXSI7a/X/pUwV+OBxlnCDTLp+qR0QyHJQpek35
         EtdWBacHk9s2LQJu1xn601VnU/zDHEjbiYCMHZO6L689vRgryPWFD+0a1k1Cy9ucCoU8
         ebP4XmDK2SRRRJ9nYi9C8k4wgRfMXsB9NskCEZfln0DYOAOPM6F6+wHjo7pK0hg9QWxi
         ICHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UCFf7lY6ZfR5BAqax1yed2Tq/JMDp28/ZD6t7VAk1FM=;
        b=MK0ybYSjuv90VZPHkrkPvEn/vjsWdCsQHqpS+v7DFSWMl9eghbuTpsWXxETotkL4Yb
         p4Vk8LjLjoOzAhTOAKORr3c2bsQBfkqMdzjj+6resa7zR3yt0jg/anzamKVa4IzkbR6B
         xNw9sVyKQlXn+31Ub/ZX4vol9S4oLkouvRMFe6To9v8/sp7vWufdoLbdiWY0FuYcQWDw
         YF4n5nRc8C3vTw4AORfZSgizWZWsg0ir3g1IWF0U7VSuIbhUviahm/KjWE2D+mh5iG7v
         g1F/0XochyLB0VjZP4Bpp5oe7RxlH9PlvYIc1S7fainecZz2IlDlEarAljRrS64wfT1U
         R+lA==
X-Gm-Message-State: APjAAAXrO9KnyoQdYF7HmuJtybW478Dq+Vxcy1mNbfqObtqH9KNuIuzO
	juVMkzdhiYxp3P4A1jvwkef0mTQ=
X-Received: by 2002:adf:f011:: with SMTP id j17mr6845453wro.166.1551530773740;
        Sat, 02 Mar 2019 04:46:13 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id y140sm4248367wmd.18.2019.03.02.04.46.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 04:46:13 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] staging: mt7621-dma: SPDX license cleanups
Date: Sat,  2 Mar 2019 12:40:48 +0000
Message-Id: <20190302124050.30558-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

 This v3 series replace SPDX identifier GPL-2.0-or-later with SPDX GPL-2.0+ identifier
  

Jules Irenge (2):
  staging: mt7621-dma: add SPDX GPL-2.0+ license identifier
  staging: mt7621-dma: remove license boilerplate text

 drivers/staging/mt7621-dma/mtk-hsdma.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

-- 
2.20.1


