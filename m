X-GM-THRID: 6673526456107139072
X-Received: by 2002:a62:6107:: with SMTP id v7mr536351pfb.26.1553801465186;
        Thu, 28 Mar 2019 12:31:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:461d:: with SMTP id t29ls11996558pfa.1.gmail; Thu, 28
 Mar 2019 12:31:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyE71j1NiGgnxOjTmA+TCXx6rwSVB/A5ifXamtswafnjhXgNl8gAZ/zkr+szNpJFUZRTKWZ
X-Received: by 2002:a62:4e94:: with SMTP id c142mr519683pfb.141.1553801464561;
        Thu, 28 Mar 2019 12:31:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553801464; cv=none;
        d=google.com; s=arc-20160816;
        b=CwrySnzrOTvx+ZenYk77ztueSDzev4Qp4AKFCy8QrGBWyzZw/zhgRMkmq1xLlKE8jx
         l9Z+i+dHOWDl7WUPlY4SlQgU7qi24qm6QjdZBXTCADb9H8sk9wKm+2+Sb1jmm6dqq18H
         e4waa/q75e1Rc1FrhFsHGD3zr6bGpm7Hsshz3l837NMlrqXpzU75wD45I+DPz3yMMQBa
         w+LDhQzEzV2iRnFVP0Xf1vbCkych2s2ctxYbrts/FeWP39/LQ9gVrjrZSswgAryHts8O
         HlVQbuS2Mb4pUr/wNrfGC/biiGhJSJ0iRA0EWUvk/flnhgDc+3lmEGUbdawEpH2pGUsj
         8yFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XQvo1wgV7NhyrRuaKutexUASIVh4x6ca3xI5wW6PLsg=;
        b=p2JkVb+iXut85m7cQRLjmfc1usmw/8rTEEGrTuzZ6bzmivOITvoN78vjtIQ3gOaSA9
         9zXTBCioFB1+YwWon3sYmYrC+DBgFaFq0EHx9oRLbaXO4P0NYiV7W5Bo3yAi9xhAGP8C
         zO6EL1UBaCyaaHDLe3Ot6oVQv5PXho2SWK+rr2Oqcz3tSzDiWP10y1Y9dVYf2oIG6KkA
         qF11Bld99xBM6qKbJ7WrRcuh012PI9E3fRT6tmTa7I1r8FQNNKnPa20GzXuohpL/by/I
         fJaYHCqVFm7+9XWE19ruef3K6RVsKlbuwxEAtPHPXFm3+o1LLr9OQ6XD6IJfJvOTomQ/
         STMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=uWeSlrCq;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.69.205 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic312-24.consmr.mail.gq1.yahoo.com (sonic312-24.consmr.mail.gq1.yahoo.com. [98.137.69.205])
        by gmr-mx.google.com with ESMTPS id d18si1400pls.0.2019.03.28.12.31.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 12:31:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.69.205 as permitted sender) client-ip=98.137.69.205;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=uWeSlrCq;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.69.205 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553801464; bh=XQvo1wgV7NhyrRuaKutexUASIVh4x6ca3xI5wW6PLsg=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=uWeSlrCqCOcyFanzyKggNamiuRPsOSSUncncam0nFPvmwIpBmnBSS6YZzRCaRX805Q2on0B1Yqu2J0UhUK7nUNi5CHTw3n2QL5yaGi/NC85z7kT7BkY96TA4zBI4HAwEuDy3iMcBv8B/xdcI2wxrO6WF0cmJfNZ8KqBPiXANxH7rUxDZ3vlJa8wQ8BdSeLh6rfFqlfsUv1gFUWDNDnV9FjlFOSu5M3t0NVpFlNI789IxXGyOmhnjPQvce9uNudr/MYo8v8Q9p3hkMFI4mF9P5zQ8NG+wC7yv9K6sUkqmmglUsm9PKXgus+YfFNZHQYUOD44PMlwh/ANFXf0DH+R2HQ==
X-YMail-OSG: NSmVVZIVM1kJzI_9j8cdTLKAcZS8gvMhvmUHpkFykr.jOfkjKoVaCIvezeN1dBE
 sFk.ZcnUgZ4r4Vh61iwyuegD.tFiNcTYLBi6Rs9BLxwGIzKfCUqMFfA7Yjh02K.9csSeC_Mgwx7t
 gXzvTSr15yAaBnaEW1R0d25FPhqnWllkI1HfAs5lQFqS2jlLgP1igeP95b9L5NcNl5eo7s.oMtwK
 cZFNgssoZD9H3nCt3GL.XebHVkg711QzbrjTQ1T3M4c.w.aj0sRuyIGWNBkSvXSPOx7qZsqFAHNe
 hXsEUShVABpd6C8JILxqEZ7s.2DvKh6GOOU5oNlC4cUdOc1FU8P7hdchW86dRfSIrwRQQ.9gDMzC
 AyBeXIPDWFyS2y_443YlgCzUwKbLOdED2UWCk6tGdvAAt6DMkuQ.CBkKLi1qkZY1Y6_3tz4IGXgC
 85xGCzBOpQ3wNaGNTLTI7b7L7ksGXsfTrP1SLxoVH9uh7WFbWV0tBuCzGpUYT3UX0QKAJajPkIQF
 0ioTs2w7j_RUgH.u_4dmr3fCfQCnfhyhOCIaR5.mGajHIQD.HPhe7KWqcLab3ykyMwRYt6SOTQoQ
 junwdMK9MLGYLekUqWQVjF1k9..TGPrvPEMZJ0v0vgFkX3emDcLYhzZ1uY9pN9jB0UoPR7HBvFIg
 I._o6foBY6DWwAqIslFvyRXBHYT7gK_1mvhobTxf1NHqK_w_FZxBQksiqgqDF70pzQ2RJnCnUpLQ
 27AoRl2LTK4GyfUd1b6slzCTRvL01knFKwADeyYeQILmXK3ozzo691onTrrxGlKNdGZICEOUwwD9
 5MHQpbzLishEk5pMlQ4NOAHigp9zF17XAAcRcu7W4.F8GsSgk_uqa0LzeKLaCpctr7PRH4Xi.BYh
 F_a066IqOiwglF10io1sRN6ddM1pQKLQURjmVMP7sBu80bWRiUOAwt9YnKFbpYHmLjuwU9LpYxpo
 YZM1ET5kQ.8UQze_KqFyZjy7KYJYusMoch2XapwPmYw7FXqIH8sDNSmsZ67AlVdc2OVPnA1_GSzm
 iIRRKnlgerb3sVrZehAm7DsRSvnkuUqtQRhj9YBqT_D8LOq80jEbjOrUeOTSPgjKZjnv5wj5ZJxH
 3hQAk.ldu8gvw2rjnOso4QNEYUU8n9tQ-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.gq1.yahoo.com with HTTP; Thu, 28 Mar 2019 19:31:04 +0000
Received: from 210.212.93.46 (EHLO localhost.localdomain) ([210.212.93.46])
          by smtp403.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 993959498c4cdbcfc9ce757fc7a507fa;
          Thu, 28 Mar 2019 19:30:59 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 1/3] staging: rtlwifi: phydm: phydm_hwconfig.c: Remove parentheses
Date: Fri, 29 Mar 2019 01:00:39 +0530
Message-Id: <20190328193041.13541-2-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190328193041.13541-1-nishka.dasgupta@yahoo.com>
References: <20190328193041.13541-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove parentheses around right hand side of expression. Issue found
with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index 4d2630e63789..bdf3b746e861 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -218,7 +218,7 @@ static u32 phydm_process_rssi_ofdm(struct phy_dm_struct *dm,
 		/* Calculate average RSSI */
 		switch (rx_count) {
 		case 2:
-			rssi_linear = (rssi_linear >> 1);
+			rssi_linear = rssi_linear >> 1;
 			break;
 		case 3:
 			/* rssi_linear/3 ~ rssi_linear*11/32 */
@@ -227,7 +227,7 @@ static u32 phydm_process_rssi_ofdm(struct phy_dm_struct *dm,
 				      5;
 			break;
 		case 4:
-			rssi_linear = (rssi_linear >> 2);
+			rssi_linear = rssi_linear >> 2;
 			break;
 		}
 
@@ -813,8 +813,8 @@ static void odm_rx_phy_status_jaguar_series_parsing(
 		cck_highpwr = dm->is_cck_high_power;
 
 		cck_agc_rpt = phy_sta_rpt->cfosho[0];
-		LNA_idx = ((cck_agc_rpt & 0xE0) >> 5);
-		VGA_idx = (cck_agc_rpt & 0x1F);
+		LNA_idx = (cck_agc_rpt & 0xE0) >> 5;
+		VGA_idx = cck_agc_rpt & 0x1F;
 
 		if (dm->support_ic_type == ODM_RTL8812) {
 			rx_pwr_all =
@@ -1435,7 +1435,7 @@ static void phydm_set_per_path_phy_info(u8 rx_path, s8 rx_pwr, s8 rx_evm,
 
 	if (rx_evm < 0) {
 		/* Calculate EVM in dBm */
-		evm_dbm = ((u8)(0 - rx_evm) >> 1);
+		evm_dbm = (u8)(0 - rx_evm) >> 1;
 
 		/* Calculate EVM in percentage */
 		if (evm_dbm >= 33)
@@ -1509,7 +1509,7 @@ static void phydm_get_rx_phy_status_type0(struct phy_dm_struct *dm,
 	if (!dm->cck_new_agc) {
 		u8 lna_idx, vga_idx;
 
-		lna_idx = ((phy_sta_rpt->lna_h << 3) | phy_sta_rpt->lna_l);
+		lna_idx = (phy_sta_rpt->lna_h << 3) | phy_sta_rpt->lna_l;
 		vga_idx = phy_sta_rpt->vga;
 
 		/* JJ ADD 20161014 */
@@ -1774,7 +1774,7 @@ phydm_process_rssi_for_dm_new_type(struct phy_dm_struct *dm,
 
 		switch (phy_info->rx_count + 1) {
 		case 2:
-			rssi_linear = (rssi_linear >> 1);
+			rssi_linear = rssi_linear >> 1;
 			break;
 		case 3:
 			/* rssi_linear/3 ~ rssi_linear*11/32 */
@@ -1783,7 +1783,7 @@ phydm_process_rssi_for_dm_new_type(struct phy_dm_struct *dm,
 				      5;
 			break;
 		case 4:
-			rssi_linear = (rssi_linear >> 2);
+			rssi_linear = rssi_linear >> 2;
 			break;
 		}
 		rssi_ave = odm_convert_to_db(rssi_linear);
-- 
2.19.1


