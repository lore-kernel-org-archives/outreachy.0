X-GM-THRID: 6674273164554403840
X-Received: by 2002:a63:8a4b:: with SMTP id y72mr869502pgd.84.1553975326212;
        Sat, 30 Mar 2019 12:48:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b495:: with SMTP id y21ls346097plr.5.gmail; Sat, 30
 Mar 2019 12:48:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQly3pe8PdMEwUNihFCQ7UZVtV/fJNcNEDBCrqjthVaXEeO+VFlkg5h1eK8aeOzxpyzLCh
X-Received: by 2002:a17:902:b60f:: with SMTP id b15mr235330pls.84.1553975325581;
        Sat, 30 Mar 2019 12:48:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553975325; cv=none;
        d=google.com; s=arc-20160816;
        b=uGflKOAkc4dWY6cCPaTQJsRvXJhyFEHh3HU/3iAByMtUG7ewE5/KeEDAiRDdFRvTFF
         MyJ4Z6gACsFGt+rs07psPTuqHE7UMgQc9KcnWSEfoyY4+UjCVdahMgklwRTb9/RIs2Vr
         1MAvjr4x313BxmPZFJsqIyhUsFdIR1I5CpY5QhOG192QB6KQBplVI0wQYlvUX1dvAcTD
         +JxvRJtwZcPoYTf2J+6bRPbxLtuqca0igC4d9O59816eRgIV8EBwj+76wNcT422Wyvn7
         pS2QjsCLyM3u4UcHCo7VqQ8MxCqUk+pbtsbK/gxioOX+Wo3BefB6ev2MG8YFMLIEeIzK
         LBlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MVCU6sKo9wA4TvZFby7NvNNADL6ZZ3u0hVEjeuxmf4k=;
        b=CNyk/zx7nDHYvkLH+aZ0xzwQd87SByJ8vu4OD5dBW6SyI4mw/s9G3FKYoB+0GYA85V
         YQQnM+Xxkt54q+sdSL4B6cMBd3BNXtWEbZ0VXLDls1E1PxjMoIXXv8ch/kSxIL4bDwf7
         tH2rRzYMe4PH4qzbfzqZS4JN5F2YX7q66m8LD/8wDP6DLzhQCuHPxPOXjS3LsaQ6v60j
         fkFs2GwFHJewpADpY/9AHln07Qa3aaNzG+cWXSKKY1ycaW5xkALOmn1Cq8jrkwfiqn/0
         ToksIezEA36h+FZ7NaSddxt05LL8qLTWXzW/sQXgpBTtmDlBKRFBcLJzZJHaq2kDqF73
         AI7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=FmNQH7Vo;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic310-20.consmr.mail.sg3.yahoo.com (sonic310-20.consmr.mail.sg3.yahoo.com. [106.10.244.140])
        by gmr-mx.google.com with ESMTPS id f23si407885pgk.0.2019.03.30.12.48.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:48:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) client-ip=106.10.244.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=FmNQH7Vo;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553975323; bh=MVCU6sKo9wA4TvZFby7NvNNADL6ZZ3u0hVEjeuxmf4k=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=FmNQH7VoXJRoKRF0LVnIJs9l5IkNWBXDuCYvGMEFhCniqokF2aplGEv2W6pZwYn3/uznsKf68R7yjf9bwfflE718V0gvw0c3mYpYCqaLZCO7WPgJLcjVERtqp7kU4tb8Clf57RXPJrBfRbBfO781MrH+Oup4XY+Tka/k3GU+61BuUPa9DCK9iK0c5Wa31L5iHI/3xiUiDHK1ziZL3TXnvGwrvJYc4drKWhDlfVPTmmMF4oozTapBIGJwDO22LGkf3djADIS6NfYUkf/crPCNtsPo3k9sfxuY1v+W8DZJiOHHyVQmFOKBdYbKr/PaX5KULAJO/sSUrxqYV9yV89o+/w==
X-YMail-OSG: WhiwRNQVM1kOdHxQg4FLoIk9X2mgJ_oqIRc.i1ZcvxWK8cMqwb_Cl6uo8antxSK
 r8jZ1waET8o8meOJkiitXFKcrUBgxbl_.WsL8WCqTdWfN5T9Fiy5CYauoAKuR.S_Y6bghBnjMfj2
 JVEIevJDApCpRUfU3Hy6q3cRLI7ZuaHo78o5FCPxoFYgjtkahSIa2CiJLScSIgDF.XWXu4R3wPVg
 FZDA8OZu3JYjToLjTZpvOMZQTdS_E7gUBUgFWWVWyDojFPQ.x35HdsmA2NcuWftgI.4zwcfbwpI.
 7PrEekqF6lSdom.jc0A77QcCgrM9X1UnDvZOHUbor7deN0iPxMjP8ibnZDm09TA7oguujayOh_QQ
 Gv11t9prhRT_jDr.KGS3x2zPL2wDzHJsS.YG1jUvSxdIhMu9iYx1JxyqZssPkzertSS1UOAw9m1M
 JIqGvhMtQBh0Ln.VlihlBz1x.LhMJwo4X_GlRZwltkc1E3yaMP.hSEgbpK9GQ5qJOA1G9GIYfMg0
 VZ7yEJ1MTpvsKLGH0RSfwgXUEEySXP5vGZL2yBMWPYJ6O3qLVxfK3oKMDNC5j7fQu9yvXuyYCbaM
 4pn96Ql7Iue4TPPImI8YNzqzeaehlVOB7iz0GhcehGx6EyfisMDg5Zx.KB5V7eIL.AdfF5aGh2Us
 d9JyYM66CdRjR7Z3jwAqmo.xCJArIZWrJKKV08i.kqTqkpwpYY5Kjca0kjjMLRKC0I7Cyi5uMuV3
 En0Zk931NrOQPz2h.12Hixo0kQf3fFPqUOm10r2a1E1e417JsvhkHiFvoXPs5Do9o3G0S52pbOGN
 AEYWI2WCz0MZW1Rby7FRnode7t9xVgVjUpNAAshbmyO7MYDcIf6W8c1qqZi9xDpg40n6QUE4USPB
 R4yqqMDHlMjAW9NpSNHDDdkvNemhNSO765dNocrg6RH827JzL5awwrNRXIuzOW7crwtHssg9ez.7
 x3HjlDVY4vciU0h11A6YfQlcIaQ6VMX.A2.97oiHUw6UD55iiIjnieNCyzqXG0A3rCOxenmX0b7T
 _GRXY5X2pBrZLESjREqG42ocy1N71I3_goVdoBF_w0.XqoqDla6iQcNpFkF.YHFKc0mQ_W1IL1yw
 7CjE__tKCPEWeFtaoHVRO0uZqxm9SCtjZ3Yg-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.sg3.yahoo.com with HTTP; Sat, 30 Mar 2019 19:48:43 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp402.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 4169e42607ad1b6e520f12a77586a4df;
          Sat, 30 Mar 2019 19:48:40 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 1/2 v6] staging: rtlwifi: phydm: Move operator to left hand side
Date: Sun, 31 Mar 2019 01:18:15 +0530
Message-Id: <d65a27b63176d4df96259a789bdce38e68a1fe36.1553974929.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1553974929.git.nishka.dasgupta@yahoo.com>
References: <cover.1553974929.git.nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Simplify expressions from `status = status & <expression>` to `status &=
<expression>` to make the code more readable.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtlwifi/phydm/phydm_debug.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index a113e2b63153..0c60f16daa2a 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -51,16 +51,14 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
 				      (power_index << 16) | (power_index << 8) |
 				      (power_index);
 			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
-				status = status &
-					  phydm_api_set_txagc(
+				status &= phydm_api_set_txagc(
 						  dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
 						  i, false);
 		} else if (dm->support_ic_type & ODM_RTL8197F) {
 			for (i = 0; i <= ODM_RATEMCS15; i++)
-				status = status &
-					 phydm_api_set_txagc(
+				status &= phydm_api_set_txagc(
 						  dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
-- 
2.19.1


