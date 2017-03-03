X-GM-THRID: 6393358325939961856
X-Received: by 10.129.70.84 with SMTP id t81mr1854156ywa.146.1488569734266;
        Fri, 03 Mar 2017 11:35:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls7661435ota.23.gmail; Fri, 03 Mar
 2017 11:35:33 -0800 (PST)
X-Received: by 10.13.217.82 with SMTP id b79mr1710111ywe.13.1488569733963;
        Fri, 03 Mar 2017 11:35:33 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u12si232330pfd.3.2017.03.03.11.35.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 11:35:33 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e66so5022162pfe.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 11:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3fUAQUxeeL2alv307eUFti2LEhKNu8rCcygiqyfexsk=;
        b=lQtQhO4A0Vz7ssdfDfaGlW7rnsZNPxfgHYymlVNiMnG9b1wrOWyMjqFd2jWPk4FN9Y
         TTukWdJr+Ey+mUmcw0dPrCbPfSN0DS+lNMHP3fl7BwZwV9f4jV/A0mFua+WiYCGrb9YG
         4kdHiIYGEn2eXdHXKrGAtZC7rpAaiynoZyEE/dxaCptrMP/txz3qRYe2eduuMSA5AmiW
         kMJaS54rcSxbnUYaI2mf2VB//a7LNuGpTBqljTnQyWsFgPkfXIgfLU0WPVnUeVEbRQzJ
         cWeKImt9ybZqJuol/B67lJvSRBBVR/xeSivKRrYw40GbNjJsf4fIOQJHGxA+SM5bH/yd
         aL6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3fUAQUxeeL2alv307eUFti2LEhKNu8rCcygiqyfexsk=;
        b=a9IBMl7bhPlDvXL9bIL27WrYDG8sd2ZK+ty8lJta2gmukCPbh3yDC9gN9sRJBxL5K3
         KjyzbgY8wCswZnfqR+E3KUReV7sV10EAkUm2LlgwvnlOE3jsa1XmXkrziCeK4KzCtFzW
         xey6Tc3z4APN6NSM0FXhDCLTidj93StTPveK5uK4CFLpkAR58IxfCChRcINm6y5sZ7nr
         mkYBbnIiQZDsHRO6EswW0mWw1/XJeO/T5TLJz+GGB9L60sdy7nJ/ifhAaoSI8BYwKoqW
         avn44Gk+jN7Q1BvVOX0y+l5IEEEFuQfUdxFBN6Os1/AOoV1d5pQKdW+N/iO5NvYiOCwF
         BBQQ==
X-Gm-Message-State: AMke39m5Ob8aqLbMCViEKwMMr2C7b9RHcMY0ALHZml6hwKr/T7HF8sRVqC4pyF3KwD4KuQ==
X-Received: by 10.84.224.131 with SMTP id s3mr6692786plj.162.1488569733535;
        Fri, 03 Mar 2017 11:35:33 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5508:2b2:841b:c6f4:fb42:37b7])
        by smtp.gmail.com with ESMTPSA id z27sm24917297pfg.38.2017.03.03.11.35.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 11:35:33 -0800 (PST)
Message-ID: <58b9c585.1bd1620a.230a1.2d3e@mx.google.com>
X-Google-Original-Message-ID: <20170303193529.GA20032@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 01:05:29 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 8/9] staging: media: atomisp: Fixed typo.
References: <cover.1488567772.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488567772.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Corrected the spelling of initialize. This patch fixes the checkpatch
issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 .../atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
index 6184019..6d12e03 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
@@ -64,7 +64,7 @@ bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut
 		assert(lut_thr[i] <= lut_thr[i+1]);
 	}
 
-	/* Intialize */
+	/* Initialize */
 	for (i = 0; i < total_blocks * block_size; i++) {
 		lut->thr[0][i] = 0;
 		lut->val[0][i] = 0;
-- 
2.9.3


