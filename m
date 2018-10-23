X-GM-THRID: 6615663139748839424
X-Received: by 2002:a9d:44ac:: with SMTP id v44mr41618116ote.42.1540329107328;
        Tue, 23 Oct 2018 14:11:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:542:: with SMTP id 60ls2474682otw.14.gmail; Tue, 23 Oct
 2018 14:11:46 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61cBls38U6PYBNywyQVWqzX8tzkX6OFrCX9DI2EF6Bfg2fPxz/p7h3V/rhmP63WNZFR/QPT
X-Received: by 2002:a9d:20a8:: with SMTP id x37mr42301067ota.23.1540329106584;
        Tue, 23 Oct 2018 14:11:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540329106; cv=none;
        d=google.com; s=arc-20160816;
        b=n+C5BmrrXb6xCjtCklKBcQwSH501AXVzLrf8UvDef4lCp3dkKWCQtlgM5ODMqOAj9N
         s9BVg+Unzf7zLzYo/2dDWfO8mRQYJuRdNl/k6KeUtu7c4vadX2obe+BB0xoX41KcIWWt
         WX0IWSWz9yupYbTFNUL3TZE58YrkLcNqyKrC4U3AP+Cd9jB2BpGoPBLNh5BB829fti9B
         fgnaPfDC6IWsizP9t49wBjaYsw2gAFnu3CtWoNouZfqx0eAXI1E5j23IjeVxfVsmMOIb
         69DoYbXfrEDj04ECn5IX4ftpTuZPy9D/q53arXGyHF9XFbssuPsfFVAH7VoVCAG4uo6H
         hCQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=DQXnUIEVHWgnZEkW9jyhHe79EsB2mv6DMGS2qxR2lhs=;
        b=P/0D+tvoci0a2SX9Y/da+K1YIboxT5/odtSObC9youeYRSycXTwworoplD02gZQnJ2
         NUhqPPwpI0fr9rRZziETBtFRz5Fn8z5nV1dM+JQEeHRSkR9XWWUhVUmUCs10i9mZ0DqG
         0LaoQbbgyDWMtTGa9hb6j5uGbzgGOJzhjlFIaD+BSUS9LtwgHCh6V9QIRKwDpPn/pvmj
         Qsb1tYL7bXlaKTyej/5U9FKbk3CZU/Dynt6qJLh4kCHgnBaO6B1yyNKwt/oJsfInk8JV
         tv0q5AODx/eZvFHs6fZqFaw+AqOsYecyV5L6IGyrPK5H6rL6g5nakuSBnMsel/YKpwjE
         G4sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WZDW7Acu;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id e36si121028oth.2.2018.10.23.14.11.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 14:11:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WZDW7Acu;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id l197-v6so2334513oib.8
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 14:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DQXnUIEVHWgnZEkW9jyhHe79EsB2mv6DMGS2qxR2lhs=;
        b=WZDW7Acuv/k35mRuZKsKjFVhjG1FZV1X71hyVZsBwQjmCgeJts3CjvnL6Fqnmf1xWi
         7H7mDubvX9R2A2FBC++muHI6HE0vDyOehqtaz99FTfASuFOeII23gmiN0oEFOwa35alq
         F1OgyTea6mJzIBNIqo71hm9ky2fiiDHbPxYFyiK70DXLltmt4+ExNEzBB/Byj5jWLB22
         Uo6Vg7wL78wlF4Lg+k3z9afSp/CtRfu7EXdBiwMYv1uBV6v+R6Mu+z7iXugUcNxzBTAP
         3I8dMTImO4CqT2mAzpG/eCLqP5w/XFhepKIETWURqKO3Y2L4DQAwzQl2ZeV7YF+sMZuj
         fniw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DQXnUIEVHWgnZEkW9jyhHe79EsB2mv6DMGS2qxR2lhs=;
        b=jnToeu9qSL+FAPXa8kz2yYuQH5RLRlt6PmKDjh8PFVjnGWnWfLB9ZMVnd8BZsIj6jP
         N3KwHpaCEREnQWXZ1AtSNxflkgwvJwN8XKvMNZJQXjMrhz1TTR+W5DAYBnyPGiTZF8VZ
         xvL4WHt4E5Hb7hC8foCybFzxWDplYqSwqOKXNLFyEKpFkA/vjtwUshZ2EMmMIhoylcxl
         O1ILbKiVlbYMfmqIIcopqBN/ZqOLoOmrwjXp4iaOA7aAGtEN1jA1ZMIxMK7Az+mW1BPb
         HSLvRAqfm68+uIlmVPFtZ1UPrZjQzsngx1/xdFg8457v+AN8EhtU09jUQajS1UgGuYLO
         jvXw==
X-Gm-Message-State: ABuFfojmJoX80HSJn0RLLVHqtQJgwJgXf7dV4t56NZyx5msaS+HgySYG
	BZDTVOcvpAydcGyeXkNaxgMIKy97ZrM=
X-Received: by 2002:aca:ab0e:: with SMTP id u14-v6mr28691572oie.53.1540329106031;
        Tue, 23 Oct 2018 14:11:46 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id j50sm96435otc.54.2018.10.23.14.11.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 14:11:45 -0700 (PDT)
Date: Tue, 23 Oct 2018 17:11:42 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] staging: mt7621-dma: Add braces around else branches
Message-ID: <20181023211142.GA2661@v>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Add braces around else branches in conditional statements that include
branches with multiple statements. This style complies with the Linux
kernel coding style and improves consistency and readability. Issues found by
checkpatch.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index df6ebf41bdea..35556f024aa1 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -418,8 +418,9 @@ static void mtk_hsdma_chan_done(struct mtk_hsdam_engine *hsdma,
 			vchan_cookie_complete(&desc->vdesc);
 			chan_issued = gdma_next_desc(chan);
 		}
-	} else
+	} else {
 		dev_dbg(hsdma->ddev.dev, "no desc to complete\n");
+	}
 
 	if (chan_issued)
 		set_bit(chan->id, &hsdma->chan_issued);
@@ -456,8 +457,9 @@ static void mtk_hsdma_issue_pending(struct dma_chan *c)
 		if (gdma_next_desc(chan)) {
 			set_bit(chan->id, &hsdma->chan_issued);
 			tasklet_schedule(&hsdma->task);
-		} else
+		} else {
 			dev_dbg(hsdma->ddev.dev, "no desc to issue\n");
+		}
 	}
 	spin_unlock_bh(&chan->vchan.lock);
 }
-- 
2.17.1


