X-GM-THRID: 6751717661102571520
X-Received: by 2002:a50:8a90:: with SMTP id j16mr3681282edj.283.1572006768240;
        Fri, 25 Oct 2019 05:32:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:fc1a:: with SMTP id ov26ls2076323ejb.13.gmail; Fri,
 25 Oct 2019 05:32:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzgCy7xlHwOYsxhEJ5EgOniiDw8ff1+D4kq5G7CAJ79GOyVLLueq9zMd6pwd1d/Q28PavlN
X-Received: by 2002:a17:906:1dd3:: with SMTP id v19mr3260782ejh.35.1572006767517;
        Fri, 25 Oct 2019 05:32:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572006767; cv=none;
        d=google.com; s=arc-20160816;
        b=Fxkn2cW048WQ32AK37OV49PklEchzyORqx07txMgMoefP3G6tqgUoQrkpcQsYbSzK0
         oVT9xruVQ+r3hZdeaONIG1WYRgbMIO5ibp+h2nllq8NfKqrNje8jBAxB97WYlFU/eCRx
         vUvrI417DjRH1sa1hmbA5f6FFq5695X3ZBWW85S4nWbTy6tPpSttqZWQUvW52Ibndnp2
         6q6QENFm1gi9CQzx+xFcVOMNNebdYdEqQi20wfh/dtrdtIROgpoFfXI/zL9DaxVlq3fC
         AOdbZCSzAyE6DSPh1Vh7Wm4zTWGNf8gwTZyb+BS2fCUkWA1Yd26OhFeVm56tLkYuuCo6
         EJCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7wpOFvau5kF25hmswOJJ79SJ2aMklBS0KaOYqpwGCWY=;
        b=VjUkW8edNnoDkoprjw8psKs2Im7UTgTqjoR8uSMom9mcfGOetIIr/XWusLAw61tdta
         7dgVpDhmDASbb1sbUo6vRVvLexaK+KALj3FSkUtLxaEYgb6T66Gn02D0tVktPd+RALbR
         5+Pp9dObPneyMKuf5p1c6wR/k5QZ7efFTEsUzECj3tZN+eNEeR7gFjSYIKb1UPfc/Ffq
         JcJxJoAL887W7DdowrOAUhslIQR3xBGsnrW2OX+PQ+a5KIvqoLpoBYfprgxbxiq2Xfi+
         759HQQGo62iV47wWDdzaPX6YizzYP4c2D48il/YsuGoURzIa8a4iU46JU/sBedLnf0Nt
         lsPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MFyNfLiA;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id z18si82510edd.5.2019.10.25.05.32.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 05:32:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MFyNfLiA;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id v6so1855261wmj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 05:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7wpOFvau5kF25hmswOJJ79SJ2aMklBS0KaOYqpwGCWY=;
        b=MFyNfLiAuoiJhjneYNc5nC83iPEcDu3663RZ+zamWHQHjOFiDpVb9PVtZgB6DSwrfW
         4maDqbUtKS0caQJxa758WmHlURtULBNkIYDctwOs/8IM9TeI5ClqwM8FiwI/aeT8yXo2
         koWIeUdNMdK00+4SEWQ6JHza1T1eG+hRyqs9GhFhfBc064s/OZQcLhQZl7fQwofSxoOg
         RNu15zyPIOWfrToaUWU9DKaKcrnHdzsnaXhwpAf/ugKB3Q/S7LiqcZaMWh4c4TJdxza8
         4/yr1OaiHVvZFo4sp78IxP7AOpm3R9lKMdiiusOfH/AIqVArOlkJx8oyUBRHbt9PIwr1
         N+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7wpOFvau5kF25hmswOJJ79SJ2aMklBS0KaOYqpwGCWY=;
        b=tx3VZF92lvDzqNU3yjqQILFYCRHVaoxm8QsuN9UN2MUZGQ1unpTCybKf2ZuKckYkVt
         ThDBmQ387BCVppNkFKelIEgrkR7lLACLn75wDjyajJ27SBnnL82pCfAZlJNRxjgTraZI
         1PxGRNOH/8gpTzq+RrHZCcqDjhqH4xWVZJpdpB6IzI0I+EmbnitFE7ExhVeXh4tYvA0J
         fCSpl2GE0hPQzHiVgVPFnYW+YgMkMRxcwBdZpzLv5JoqAEpUY1uhwrB3BFbCJx20pzid
         pRpidhM/wVwhuwUhfj/Ilfw4ds4KOpnvkle/V8a4qr3q8pYTWI3DyiovxzZJFyE4kAq5
         XBhw==
X-Gm-Message-State: APjAAAUfAtJ0VvzyT6mVwh5QfA5iQBANwtAnA1ROJGEVAvRBkYDGjfs3
	+MbSGTpMOlQNpkKSlB7kvyw0zp5jEnU=
X-Received: by 2002:a1c:2c4:: with SMTP id 187mr3577246wmc.78.1572006767272;
        Fri, 25 Oct 2019 05:32:47 -0700 (PDT)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:8d21:e4df:588a:d177])
        by smtp.gmail.com with ESMTPSA id i3sm2342489wrw.69.2019.10.25.05.32.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 25 Oct 2019 05:32:46 -0700 (PDT)
Date: Fri, 25 Oct 2019 13:32:45 +0100
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: clocking-wizard: Remove static function unused
Message-ID: <20191025123245.GA13135@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove static function clk_wzrd_suspend, that is never used

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 .../staging/clocking-wizard/clk-xlnx-clock-wizard.c    | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
index 566075f2972c..e0aaf4b276ea 100644
--- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
+++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
@@ -99,16 +99,6 @@ static int clk_wzrd_clk_notifier(struct notifier_block *nb, unsigned long event,
 	}
 }
 
-static int __maybe_unused clk_wzrd_suspend(struct device *dev)
-{
-	struct clk_wzrd *clk_wzrd = dev_get_drvdata(dev);
-
-	clk_disable_unprepare(clk_wzrd->axi_clk);
-	clk_wzrd->suspended = true;
-
-	return 0;
-}
-
 static int __maybe_unused clk_wzrd_resume(struct device *dev)
 {
 	int ret;
-- 
2.17.1


