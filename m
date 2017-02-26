X-GM-THRID: 6391114226199429120
X-Received: by 10.157.59.230 with SMTP id k93mr2516562otc.3.1488113408794;
        Sun, 26 Feb 2017 04:50:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.71 with SMTP id 68ls2353533iod.18.gmail; Sun, 26 Feb
 2017 04:50:08 -0800 (PST)
X-Received: by 10.99.238.18 with SMTP id e18mr4791091pgi.39.1488113408097;
        Sun, 26 Feb 2017 04:50:08 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s64si2613592pfk.0.2017.02.26.04.50.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 04:50:08 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id s67so9491038pgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 04:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/6GSsXf2pERNlC9Ctbr9qr4pl5C/aJHjF4QIfKY2+mI=;
        b=jNB+S6EjIpH9flp2dEOPNGbwMLk3aPNI/epc2HfHSiEtqyntF4cM03BuLX7KyVuJsC
         nSscqHHOZFhqYdb5Sq/EtB4DQae9Si7780BpetBHPuibMreBR8d3J/ZmfNwg0X8JdBXJ
         bTqYBL1vr+3XouevORxvNvP5FoBfgnhud4eJuTgrJR8CvZWmiMMVzxakacc69H+hh8w6
         GThgY8MXxAC4SDfziQK8a39e4V25B4wZDMMyRX+hwGVkElwm26Io2tTn3Xg0DDpA2HzZ
         CtBP2xi/RiQ4mIMCwM3Fpj7w8/2iaASX9P1emeMWv/okpFqgu4HWAqslVeGqm2aiM7rQ
         uM4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/6GSsXf2pERNlC9Ctbr9qr4pl5C/aJHjF4QIfKY2+mI=;
        b=K78YOlgkQEeGEz7ZnNZrDZEa/eqvSb+cYnhmGi6ZwfDBGPYRgJ6SHTEdeqzrzKd3Cn
         RHYCDiMaj/v65V6tOixLwVYT7J6K5Y4onJm/ZsJklmEb/mu7sem5P22M47VSCOJzT4Il
         FxXXUQv0s4E+IERLhoQJNFA3Codv3FR8tki22iOQTEYIwYJZviFH39g0CkuxvDLA++5T
         iUfo0+ttEsZcqYW7uCoZKaGDXnmzvxDmHnHFKUMqvP78ypHKS1iri4VNVs3fM4PP/fca
         OBKSLj98eiYaHH5cNVbT+c+rq3sy1MxlO6noHEci36QgfTJZbBJ3dm7geTWPYWzXJp7q
         u6KQ==
X-Gm-Message-State: AMke39lDeZsDFgluab6QsxV8V3hkBJMbxKUWRCzJF8eTQX6AIKyvoMs+Cc2qr72pCDkLdg==
X-Received: by 10.84.241.10 with SMTP id a10mr17153703pll.47.1488113407941;
        Sun, 26 Feb 2017 04:50:07 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id s26sm24959445pge.33.2017.02.26.04.50.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 04:50:07 -0800 (PST)
Message-ID: <58b2ceff.1aa3630a.9bdcc.56a8@mx.google.com>
X-Google-Original-Message-ID: <20170226125004.GA17801@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 18:20:04 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/7] staging: sm750fb: Add identifier to function definition
 argument.
References: <cover.1488112339.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488112339.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added pinit_param as the identifier to function definition argument
struct initchip_param and this patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index fbeb615..2c7a9b9 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -98,6 +98,6 @@ void sm750_set_chip_type(unsigned short devId, u8 revId);
 unsigned int sm750_calc_pll_value(unsigned int request, struct  pll_value *pll);
 unsigned int sm750_format_pll_reg(struct pll_value *pPLL);
 unsigned int ddk750_get_vm_size(void);
-int ddk750_init_hw(struct initchip_param *);
+int ddk750_init_hw(struct initchip_param *pinit_param);
 
 #endif
-- 
2.9.3


