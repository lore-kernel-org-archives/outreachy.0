X-GM-THRID: 6673526456107139072
X-Received: by 2002:ac8:3723:: with SMTP id o32mr3047261qtb.23.1553801465602;
        Thu, 28 Mar 2019 12:31:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b918:: with SMTP id u24ls9659489qvf.3.gmail; Thu, 28 Mar
 2019 12:31:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxq/8X14y9S6sd6bZ+tNgb9n883i5CNiWUjYQ0u4bKTa/BeA3XHLKeSsVe6kgvw4T/7y4g5
X-Received: by 2002:a0c:f851:: with SMTP id g17mr2257682qvo.11.1553801465052;
        Thu, 28 Mar 2019 12:31:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553801465; cv=none;
        d=google.com; s=arc-20160816;
        b=jZNws2bhh1ETckNei0x0OqVE4NaBiHR6S/33livX2zsmotHyIo3RfkFeE8dvpkR0ZE
         iTGO9Ns2p9e0Tbk+msLx/8cvukYZmS9WJ+4gposHmUZXPEMRS0cXqYvQrW1629bR1R3n
         6hk5nS8Jn4J+6a9IvzyMRWwf/5w68Q9C/1U03eqDJMPmIAJW8Z774NsYkHgNOF/1KqiU
         fc9opakX15KBdRcbpzGh8OgX2dvo95xmbClUsdY8x950cls+S/HylmEwSwAR/KiboR/h
         dVfPKmStIezjOch5G7/iNtNKKvh9uhrK/vXs2S1/XgnyjQ2zFTmFA3++zEqq9UcPFLtt
         OfVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uEZegkwbvfp7DS+XkW1awp4XJCaJv7AFsxBiZ7hVJZs=;
        b=C2tn3rfW/T9nFPKwYYLwaKmF7Zk/9MQbiu9LubKnrFwmO686ZABCceSNIA78nn4l3B
         v/qhg9MCCW3ab1LX0B3riArPngTLcLiHAqkAfNigYLZ01/ddXudwteVUDrfjCmomtzhB
         Jw3Bk7RQ0v7CRg1PRQ2Ve4MnPf59j2JH5aHbBk+vnVn307eV8i0ySS4GN4iMp/yERCPy
         1MufvkwMhvcgMC5DizzqRTXxjiKK1z2fldvnfGKV5vqVR16t7pWyOMZSrP0DQFZOBbQD
         THJRhC4UunDJrs8OyvfPpwTPvzAtitY4zX/J21MCU16+olSkiMrbGwfmke9U1fnfrdrw
         sSkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=rYDs71KE;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.65.31 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic315-55.consmr.mail.gq1.yahoo.com (sonic315-55.consmr.mail.gq1.yahoo.com. [98.137.65.31])
        by gmr-mx.google.com with ESMTPS id h186si2021494qkc.1.2019.03.28.12.31.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 12:31:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.65.31 as permitted sender) client-ip=98.137.65.31;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=rYDs71KE;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.65.31 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553801464; bh=uEZegkwbvfp7DS+XkW1awp4XJCaJv7AFsxBiZ7hVJZs=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=rYDs71KEU3a65HXo03v/7UZcEFjzUR2U4SMX1RnA1KOrPpdKt5CEb5Zp6iZ5jxVJ//gO48g2RjoumQ2QqNH/cS/lEKpM5/XpfHP4zb5aAhUb6KXtc7q1CHOa47jVYx8qudpK0vKZHO9jzkCB5cV5HD0o4DJD2LZfhoViEprVzpWGkhFlg9qYwFyQQeCaxYKXkIdpZKkqREzwe0znEn1rAyjc0lnFlV6fg/PhD7dyRvAey5FghDNgvfKm9FsacJTB8aP0lnWSx0mbMsHfJCBmvNYMUodD0wihJ7cKNWMlWUq+NQ9iVfzXWNRHIviy1C14WZUjrdytPioo1LTPTypdlA==
X-YMail-OSG: P.1AqHAVM1looPTuiBgjRIk4dPVNZBuzxhuoD4osfX.6mU.ivPAOyLYBs.X93eW
 hfdNwDZJBzGTgQBNta6sWT1Xw2QwRpLPb7AWQI7f_IUEjHhpqZQewWYGc6T7EWaAsBVHQKWJgqG_
 hgRInoNXb96k3fkpRCVr0lHcj6lxI7HzxQFLPdn1EFad3g9K_bAl5p39NUHexljoK1lo6ehIDgt_
 SnqdHOMfB8Uw2MvcbLGkNwGmC1M0.bQ98GJXC4jFx4EUqfReZ7FCSWjHdFP4xybdpYlGNnoRTvC0
 5urXGkPRKUnoh7Vp8kRi6SlUb8imEKu13RMGqyw0iHIuoNG6WI4MuWZ7dEzgbJJiQP83WpHLnJRt
 iZDBIx2q.thT3f5iMODM4LEXllgqn5iVm5HkLva3w0Qru0AJlMNOUJ7S6Tid1NUbIP0gAG_W3iCI
 qOS7gtOLiZdgy_juuyiUp26qX86JzPBeT8AsUfc52LeDB6PAmqGYjlTr7ywraxZublnJPB8PsY5P
 hhtqcrYJmNNEn.dEG79pDgcoZF3_elAE_i2f.PZCCgFBoNuV.zrWTNzb2jERoWHdv8yD5tVL.qPf
 BaL62.QUf2Ee.BPBav4ECghpwMXC3idogyEpZjSh8RY6bHp7X3iBbqpwP4b4WrKsZAY7t0n0U7Cx
 TdevIrnIl8PgX.pvZ3hLTXSqiPf7Ed3mMiPaYJNYeG8Xh0oBinP_ZJydDw0bj7dmmoWTtQRUTIQS
 ceen75b8Y1ruBcWCnpAt.Btz0Bkylm8tw8E_bxP8G0QjZyRXYRNFX3m7ImLZ.vf4xyty6PaaBamD
 fHMMYzko.VkquwdYOIexllEmS7ax1gZb0ntL5osE0MzvWp1xhIjkyZb9uXvgA_I9hGlHBT1g6LIE
 zlUXxGvil_4SRfn6Pu4Ut27jD5GfRN8pykAnbXG51ZWXbqo21Ccgar2nprOgc3HA0Q2fnVEXQujj
 3NETGGGPbD4vST0PFPkbjM84lZgPjZlVDH.N3m1.Zp0O7XcQmEWR0cPtAtcCkoAys2yzv7tVMAn.
 xMjRf.krtKDsGMUa30kXukdm2N78TtzaS1ylR4cqGDGxwSDuK.Evct6_BNX6nSJuzEpBdL.ISwQU
 6Fqu0it8ZKBycAObQZzvt1kqnpACpEaRF
Received: from sonic.gate.mail.ne1.yahoo.com by sonic315.consmr.mail.gq1.yahoo.com with HTTP; Thu, 28 Mar 2019 19:31:04 +0000
Received: from 210.212.93.46 (EHLO localhost.localdomain) ([210.212.93.46])
          by smtp403.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 993959498c4cdbcfc9ce757fc7a507fa;
          Thu, 28 Mar 2019 19:31:01 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 2/3] staging: rtlwifi: phydm: phydm_adc_sampling.c Remove brackets
Date: Fri, 29 Mar 2019 01:00:40 +0530
Message-Id: <20190328193041.13541-3-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190328193041.13541-1-nishka.dasgupta@yahoo.com>
References: <20190328193041.13541-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove parentheses around right hand side of expression. Issue found
with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
index f2468b82f745..d3e9ae38662b 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
@@ -67,7 +67,7 @@ static void phydm_la_get_tx_pkt_buf(void *dm_void)
 			"is_round_up = ((%d)), finish_addr=((0x%x)), 0x7c0=((0x%x))\n",
 			is_round_up, finish_addr, value32);
 		/*Byte to 64Byte*/
-		smp_number = ((adc_smp_buf->buffer_size) >> 3);
+		smp_number = (adc_smp_buf->buffer_size) >> 3;
 	} else {
 		addr = adc_smp_buf->start_pos;
 
@@ -103,7 +103,7 @@ static void phydm_la_get_tx_pkt_buf(void *dm_void)
 				/*Reg140=0x780+(addr>>12),
 				 *addr=0x30~0x3F, total 16 pages
 				 */
-				page = (addr >> 12);
+				page = addr >> 12;
 			}
 			odm_set_bb_reg(dm, 0x0140, MASKLWORD, 0x780 + page);
 
-- 
2.19.1


