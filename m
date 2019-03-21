X-GM-THRID: 6670748157895245824
X-Received: by 2002:a63:2cc9:: with SMTP id s192mr119860pgs.71.1553154592956;
        Thu, 21 Mar 2019 00:49:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls2648775plb.2.gmail; Thu,
 21 Mar 2019 00:49:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyheohTlM9MPoIEIGDWZd2jITM0QQXctVV/lqn9xVQ0ajY5b07wYz2DFMMAiHFejDcO7eHB
X-Received: by 2002:a17:902:e10b:: with SMTP id cc11mr210211plb.99.1553154592289;
        Thu, 21 Mar 2019 00:49:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553154592; cv=none;
        d=google.com; s=arc-20160816;
        b=SexBKDIB35HHj5s5GnRTOE38ncsuE4U1Og6GDAkqMFttEj/MjArr+HTv0OZluGiGb9
         SFCWHppL/mlHaKqLQhnUfT/6SGeibzRLGbrUwCq2y2Hg7O0c94/caUH1NPPjCIbGNe/m
         f90I+m8qgAcU9XGj/XSG7wAJc0nEkbVeybBGFH2vzMRBMEGm7i2aquk4j6ZwAY2KAap4
         MpqapN7UQ17bQh5fxVkjuPMYrPbJTP52sGl0KwQBUrVg0hDLfJjeumMf7y+W7n9nMyxG
         M+Ecs41S1eZ6eRHi/Ll7JpwFmbbgCel9zpoQCrtCZRv6/xetuOFKmgkg0w9xdLPRnxNh
         +w7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9CBRs5BQ7yIeZp2bKYnT99oRGrOHQ35STOCu5W8iEXE=;
        b=JWZkRQziaMmPTkPVtxozKLpMQwvSuRKHqNbO4hqaxWJ1skRv80cHeYaEpMupUDurOF
         MaQexWzn9QXIScIeuD8vvRqFq8piYeCy2e2EVolhO8bMdX+kb8VEPc+uh2NH1fjSAzez
         bfvwCpSwS2bB3UxJoStRTlqS4GXqVbJkdyIVrTEFNPhadGEMDKlzQKdBlxS3awp+HW1q
         aTb3pJFQO6O8Th+HJZdD28c56BrVsEMnnsWlOdDulQxYKedQ4RIZotbSFUOR6hhj351x
         l+93YWb4ssO1DudbKyUhXmFP6pJb3GmM08g4tDIRDFQKevNeblTqt2wS6iE1xbEht8uh
         44nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="dFrF/j0u";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.37 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic303-20.consmr.mail.sg3.yahoo.com (sonic303-20.consmr.mail.sg3.yahoo.com. [106.10.242.37])
        by gmr-mx.google.com with ESMTPS id 192si360699pgc.0.2019.03.21.00.49.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:49:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.37 as permitted sender) client-ip=106.10.242.37;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="dFrF/j0u";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.37 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553154590; bh=9CBRs5BQ7yIeZp2bKYnT99oRGrOHQ35STOCu5W8iEXE=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=dFrF/j0udYKvjujy1DacGu2XfzzSc7tj3P3uQ8Iau1uDfdVRFl1UhMwCyi/quIHl6bMJmPiLH5bIccg2+6wZ34ZePpSE2KniU0dpLw2dPq9q/Z7cej8jSWSYJzRlmdOVIuALf6gxeunuBuxTcAY1OKwNap2FFZgEfJpwX/EKUP81GpBTm+IF1Y5uLWrsDJYj3kxSooJCKEBAOwUmxG4yx3HrAFHIvm6zV9P+lM1S8M4wrCyFNH5y4i4Dm1KLqQYvD1Fd1+m7YSOlfRV5NweLT4aZnkdErB2o+Pe+IA3lZwTRi8SruD9dYgZzI3AknlyNmOw2qbjHLp+giNpj+qRDcA==
X-YMail-OSG: S6e.yTkVM1nLSW0JxraavWb.IUp1LSMMzL9BNLeju56WfhwxhbFm3ImbaDnsBA4
 ..phZsbgQkE.DXVVMRXl1Xcuh6JmQCMvLpeQDx2Ql5Oyml.h5BcYjDagK4nvoY0vwIxTbZsyzgIt
 KU9YdwbwbY4BXT3mwUXEsAGVakbntnVaDgemfiQZZ.AGp_YM7zbJAtjwNz2p4GjsxHEpASkW3Bis
 _Lv1XRu4h0ilhmuiom6VR6qYuf_Lrh_9lDnxbfmL7Ol8DZDQG3wN3edOF_pvA5EUjajd_wSPI2XV
 UfDv1lmcxZL5RGxqybsMdlUBMwKS4wkeYo0h8Yw3HzN6cdTKaWyQPohOSb9Vk2MnIYU5Ep5IOVHp
 c4D.AZI4G0A6uxCqaaeEQGEOQyNUlhtcxrZkACTllp_YNVHf6EIpjS0fMM4BtZXn9BuKwyRnVVbB
 bRTZDFWA8OMY8x7ofLvTepipP0tOURi2SCslwI883rYQKr_4GKJu.caUBpSCjlg7QGIXEY7.ENOh
 LK4eamfTAcjYAdYa.P.rgSpd1ecBvXizTuHURNUibjBmf_5QpqCGdgwkG7uBUA.JdQ1oDehvHvkS
 _nXZtnc8.Sg_6sZGkgpKDNsp7PySVLUbjDhuP9pcqUZ5q25niqdS59nAxVL_1Qg0UK6hTBJbU4b8
 e4QaEPx_rfz_KZU92SA8.11Cm_kU_aXI.feqNHIj3amfOREYMVnBPdPgYhxn5nbnbymdlQDsP4G.
 qPxlJdGbzFKuT_iFrbS5krIjGhm2sjF6AL.QYG.FFb4mTzDaBrAG7z23Z0a._CY2SJQE2xubm4v2
 1bBrCW1yX6AwWK0BANSaPnlzZTZ8B7H0tCXDxvFhlO.XdVaoXozKU8xV6pmo67JC5pkjzoEyJZLp
 caHwEz7OCufYIe4DRKIzZLMfqgC8GDHWsns1QAhi1bhAqbDiCPDektDWR0.PArm.TUAutLkU.LJo
 COe6.W43AM2nrW0NaSRuR_OIdtJTJLVTj5uEpXLopI12TBR8nBXx2G3aWkLIHWFsk8H_aqF98rBe
 v1AgRw9nbod1iQNHP88onX2n9bqb1h1UxhpZ49xEc9ikIjb2KOmqzeSRGNS0y5BTCmkmMfo1E6f0
 sZBHdCNdR.yUTtvhV0DBbx0eDgq8t0w--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 07:49:50 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp420.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 6bd7950dbdc82c8ccc0604db2a016522;
          Thu, 21 Mar 2019 07:49:48 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2 2/3] staging: wilc1000: Remove return variable in host_interface.c
Date: Thu, 21 Mar 2019 13:19:26 +0530
Message-Id: <20190321074927.2865-3-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190321074927.2865-1-nishka.dasgupta@yahoo.com>
References: <20190321074927.2865-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variable in host_interface.c. Issue found with Coccinelle
using ret.cocci.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>
Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/wilc1000/host_interface.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 2d30a144c97e..61fee74868d8 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1401,8 +1401,7 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
 		conn_info->req_ies_len = ies_len;
 		conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
 		if (!conn_info->req_ies) {
-			result = -ENOMEM;
-			return result;
+			return -ENOMEM;
 		}
 	}
 
-- 
2.19.1


