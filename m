X-GM-THRID: 6536488278592323584
X-Received: by 10.176.89.197 with SMTP id k5mr5226138uad.90.1521894773890;
        Sat, 24 Mar 2018 05:32:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.72.138 with SMTP id x10ls1469553uac.11.gmail; Sat, 24 Mar
 2018 05:32:52 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+NC1Fuy6kqputSKtljnfr9udc7LZfs2tlrWu3mo3GjjEU4jw+6PM5TGldzkAVSkzFAfLUI
X-Received: by 10.176.48.174 with SMTP id b14mr572957uam.63.1521894772663;
        Sat, 24 Mar 2018 05:32:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521894772; cv=none;
        d=google.com; s=arc-20160816;
        b=M4Xn3YfvK+Khf8AIOMmVRLtfu8i1N0RZTzBhaZFyBjHjgRtxopY53g/E+nTpW04C8F
         YxuwiyVdsz/6YIp0v+XcEL0WzBtM9v6FmYdO1TUVaAeyat02b7PBxLOLB9p9rHwCZCjs
         0vrNroD9ff486mIQmmLx0WuKwecIf2gJNqlXmiKDTxgriUN7BbBbADCvXFOnwVFn71bL
         aGNC3IfxH8SOY+Y8mHTNzltZ6qy01vi9BFmVpKhB8UOnleeNpJnRRX7KTtA1ABpw5Qw6
         4WBvhshX7eqw4G3SE1a66o7dPLZbHQLQM7zcEz9Af70p39HmH9O64bNBncwueIT2DrG7
         Xmzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=nkRnOWprsjc9xcwq+YiHW9bcI4RHZJ1EQ1/ncdOSmRQ=;
        b=QEfz74PzDUlaLlOQowJM7JjO5OCvaN0SB0q6GcxJbxl5mJpNVtpptounXikmzKaZiP
         Kg+7S1VykGlLPYxs5rxEzykN236vmJMJHMHSUyWhIvgoYwSrut5Ac7AULrfxfj9khjDp
         XL5dE1TqCYmlvi3KoxuNXNR+/e+YNdGY7OA1haY+l7jhm6kFbXfl0Gewb3rezX9jg4Jg
         fsLiOO1JFBFT++gsf2fSNued9lOh+jMo/Fev63YuussHLAifprtniXifrWgRxzD6pc5J
         coU5RkedmmvCkkNSF9Dsq49F5+8npHTXMgdlV9ysixjWGyu5BH1rjet1PYHZyDazPD/P
         84Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=EJcP+CXM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::236 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x236.google.com (mail-pl0-x236.google.com. [2607:f8b0:400e:c01::236])
        by gmr-mx.google.com with ESMTPS id s62si890461vke.0.2018.03.24.05.32.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 05:32:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::236 as permitted sender) client-ip=2607:f8b0:400e:c01::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=EJcP+CXM;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::236 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x236.google.com with SMTP id b7-v6so9067453plr.8
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 05:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=nkRnOWprsjc9xcwq+YiHW9bcI4RHZJ1EQ1/ncdOSmRQ=;
        b=EJcP+CXMdGg6hfgDdwhGP2bj/+wy/SxG/mJ3W7oYKhJg4YZAAJqFxZrf0+fivJ5BP8
         daiprqe1H+H9bI5uVy+ge78dsKeoaN7nPvwP4PeJl7zmRqlokAFO0hd3Lv6KafD7CwaJ
         AcPdx1bN5AHXsbEf+yq9bLYlv2v1IT3FRpxgU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nkRnOWprsjc9xcwq+YiHW9bcI4RHZJ1EQ1/ncdOSmRQ=;
        b=boG4lIkqBfLJZ1P+xh0tC4K9RE3aiW6+zL9NNoPLrroazv7SEe17SIy5OcObm/UeNd
         zc4S1FyyIF1WSEsy447joswmhNMuC8Y2JHmvqODp1LNqv7GpgYriq3nlWqtyekxi8VXy
         lPnP1ubB2vmTlzgDirDKolY3LXla8o5BqrQveAu0eGljlID52JhaVubvSDKJ7h2abIwo
         1uYuRzbjGAb4SRIiPPsq3XwM1mhwGqqhhyOAKsCAYnKOB/+fDqU4cZMYgpgDRmVNkhK9
         maiV9d0Bh678K1dj+zJjVe/XzbYWeoesINMht3g3XnOIG20xQ8f6nTjj22iAE1a10q/X
         A3Rg==
X-Gm-Message-State: AElRT7EdpP+ZPqKMZGgAzAoYTPigaNVZv+Rcmyya8ZG2MtCyi+rEt/Ky
	68UWqzFdSMGQ8UFM6bK+soyo9g==
X-Received: by 2002:a17:902:6c0d:: with SMTP id q13-v6mr28252935plk.350.1521894771827;
        Sat, 24 Mar 2018 05:32:51 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id n13sm26128092pfg.45.2018.03.24.05.32.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 05:32:51 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 1/5] staging: media: davinci_vpfe: Remove explicit function name
Date: Sat, 24 Mar 2018 12:32:35 +0000
Message-Id: <1521894759-28450-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Replace explicit function name in string with %s..., __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 7d3349b..0f94b8e 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -703,7 +703,7 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_g && !gamma_param->table_g) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
+		dev_err(dev, "%s: table ptr empty for G\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_g, gamma->table_g,
-- 
2.7.4


