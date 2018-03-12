X-GM-THRID: 6532038435056648192
X-Received: by 10.202.62.135 with SMTP id l129mr4008658oia.28.1520858713898;
        Mon, 12 Mar 2018 05:45:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.114 with SMTP id n47ls7656871otd.1.gmail; Mon, 12 Mar
 2018 05:45:12 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt21ncrhDQMrHfBODBXALULubHIxDvbSRdc04rF3/lUs8PZjGbzzcImAgm4mLWGgO8cYK8c
X-Received: by 10.157.53.1 with SMTP id o1mr4210683otc.6.1520858712908;
        Mon, 12 Mar 2018 05:45:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520858712; cv=none;
        d=google.com; s=arc-20160816;
        b=lZXWfCmAebfIhC+GyaEJoTSWNsFg8If9/1snVDqk6yR+e4Qvu4rm4y10iWq6C2eiW/
         XxswZ8tjI66K9R12dswvG8Qsk5LCk05yMYSvMRzPsemqQuhtgHCkCPHpS+bxqJNdtveQ
         Ev82DLKzU3fvEMII7n1I7e2es8PD6n3T5rdAVEAiyQggIlE+Am3ODd2Un81N4crSURwq
         ORUnOw0Lr0r2RIy7NuyAr4K6slDqjZj37XgFEm6zArqRBRlxqnQ+qdsho4FRrbUHntED
         ZByKBJBD1gjq3DP89t00NObsLNJsBHp1DHcD7GQ9PhSBIiIYU8qWEvwxvEnaDb7Lr6cO
         6MhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=q7SDmpxBufAxps+kojpK+mqpOMSx+0fK0si/0/YyRxY=;
        b=M3rSX/DFmVl2x28060prAw+Q34WxCRwZMEdjV0apkrDxVqvI5V79Ag6Tphilyqi+Ea
         hWFNW5VHnRKLwO6H77Pl7N6aoRz4y3ANZ4qn6DrTAgZF/F4mxt9Bf05YbLtQomRaI9od
         xUTDucGKdPGqYK6XemzCsJGo4dKsG7GaHZ1BF4t4qOqKw9P0YHmzsbt54OAg7j6MwUCG
         a2SFQSP5EVabvXJw6dM/F1MJxyzW9QILgYe+6JTC93xWn7/Gtv+wncsD1H5Sp5jzApdp
         aRpxmwQHkP1HTJ+iVYclZwvQVcZxjEb7Qam36SwspPInP4ixvGZQ327ligTDQ0HLz9vq
         vZLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=FcISZfc/;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y81si519761oia.4.2018.03.12.05.45.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Mar 2018 05:45:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=FcISZfc/;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x243.google.com with SMTP id e3so6429696pga.6
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Mar 2018 05:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=q7SDmpxBufAxps+kojpK+mqpOMSx+0fK0si/0/YyRxY=;
        b=FcISZfc/QoWNaRg5lT7Q/G4KX0Bbb0JGOjOMoEZQOEaAJH1LAEzGr5HLebPdPBfXhL
         8P3IlGwjhOzoWSXqb26fHOxYs1SoxFmB4IJvvm4gWsxxTqIPJK/wh+WDw9qHDLCVRhhM
         QiQ2yy1GtUztst+rscDtTGsZGkcwqIHEdZCno=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=q7SDmpxBufAxps+kojpK+mqpOMSx+0fK0si/0/YyRxY=;
        b=LobWXYlOn+hPY93363mX67rcsU7jsvUclFerUF3MIYCOIr5s14viAWQJstEE2lFwfH
         258EzojsULlYAHdNmn6am73z52UEKwsTnItfuVF7Vlt6xKI0a0O8gcPAW4hmHcmqK/El
         ZJHNJECc+4CTucpFmJpeW156lNctJr553coiWXr4Px5/XkLaYNKCTPfnR+52wgsJ4E1d
         DoWWkPArkdvfdI2d/zo68fk+ttNKGmHUBC50dF4WcvS4OB8qJd8R4ISFnGJZnUHxgxU4
         KUvME4lruZo/0gtrcIGlHdLmzQqLHHXZtbXSZgMJNq6ZoJ66tCAjSzRCV9hQSrrhFIaX
         FJug==
X-Gm-Message-State: AElRT7E2gmpemNBYnqI+8EWcgUNFuHK6uw2udE37cP1lPMR1rOPaIFdQ
	wS6GgG4StYZBq3bIUcdSYUqvGQ==
X-Received: by 10.101.96.5 with SMTP id m5mr6544275pgu.374.1520858712058;
        Mon, 12 Mar 2018 05:45:12 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id t16sm16906270pfm.69.2018.03.12.05.45.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Mar 2018 05:45:11 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: media: davinci_vpfe: Change to "%s...", __func__
Date: Mon, 12 Mar 2018 12:44:57 +0000
Message-Id: <1520858697-31275-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Change string explicitly mentioning function name to "%s...", __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 6a3434c..7d3349b 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -696,7 +696,7 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	if (!gamma->bypass_r && !gamma_param->table_r) {
 		dev_err(dev,
-			"ipipe_get_gamma_params: table ptr empty for R\n");
+			"%s: table ptr empty for R\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_r, gamma->table_r,
-- 
2.7.4


