X-GM-THRID: 6670748157895245824
X-Received: by 2002:a37:4a54:: with SMTP id x81mr675677qka.36.1553154601512;
        Thu, 21 Mar 2019 00:50:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3b2a:: with SMTP id p39ls2215546qte.6.gmail; Thu, 21 Mar
 2019 00:50:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqztnlmFOiwqj0EPhoa39URJX5D8B5WVcEJwSFx3unaDBDmsw8sGJ9w9ETO8ZeGW6EKoQd2H
X-Received: by 2002:ac8:1745:: with SMTP id u5mr803905qtk.10.1553154601080;
        Thu, 21 Mar 2019 00:50:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553154601; cv=none;
        d=google.com; s=arc-20160816;
        b=e+WkRWDQBLFzFBxP8zFLk05UAOiVSJbOiF11e/lV9Sgmowl8c9JFaZxtL5iX0sls8/
         eLzx589QlIM8Mptzaz/B82xPFx1iRaw62hf/AGJErjlaeBfgGTPn5c/KsB7tYJCz6kYE
         kSy7F+/H1gxrNdG5uCmeUxohFTk7oTEd8oISRtJcrhwL0g55zbbSdEkR4YYCoTERnJqJ
         x0cEiybN4gxFYxZEB48mesVJvZ4X6RTRdB8ehOqCMrWmbOTOegZGPnwppj80KrJUqSMy
         3/uCdcVRhtbMvKxdA+J0zRqIfdFvyXSC6sTQaP0BEcMfGT6vkyXgI7N0g/29YYTJGHX0
         6/ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uRZ6ZTLp6v/Jr0mE6iTXUelyU5QhnDBk5islz5kLhPY=;
        b=bZLQKhrZHRtmZ7feyAhVXCb1CCvoR1+5aJddT9FuIrLecmoiUYYvjIKer6Un4Ng7sS
         rOtyQaPof/kSSVC9o7vZIaEonfjBxZNTshV03UHqJ4tg5uSzzwbC75VsT76IgpLhN1dv
         ali92vuJa4eJbR0Ub5aeghO6tykYgFGEEKv7BVWv9UJPmfQwg2lzK9OMu+Glg0tpc48/
         xx48Be0SuyCmdCE36c/Q/u4A2h9NFKmPg9LNbrMB6gCBB9qk9dC3wd849JNqBK069rEB
         bDLLuqED59/10nzn8vL1ZhKlIzZKutdZGXkmRSH9DlA8G3pjoAer9TZddhHyvPwRRMxk
         MAyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=LfPf7pg2;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.209 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic308-19.consmr.mail.sg3.yahoo.com (sonic308-19.consmr.mail.sg3.yahoo.com. [106.10.241.209])
        by gmr-mx.google.com with ESMTPS id o59si277165qte.3.2019.03.21.00.50.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:50:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.209 as permitted sender) client-ip=106.10.241.209;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=LfPf7pg2;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.209 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553154597; bh=uRZ6ZTLp6v/Jr0mE6iTXUelyU5QhnDBk5islz5kLhPY=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=LfPf7pg26ln/r9dZ/INJzAVR7CTQL3CLl/uDgeRz7W3mPvRZtY55byN4ytpeIf91SK4tjD8atOiLHI2x5mqaOTNnNSiDNNEFnmUKyxbXTbGj4jiUeGx1JyesgYhCb1tzFRFvxygryXYw0hHXDpX1UBRazhKtRytg9Y5kee7jV4kuoLrCR6tNwLoosQh9LFG5mCZ15yoTfK7M/DxZguY1A41VbvFK7U2M8sWByr443Ek+gxx7DzoROwbdddz/IEqJBSMvxQu9BHYumjXUIddHQgank1Ia+iNSGzY/tbrGWa8/WYipU4HunIo8htt/PFDj/8xjuR0XwFZtdQ2oQwXk8A==
X-YMail-OSG: GGhA09AVM1mjNcyzJMXHpQwyoEHDMavpjwfaOP6BdhUEmQYumLudjI9.NNATU3K
 90WfOSuq9b5hdtFtkrkIvtLU.b7qL_68Gx9vegQRuc1P_gAscDqZfhbWSRp1i4XRcPRtfeQJjHaF
 vX5Vc9_q5DZ4aTdhjFATOd3P2OoCUwQHVOmGhLNs2JjO67Za7bFt9PmCJd8LXhE_kQtc3jeMdWxz
 5Z7SMC39UzjMgrs72xsq03_46hM7Hf0EXQZjeF6AtooM8BTb8aCzycA.BO9VJM24LQgJBuGmbiA6
 4DzAait9K.lpxvv95L4kpKLycT6liDWArWrvnUwy7ygvMbWBubPTwvfWMDc5NTfIiYECHRd1Wtht
 DlkYDHB3y52Z9ysC5OGrRMKt_fwHnF7KiFBhEZVSIHX9zFAWCvJg1oOF3BZNuH8NZKyxm_K0Dkir
 MJONvx4sory1HUs10N64eQ1BCk.T9Qa771DzhC8PAG8TWsWsAJ5DxtiLRoLdnvLffIDRHRU7DL2x
 mdCpgyqCMSVpg2piapfBvJ6.kEi1HFt03NAqoHV9C_et_fXGdOkyDnZmbTb1gfHGngth8RTvngQ3
 X48Na6aAe4tdIHWdALP0RBKdkLkmsMwEEQjJXJF_FB8nM_mkdjx8R_XI_MoJwoWdO4I4pSozJnNR
 ZKDlgjXW51lNypyrNHBdbvCq8AAFn8lP44Z8S2_zAsq41I9qb6f3z._uaGsZWFWxHyQ72s.xRcdH
 w9TJHIr1FyrGKbbJYiKTcAw.aetC7ivkTjZ3r.4dZ_vPACFw0EqHLDwaqEMHU0vEtqhmZx16MSTB
 XShFRuM.CQ0SeAqpQNjXUhaxFOBARWwIJ.0B.kty4aYbv6.Eo7Sxk_8vn7A6UPEd67KyMaaEJ3p5
 97Af97CmF3s.GbLEtbK_Mo7Wad2_8sQjQkarFXUK4jSi7vTcqKohV8adPHM6XNqElBBSaAEDHoY6
 TujjZsj7OuzswUEBfS8ttNRku8CDJe9gU2HXjaCfom9BCQ3oFl9a32iIMy2om3sJKnhYC8r0tPKE
 Wu6g8P33M_atZRSpFw.UylKdZO2egUxA_Vd.szAXvDU11vPtLA4EUWvhspqQHowe2VR5BgCsHGPL
 zOImgMNAx1a9SUx7zWnvwnvkDOsYFtqPUlDHfGTOYiSQRESanZA--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 07:49:57 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp420.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 6bd7950dbdc82c8ccc0604db2a016522;
          Thu, 21 Mar 2019 07:49:53 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2 3/3] staging: wilc1000: Remove return variables in wilc_spi.c
Date: Thu, 21 Mar 2019 13:19:27 +0530
Message-Id: <20190321074927.2865-4-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190321074927.2865-1-nishka.dasgupta@yahoo.com>
References: <20190321074927.2865-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variables in wilc_spi.c. Issue found with Coccinelle using
ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 4a1be9e60d74..66ac08c92927 100644
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


