X-GM-THRID: 6664583241254567936
X-Received: by 2002:aca:4588:: with SMTP id s130mr12510970oia.44.1551719205196;
        Mon, 04 Mar 2019 09:06:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:a80d:: with SMTP id r13ls3164592oie.0.gmail; Mon, 04 Mar
 2019 09:06:44 -0800 (PST)
X-Received: by 2002:aca:4e93:: with SMTP id c141mr12023749oib.27.1551719204757;
        Mon, 04 Mar 2019 09:06:44 -0800 (PST)
Received: by 2002:aca:aa46:0:0:0:0:0 with SMTP id t67msoie;
        Mon, 4 Mar 2019 08:59:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqw+Ql+is90nWRHrkTsxIzXuw/dXqL90pnvflYtblOfROBu8kC9KENj5HS876HNRu0Dgcwsx
X-Received: by 2002:a63:f95b:: with SMTP id q27mr7446444pgk.18.1551718746811;
        Mon, 04 Mar 2019 08:59:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551718746; cv=none;
        d=google.com; s=arc-20160816;
        b=BAki8QP7HgZzDx+qHYzRPnNZy9QgFUsbX08cLcG1Tw3Bn+gNpcLhTrMXvagzZUhhVK
         YVpvIT/1Cwp/CpBpHo4XC7IHL8cwItuhOFeyITogX10+l6lm1NULqK2GjddUEpYfntAY
         mQhUnhVe/PVrEBnVlsuPD6I2tbwaBIf21yfQdKXj3NRa9ING7zv7XnKt7zTcf61FzM/Z
         jnyaeGUgbC4hJPTFA9DO4sx22POcTxafErUcfaAq5Ibyi6P1uFPqp9Xhqo4rGp5g3k2z
         6PKFEvnFTcbT2cYqKSzdkmp0vdxtfWBUzANiB82XwRk/NlWF2KdPopG88pj869j3j9iQ
         M4Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YnBeIBSpkt4HaDQNmkn+2Wws8xAsG1Qw3x0LTzt/8MM=;
        b=e2Cbwf/xt7vuo2g+RPWkumAGXuPE8KZT8krp5RblVLuUGkx0cJK6oSeETOSW72KGou
         wyzeg8ujKozMrW5rAElEPOuXJLAjhobob395+HGusqhobHw7g8aJMsanj6UcgXiuytXm
         NIdUuiKjOMV+yFIbHxhAwzWb+I4QLK7/BRS7IqwkmcHA8A/9IffDVRPI/4E0yX1cFpqm
         iHSR5aN6Gwbgqav1JSF0MWQOrCSfLOYZ1VQYEPbD5SOtR1X4tFdoICNXqRZDyTN1mAfH
         dkDtqBaqVb6lY5NkC9GsCXzPsZXxD8nRSuQalDuraHATV2AlkJSAqcXQgUryV7jr7Hfd
         cAOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Ym8W2uVX;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic310-20.consmr.mail.sg3.yahoo.com (sonic310-20.consmr.mail.sg3.yahoo.com. [106.10.244.140])
        by gmr-mx.google.com with ESMTPS id 3si300478pfs.4.2019.03.04.08.59.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:59:06 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) client-ip=106.10.244.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Ym8W2uVX;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551718744; bh=YnBeIBSpkt4HaDQNmkn+2Wws8xAsG1Qw3x0LTzt/8MM=; h=From:To:Cc:Subject:Date:From:Subject; b=Ym8W2uVXku/j6vNFZr85/Xff/HajuA4h0hH0E2yc+IVmthEV82+VmK3uw73YU1E0FodJQpMUjQUn87UgDRQlkCGTChiLwcEyFapeBeYs8fha3/+eTtNeTN5rt+AukG7kwv0g+bxH7Pm35LgMKlVdkkc0LucPBANj0rIzUEIL35tBbt8FycG+QAXPeV/qMoJ42D6k1aScXGXY/+AKcsz1SQpfpyww3Y80ySqaGR2nNdR6zmg5uZKi+J1gZcXVc4yim3JZqPspoulgDl4A573ijqNRK9tu72UnJCkkznVs1y0bxfMtkixWBesZdvRZcWzH0IlRyM+iSNDmb6iLdM9nsw==
X-YMail-OSG: exDrhb4VM1ntbbi7j.7.nYfKUP.b08t.xsJXUW5qDneWz65Vmuc8Z1ohFZcjyQs
 _whn0GUwqLoMcbVjeuA6qA6Y5DZ0lpBZq7aXF.dp..maKsjcb1JpH9oVrscKligmcMCMB588IZOt
 lAhn0l1H.hHpVsbXbmYM0AgwvIT9ZdUSauyqqCc7swzbtgSQOUVbpoN5NgOTsnfhn1.xz21A64T4
 ww5_uMov2ERJ57GSO3pdMaDosy4qrAMMxeZD8A9R9i_kF5q_FA3cfVVle8.nQoelOT12c4IiKdsi
 X1P.oW2p78FR_RrnOW9m.6zStALOQTMKRgWAdJoVmLtKS83eTjCEYL.5vBC2ta7q.4oS6GfmGCEH
 fCg0WFkKfyjQ5YY7DrD7DiJi_sgcE7nuDk0bL_tC4NnQpdlfkBSlxde2o4br1e5lHMLcVu8DVhuK
 whw8JHUH.lwEaDjDaQC5DdtWnfr96_F0V8jpSg.2jRNlYgMZ5.5bdxnFOF3w29EAYiOP7v870pds
 6aRESBbnSMarRCQeojnCddgy2yhAX5s1ixN2fq49YUHE2IQ6cufaLaSW4MrcPibpR7990h71bs0H
 EQCXKhe7T.jy0_3bRSaHrmerIEAMUcXBui6EdEXAi.3BFPAmJNZ7ZXoi.uYEg.P0s4id3Rn2CcOH
 8kk8WJ6I1ol4Zg8tOrXzPUglxCIrkuxuYEPlcc8p36UgmTqixUooWBjAfDFgYI6ee_PIpLghliEU
 vrn7eQw1E_qSW1iqcpuHhLLYddPT36qi9kaOSPpzjzeQ7qKnL7mDJpp97qfAgwwsCSVH4_ElY.vL
 xUBbPyqSRFWrnnBkTWhYH5IsiJWMSAqecEtIePhWTPDn8dNWf_axfQINJyu7kEu9sBQk0TWgxALt
 QBY7NiXw3zHYuQ9g_kNUNsTRZ02HuPrtWKK7UMS4VH7WWsy.KCqz2LDHwVokejaxW1ZquMNWN7RH
 Fpl1bTbCvQ5vht4IDb0ITDm1dFarTqaMAs69mFBq.lUrE.OKalT8zqaxgDjXvGWTfxHyScf0K4SW
 IBt6nxGyYWsLwI4..OfyB3wxhQGhUaV5ZNz6DUVzfubZIRVk11ETJHo6SPn7JfYVOPXUpuaa3PO0
 ZZPHnhl8yd8..AHweJ_o-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.sg3.yahoo.com with HTTP; Mon, 4 Mar 2019 16:59:04 +0000
Received: from 157.40.35.255 (EHLO localhost.localdomain) ([157.40.35.255])
          by smtp412.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID e46a4c68dd68ecbd736d3473004fc453;
          Mon, 04 Mar 2019 16:59:03 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2] staging: gdm724x: Add brackets around parameter
Date: Mon,  4 Mar 2019 22:28:53 +0530
Message-Id: <20190304165853.24844-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add brackets around macro parameter to avoid confusion. Issue detected
by Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v2:
- Driver name added to subject line.

 drivers/staging/gdm724x/netlink_k.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gdm724x/netlink_k.c b/drivers/staging/gdm724x/netlink_k.c
index 92440c3f055b..36d88f49c922 100644
--- a/drivers/staging/gdm724x/netlink_k.c
+++ b/drivers/staging/gdm724x/netlink_k.c
@@ -19,8 +19,8 @@ static DEFINE_MUTEX(netlink_mutex);
 #define ND_NLMSG_SPACE(len)	(NLMSG_SPACE(len) + ND_IFINDEX_LEN)
 #define ND_NLMSG_DATA(nlh)	((void *)((char *)NLMSG_DATA(nlh) + \
 						  ND_IFINDEX_LEN))
-#define ND_NLMSG_S_LEN(len)	(len + ND_IFINDEX_LEN)
-#define ND_NLMSG_R_LEN(nlh)	(nlh->nlmsg_len - ND_IFINDEX_LEN)
+#define ND_NLMSG_S_LEN(len)	((len) + ND_IFINDEX_LEN)
+#define ND_NLMSG_R_LEN(nlh)	((nlh)->nlmsg_len - ND_IFINDEX_LEN)
 #define ND_NLMSG_IFIDX(nlh)	NLMSG_DATA(nlh)
 #define ND_MAX_MSG_LEN		(1024 * 32)
 
-- 
2.19.1


