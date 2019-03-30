X-GM-THRID: 6674224303355985920
X-Received: by 2002:aca:d457:: with SMTP id l84mr4785501oig.27.1553963940182;
        Sat, 30 Mar 2019 09:39:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1096:: with SMTP id y22ls1478959oto.9.gmail; Sat,
 30 Mar 2019 09:38:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwoQt1q0C3R8cyoCUs+qeA0u4ibDU5n0FOsTjgGsqDwa6owW4IUMtZt5e9u2kVSH+oSR9z7
X-Received: by 2002:a9d:7697:: with SMTP id j23mr448853otl.11.1553963939144;
        Sat, 30 Mar 2019 09:38:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553963939; cv=none;
        d=google.com; s=arc-20160816;
        b=zTrpKleHzm6Dqtwg7h8lXq2DoOYjKEmbIiJE75rF6+TRn0RCoJq44ZpWdS4yElqlkq
         +FLlZneCD+Im1HerhLN8S/lJF+G+P6P7uy/WKpnUpQqhWsHxcTjuaKZIMk+ltqgxcetc
         beVfCPtdyg4OjRLqT88P9q/ofJU6xbiRmioTAkf3MKv0fcMRf3nxzmE0oKzwqLretTm2
         XbjwizyD6XZei6fgVIXGLUTG5xMEVt4txpOVlbHrTt9uF5SjtZ4JH+Qwvch2zZv/RWvE
         pfvf2mWnP68pUF8Y0ftzvnPCs/viAdT0aYOon7eA7dIGd/zsD5Xchr0Ebigtm4v1HScf
         zVUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=lKuObNcqvdYMknO7zVpFNjuAM3PMCXYznONJ6NvfsUY=;
        b=EI0x13Ng+jK2DGJS7lCuNw3gmlkjH726EhKq/1igVhAaqmBu9hVPmK8daAY3LoaaPj
         FOAAoyfH+eVxJV8RP/aCDL3U9CSpg3+r9udhwgu5QhLmuTRJxEH4gIKJm5/x1WILkD78
         KkbvX/au5HufjMyv8iMPSN5N0oRi1+wkmBL4rLX6IB0iq348iI7Q+NTAbd18avbYVH49
         LsTDb7c+/2VL1zIFbhB2ZGCeRTxILwVCGeWhyj6k9MBwsygChF3ffRySAFtv5PlHFon7
         xYSIpi9j+myGR0Y8yVwCqttHaMEQc7tcgotTY1Lib0sBcbFgcMjvPp7Xiv0fIJIfIQmg
         q/DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Kd+zJh0G;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic309-20.consmr.mail.sg3.yahoo.com (sonic309-20.consmr.mail.sg3.yahoo.com. [106.10.244.83])
        by gmr-mx.google.com with ESMTPS id t14si415204oth.0.2019.03.30.09.38.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:38:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) client-ip=106.10.244.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Kd+zJh0G;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553963936; bh=lKuObNcqvdYMknO7zVpFNjuAM3PMCXYznONJ6NvfsUY=; h=From:To:Cc:Subject:Date:From:Subject; b=Kd+zJh0GjgBEg46zkUXlBDb/1Ajsm0mjZ+Klru3xZEETDz5zHNCk434JNpxU6yCOW58FXuYMAj+vFLLPoipR+tQ6PJ3C87Ea0bhmvTvxH22874UcsIR0jhxAPQ/Qh2hjhKRQWvAUylFQQj8VjolRDrvNrUIe9PpP1TrkWyMhCNhpjqrKcnToMrqzOXjxZHEeY0luV+fi5CNKyp1YTx2fkE0bkJqJqCTy2cFwRoPNXPrewFAzQsYxtaTBdmAat+EYh2ubNdTVl39LGvWIgzvEv+uD/AIzW3TlD/gIn39wBphMVE3y/km4pPaYQGHzY+RwxAAk0N4Epdb7by7/L+Nlcg==
X-YMail-OSG: OUIhZF8VM1nwCEfcQiLp6GdPB.qo5IVDT3rVF7kY4uH4lIQt9vCKUFj6PMyZsD4
 3qF7y14FsVt9UwwTBRziRfZTOfstrSPuOAQsPaTRgUj9ekndQOg.8QZ8tbI7ZbZov_gklSBolmhJ
 7eLLOv__OPaHj63M03v7tS.UPlqfMLDs5itBZwZ_6UVYGTpDQUXyGAPXDrdiWGZFxuJrxh7BvCIv
 4LTYHG2L2Yl2LpUDjxiQxq4HZv5zKLxHToscWfJuyQS5MXG2IjkQTBNAao1VFIxfh9ihSe6AtZSj
 7BWJEeuYZapiQZwabj1RuosjHR8jxhBQrXqKjaWiNuHsZe.1WjykE5ppor9wP5pzbUYg.tY_1zg2
 RlktVbBzyyfufIb8dYYAGJmSYRUo4xvVhg_PeS6OHKWi0MbTeXWNdc8_X3eEqHYcsYaQB25kC50T
 ankEHwhTNwyODHqHHxuo3SbKZWAwm99vbGdfq.n5C5kG8g7vxJr9jXGLBiaQ.joO3sYmk5Frw2Uk
 2pCCKIoE2YZ5RynPNx1jZzpQ8v4W_x455CVA3fObU5tkdMgFlz8avytp0MBaEYzyXMYuuy.2aHM_
 afNYF3egGvNOHrF789He72WuKW5ydbSYn3h9T2aHC02XqAMUcOcK1zFl.1c9TNIFAj0vEYuAvIlO
 VtnxwMj.Hlr.mJu5bOKj1RCxz4o0AWTPeso.WXhsZCJNBgWMQ61MCcRqh0xn0jy.KpyZnHQk68cJ
 YEI6RK0KB4ZrW5fv0steqmWiIL49gHWpPE08J03mHsCylUbraWphz6m_jZcRP_trL7_5Ip_aBX4U
 6wg24Z_aG5NTYbG9p5gg0u7Uoudo.1EQOQZFc.yWe7P3GF2yh11P_Lt.6QLVyC.jGrVRJsrBNTn_
 jwkx0hPezLUobA4joOC.NPbU5KTQshqfC6wW9lReGvxE_pxBHJRbd4a3ebWQ2NCKkaLqWl_T7tEB
 H3gDcXKl8.cIp0YGH74.cdOL0zoa_y06NyYfQ5HMNXD7qyTiLMWwa.R53oYvGGGmXNuC1fkBB7IE
 jN61jO7mwH4jTLOV0xMzo2DHpKwrqyL7jvMr1s7kumZctcpYpdXA76.PVQy_vPYY3ns4s1ppsQDw
 0947fAVNxIYWChMw29d46BKXM9o1XCM_cmg--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.sg3.yahoo.com with HTTP; Sat, 30 Mar 2019 16:38:56 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp426.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID f70dfff138107e1562978818a6bbcfdf;
          Sat, 30 Mar 2019 16:38:55 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: rtlwifi: phydm: Simplify `status = status & <expression>`
Date: Sat, 30 Mar 2019 22:08:47 +0530
Message-Id: <20190330163847.2618-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Simplify occurrences of `status = status & <expression>` by modifying
them to `status &= <expression> to make the code more readable.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtlwifi/phydm/phydm_debug.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index a113e2b63153..5e0151036542 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -51,17 +51,13 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
 				      (power_index << 16) | (power_index << 8) |
 				      (power_index);
 			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
-				status = status &
-					  phydm_api_set_txagc(
-						  dm, power_index,
+				status &= phydm_api_set_txagc(dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
 						  i, false);
 		} else if (dm->support_ic_type & ODM_RTL8197F) {
 			for (i = 0; i <= ODM_RATEMCS15; i++)
-				status = status &
-					 phydm_api_set_txagc(
-						  dm, power_index,
+				status &= phydm_api_set_txagc(dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
 						  i, false);
-- 
2.19.1


