X-GM-THRID: 6674226221101875200
X-Received: by 2002:a05:6808:55:: with SMTP id v21mr4232488oic.57.1553964386820;
        Sat, 30 Mar 2019 09:46:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4541:: with SMTP id s62ls949708oia.7.gmail; Sat, 30 Mar
 2019 09:46:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyYNY3EY9O8O9Orx1eaXtnZ5QLDp6jwijpsL6dd9pYWhrq/2x8f3bC9EfBtA7ays68/YZXq
X-Received: by 2002:aca:b286:: with SMTP id b128mr4026179oif.49.1553964386285;
        Sat, 30 Mar 2019 09:46:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553964386; cv=none;
        d=google.com; s=arc-20160816;
        b=hH1Cn6QQcv1ZsG+3nQo3omx2/lXIZ2ulPcM4pAA/5fruq/YVF1p32goB1cQZl2Dg4h
         1lwYAoVV8B2aE+59DUISCyEkJrhkKdfwPwIZJ6Y5fV7BEvUUSkmiltPe/YLi1Re5khRm
         +SGoa0vPTFFAjuTndtgfPKV6ibYigWY4Ku7Hw22LFS9mXRM2qzF+lBTDvSPipf3Am0mi
         IaiGcpHuuDI/RH6A9sly817zFiyO0MBL/64mUXRTRUqKAe48HhGggFqpzkIqcY70dFB3
         yahEqfEE2bbZK0zYApedAjGg3A7yIpJpe0BUDPkOZRaYU8lwqZv2CyortVsQyG6oA3hx
         xTQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gyqM4VhW8vSWbjoYLx0ARzIa/hk6H/RXAgM9SBynn2k=;
        b=u1Xue0S3QdsOi2dytZaYtYbTp03BMUZUkMqDhhuBuY9zhCfamUriQ+XKqQ0AUY/rmr
         Sv5PuPEOVhOLio7AUyvJi2ULv3G7prcutdxJG9Yax1fRCk/Bl83w6Qgt51b+HWZjJ4H8
         mhiRi8MosTuuU62JpTZjVZglR4vAMuKBXu8ccjxSwCxL14ON45FBMFtHxW7DvmxwLolU
         sUUsI0pZUe9dJKaSjw4/EUV8gza0Uox4YUjNsJlmUfHB32oGqWQYZyo88FpzobxylOK2
         7eQirWubOicHxnv+MBFrae4g1ILtcsutcdQQ54DKfv09sBkmYbzTaT3ZOvbVmz1oqQKN
         wmMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=boXPPVrs;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic302-20.consmr.mail.sg3.yahoo.com (sonic302-20.consmr.mail.sg3.yahoo.com. [106.10.242.140])
        by gmr-mx.google.com with ESMTPS id j81si176469oia.5.2019.03.30.09.46.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:46:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.140 as permitted sender) client-ip=106.10.242.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=boXPPVrs;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553964383; bh=gyqM4VhW8vSWbjoYLx0ARzIa/hk6H/RXAgM9SBynn2k=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=boXPPVrsULAaRoaI/mYb5naFk2Y14QHo8AT0OXdrs8UoGhAMq16p2g6/VBEOILAWELRPodoVRxJqd6jPqJpnHabf763wDc0oFJvjiLE5H/9llcNmsQuiUk3BFA9mmqb/UsoP3R9xBZxEh3HRqDtwMJhOIye+tBJXVdojGvLm2q+9dEdtIQgApEeCywwNNVIKGfDCrS31aUra51Dyv5LbnrmyIRByTkpbzhtcBAOD7Vvc7We1/uPvNEnuIICP/TneyUbWmX65Iln7gFhC/+ZQCj2wk8tyHKmz3elslVZGDncCiTtHdLPe91NaVQWftV+yWWMExksL3JhMAeHmn62ilA==
X-YMail-OSG: pwAAvBAVM1nX5j1YcMh8ogZTHbvjicaSgtNM7G8KB3sPEN48.zpe0L_JK6gVo2q
 eYAbaQP3Tq44AGzo1bnCiHoAdtUOdKmW47EWO8ijYvisRRn88jS3yxh7ImbO6ZvDNOh3EpIvoQw2
 xQMk_4QQV.NnCLRf1zWLt6POVkQpRo9sgFBbj4zLzOB4DXZQoxrg2Ufyk57rZEcNcn3lHUvcP4wV
 GQiuXNsYgBnKUs.2nQoDCNjC.zIx3DFq0CJqPpC7e3hHR5WWRm9sD9IgkKlAOiZkkTCtVSjBdNOg
 0KWXF6GmuiQejREBKlpVOVEsIEJ9ORAZA.4i8vbAopfKuBBsOT10oYWbjlqbN5C3996i68saGbHp
 jrK4nt9YnuvKQXsBZ7q9i7F9fYz6x79YtQr.hmlmjm3TltxrIHX9SDEmn2NKGxTIWVoSsX.Pnmh9
 mXvwUO2ai2xhqEjbNrPewvhBztPqKRfrytIYEAPI0IMlW_bYWHJcTZBAhyXv257dUwyk6l_sWCJu
 RKdehza3ZRdD16Zd8K9So4w6lx_15q2kbiLmjSaQUxI0BN.vJoDlS8uRAX3Ap8.nSKjEVVm5M661
 bDviNuKBhCSoBQ4z6OBmL3JOU4dZt4d2PcK2WwkfaC6Jf3473swlTUfbxzhOX88jhYSZnYGC5U2X
 v1uIdtDpOGsv8auyp1YOeJsdsAJUQcEJf13Mp34QrrOylh_HrmhIE.zsMYk0izHazSb6Bxs4nOFo
 trCtLVcjaju94xanJtSknp1Q5ukEM2n8PL3UK_sfrrNaifKM8bbgZxOMXwXl827B5P6dpLGho6J3
 1UTfrbZkQZGxBEWHipOtIL2qFdLFidOarktJSdtHopDLWdI0qBAWywAvkvndKybLwyM6vN0Tpu9j
 FTjtC3VW_pfvklT1OwXX2twqWggPoitLsrMJNnv8jttjDjuJ9huyV213b67g.7qGFwcgNf6cI6sj
 T8lzLfj1f4H6o0DvSR3b1N40Ar73F1hL7iGmohGenbjioiFrqF6wZvpdh9rpYc1z0vAG.QIW_E3C
 FpH71paLOqJgBtqdRfdIyEOC1Rmpyb_t.3C42XiYBckDY9ueXlN9Kw1p5DdacMkfUKcn3iC_ohYa
 VA7rVWKkRu_FWdrZtmDgi2WNdEwnTtkBvQ3cexw--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.sg3.yahoo.com with HTTP; Sat, 30 Mar 2019 16:46:23 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp401.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 266be56d59f3e40a0126d3a0f386759f;
          Sat, 30 Mar 2019 16:46:23 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 1/2 v5] staging: rtlwifi: phydm: Remove parentheses
Date: Sat, 30 Mar 2019 22:16:07 +0530
Message-Id: <3710c811d8e32db8d98ed534a7bb167ba98e121d.1553964092.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1553964092.git.nishka.dasgupta@yahoo.com>
References: <cover.1553964092.git.nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove parentheses on right hand side of expression. Issue found with
Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtlwifi/phydm/phydm_debug.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index 91f2c054d83b..a113e2b63153 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -51,20 +51,20 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
 				      (power_index << 16) | (power_index << 8) |
 				      (power_index);
 			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
-				status = (status &
+				status = status &
 					  phydm_api_set_txagc(
 						  dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
-						  i, false));
+						  i, false);
 		} else if (dm->support_ic_type & ODM_RTL8197F) {
 			for (i = 0; i <= ODM_RATEMCS15; i++)
-				status = (status &
-					  phydm_api_set_txagc(
+				status = status &
+					 phydm_api_set_txagc(
 						  dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
-						  i, false));
+						  i, false);
 		}
 
 		if (status)
-- 
2.19.1


