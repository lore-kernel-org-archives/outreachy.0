X-GM-THRID: 6536502850878439424
X-Received: by 10.99.116.84 with SMTP id e20mr9258034pgn.93.1521898166733;
        Sat, 24 Mar 2018 06:29:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.98.81 with SMTP id q17ls2299684pgv.4.gmail; Sat, 24 Mar
 2018 06:29:25 -0700 (PDT)
X-Google-Smtp-Source: AG47ELs7Cf9gpcmVsPNiRZL29uMklaExVx5wgMM2pIv6Z2FM+sdIwPdlBzL25elhggrfPNW9F4qD
X-Received: by 10.99.127.20 with SMTP id a20mr9258131pgd.28.1521898165618;
        Sat, 24 Mar 2018 06:29:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521898165; cv=none;
        d=google.com; s=arc-20160816;
        b=nfQXJjPBKBOKzdZw94JRh5v2CvQNEIk1rfztJu7bTqCCrw1jB/Grosztr5U2xgTe8f
         rvGfBJ+aKt2siWSK/hKOgXCGVXxDcY+lakfXW+mAuaVO+j6lmBBCAx3LQtVP1Wsc8W1G
         3CqdTwjlvVL5AOxsJaYTNkvfBll0nXu71HVDUX3Xi7xwv5gGkwqJoWXV5WKijrrv5CJk
         q7nGiJP2QDWLH609AYoJQk+nIak8Si8aW+iGpC1zqHV0ViKIOkJyAQN7d7zFlnpOva54
         ZqsaNUvXrVPQLGvzDsH7iudwRv56FMR5Jzw7bOneHghdmnRQLSnQYOvv5zt7nizyG8rd
         vFKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=IEPQNnfUdQ3zUTNKgmsJqFAY57h6qkl5asskuoCBIk0=;
        b=xXS47DJh02m50iJypa6JYCxpJZkdb17vVznTvDzlOhbQSYuHTFc3DxwjA/ytKPna/j
         KMgZ0l0GBx2i7Z7Xuz5bPQGS3WCTR6WHYktNaBjn+IpM+yw5i6HmKL/xPVRW8yprjHJV
         N4Fn47EnoAQaBCDEWweqqg5TaORiF9yxyf1WlY1jy240DWazmW8azndVuTIhyP8LifgM
         z41dByrZh8AQD22w2SN2wrRYxT368DumR+wh/X/F2hrIuOKnssfQhZSTfYz1gZDPPaWN
         OlJ+wqm1ZvmQIdXUFAtnYGYeGHuVRLH3q2Ijhs8QksoB+A2bac20GrouyMnxkExNsqMP
         fvWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=XcQE6imx;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x22e.google.com (mail-pl0-x22e.google.com. [2607:f8b0:400e:c01::22e])
        by gmr-mx.google.com with ESMTPS id x6si471251pfx.5.2018.03.24.06.29.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 06:29:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) client-ip=2607:f8b0:400e:c01::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=XcQE6imx;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x22e.google.com with SMTP id x4-v6so9116265pln.7
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 06:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=IEPQNnfUdQ3zUTNKgmsJqFAY57h6qkl5asskuoCBIk0=;
        b=XcQE6imx6oJAfj7Rq2ACD0hppsLRfNcaROx3Cho2N1bdfMiyIU1piHgfkg/efzra+g
         0SUhf4tdbEkYMc/Y3R3b95PfbocJ8bQAaoRD9SCUFhfGEOCHIVY2KsqjrDedGTFcVG4f
         mOjyoudzlgngOsVW8l9P9yDL1wBZOF01oqJQc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IEPQNnfUdQ3zUTNKgmsJqFAY57h6qkl5asskuoCBIk0=;
        b=iy/Oxpais3anrFJnD9/5qEOP6MeT/IPuAqhdB6SUYrMTJR1rDNFj35S4sMlzNwnUrB
         LyIPSIQMKbqgF7bobE0TrD5a8HtIAa7PmpXlcb7T92vRbq5CDSJiLe3fnkrcn+akcZNx
         HuJOnKBSTWj3pAXtcTVY/nCDLZuuYhD/9T6wjs+0PYgqeFxfpXjV3QmH2FZkqujc0L6b
         0aSeG2jJbmLPbeJcJSvfDUzZ40WkaLcTY87MufdJQ9wJxcAUd5cXWryhHDgjI0ewAzdH
         xwTO6tBHFxjy+XdbzKNpdkKVAiNOw7u9rsmQXMdEwNgnz1NwNkY8n+PwYb9R1nAqcBHV
         avPQ==
X-Gm-Message-State: AElRT7GBXmHqxKsw1SUvtFkndwRAHPMNd3Gy6qFVYLXerZ8xH6Jm6cB9
	NarlCfOX7p71Y9BUZdwkyULdvg==
X-Received: by 2002:a17:902:b786:: with SMTP id e6-v6mr34120000pls.58.1521898165339;
        Sat, 24 Mar 2018 06:29:25 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id c20sm15009068pfj.52.2018.03.24.06.29.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 06:29:24 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: media: Remove mailing address
Date: Sat, 24 Mar 2018 13:29:13 +0000
Message-Id: <1521898153-28991-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Remove postal address of Free Software Foundation in case it changes
later. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index a5ab161..432fe4b 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -12,7 +12,7 @@
  *
  * You should have received a copy of the GNU General Public License
  * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * Foundation, Inc.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
-- 
2.7.4


