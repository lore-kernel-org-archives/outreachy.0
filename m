X-GM-THRID: 6664582752671629312
X-Received: by 2002:a25:bcc8:: with SMTP id l8mr8571976ybm.30.1551719205592;
        Mon, 04 Mar 2019 09:06:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1142:: with SMTP id 63ls1142928ybr.1.gmail; Mon, 04 Mar
 2019 09:06:44 -0800 (PST)
X-Received: by 2002:a25:c484:: with SMTP id u126mr10007290ybf.93.1551719204842;
        Mon, 04 Mar 2019 09:06:44 -0800 (PST)
Received: by 2002:a81:1c46:0:0:0:0:0 with SMTP id c67msywc;
        Mon, 4 Mar 2019 08:44:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqxScOPz7j7sxNl8fTQPlIIXAflQ1E0myGOqzz+0fGUjsXRpXL74j0azN/XzBcispXwNz+hT
X-Received: by 2002:a25:bcc8:: with SMTP id l8mr8528656ybm.30.1551717872006;
        Mon, 04 Mar 2019 08:44:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551717872; cv=none;
        d=google.com; s=arc-20160816;
        b=Tj6w3kItk16ho2y2b91HJGfeyDbHchYs4Uo2Ps4fWQFprYiyFmrnHSRY4/asM5ZFdI
         swVz3Hv2+aO7y15DYP/9jG0GbLl3a5QgumCazZQTD5Blxu/uzKNeZ7o6SXg34QC9Dm6A
         /s9QjMvbSm0kGRHC+EmUeCJUKFoujXKsUmDEugKVhG2AaM4CnAuVKXWqlivoJ2j3r9FH
         97Jq3wDWaqdH+QeD/v/t5WWUQz/J9+iewloQwa8oKnScuVOCfMfKZ8yJGzLq05F24g3H
         3j9TJa9QZr1NKkOsCBvpUPaisb4/nkKLwNlVukWE8cmyvzxcIhKZxy4OgzPZNH7wjFK1
         6zMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8LU1SEM6r8TFZFYj7kAf2FNl8Xj9CL6KhGH2ulpJn+g=;
        b=arwov+xRpNXYD+MRQvML1gfQAy0JsPTWTFCt6njWqvtf+daIWrq/BCZhbr1PVD8qQl
         dsx0a2x3hQ40hNjXi0LbEGZDE7+1K+LpiXuXaagJu/E1g3ABkEi12Rc64MnZrlRznliI
         8/4Q5425oMQ/ntmvJcjVnUhLVfchP5qbvcdEOuKXHLocRs8iFSvLmw0Zu1XFECmvjog7
         NRFrU0h7fUBvxDqSfDwXkr7x7TY9qxNRoCVuRRUWua1s8Ee03bUzhNlyUdgHCYws8jJP
         csUUikRyzJZfc+8t7q2I9N+F2cwRGlJM5O6celuqO7ikx1WNuJAdGcW2O8KQzOLEiW19
         m4lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=djMLW7Kr;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic306-20.consmr.mail.sg3.yahoo.com (sonic306-20.consmr.mail.sg3.yahoo.com. [106.10.241.140])
        by gmr-mx.google.com with ESMTPS id e23si386676ybb.1.2019.03.04.08.44.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:44:31 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) client-ip=106.10.241.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=djMLW7Kr;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551717869; bh=8LU1SEM6r8TFZFYj7kAf2FNl8Xj9CL6KhGH2ulpJn+g=; h=From:To:Cc:Subject:Date:From:Subject; b=djMLW7KrC+NjrdMblkbpmKTKvxNYZ6Goy+jhopRDXU59fGvV2slvomHNRpKHR5VkN+lZfaX1aY8pbK8nt/Ma/MmVwJPD8eLZ/U9nKGB0F0bXotSSJUJ7LQ5TfQaDvUnN3twNW2YUQW4OQlevvKsWgr719fVsYsospSBzCEEyNny1505v8HbgIlU0dXYEYK1ZuyrGV2zALqj5133i8UeazP/qvMGbZdfPZ0dfLBxPd7vQtVamZF1wu6+iWM86+J7S/1V7AF92N43lwtOIusNffvZ7KBrmf0LT9UDnSlMW/j2hIorALb1M9l/P5AIcwAPoFsq8ocgGAa4cIppOgvUr7w==
X-YMail-OSG: 0LBbtm8VM1kaTTc6vYxfeBsosnJiw1cOGHr5ifWMsvlCLvmKswsruhuusduh_or
 JBQ6mTGdTzJeLGO_2O66spGjsF4C4nbOSs5I_ScyVIiLehJeRnUNfx9vOucuyNYOcC_4W.dDeFkS
 KbZpsKo3OL0Ctxqqz_QbrxpDeuOwDSqXYrxWNBBgm_duJftkIbC4IJIq1XDR7fe.4oetq847LS0Q
 QrzTG4s8YVTLsFtvLiqNbsAkFXhXX6yECSDqm71rgkQlXHKaXZ8HZwy1yTCy1p7thspoL1108cJS
 lUGpdRqUVfN8AJWw12noK3w2xxQ_ZAiBikMllGf0_lz91x5_z.di.QGsTvlrSAR6D0C7cuy1kFjN
 BEd79LNrraum_._LsDovQTHgbFMk1S4kduo9OO8XwGHNuedQYeNWq96QeedzyjKFbwVohLk68wZ1
 Lu37tjTeEx.lx25o6Z2tj9gaKZhfnEnJLFpy2mJ_PYc2NPU2avHuQ5hKEnZPu3Nt2uNnYg1Xfhbu
 IAIrEsE8k1fPN4Lk7bo4XPoFIJ87I5GEFjdvb8CIk51srn3ovedjpsa3rsMPOgY0hbuhLKvTKJbP
 RC2DTWcFhf31rTHsCg_6WFjh_xhZWj5WmhrUEDZCX07KbFn3ryHE5kNguu7aCnSStfRkGy1fo35J
 nu5pdnjH2wU2te98LAWdVKx4.ouq1Eorqd4B.0ewAEa8sdyp2R35.uar22J_F6PYXVAN7KCvMCtU
 HeUmPJAJoqXIl06Y.3R7DDPxg1CSjgtb_LPbmCUfyBhgMrkCTroxM_3dTGfDsaOvrdM4vNXy9.Eg
 WhA5FIz6VXVLIM39zTCCq4_NrlNBwMsbG7caHFPnYDQ_AmvFhVxVxMQoD1fiT2hOZnwOkFOCR8bt
 BqmEHuH3D643NVYcpjpDSx_WBPDWRmb8w3O0AF0JExHpx5KUbet4WJsTX67qrE37_n3B91eb634F
 3kUy3p6ECH_UAC4uuB_tX2hkvZCgDu_IO157VS0iVNlf.xkDBZVWrYwmX1Vy3PGzmWPh6yY.xMP_
 mOxg0yUisNF8QT9onRBE0M6pgyVfwZYfsXdPH6yDGlr70bJCUCdV9_8uSLicuFqVTgruuJttZmGr
 uvIfhQHrQo.I8t.Qc
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.sg3.yahoo.com with HTTP; Mon, 4 Mar 2019 16:44:29 +0000
Received: from 157.40.35.255 (EHLO localhost.localdomain) ([157.40.35.255])
          by smtp432.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 802708c7e2515993ae77ad7e3a118461;
          Mon, 04 Mar 2019 16:44:27 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] Add brackets around parameter
Date: Mon,  4 Mar 2019 22:14:09 +0530
Message-Id: <20190304164409.24553-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add brackets around macro parameter to avoid confusion. Issue detected
by Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
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


