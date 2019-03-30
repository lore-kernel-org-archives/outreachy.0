X-GM-THRID: 6674202395831959552
X-Received: by 2002:a0c:9622:: with SMTP id 31mr1759661qvx.22.1553961330959;
        Sat, 30 Mar 2019 08:55:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:de09:: with SMTP id h9ls605238qkj.5.gmail; Sat, 30 Mar
 2019 08:55:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwPPcanLKHR2LhWOV/c9Cqa/rTq6dndQQ2u+JzzKZHLdob62ugC77gJRdgjW/OAIUJQ7ry7
X-Received: by 2002:a37:9f88:: with SMTP id i130mr4894149qke.3.1553961330468;
        Sat, 30 Mar 2019 08:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553961330; cv=none;
        d=google.com; s=arc-20160816;
        b=MJnt7OSigIDX2ssdOu6t2oTYEBf3jJuqXEL1c4I0P4L+WbXnpkPTh5pP/hz4bZqb8X
         8qjJjQgs0OYkATgIrtLgm0v02J9ehJJyhnLs3NpwnWEgXkk7OEuhyJ+65LBYjiKMHX3f
         IY6GaNQ+c48c97kdCi4hlXFgwDGdVMWE6x0j+WNCE0MODpfJ6n7Y/VyTH3CdvAsQ34N8
         qMO4G19/djjlkCj81kOxxkpzPE0rFLkJubDouWgfQE37dBuFKknaKeo7SW4YSVbP6i/4
         t8C2ueHx5FJWOkeoxNaR3a/9PHUrgFNWFkofSh0XaNBwvwgRv6BGhxT+wz3k3wVMdZgS
         7QUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=FcZuwPwBHo05PxDc2bDhJlqUQS+XpoDghlBUVlP6H+0=;
        b=q5PyDq/P6TOULGu1ZxCUdqm7drYOMMybhIY1wfl0PUtmPLb5WtgZBGuDGyT7zp8mMN
         FKfHLzzK2Cqj5c8iinSRteqOts/cmLuBQH5ooyi0wtXeqaYF7OqF5D4wk6YREILfzfYs
         ixaXzM7GRHz1qhCiB37ao2sRVpCaEhMM4LJ2ziPqVcw1NRDUQbXHcpjczxQjzqY7Rp+1
         WIV6aVK5vsQokDOIKyRPevh3zfirc4U9DtgaPBcfilZQWihIMEHwj98roKO2R1ccQZA3
         9PX3xJ57UkUwwciWCHkMhiQ3ajFBS0JIvlD7KHtl1xXJAYzjt9HpBBebDt8kuIQtt9+F
         jrUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=jrYKLDoS;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.143 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic314-19.consmr.mail.sg3.yahoo.com (sonic314-19.consmr.mail.sg3.yahoo.com. [106.10.240.143])
        by gmr-mx.google.com with ESMTPS id n57si163189qtb.2.2019.03.30.08.55.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 08:55:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.143 as permitted sender) client-ip=106.10.240.143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=jrYKLDoS;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.143 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553961327; bh=FcZuwPwBHo05PxDc2bDhJlqUQS+XpoDghlBUVlP6H+0=; h=From:To:Cc:Subject:Date:From:Subject; b=jrYKLDoS6GZZPLQAqL7or1SfUjH7zMxbkqTRcglhSsHi1OQdK5p7Wnlp12k27+XCR1aN64u1+jpQ/T1kRe9mFAuRVQP7/NWhBmP3QdfnDe0/2xNJ1H+BhPcOMLE6baVfBVJsfnE2jnph70jZYPu07iA9vkHkuZS3xMNc4OTrO8qGx7jvkrbHJAYrPW2bCHlI/w8/dPiPQGTMRhtFEpQYsm65knEAK8XbqPhzJY0ZiJO06T7RSqSc09zhupj2Yz5GFibtociIlKlMt22Ior0mfOatTAm4FwO7Qox6t5ywlJ1NsS78OxdO2mrvf+HhuIydwfb+Z5tgwYSM/IGnma6rrw==
X-YMail-OSG: hlkJeU4VM1nmmKxrNdcXX9UVoVWRdVNajWDZbVFNa1cTKaexyXP3RctbHbbkQzb
 Th8Hd2nGBd7IJbHqJK1EVpjSdVuwZOH8jYKKWgWGzj761KkwanIAuh7uN72yIgoT6pis0XlC4NAs
 3vtWZIo1k3f3embUwpxod4dVjUzXX9jbs.YUN7s9xEow2JcrakCcMrW6bcr5lOsRWLhLyWzBRmeN
 s7SUifx3QUB3wlWClTQLO9lBqVT_tszE9UrwWEerlGJi80sMreJhKVdRfzen135V3.bRJZ62yRa5
 jvrDdutvV5Pm8GfNhDnLTlld2TNcy2iAb3GN8BWhR2nHkr16JQadp0gledo3.loRqcZO6yWZIIg_
 omAyVgRgv8r5RIjP2HoGE3mmes7mr1X_SzUpZEODZWwMzS9f8HDIDYDmwyETQTJFKHv9sF.zxJlE
 zNcp0B5jzhYGIW3.AuskIKqNH8wfhLPZQ5I9.ovuLeQ6nZpvbw_DinPCvf.TrJRl2EN2qjrTVay9
 Q527FQ__RFYa5_nx7MZcs7937vVi9viaDhOoQxtTvCFdxRPEkrBKtaikUc1zWABU7BIa83LaWtIo
 qK8g4OHMd4MmT2rTG1MrVbWuTXnKZUpHpP2wByx5qb6vQdOIX1bO9lrakyZOe8TetmarpPE9zgWT
 1B_rB4qEEXbEgiZCSD8ktRK5ncfizwmlaiAeUKauzmN8oH5LOcMQ_hJrAbeBqCf8siIrMlVCCgvq
 Qk6JnktU28GgAXYFg4ULIKTQOg2cmEs4.rVAWmA_gW9Fu6vE_GEJAyOrvEU9CbyH9wPewSHd_cPR
 nVATkPHH48tLPhKdkEcD..kJaVHUppEMmu31zce1QA5azjrWSTJ1YnY2QZ8YW0FUB_n8y7SOjD6L
 H_8c9N47UTT3pRk7Lh.gA_yvLZYihw6Obx5IqYE7t05WAc7cx3N630ymMimFiGq6V80xGRiNyXxI
 r49NC3U5zg9sd0ARGpqG2DyNlzf5cDDnzzD93.ZOZXUhbeHrNoMJoUBGOIi2_AU1jRCX3B45jHLG
 8hFaACg0YnFQCuhXSXMwJv6MQwpvnflofPgYLKIvrBRU1mdJ.UuIfQoytYWeAS.vYPBUj856Zfs1
 9OzEc4dlTEnM2o3ZbxSjC_orOnGwmsOE-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.sg3.yahoo.com with HTTP; Sat, 30 Mar 2019 15:55:27 +0000
Received: from 210.212.93.46 (EHLO localhost.localdomain) ([210.212.93.46])
          by smtp417.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID d91136ebcee8c1ebee233d6b504f3242;
          Sat, 30 Mar 2019 15:55:26 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v3] staging: rtlwifi: phydm: Remove parentheses
Date: Sat, 30 Mar 2019 21:25:17 +0530
Message-Id: <20190330155517.2194-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary parentheses on the right hand side and simplify
expression from 'status = status & <expression>' to 'status &= 
expression' to make code more readable.
Issue first detected using Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v3:
- Move explanation of simplification to commit log.

 drivers/staging/rtlwifi/phydm/phydm_debug.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index 91f2c054d83b..13b34dc33011 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -51,20 +51,18 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
 				      (power_index << 16) | (power_index << 8) |
 				      (power_index);
 			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
-				status = (status &
-					  phydm_api_set_txagc(
-						  dm, power_index,
-						  (enum odm_rf_radio_path)
+				status &= phydm_api_set_txagc(
+						   dm, power_index,
+						   (enum odm_rf_radio_path)
 							  dm_value[1],
-						  i, false));
+						   i, false);
 		} else if (dm->support_ic_type & ODM_RTL8197F) {
 			for (i = 0; i <= ODM_RATEMCS15; i++)
-				status = (status &
-					  phydm_api_set_txagc(
-						  dm, power_index,
-						  (enum odm_rf_radio_path)
+				status &= phydm_api_set_txagc(
+						   dm, power_index,
+						   (enum odm_rf_radio_path)
 							  dm_value[1],
-						  i, false));
+						   i, false);
 		}
 
 		if (status)
-- 
2.19.1


