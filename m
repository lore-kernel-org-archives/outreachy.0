X-GM-THRID: 6806824358191824896
X-Received: by 2002:adf:e28b:: with SMTP id v11mr21349524wri.229.1584837296227;
        Sat, 21 Mar 2020 17:34:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls646302wmc.0.gmail; Sat, 21 Mar
 2020 17:34:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vub5khIeDfAdRZ4Zi2nOzkGCPJI3TipG4Ci6FInPaAdj/SQzCX6TKD0vzi94zWJsTBkNAXV
X-Received: by 2002:a1c:2d8a:: with SMTP id t132mr4712675wmt.83.1584837294876;
        Sat, 21 Mar 2020 17:34:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584837294; cv=none;
        d=google.com; s=arc-20160816;
        b=PkwMhsTpcAMifVoMyYbnViRKRWveAXuLKHFkSqbRU1gQg40k6hSJhfjd2ExNzaMeoR
         HQVPG/47ggHAZOl0zVt7Ktn+uA3W+2YiC98H1WpKtNsmmRQjihQ3h+Ve68l5iQg4Xcss
         /7wnz+b463ov4dXVzLpWtH6WXby3to5buenjzy+ZVQYOFlFLBHyELqPoPnJPU6aR2vZ2
         P6T5Fmp32OWISXBBEe4yhNEurUvnCI1IobuYG6GD+R3BvIfZxB+lOwO0ZT62009CJcfC
         hlPMoS/zcIxJ01LDSxfjDhOkgnALj7qonARxAY8y2RBWaW7qkYdO79FpO2DS8dy4R2vh
         7L5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=jkaXPQoFAthtJ4PnaA7npnBS+OFxi3xfBv7vrn3SZ38=;
        b=IXX0fHup76T6hpxvsQ873BmRC4x/9UdxHahOuPAb3PNgrHm+dugYBF3Kt3jIgb3LLg
         jb+6Y+1I/xIHhS9+U0SgjEcKMELOpp3Rad7Q/M8vTFxj4aaVY3fo2KIaC0wpdvT1pKFZ
         j/SWPv4T9OmHCTErIH1NEC9x51PIqgC+DUix7aUF6t905Lw3tokJABRIlP42X8TA6YNw
         SqirtXB5g7yYRQnubvObiewbRw2mejwbU5fOOUgWRVTCqpjrjokLE7C7VRxlJ0Qm/1rk
         nZM5cnpa7xTSqqBnqEYuxvOAm1/QTAWOSgEKDqaybbdDLEZvIpjJN6BOgzsI9HEXFrQZ
         pu7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MNtdn6x6;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id i9si308904wrv.3.2020.03.21.17.34.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 17:34:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MNtdn6x6;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id c5so1965017lfp.5
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 17:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jkaXPQoFAthtJ4PnaA7npnBS+OFxi3xfBv7vrn3SZ38=;
        b=MNtdn6x6cISd0VXCyCCl3wF30HXAdGlNTaJyuO3u4yZAwlFgjWOA94TYeEeoBw4ZjG
         Zo9WYlmBfIsT9gu/MDBaxOQYl5UE63x2rTEzF09rkjaWcgYt6BDwZvh/isq5LhfmF5WO
         56qFsMQeLQI3bDbTBONCyVPtYAjoeZo0CwBNFfcGnZlHbJG4Mp5om3WjKREG91PNtwwd
         U6x/CKPa8FwtqCc7Xgli/ysW9J3VTyD0GeyQB0mRR85s5ooGnnKZVox5j0hNPUqyLMZd
         k2yAW5CyXx8ntW3Mil5ElBwIVzxfZ0SAGK64CmfrivvudEZWJ38f51c2beiVoCPGGvbz
         bsHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jkaXPQoFAthtJ4PnaA7npnBS+OFxi3xfBv7vrn3SZ38=;
        b=PTABuseUZB9ECsRjxO5kbLpf4v6d9Ma4JRZzBENZiDe7sZRxPVspuUrgh9Nb7peZsv
         DMZKAkg2aD+oDBk/TyC8PC5QpOXFpSJZ9avnxtE60eKlfwDoG4rFA/H29MNiLKJaFuf0
         4jqTMDtkBFahNm/KBic0kjbJuwSkBJcXyLJVnCxsF+aKis9PKNyYHIvrqXk9K0yXz19O
         hQAvNbO5jes/oIgCNpX4WPVQTkG3bbxCH0fzvkFOYClOl2l8wscVbWIitFavyYue49+C
         e1ecvQk5/fkTbR20cUxWyiWy87i60n8cElQKrF0XjeE33QhcrmVHzavf7vOaiurLzyWh
         CXAw==
X-Gm-Message-State: ANhLgQ3VphJA5rKC9j2sYisNIZGgSGzPRMejBhZXu82hgAZa7C9LCRzR
	je3+WFJnnOV4Gq88cJdJaARetEtS3Mo=
X-Received: by 2002:a05:6512:108a:: with SMTP id j10mr9253469lfg.35.1584837294332;
        Sat, 21 Mar 2020 17:34:54 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id y14sm5991872lfl.94.2020.03.21.17.34.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Mar 2020 17:34:53 -0700 (PDT)
Date: Sun, 22 Mar 2020 03:34:42 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: hp100: Remove unnecessary braces
Message-ID: <20200322003441.GA847@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary braces for single statement block

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/hp100.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 6041043..61b891d 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -2788,9 +2788,9 @@ void hp100_RegisterDump(struct net_device *dev)
 		outw(Page, ioaddr + 0x02);
 		for (Register = 0x8; Register < 0x22; Register += 2) {
 			/* Display Register contents except data port */
-			if (((Register != 0x10) && (Register != 0x12)) || (Page > 0)) {
+			if (((Register != 0x10) && (Register != 0x12)) || (Page > 0)) 
 				printk("0x%.2x = 0x%.4x\n", Register, inw(ioaddr + Register));
-			}
+			
 		}
 	}
 	hp100_page(PERFORMANCE);
-- 
2.7.4


