X-GM-THRID: 6670193586677481472
X-Received: by 2002:a67:7b56:: with SMTP id w83mr7485940vsc.14.1553025479646;
        Tue, 19 Mar 2019 12:57:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls167vsc.3.gmail; Tue, 19 Mar 2019
 12:57:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzQ4lpvxzZYHxAkOrrH8Egrlw1C9lEBiq9293tSc9W1+/Tf/c4MZBWp8c5Fa8xPlkoO48LU
X-Received: by 2002:a67:6948:: with SMTP id e69mr14578807vsc.26.1553025478851;
        Tue, 19 Mar 2019 12:57:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025478; cv=none;
        d=google.com; s=arc-20160816;
        b=o/J06dIFCrX5mg/BaI0W1u+Y5eGTitFyvq8t9fQYLV20+/B0lBCrIow9+KPeqtQN/k
         hdLo9TangpSM+khi4Kw2QfB16wbYr70MPWGCR+XKfk3aVmVAvUKj8gXFWK8uEYB8K2hX
         Gnubq/ZDMzlFQv81MSsTSGgqg9qLVvXPWHWpc/MAh51k8z3fcKED7jnNjnHT2eD9t0xI
         Y/2nwCpggGdjmrh4Umn+ootSUt7ufKl7toR8BY82X9RjyIj67OTmbLxhOD+T9D1OHVNK
         /tC5cbYY5SMpnJPW53Wfq5GcPAD4e68N/4etwpsmLc8rE99ObVGySzp2g+Wua1CFuOxB
         qBVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=P2+Efes+e7zQHM7s1vStFTvbxhZZrWjhzZnql2MxSJ0=;
        b=rGLGDDD34EAUOvBZupguI51TaoMsa7cgEMi6rucscaMVWzX10do9jrZ1ISAuke6rHa
         J+RANZC6SOslsaY2eJvumtuoY1rpX5AWms4j8C8f4yXD9J8Nlu8UzrfwQ9Eg8CGZMJRD
         2LWHy3ois+R6f/8zjfkeWT5ACv0dhHcvyp7hIGWIuh2EWTu0sun1yUm58duxOYHzfhSO
         jrz+j3m9YD8qPIBb3u/SXGrMZYoTXCJeYq1ot3SPHHkouMw7wKB7gCI1gxqkG9gNGexp
         MerZ3lJCre4gDuBkFFbcmfRCzPi6Elj7HeuuyfvW1QksV3AOnzORC+ZpjHfnFt/YNfp7
         g48A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=nqprRlYM;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic308-20.consmr.mail.sg3.yahoo.com (sonic308-20.consmr.mail.sg3.yahoo.com. [106.10.241.210])
        by gmr-mx.google.com with ESMTPS id w71si434431vsc.1.2019.03.19.12.57.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:57:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.210 as permitted sender) client-ip=106.10.241.210;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=nqprRlYM;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553025475; bh=P2+Efes+e7zQHM7s1vStFTvbxhZZrWjhzZnql2MxSJ0=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=nqprRlYMJr5y4hJZ8SB8yaOBH7/IzpeLFkYmsRnBBggc0sDvdDi/968z9b8r8+hGQmygxEowddg+/h/Z2Vb2jIyHnZvT3+Pa0BGmvl8nna2MuDJFIzwqiiAwWlOWr4l1m0O84xztefKkE0gv0o7KGozkYOi7u8pFZ82nEPtoznro95nPytTOf1R1J8EtcAGMXHsSwqHxHNngAN5lGQSJloCxuE4MTD2H59oJY7NH81gwtmepW24xwviYHXpjQTKTp+mw9VRm/aSaGb8ZZnviSEyr9A4KaRviExd3Y+1WFr6va7QxHE6muuY6vOA8znILUcIJA/TI1LRVZfL1hzXcOg==
X-YMail-OSG: QXL3hbMVM1kTjVT8TeFMgG31YQ.abnfk0ACRWQbX0ZiYZIZITnj1pOTDsQRT7v9
 n.qV7zO89D1P2KAI5GkfTELSUIICo.Y0XcPdlm_IIPAiqfpLZjEsUtGQyjjsti2pEzSGPWuOm4um
 QDT.qT5v4i7rNVtnJXyqtsMn6bpu8JrJvjOhTXjkoLnumCVG102qDZEpUlDEOdwt_cMZvQdQlGIc
 Gc8tjRUmMWvMtxJ.ObDVxKAsQRanM7VXpODAm3PfQY8fbfJnuo02N_FUuHt.CVMkpwZ_pQj8oVLZ
 1EE9z40uMrLY8Ccr79FpGF3dVLfhHwZPPnKe9BaaM.Fmf03IoaqrAWyt.odly29M14qxLQ4iHeas
 Y3pB.J8bGF_yM7Kq9CGrm.v.znHwUo7Lr3ldui947ZkzZ2jop7QKHjdIucaINGXryAKCmfuJ9hk3
 ug37FfLqfPBRoyLwFJpau0vaEPybwlrgA46rW.J0jZbDCzctM1ioqx09pBw24Mx7ZTQIjGMMrv58
 D856oxhSLhtLR.cbkFeRQgyYl.w.DBKjymOl2gfcbEeDMi4CnUeQnh.yMyQWheOAkH862C47NEr.
 3jdmsC8DPxY84ygIWIncaJJGXU2DSyOG9bUKSg6zXSTbhH8UyR9_vwBCq22IaKfBFUDUh9UFE4hP
 ABPOyc3GO.N0S6ga8gi0ydp9U.RlzPx7XJaRYDsjgGZs7OU6pc056Db8WJFLh2Yr8J_jsI..CRRV
 xZCz8zjpPFX1J52y6169E4WwgWJyUx9PmkzuwPhudIzsw2p_shxyM5ANQCOgESFWHCC5CJrdXv68
 bGgqPw7DnBei0lU8Id8VerYxIiA6SPOZlsJCAFKg15iqKfZQjHrCl0N8x2zLSDwykwPpbph8uNDi
 69PC_QYxXiRqWDXaZSFNtaG.454jPAgpMkej.xjfxGpu8ARMWLUPncFRqKuksEU4IhhT65SjgqpZ
 MEkKYvQiQV4blI.BJInsvp8djytxUYHxx.T0wRWxwZ3RwPJsALUBzC5LKmb8f0bTOkpbGCS7SrEM
 016sjd7NfCrokOV4M0HCU9iqprrqwaVE_ZYvaqiSuygsPbe7HoPHy23y9z9feV3lCQp7p73LjKm5
 VXpf2bfX_vWvT_KLlM4z3Zq440CobBiUlnu.8qUuJrWnasskt
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.sg3.yahoo.com with HTTP; Tue, 19 Mar 2019 19:57:55 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp422.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID b707d24ec4d48d531001bc1a2a399b3c;
          Tue, 19 Mar 2019 19:57:52 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 4/5] staging: wilc1000: Remove return variable
Date: Wed, 20 Mar 2019 01:27:30 +0530
Message-Id: <409ab55c1329fe78ff8be78fd7bd3adce2f980c5.1553025265.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
References: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variable and return required value directly. Issue found
with Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 4a1be9e60d74..28fdfa269192 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -934,9 +934,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 	int k = IRG_FLAGS_OFFSET + 5;
 
 	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
+		return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
 					int_status);
-		return ret;
 	}
 	ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
 	if (!ret) {
-- 
2.19.1


