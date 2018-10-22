X-GM-THRID: 6615030775466164224
X-Received: by 2002:aed:2315:: with SMTP id h21-v6mr35602704qtc.36.1540181873566;
        Sun, 21 Oct 2018 21:17:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ad35:: with SMTP id u50ls3474357qvc.8.gmail; Sun, 21 Oct
 2018 21:17:52 -0700 (PDT)
X-Google-Smtp-Source: ACcGV6234BWQ0dk48k3KNmhv7eUFVfa3VwSujly+Myw4EzJ8fugkqpTvgXUvAozUb15GCLU38fAA
X-Received: by 2002:a0c:89cb:: with SMTP id 11mr36402569qvs.56.1540181872916;
        Sun, 21 Oct 2018 21:17:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540181872; cv=none;
        d=google.com; s=arc-20160816;
        b=tO7GuNNeqptl0LL+xpqw75e1NG2dSdWP6P5YN/Gbqima1WmNN9JgFcOVIYRDxyiMSS
         N89Q/w7pXBUNpSRyDoFmiBoWYBBcDvc94hg2ZhZcUlXGRB7OlFjm7xuB9B8G1xprvd3F
         FRl4ByHMHJvtRxCtgiaLBvrjAe6ulYkZKxpkcronUgqjENulLo4jnr6LRaIQcI4jPYLo
         RiejUE6xhIR57smOo0IZuGsylGsCMP/9L+cntrq6gJ47vsGGKwLaZEQ0mv8N8b+82Bi6
         pNuKN6RTIc8GmfWw0QrzzIf/RMSvTdD85xCsay6ieU46aFujKU7NOdc5S5Q0de4yohz4
         29gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=WKyjtxhmbeXzJuKwKKtmo0fCxsayYTdUKyrNZMyetBs=;
        b=O+hYYwX+zFNOtIBEiDLYDZp1TihJsHiPt7f207AsRPDjKrJ2CMVmwCuGOS3CaQdSRh
         sWQvtlc6AfCCsh3yFQw6F8VvDLbeWUFy3vYRy9yELP9Orl1cBrDtZ3wT7J1yPLw2tCa2
         ro4FhBUBbGDlH46DlJqTAG3zWsP1K1ghEhjFBRZ2M00/PqAI8tX8CA3e+GDoWDr3A5ZW
         XgiYz3eEotDy4uD+pjcYn71K3KYTG3783sPwr1nqyf9TsQEaV+uyUfAJUrFwF0XRi2zP
         Fzih1ENRpDu6vyng046K4CWzGIeN6UbixJQy2Y5Rw+maWcMBRa57ZUg6t0E3X6D1dUBz
         t+lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=olDNpQ1Z;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id k8-v6si1527512qkg.3.2018.10.21.21.17.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Oct 2018 21:17:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=olDNpQ1Z;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id f18-v6so18409999pgv.3
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Oct 2018 21:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WKyjtxhmbeXzJuKwKKtmo0fCxsayYTdUKyrNZMyetBs=;
        b=olDNpQ1ZQ8nZVloVgucT6KDW0AUhRYiURaqaN/go6bzOajfNyMNp1vfN6UiRYDfS5u
         ohDswNERHtstp/VZ5KaCiqgZ6mHRWmkcxz6leBjOLqKJFEBDTwdo6pVRZ3oVc3bdVI+u
         HtUxs7cP+mguNX70K6ts5gG5FulpRiR15bOBuuuMkOkbVOdlnr2u9+GvzCbnlRVJxWvG
         hC5FbatdN/KcCzyWs2M/kJzNRv/6nl0o7GjtG5KfSTZq60Oe1ZZcxN3pTPdF2KZWKFP1
         55g5zaCia97TDsdeQJ4DpkmFE59Q0Y/V0prw3g8+kYvUUia9OdX+WjdVkwwBVzn53PN+
         Ot8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WKyjtxhmbeXzJuKwKKtmo0fCxsayYTdUKyrNZMyetBs=;
        b=t2Uv0HBFnD7Qd9WpWfVwqIBN5XFA1xgwsHosSm7Z1SnrERDJZ9isX8P/qnTft/48zb
         amcbjNlt1mfBMTixx848paILNoU+ora04yJrAwOrK5r90l/Rs+Gc9QbbiUGaIWtkEIHS
         Djrv0tM1IMzVhYtTUY4rkxPBLHZyyABuJwGbtN8vUXuEJXUk2B+jcudsP+sDYqrvxGsz
         euRZNMeP7S6r1RhDDVhsjqJ3Ha+OXnEq637ati5gkYl5yQSBWCQXoffpL0RasYozuR1u
         YMAcmib0bAa9jLre4YAvRTw6iDI+N19LxdJ76nBudFEcY8o3n2vljUCjh54/ZTUlgRWL
         TSHQ==
X-Gm-Message-State: ABuFfoiv1rS8HZzBYemwG/8FuW6sIZyVBHUp0xUwpg/pTLGKXcHubMnQ
	gcaoG2nnc8f1NMr+m8RzW7trgQZx
X-Received: by 2002:a62:42d4:: with SMTP id h81-v6mr45290509pfd.0.1540181871919;
        Sun, 21 Oct 2018 21:17:51 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id n63-v6sm37635496pfn.9.2018.10.21.21.17.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 21 Oct 2018 21:17:51 -0700 (PDT)
Date: Sun, 21 Oct 2018 21:17:50 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtlwifi: Remove unnecessary variable
Message-ID: <20181022041747.GA2618@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove an unnecessary variable that is declared and assigned a value only
to return it. Issue found by Coccinelle's semantic patch results for
returnvar.cocci.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index 90a41c64c0c2..fdc9af56e9d7 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -491,8 +491,7 @@ static u8 odm_sq_process_patch_rt_cid_819x_lenovo(struct phy_dm_struct *dm,
 						  u8 is_cck_rate, u8 pwdb_all,
 						  u8 path, u8 RSSI)
 {
-	u8 sq = 0;
-	return sq;
+	return 0;
 }
 
 static u8 odm_evm_db_to_percentage(s8 value)
-- 
2.17.1


