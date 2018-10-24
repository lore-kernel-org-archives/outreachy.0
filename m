X-GM-THRID: 6615772490286235648
X-Received: by 2002:a67:4551:: with SMTP id s78mr911071vsa.12.1540354567580;
        Tue, 23 Oct 2018 21:16:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab89:: with SMTP id u131ls762472vke.0.gmail; Tue, 23 Oct
 2018 21:16:06 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dBQx69+3VA5GztX5A31JdMk/TKnj8OcAsk4rPG19NVABIwyo8vulb5tZSntb9reFYfB8EX
X-Received: by 2002:a1f:becb:: with SMTP id o194mr904116vkf.10.1540354566718;
        Tue, 23 Oct 2018 21:16:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540354566; cv=none;
        d=google.com; s=arc-20160816;
        b=p37UyLXo7EcC4Qyd40R4aQ/0VkB6DJzvTjEmESvdnLtaGMW3Xu8cL5+yT3ny0f3bpa
         wstxkgUt9F36hZhS4uwo3CHZmGH0rmSvQSfaOA/wJucI8DjmzF93ncacFD4aZIUYdwY/
         /hAHkststpKeyzJXPtpWJH1HBnehj//UXwg5FbKIuEMIAQKF2akFeGFbHjdxBrySp+Ak
         jy4dm6eSCh3S+WjhGg9hd9sAvmlLnqXFRZe3GA0i85hs2LbGlvygZZCOXNrDbi24js0X
         6K9MyDB5Va7z6zczvYch4bwnIh3Ai2TcwjD3niLdc5NsRph1Hck0NjdD7yUSd9QwSoGG
         k/nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ycQ/OSvlznVSXeLKlajqE9q3XQmfQ8QY2TxC/pZs/Tc=;
        b=SnJ6+ftX92gkdKJXk+luDa8Og3ODfr7yyEONR/oZvzvv8q8ADHnLU5k6d5nEz0RBJJ
         zy3P3ZEtpJ9rDRiWz/v1wANHPcDEpJc6RARhm2ZdkbKcOLaXQymPmK05iq4M9Zk/xVgk
         WVZpDOZjVpfOtgZJ/l+Hfaoq5f8GEMl2fXxd6M8ncAXm2XodRmZcLsQ9jzxgbWlNinfm
         Aj2uomXlNw3sdpvJ08akYwHkynzCLK3BHKUYIiOHXY8P2dCZqrltkXn62EQdafH+zpRX
         gv3Xpz5Iffiv4dSHXm0UqNpGfrdyGM202nrTYHCPVwfSShzFGG9xe2Bngm6vHn1sPhR1
         xz1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NG6EIt0f;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com. [2607:f8b0:4864:20::234])
        by gmr-mx.google.com with ESMTPS id w9si113552uac.0.2018.10.23.21.16.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 21:16:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) client-ip=2607:f8b0:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NG6EIt0f;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x234.google.com with SMTP id k19-v6so2971711oiw.5
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 21:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ycQ/OSvlznVSXeLKlajqE9q3XQmfQ8QY2TxC/pZs/Tc=;
        b=NG6EIt0fu+vVvTVE9xPnMJVwnyT+Q1x/vLImDVdSkJSskpJ5gGL0UYaTvoWTRJltSV
         lfOvwi3n/GCXCVDwbXUiw+TCSrvULQrS04s14YnDh0gcOZgtCcXH4ur9g6fKr+7rKnsp
         Fk6LpiZqNfD4+axiaBji5eFdW2UKrogi8ffStiukf9+dNq8Kn2YyJjqnrJFit+78iOHU
         0AOVUTKPmhB3HZwZIeMq3Hgkpbgr11HuKzcPioOR6lo1n3HTnLY16izpIiz+yIG1/xEV
         65RcnffoYfl0QLXSC8LTlDvoc/BOcfnz1Hf/+CP7H6mYt5SYCu6K85IlBeIKjm5U6YTv
         6GBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ycQ/OSvlznVSXeLKlajqE9q3XQmfQ8QY2TxC/pZs/Tc=;
        b=oiTrVnN/xwitbY2G5NWsSij12/XiPwcPktHFlxxPppRE1ILTwmLr+MkCPdvzsTfPF6
         GtJtCP1b2pkeePly8IVxPlPR5xBT0+CtAsBYQBaJt+PiFPQsBVA9u3f1xBXlWD2KUj7y
         9VrJBe9fcIbcqJTRSSv2VfE6c4Y2vuc5ioYkTdgGbheW51/MEUNcKl/Mi7+X+PMuntZ6
         gE+wNDcF3OVCm0lC+K914ooHTBG0H1YU7zDYVvVJe2qA6uWLs7wXgcUTs8EkRvrgWUn5
         80obT3W+y/72xyU93VRSGRHfH7E+hT0HqwFrJI70TjlBNEJQEKCZhw2WFuI07bz39dfR
         KoOA==
X-Gm-Message-State: AGRZ1gISg7MHpd1s8WEfKxrecv03O/6ieDAQFKjjzZK5C7dXfzkf+J08
	lr7GV85Nz9oHdyFA/8dC8eqSxe5FQPg=
X-Received: by 2002:aca:e8ca:: with SMTP id f193-v6mr560993oih.12.1540354566236;
        Tue, 23 Oct 2018 21:16:06 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id j22sm1200846ote.61.2018.10.23.21.16.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 21:16:05 -0700 (PDT)
Date: Wed, 24 Oct 2018 00:16:02 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: gasket: interrupt: use sizeof(*p) for memory
 allocation
Message-ID: <20181024041602.GA2385@v>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Use sizeof(*p) instead of sizeof(struct P) for memory allocation. This
change complies with the Linux kernel coding style. It improves
readability and decreases the opportunity for bugs if the pointer
variable type is changed. Issue found by checkpatch.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
 drivers/staging/gasket/gasket_interrupt.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
index 49d47afad64f..8353ab50b3ec 100644
--- a/drivers/staging/gasket/gasket_interrupt.c
+++ b/drivers/staging/gasket/gasket_interrupt.c
@@ -322,8 +322,7 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
 	const struct gasket_driver_desc *driver_desc =
 		gasket_get_driver_desc(gasket_dev);
 
-	interrupt_data = kzalloc(sizeof(struct gasket_interrupt_data),
-				 GFP_KERNEL);
+	interrupt_data = kzalloc(sizeof(*interrupt_data), GFP_KERNEL);
 	if (!interrupt_data)
 		return -ENOMEM;
 	gasket_dev->interrupt_data = interrupt_data;
-- 
2.17.1


