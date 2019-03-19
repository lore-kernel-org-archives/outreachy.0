X-GM-THRID: 6670186659922837504
X-Received: by 2002:a9d:6314:: with SMTP id q20mr1210664otk.18.1553023853167;
        Tue, 19 Mar 2019 12:30:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4255:: with SMTP id p82ls1168217oia.4.gmail; Tue, 19 Mar
 2019 12:30:52 -0700 (PDT)
X-Received: by 2002:aca:f54b:: with SMTP id t72mr1330369oih.4.1553023852564;
        Tue, 19 Mar 2019 12:30:52 -0700 (PDT)
Received: by 2002:aca:897:0:0:0:0:0 with SMTP id 145msoii;
        Tue, 19 Mar 2019 12:23:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy23KDtCII/6eVG3WnED2s0g/PQJFcBpzjW75Iqm7X90mQE3uo+uv3RN3oxszrFB3IyjQ4o
X-Received: by 2002:a17:902:5c5:: with SMTP id f63mr7115284plf.108.1553023379874;
        Tue, 19 Mar 2019 12:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553023379; cv=none;
        d=google.com; s=arc-20160816;
        b=wq0FyOC46tY2NnmYbdCOnqoIJm6BmzsudxXrLb4lOfCa0K27Icr3BY1ze9Lls7D9BG
         wuq0GFDDiDDUKKy4GL/AA2RugoejF+fWMAJq4DmClprobkfVLvAPsOrlLvpAwMsNvvb+
         pqkzBxOTTCVIrQDFytC7ydAqnotBOYfQ6hRZBPMKZAOFARnpwYC27LGonBiBO9mwOj/m
         SYkiw0UqBEAHORDNyqBmI6cqo8m+sQ7IwGf9YX4FHKI2w35YzexNx9Gk5USjDU6Iy/rb
         jEE3HY34e/XY4p+yAdhzXQ7/KHgXMoVsGYackG3SLuxDi/GDVjMyDEEFU24L27hxPxhe
         nUbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=y6SPQIk5S5+woeHuOCAZW7bsWRuJTDcXERgaNT/JLr4=;
        b=l3Yh6/tUdDK6gz9baJIrMTFOeHjsIgCX6U+a+hONvTeuN97pqPw7LdPUjoz4pNPe0H
         y9bgAZI0TSIViBxLSEeOdfMWPX9b4kqq9N8vUzBDWhKhYHwe9YTYb9hXIFY2VR8AyXmo
         GXalg722qV181NsnAwjKexPPfR7sq1k115YkV/HIbkGG/d4197F9t4wFhRvPSgqLRkIT
         FUj2Mh8FOg7Dzb3ovm5g6ns5RCVBBz0STlNAs81N5SvT5fG5E6zNH8iK/SfbZ7S82KKI
         +cllwRtgj+dZ/DwlskrTZCNepi8zp2vigCYSQwJz6kK8dGYwEt3cF26du1bVM9uRaBD4
         ti/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=nEw4ujIe;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic309-20.consmr.mail.sg3.yahoo.com (sonic309-20.consmr.mail.sg3.yahoo.com. [106.10.244.83])
        by gmr-mx.google.com with ESMTPS id p15si820938plr.4.2019.03.19.12.22.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:22:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) client-ip=106.10.244.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=nEw4ujIe;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553023377; bh=y6SPQIk5S5+woeHuOCAZW7bsWRuJTDcXERgaNT/JLr4=; h=From:To:Cc:Subject:Date:From:Subject; b=nEw4ujIeSG61RKHCLb6ufGVwrDO9XEW/+Co0bsggP/WeE9WQ+ox/G3+YJyVZaN/PH6nktiocRLZv7T9MuuESruTnxqC5zf+uLWgIHJyT6VZnRMAfpoC7LJ0YvI/VR90EX7H9/5aTBz6Y6vjTydwC19EuBzcdZ2KCqQCcEPUlz8kBv9jrdLy0RJmTNZBvfKZ1b2VfRvjI5vjP3K49C7otvghaMH9d0CGV5Kdo4JziDVvtkih2oPmLTUQDpCJJr51GUvdRjiTz3LnfXzq9Kdx4N7/r+LwP0eMVwW9mRglV59mXXIGlbLGxzsywD/YDAi6F2jmwPtPzb0BVoHCkaZEFSA==
X-YMail-OSG: TpU0yvQVM1mvBjvvX70rxPuq2ruMIcthsvvBSediDr2OxHNTg9E.mbn3CHt0OZY
 RZJG9TWFTJMpZYbXXnWSH_k_FgC4nUz1mH7J1riaTNCywigOO.1Nm_efoYCDH8N5I5ZjzwmZGIxD
 hesScACaPDA09FBNqZwEPOCu3YbzITag24Yyw.myPqdJ8cO34rX4f2D_h84CIVbl6khOhft9VLC6
 Z49ByeYZDeWITM4kyPK3Hjun_9_XIfNXVQyCwrQc0y_HXJs1zR8IKTV_NlA.lDIeK4gJXZQTQ3m7
 crOzvsZblOFPl_hE.WjMyyzBtlyUznRInJ2rvio03YyJnS5jhsC5TBrbwHxC.u4SMRwndTHl2qij
 XLHYlJ8hiEZHGWZMnuDNUCmVgApleCQOtlV6hLyNeXozoxNXtgb.GKMv._4m98So.5tudQF9NhIg
 os2JF1E4_xWJaZvV0ZT.uD_H8UZlNoF2nN50NFrw4KnH7lTFEF9zKE8ZxoGXVVNfV17zbvSlSDIa
 x7CGnGQ26V.l5vCeQxf5bMoPr8CBHcNtE8CJE7UaWjvaqp4ErmGp6bIX.E_21RpmtrqWyuaeq7f3
 QDDbkJ_9WdL1rUm_eU6jiQfcWFcHXx_ZTqxSVkXN.fGLjsOkOg1rW1EUqg9hNH7cG7CGZ6cdLe8J
 t_zgpGDaYHnrbw_2PSmltlfWJDuvE_Y_6.Mm3D0iRy4mi65Oje46KcxbCaB1MU_d_6HjoMEP2o5M
 cG9zW1pMcufeYfnaArhnFWxIovKsj2UOAPAhI3G7L0TZwLbSsHO5sdma8S5h0e5Oy2bt2.Am0lWD
 P89K1Fj_FtEIt9Sjamdb4pVuM7M_yDuTuvGyqgYmHk4rE3shYa2pFdtlXUIEGiCI8klncKZT.KXt
 8hwq0dN01uPSfAq9RRl7Bo9v1nPp.EJ0EFFRUwgu_Ide0cr5vJEo.FvulaCdeFGFXNyvqw1Kq140
 o22EdUbhJDw_z85jSAFHym61vIunqDLfT_vxcLe4Bbqf5U.bAGsdY..fkrGJL6YkmI114fJnFVRs
 6GL3jR5OvDzMVlxHzptu0DZYvtdpNoj8ai2ksofRO8XwWy5jsvxI5iULyt.kazq6HASTBJNAsh12
 pSyRQUJ.JuqoXbDfpYb6pB0HabGRjmv0-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.sg3.yahoo.com with HTTP; Tue, 19 Mar 2019 19:22:57 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp407.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 4c2b548424ea4d330dd4af205e2cd67f;
          Tue, 19 Mar 2019 19:22:57 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ioana.ciornei@nxp.com,
	ruxandra.radulescu@nxp.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: fsl-dpaa2: ethsw: Remove return variable
Date: Wed, 20 Mar 2019 00:52:31 +0530
Message-Id: <20190319192231.8422-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variable and return return value directly. Issue found by
Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index ad577beeb052..e3c3e427309a 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -1350,9 +1350,7 @@ static int ethsw_port_init(struct ethsw_port_priv *port_priv, u16 port)
 		return err;
 	}
 
-	err = ethsw_port_fdb_add_mc(port_priv, def_mcast);
-
-	return err;
+	return ethsw_port_fdb_add_mc(port_priv, def_mcast);
 }
 
 static void ethsw_unregister_notifier(struct device *dev)
-- 
2.19.1


