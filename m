X-GM-THRID: 6387802033040130048
X-Received: by 10.129.196.9 with SMTP id j9mr1457270ywi.138.1487276064244;
        Thu, 16 Feb 2017 12:14:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.124 with SMTP id z57ls2562714otz.38.gmail; Thu, 16 Feb
 2017 12:14:23 -0800 (PST)
X-Received: by 10.31.190.140 with SMTP id o134mr1032176vkf.17.1487276063909;
        Thu, 16 Feb 2017 12:14:23 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id z73si285757pfa.2.2017.02.16.12.14.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 12:14:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 5so2818924pgj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 12:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=9v13/ktQRriGPLIA/IjQlmskCNZI1jUZX3hGMryP59I=;
        b=PmIdP/tQiWck/eBuGQJolJGal0KoGrqRsMN8jza2n1KVo7aM4nfM2jx0k37vnd/HZR
         R4nf3bJJB2aOQQipz73Z4bmTowRxKBx9vrbbwA/4XCX1MoO1BEfnPFdej9ldYZn2bEWu
         LwcSCdmEiLN2X0URbpRH/HGL4UjVKy5s6+vYbOkstM6ZdlE4D8P/TfeOSorahfBXYO6T
         8LP0VZ5XSgqzENR5LM2X6zSX2j6+/a+I598MsxALTKIQlMuJ9RXWM1G3FYt4XVAbl01z
         RDhe+v2zFtHUKPFtT5/rEGEDb7CVDmNvdh7oc0j7reuyY8XxRzdrkFL7+glcpepgci2H
         MKLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=9v13/ktQRriGPLIA/IjQlmskCNZI1jUZX3hGMryP59I=;
        b=kaA5sI/FHshsy+ToNFPm/qALEQrrlNSMlC8EQ+ZgYJDpeMGLwyVGn1GRBjFJlNR4Q4
         VweKhpgvvIFFZYM7xrYIDeI/S/N7cS7fDeJtvitCfNyww+y9CDic6/GrJWMj0aw9BI1K
         lE2Lh7RopzJkZwZ+w9/RbdgbX+Kr7vWmnQyW0aaKZLZrJ/wgruFuSVFSIuziE3+8o7M0
         /AFms+7qpKtCmZqTXkXFyWuHCnR+GhEcEuEG3QThUCbD4IIsC6eZU5LIEXL+QrnA7Ytj
         g7cruhNmYhIVx8ljARPukkuV4aEBw5pFvMQdxHW+quy5EsOcj0jFDih1XCo8CdjgOWgW
         5h7A==
X-Gm-Message-State: AMke39nYL1u+rT62rc3HSIWieWRRyAXl9fRmdrl7/T3x39lqutQN3aQUZY2ajYuHkaLPTg==
X-Received: by 10.98.204.216 with SMTP id j85mr4864826pfk.130.1487276063667;
        Thu, 16 Feb 2017 12:14:23 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id p14sm1062738pfl.75.2017.02.16.12.14.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 12:14:22 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 2/2] staging: fbtft: Remove blank line
Date: Fri, 17 Feb 2017 01:41:57 +0530
Message-Id: <900fa97ebe415c28a0980b7b21c92a4f961fc6ce.1487275508.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1487275508.git.gs051095@gmail.com>
References: <cover.1487275508.git.gs051095@gmail.com>
In-Reply-To: <cover.1487275508.git.gs051095@gmail.com>
References: <cover.1487275508.git.gs051095@gmail.com>

Remove blank line before closing brace to fix the checkpatch
issue blank lines aren't necessary before a close brace '}'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index ee842e9..f548513 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -556,7 +556,6 @@ static int fbtft_fb_setcolreg(unsigned int regno, unsigned int red, unsigned int
 			ret = 0;
 		}
 		break;
-
 	}
 	return ret;
 }
-- 
2.7.4


