X-GM-THRID: 6670930948020764672
X-Received: by 2002:a65:53cb:: with SMTP id z11mr4821869pgr.139.1553197152226;
        Thu, 21 Mar 2019 12:39:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6948:: with SMTP id k8ls3432123plt.7.gmail; Thu, 21
 Mar 2019 12:39:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxz2ja2hINFhKI8k0X8a8M2wUDSaWhcGf9squ5mFwETp/Z0pWO/4e3tYNM8ASABI7lP1K7q
X-Received: by 2002:a17:902:900a:: with SMTP id a10mr5411598plp.183.1553197151504;
        Thu, 21 Mar 2019 12:39:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553197151; cv=none;
        d=google.com; s=arc-20160816;
        b=VmUzk/YeuzrffkU42X8qour7XE4ctYHyc8NhwzENWUD4ZaBuWMMkjPfdSyd2FvT7Iv
         0mRTUPuwwtcpxQkjzoUFAvWfRtb97PttgzZeIHp/mPllfYmTAlKcdNUQLKF8okWCK19L
         EGtZzUtBKpJIOTS6ktZNTKRMEfSzKyoVsvdcMDLjxJ7bnVGftaj7y0kuqjhDg4yPm+lS
         JFDdF9LtQwpJFN2MxDyBl6N5h4G09Fxn+XMN9FSDdDkstTd9IEXEZeX5KayUFwSvjy90
         IabV2A+3CtgR/s6+HfRXXGU02TrttqyORfrXakHhVwk2wCgfOUIeLS4IGl/y3NVRL7NU
         uQsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=C0Aw87AQVFlL1CIbR/yxM+lW62G3dJaKCJGo1FCl9PE=;
        b=bWLIDpAAzWfnrinedUHsTkgT4wGYnCO1sY3qQ++oVtI4rlV/c3a+MWKWmyTVIaj3/R
         lqaUl0RnFB7WTgqAksW0iSMC8kEIUk0HFbptx8yN6z1Q+JhiZsq8GBKG7Pmc70sPC0pi
         sF9UlvQBumcKQ+Juhn3VAuolL9eeX0HPFj86eFOYkyKACaWYgb3DxqCrJXo2rdzWZq0K
         +/zOjANckRhoOnSyBeexg0SJbePSeYMdmVoyFdbZp0XjGuEuhBmiM7kb4a+5IrW4ry1y
         sOk35+FOdxTm6RITXsdo6EsJL/0NUgMQNLFso0NnFjPSbQ5ZIhYs5rG/Jlznb+D4PFxk
         9uPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RITurlM6;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic310-20.consmr.mail.sg3.yahoo.com (sonic310-20.consmr.mail.sg3.yahoo.com. [106.10.244.140])
        by gmr-mx.google.com with ESMTPS id a6si430844pfn.3.2019.03.21.12.39.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:39:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) client-ip=106.10.244.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RITurlM6;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553197149; bh=C0Aw87AQVFlL1CIbR/yxM+lW62G3dJaKCJGo1FCl9PE=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=RITurlM6/02FYvfU9jYOmDBcD2SWb/La0uRSn4gCNdZ4KkPelXdXQYTtw8Szywv0Hl0HWr0HAEt2SvbzSSLeGNkFUUJesil6zQRYKXJFPu4kJeCJp82Ik3fxcCqluKxXa3JuP0XQMyGi9eQ6Kpzyp2yAScLA1XDUG07T8ryPi3huz21sZRS//nq7aufwdoNAgUYSegRM6ybbUC0+RTNS1n33AP6F3WrjsQYT1nPrJEUZlhEwHpkKlRq6GI8ifIz+LQFuk+/iUZkZh3jwfY8VUm3P3Z2wgc6Q1dlGqLNCm5hx+4AkByON5eA184gLvgotC3d+Dv8jcid/aWd6UoJsKQ==
X-YMail-OSG: 052TTX0VM1kcSFvY6NBaXvIAFr6C3zlcMKuTnXzSdDIXrHy79oGonVV2kXZymcc
 IDsYeJRl0bVwJJ3U_MdlEO6n_pi3ovpCTv4p8SFYjz9gqRrEGemsXJzQ_IkXhdRFjKHVG76SdvrV
 UDzkaxF_IFtB_rr9mivO2gds0CzmGt9EGRhwq8XQBnArokUwwVceMrbVkOJ9VJX.bfoh1xohRfL7
 kbv1aE_IXnMkVCJ3LLw.ia6xjag3HivlXworHxzvtRa8r1GTaVlgTQZTWGSasESmnrs3e_FaoiCc
 cVx4BvUnpsJxCJhYgLqhpatxz0nMDplnZ5_xMjfC3tFhxvXGkG0ZKMtCo1kIPiBYpvKuzzFpt2Cl
 _s9V9GoyoGF1rIDpXBJywoigGp27JMYpu_ejYYWdhdQtfKj1yoT5J0obZqa5FM2EwSFZ9YsxCQvR
 y_TbFvW9sIMneIoWFnEKZ8bA2qSR4SeqcMhkX3J_3qcWg63zIQXP3g.ny6pN6tdQsjfeoDpxPHpY
 s_GkKk8McvYe83YNzSrMEk6vVKudfC8JeOebssivw5d7rxQtcweT9olMTfOi4DHdxC_lZXOxxjN.
 H0xmXVfIqjju8YpX.Dpy8603kp0t8loUUCl.nCXW6W5LpG2s_X3rTaY1UAsT3QPzwnfoqJ9Ws0Px
 Yc.x.RK.MNt3XJor5PW0judFK9j51mocJVWjrjlAj6CEgLJKiIBceKHZhbDVP37AYei5GZ5fv9Cl
 k0BsnuJVMgEgYbXlEpr.y6Nx3nORcZqBnYufHLC7QeSWIwxUo5xy9X4kalq7hBjRO1vzOX0s8PqX
 QP0UUDcxcs5BvUZz79d3b2JrRoQOMGHsBW_e2N.poqcpBvarf_anLlHlwIVvJPZJBHynfma98mtK
 VLtABDCNZ7.OZo242IyD0HOSk.0T2YT8I8VMpJcpTl23m5K4.Gg3JDJeKuz4MW8D7ZsSznaA3hE2
 4kxPx3V7C5u0htLkakZU1UcgWzLiou.HrDFBp1crgZtPegKVKrePLIG4JoJePKnsCz9Z99KmRjk0
 i43E_H0.LRBNAFreYIVpLF85cnYNruPBdQ.PCRuIU1zKID4s.FgHvzxBcgQxD_VvpCstt0Fo7sBj
 lsDKmFe_JV0Fd0sps0FNJhdnVE6E4NPtpZprUju_.T3zfmVLF
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 19:39:09 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp420.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID b64ca48adecac070043993237cf92324;
          Thu, 21 Mar 2019 19:39:08 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v3 2/2] staging: wilc1000: Remove return variables in wilc_spi.c
Date: Fri, 22 Mar 2019 01:08:42 +0530
Message-Id: <20190321193842.4327-3-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190321193842.4327-1-nishka.dasgupta@yahoo.com>
References: <20190321193842.4327-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove local return variable in wilc_spi.c. Issue found with Coccinelle
using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v3:
- Remove trailing whitespace

 drivers/staging/wilc1000/wilc_spi.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 4a1be9e60d74..47c777c5d1a7 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -934,9 +934,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 	int k = IRG_FLAGS_OFFSET + 5;
 
 	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
-					int_status);
-		return ret;
+		return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
+					 int_status);
 	}
 	ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
 	if (!ret) {
@@ -982,9 +981,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 	u32 tbl_ctl;
 
 	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
-					 val);
-		return ret;
+		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
+					  val);
 	}
 
 	flags = val & (BIT(MAX_NUM_INT) - 1);
-- 
2.19.1


