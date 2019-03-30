X-GM-THRID: 6674273164554403840
X-Received: by 2002:a67:7b56:: with SMTP id w83mr5904182vsc.14.1553975330538;
        Sat, 30 Mar 2019 12:48:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:83c1:: with SMTP id f184ls1197441vsd.6.gmail; Sat, 30
 Mar 2019 12:48:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxGD+LIjeZSiLh0dJBJaB0tj8bV0a2xMk6ouqqngPnqPZ9vVKIKYKdWwBZHaA119h7O5KhY
X-Received: by 2002:a67:7b56:: with SMTP id w83mr5904170vsc.14.1553975329672;
        Sat, 30 Mar 2019 12:48:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553975329; cv=none;
        d=google.com; s=arc-20160816;
        b=TiQWNKA9IWUoPrt8/sBsChuSHjSWJyxt1pL6Ou4daZyGDkCGFlykQ6dUQQJowTXulk
         hMv/2Ilb0KNohiX+F2mfu1N6uu9hMeqYIjifzn6TOIpSgv/LKPFRTrgX+lrirBQdRQJV
         NAaMfrpbO54RjRT5YDvpaRDl+nIUggp6oOTefXfK5Z+2wnUKNpygQ92bEdaeoWAQxMCB
         PbQRiuDjYQ/JBHnV4SCD19l6j85yzNhFI6vO4PdnX/7f6rYo2yl1efjEv9ZNaJmsZ31a
         4S+J3jjIHrOOZcA4XmKIWm/sQ7U+J4dyx14kXmD2q0eawnY3dsKWibmhxCA8/nZawnqX
         QoHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=p5oxjAG/q7gozKVExgmWHhkDLaEgNK3mHr5mYWMlPQM=;
        b=xhdCVmXPvohf96rT8sY5U44d2HD2+UkM1oO/3U/MEHR2Ah+b9n3ZiIHCUuiIUzFnkX
         a0EyMYCktAtGxKLrBLMJiGxm/1E4nypOiRXZLuSi00OY8OdsIN7LTW+Eep4qY7mbpWSE
         mzO5IrYLL8vrYbfI//VpKiDTyMvzd1CW1/c1c+SgOKTuTvV5gWPtoV4vObgbTDw4ZHgw
         1QneC22bcsM2Wwsg3ihQO5FqWx7m72HqSFBAFKoC5R41puh/NUKASzud1BNNAr0/sE9Q
         DCTGFS4Ce4TEFXRe81VS9NODedB4RKNX1dnaPlNHFzFfirRrb9xVOeBA9ixy0l2vPS72
         Cmjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Z3W2pVsp;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic306-20.consmr.mail.sg3.yahoo.com (sonic306-20.consmr.mail.sg3.yahoo.com. [106.10.241.140])
        by gmr-mx.google.com with ESMTPS id o80si339690vke.1.2019.03.30.12.48.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:48:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) client-ip=106.10.241.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Z3W2pVsp;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553975326; bh=p5oxjAG/q7gozKVExgmWHhkDLaEgNK3mHr5mYWMlPQM=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=Z3W2pVspqNtaY4Vhk04dtOzi8bwNpGc2FKjmrv2wB93jp5Ee+d3BUDKYAP6xFuueNbUv5kQA8JlQ9by5sIyvU4zDNwmaEej813Wbg6nrXdxmvD5YDF+3wRYxi9LuHFCBhcrSmsxJtfSrl48SZhWLsvrz8+3+3DAqaPfXfJyIB87s/IBQJPx46TIsQ/NXxLi29x+gA461h9JMPRTqNCqbmY6CGj9BAW5boxMB42by0YFPpQqEV15n3KwjfLU3E0Hxi2+6637Mv17FE53Q6YUHFB7BadZQLdh/CXzMdytx+reFHMynNRvckEv8MxaZ/Ii/c6L+vAPXyzHV8DXgE3sm5g==
X-YMail-OSG: l.a7AxYVM1k195rGNFo2S3QijufIV.FgGR6OW.uNTBYgVFqbVGdp9wZv_defB9r
 A2oSHKgShuJNWNGg7oMGc5lTx1UUYdjGegW1I4RfUK7jx8N2xFQqoYNu7GOJOZZprlCk2i5Zmykr
 rWXsTdE9.87QTfR8u9aU1rzBjL6y3CUcizQe2BJGFY03XK6U6sKRCo5q2EhUm.iNtBj7x1YN6gUp
 RwJWCFUD6AQucn4N3QCIgVkpa2KMDiWRQnExQnGj7exCmQgpM73ksOYzopPMS4XpzqsrTXL0ljQc
 Zg9ZxxZscdehnWbzOgyuXhrvVCwwIXGPBiPkzdDMQ3YH1fpmr_Oy6WQg3Z8IEicxtqvOQe9Pt00b
 ZHjSw8MBKC8uZUQFh1FvY8MZV2fxXqdo634nNJUqTHuC_T86N.yMe5pn6omxe74L1rtNgTtNpFDb
 UmUX.hByrBUyjmNi0hNYFK8Pe.hBAEDjD8hAGQdg4UIq.luWEamiODUOOccfEqDO72n3U7AgGItn
 bJ0GymHZYsxGIUkx9p.rmzNzLTKoaMzr1uvwfAnSeJcAehanDi.PQwkJy70GUfX3trg0CAJTaEz6
 ssdy66GFY5H1PWX1BWvVlPJUvH_UO7EgpEeFHrWZuad6o5am_viiCT2WG3MvIR3gB3latAzXAMWL
 FlIqNjx_shwTSNlN7JlSlzw8BbY8OpBGuRhOwBDA9VojeIefIrnZWhkipvFV1g9CVQRo8DVw0oT0
 XfAHesc6WN5Ju40gmI9laQvlEcdcb3k6bECVww8zJyhxMZMZc9SWqOFyr.D7Yoy5IniYP.tBKxx6
 T4WLzEEX6tz.QWaRam26.vxra7tlHp_iUPSev6pm4octcI2wyvCidgBwNrNcBcnqsa189s7tK7iT
 AD9btekAyfQNxy.FbPBpuIJ89E7Oa3Vp43P8MRiJg0LwlOmh40KECYxHq6v8kMhPr0lyOVL.1T2R
 Us1BjdYp7zi86hm_29RY4W1gCWEk.Q5fKBGCek8QqyerzFWxDDGFrGwCCtAQv9bvwCtcwvVoOzIe
 O1qfBPqoodAotRv.HU3x6.LFhkoc0C03JSUnPZqzs2r_c14T4.PrP3ZKUk75u_xgoi_RvFVkYtxE
 kiiyYbCl1xmuWIZXhcvtJ_zpS6pE9Z4hPKapthA--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.sg3.yahoo.com with HTTP; Sat, 30 Mar 2019 19:48:46 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp402.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 4169e42607ad1b6e520f12a77586a4df;
          Sat, 30 Mar 2019 19:48:44 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 2/2 v6] staging: rtlwifi: phydm: Move function arguments to previous line
Date: Sun, 31 Mar 2019 01:18:16 +0530
Message-Id: <5c1d8e092df9c2817ea224946e91546a3122aad6.1553974929.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1553974929.git.nishka.dasgupta@yahoo.com>
References: <cover.1553974929.git.nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move function arguments to previous line to solve Checkpatch warning
"Line should not end with a '('".

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtlwifi/phydm/phydm_debug.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index 0c60f16daa2a..5e0151036542 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -51,15 +51,13 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
 				      (power_index << 16) | (power_index << 8) |
 				      (power_index);
 			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
-				status &= phydm_api_set_txagc(
-						  dm, power_index,
+				status &= phydm_api_set_txagc(dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
 						  i, false);
 		} else if (dm->support_ic_type & ODM_RTL8197F) {
 			for (i = 0; i <= ODM_RATEMCS15; i++)
-				status &= phydm_api_set_txagc(
-						  dm, power_index,
+				status &= phydm_api_set_txagc(dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
 						  i, false);
-- 
2.19.1


