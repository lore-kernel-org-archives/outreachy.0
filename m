X-GM-THRID: 6615237556487323648
X-Received: by 2002:a67:7bd2:: with SMTP id w201mr45605322vsc.7.1540230018850;
        Mon, 22 Oct 2018 10:40:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7191:: with SMTP id l17ls169136uao.5.gmail; Mon, 22 Oct
 2018 10:40:16 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eVdgFKA3hDkqTT6EGy/XTagVzy7bVWf0p4ozNoUitpmpFVgfDHaarTr+RR48YsM39A/Uqz
X-Received: by 2002:ab0:61c9:: with SMTP id m9mr5734501uan.2.1540230016585;
        Mon, 22 Oct 2018 10:40:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540230016; cv=none;
        d=google.com; s=arc-20160816;
        b=ZkrdUsGo71S7WfpJzBeR1sUKTbvqrVgUpMAQNz2bEWt/Rs1IBrht3OLISNOifI7PG8
         ra5kjezFJFnFdZNA20yrkI1kcKR5LH0RT00/M+u7OfhjyV70x9N9dNBiERidG649Ph7s
         2CH3VB4UFyt7QoIIioDcFnQWKHMn3zKCY+EZMGN4Im6/MMvgHUFROfGYFSB+Or4ehSAY
         gfYMzHoahPgGQes7W5OcSVnOd+OlwcTKVe1j0cB+SyjN7FYBPkg5TdyaykHH6A9tFfAn
         TlUyXVgImdLRoYo8uywq0py/cRPghyQgiG+Sp4IoiBiQMkfroxa7BEyiL7Ce4GXA3/A7
         W00A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=GabVcolQiiM/cvjRu/paDjQ9X6kx+4lT4yh/V7ThJTY=;
        b=hh1uiRbtS/oVLKm3ee0d6xPUbj2T7NGNsd8he3YDyDAQOru+MyCUVOPb3cmQgkZg8I
         aFA9CJRwzJ5N1KBE56XB57vPad0OKF3hcPJlG2vOxfGblgVOfD9GOchoufyKInrrX6BU
         f9QKTRWfqRxHahJxnr06mlCx7QFfJdJvWGl+zHwK18ExU+ECTFnMgS5g3qsuPR3d77PM
         yZ0iMshCBfVWtzdtxSe5ZJWTrwGxhzBZ6TdovwO6Yda6DREh/sWJgvh/oxhDaAKVlu2P
         wDKcEnBd22aVQhFgceDW6buOaW1+hVgBpiGQTmDlKw9fxUWlsIZg3QF93yGDTl6zTxa5
         onNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pwmIEvnh;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id a71si1699489vsb.1.2018.10.22.10.40.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 10:40:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pwmIEvnh;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id l1so40877065otj.5
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 10:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GabVcolQiiM/cvjRu/paDjQ9X6kx+4lT4yh/V7ThJTY=;
        b=pwmIEvnhR5VihGZtRvuQV/cjZNkRr2ZmHTUNCYNnwh3cV+H7QQr6hxmB//9B5JZrzR
         oZIQ37489i9KFUmCrJsBVO2j+oGf1suIM848ywokbEo1Ztcpy4odLbyKNZgGdRMmBMhp
         xOUASc/Gh/2a+did/Z0mRW7Dp12rDL2QupxaGtZVHgEkNmlB2NaH5xEF50vEFrmvEg6G
         BurJLjB8fsVI7GnZ+cNvomM1Nen4nr47KLat5cMKVVZ1EF7d405dfBagGzwtu5TZJWhq
         N9pDCiI7lO7Eqbe9/HQUpbgndJ0xxG2TFfzTsiN1nFtxLvn31eEjPhWZNndcNUDbZMqq
         NwLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GabVcolQiiM/cvjRu/paDjQ9X6kx+4lT4yh/V7ThJTY=;
        b=Np/4j7AzZfofg+TbtsCXcaAh+2P87DAL6yEAoXQiY9KydKucS5ucdkuUz0N8ansLbx
         3b4oXdPz14YF2A4AdTp5aKAIP3sgyCMTJunUlMxnHbzrfuexB6Ya/18bjry8UxSiLEuV
         wpIrtYdYKihQ8kvR0ftTwvHONxuR3Ff7U34wi6ptkiD4hG8GyaAcZoMGU0Kzt5b1fWLj
         l3JBRnMzsQn5U03rhYfr63K5BsepzvlZ8dd3yvyAv9sG4u06lVIyCmMSNaXFf7Y0MfSE
         ieAxzsV74fTPosm4fk5Y4LHANU3vutlJ//Y1CyMYy+SXuhJJVI2jUYHvYrG47TdkRpHi
         8mOQ==
X-Gm-Message-State: ABuFfogCkI33dB2oxufccTmf5u9Bb7ObdgO8nRgDnDTqPEyJS2wIwqIx
	qtrR1I6kPIWx9O0K1sxhK5dulHbRm7I=
X-Received: by 2002:a9d:705b:: with SMTP id x27mr28233398otj.200.1540230015927;
        Mon, 22 Oct 2018 10:40:15 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id s187-v6sm10423978oie.31.2018.10.22.10.40.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Oct 2018 10:40:15 -0700 (PDT)
Date: Mon, 22 Oct 2018 13:40:12 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/3] staging: rtl8192u: Fix misspellings
Message-ID: <cover.1540229302.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix misspellings in a struct member name, a variable name, and comments.

Kimberly Brown (3):
  staging:rtl8192u: Fix misspelling in struct member name - Style
  staging:rtl8192u: Fix misspelling in variable name - Style
  staging:rtl8192u: Fix misspellings in comments - Style

 drivers/staging/rtl8192u/r8192U.h          |  2 +-
 drivers/staging/rtl8192u/r8192U_dm.c       | 10 +++++-----
 drivers/staging/rtl8192u/r819xU_cmdpkt.c   |  2 +-
 drivers/staging/rtl8192u/r819xU_firmware.c |  4 ++--
 drivers/staging/rtl8192u/r819xU_phyreg.h   |  2 +-
 5 files changed, 10 insertions(+), 10 deletions(-)

-- 
2.17.1


