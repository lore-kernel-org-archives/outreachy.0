X-GM-THRID: 6523255029551333376
X-Received: by 2002:a17:902:20cb:: with SMTP id v11-v6mr202309plg.51.1518813667825;
        Fri, 16 Feb 2018 12:41:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.98.133 with SMTP id f5ls647901pgv.19.gmail; Fri, 16 Feb
 2018 12:41:06 -0800 (PST)
X-Google-Smtp-Source: AH8x2258f1qqnyNthBn4FcNavNrPtJ5iVTwHplgLRg6stvzyhUmhuMbSr5EhZGDQO4ZiKsSWQNBs
X-Received: by 10.101.83.196 with SMTP id z4mr1664520pgr.113.1518813666479;
        Fri, 16 Feb 2018 12:41:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518813666; cv=none;
        d=google.com; s=arc-20160816;
        b=F++aasrgRUzz/0rOV80zMlDN4iuvfONP5zWh6aThl/g1oFmNj7N5J3DLoK/1mJJAX0
         CvgC7gAz8uThLszUOhwnqiJhE4/CFt12i8d1Bou3cSskALBL5EI0pRbwsP4sEFCfW7AG
         xXErdWbfIXoGP6GiF1KM3F2QkyMkHmjEN78jRwF6R1x06q266VfhpByRzRekKUv6GMUy
         ssLV7eY2URSOzJU55zo7Ueju7Rg4rNoNmmJAT4f9Aai3XXNu+VLQylQsIJ5i53oKYNsc
         DLEljJ1W+PtYzqNcnLcgvJh+zD6xW3jmSZrF8o1bx6py6hm7CeMe7qybyXLfZzOeFSWQ
         qDcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=sQtV6GuV9iJjW9/93n1lhHkUYR8L4TgOnimcwVMKlME=;
        b=lcaKtEZG9jz83stameH6NOFzS5U2bSY2zdUhJ45DXjboNovzBDda4DhkJYcyDShMMS
         BOv4dbyfPSFTAbxSm4Vtsq4nHV5kvFjgdHfrh4FfCSAZRRwMO1Gib3otPlk2f+irmWZ1
         z4mebjQJl2fPnGqh7FX2uH+dx2o3tESQt7ymXD2INLPNuMJtP2bWAnIJeB1KVdvGtaIa
         tvE50iyR7qPGsNhjRItBYWUD/Ddr21mQc2Gz3CNh7ZNQMqGIJwftR9iqN2lMgP0ZzgFc
         xIdI0ncNQvDJvTCR9sr48TuwKud7b3ua062b4E10bCTnBTJmLimiOWaiv45/snm4u/Cj
         oetA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QYNgsi+q;
       spf=pass (google.com: domain of sakurakhadag@gmail.com designates 2607:f8b0:400e:c01::236 as permitted sender) smtp.mailfrom=sakurakhadag@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sakurakhadag@gmail.com>
Received: from mail-pl0-x236.google.com (mail-pl0-x236.google.com. [2607:f8b0:400e:c01::236])
        by gmr-mx.google.com with ESMTPS id e6si227338pff.1.2018.02.16.12.41.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 12:41:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sakurakhadag@gmail.com designates 2607:f8b0:400e:c01::236 as permitted sender) client-ip=2607:f8b0:400e:c01::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QYNgsi+q;
       spf=pass (google.com: domain of sakurakhadag@gmail.com designates 2607:f8b0:400e:c01::236 as permitted sender) smtp.mailfrom=sakurakhadag@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x236.google.com with SMTP id ay8so2294239plb.4
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 12:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sQtV6GuV9iJjW9/93n1lhHkUYR8L4TgOnimcwVMKlME=;
        b=QYNgsi+q0udZXHLqoVQqiB/35Tn0HL2XKLm+xHemEEjgGYMdmYEphfTKgUSqBKPihu
         ha7pM28mWl+W0QSsv5gflb8KjctwYs5th3p0gcFRHqj62ITBsRS/otgEi90a61d1/G48
         nIJiC7HDXp/Py+g6lRwWj4FMXOgdnSmDhsNtvumFy3dPNtPw4zy6zZJe3oAzTliRP13A
         Hh2QYnljLBA0bMjJKwFiX/iZS49PhO1fIyz5jK7YTzL6yESP6v6aPaOCQ4nvqqxXjwr/
         sGRfe7676MoWUmbCgpBH6KK7B7b3ZV3kDdj4xBmLx06RVtiljm/4xO5lJEvLH7SGw37w
         0pZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sQtV6GuV9iJjW9/93n1lhHkUYR8L4TgOnimcwVMKlME=;
        b=Sb2O6mA6Z2I9IlmKaQxXskUcvsyhpUy7rfsIP/T9GMXOC2XC4uMGzCPZojjP8OnSzV
         PaSTkM/cKgwABJulbk7ce71L9SiKlbIBffdZozWihZxzOEhZOlnK4NKrENIq7Xc2VesJ
         FZE6za9vI+jmz6b+Fp0WcAKdwaXQuoM1hwT5yGmDj3IUTNXbxjQ27pSBQ1nvOVLQLCGe
         lQkJ37j9XC01hc0W5PlC8KS7BkFg1YAgldSwpTPmTuYdi3FCpGfF61tcSzD0ekyfeCO5
         9XxODzizPvx+bwFB/FmNpB4D/3AssO5bkKbhY8+HP3VgoyJqADeAkpBj+VqOmkWh2pni
         Iz2Q==
X-Gm-Message-State: APf1xPDXDGp4SZl1FW7Mi2te3VrH4b488g3uEdeDQzoC9wFR5VrYt6+h
	6ccHwMewjjcdSnz7lgiRaMzkLRZS
X-Received: by 2002:a17:902:a50b:: with SMTP id s11-v6mr1896186plq.440.1518813666097;
        Fri, 16 Feb 2018 12:41:06 -0800 (PST)
Return-Path: <sakurakhadag@gmail.com>
Received: from ubuntu ([171.79.78.116])
        by smtp.gmail.com with ESMTPSA id p79sm18696957pfi.115.2018.02.16.12.41.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 12:41:05 -0800 (PST)
Date: Fri, 16 Feb 2018 12:41:00 -0800
From: Ishita Tripathi <sakurakhadag@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, --to: 
	Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Fix checkpatch issue
Message-ID: <20180216204100.GA76452@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Deleted line break after dereference operator (->)

Signed-off-by: Ishita Tripathi <sakurakhadag@gmail.com>

---
 drivers/staging/comedi/drivers/rtd520.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/rtd520.c b/drivers/staging/comedi/drivers/rtd520.c
index bb400e0..47b7093 100644
--- a/drivers/staging/comedi/drivers/rtd520.c
+++ b/drivers/staging/comedi/drivers/rtd520.c
@@ -815,9 +815,8 @@ static int rtd_ai_cmdtest(struct comedi_device *dev,
 
 		if (cmd->scan_begin_src == TRIG_TIMER) {
 			arg = cmd->convert_arg * cmd->scan_end_arg;
-			err |= comedi_check_trigger_arg_min(&cmd->
-							    scan_begin_arg,
-							    arg);
+			err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
+					arg);
 		}
 	}
 
-- 
2.7.4


