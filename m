X-GM-THRID: 6664583241254567936
X-Received: by 2002:aca:3409:: with SMTP id b9mr7083775oia.29.1551719205189;
        Mon, 04 Mar 2019 09:06:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5dc1:: with SMTP id r184ls3009239oib.5.gmail; Mon, 04
 Mar 2019 09:06:44 -0800 (PST)
X-Received: by 2002:aca:4812:: with SMTP id v18mr12046501oia.30.1551719204757;
        Mon, 04 Mar 2019 09:06:44 -0800 (PST)
Received: by 2002:aca:c3d2:0:0:0:0:0 with SMTP id t201msoif;
        Mon, 4 Mar 2019 08:57:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqzZreK0wgR2BPS0r0qi1NIz2xge60NJFi+Svh9AKs9QXqG5+GOkV/xKHqqZdSTIymPAn3R+
X-Received: by 2002:a9d:4d92:: with SMTP id u18mr12544341otk.14.1551718662896;
        Mon, 04 Mar 2019 08:57:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551718662; cv=none;
        d=google.com; s=arc-20160816;
        b=bl+j8jNqC9O3zF0p65LLjKNqi11WbP+GSmAGECjjdwZ/5yF1CMAwktlyYjO5lX2LSM
         0PLi7HmRkL00bETJMwk98Sx/W7NJSxbn3Y/B+4C/Ctcj2R7WI51MUzaQyLdSGIHAubfU
         vGj0EWyab8ZmqXa+ZlwuvfWOG69GXkO1GrhfvKDF1UxKiOtq2RrUlzWT1NO/u8td4dFF
         9JOwqBPWqlQxQIWf/37Yj8CBjdWF8c8waDW4VSfyUu9Hi6Z7OhqVjJZEK/qGowa6odp+
         TnVcAitLwJ9C0u/L+Nficl4DlPovtHjG2i2DU+O337qeRoFL1AG/W9u4VbjR7phz871U
         DXBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=MG2GBrOpzeKRpNl9aOPU5EULD+8fEO4yaEsBDda83SQ=;
        b=wEWcFHAa9ykCd9i33qEpcRWkmzyT6Y6vEXDkDl6Dh+vC+iuipjggQNCMu6ZLXFczm5
         cyXucQ9MnKZMifHAikzlBuuDFWA0uTta4HINUImEavHKfddiIvgsqGE5zkQK4xVhg1c9
         uy1mHjGToMOry9ApqbhDZTSF0AFwjPIyyxh2dkz7sBoNJvLNN0daFHKWZ/QD04cNjMv4
         imwZdmcH4bJIeEpfiQdevUpZRiFcZhgAR8UtgsRwP/Q3Hs7p5cTxwHeDPCfwsnPWwe92
         nTMh1M+Jc91SdWlK2q25QakJ7Sp1ahrMEQqEAHGORJd5NdadqdP86zAMeLBKfs0iDj+S
         Xfgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=alFyQazC;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.40 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic311-23.consmr.mail.sg3.yahoo.com (sonic311-23.consmr.mail.sg3.yahoo.com. [106.10.244.40])
        by gmr-mx.google.com with ESMTPS id f96si260628otb.2.2019.03.04.08.57.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:57:42 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.40 as permitted sender) client-ip=106.10.244.40;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=alFyQazC;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.40 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551718659; bh=MG2GBrOpzeKRpNl9aOPU5EULD+8fEO4yaEsBDda83SQ=; h=From:To:Cc:Subject:Date:From:Subject; b=alFyQazCvrwa8BxFEu1kCteFCWoI8eVFiSkJ5AEK9n5LadrpXgVdRS9ujzZQI7EdUWSkUQQmiJ/kEjDswF4Q1tOCDxWf7hcfGmiUaJyu4AseCzC7uCv2/0+8oQvq44vRFf25zGqa4aolTPFOwRikgB86a09sHIY4RF+Wyke/AwNM0P5YYUfxDRpQBECT02k34BfkXFMTlccxDtG0v6RuOLqffmmHQLyeC40m+szFw0GjiHM1N9l/n8D76pQqqu//QCiwd2qOmuaPZqndSSlGGxApAAST6EJemedu45rh5qGxxmnaWoht81c5ejs2EY8UneLlzwlPxCUM8Fk7GphIag==
X-YMail-OSG: 2wr4DU0VM1mKhclmvVVaA3QnRfc2oawPP8KqH04HtSJ815Fog9rG1leFd7bV3Yh
 cVCa7a0o.pMI18Rc0.YeEIZU8Y8Db3AwIzN3kn.1ejIDDh1pSbWmZClk5bNL5j2ceaw7rDkKNSiO
 5HqAwZlUXkmo6edUXlT0RY7x7a0O_zU92maH0E1hK8fllcHSbFdHznqeRlfLUWKTEqZ2AG2Bdlo4
 UIxlEBLocU2VnZS5m9U..qvzyzJAaPlUFunneJzYpe3J_yZKn7jbIbNiZziRyPkO2ybdMJ4uzykf
 JgmRGqA77fJed5Bw4Zk4rIkZ0z47N6bZIGr9AZ0kA3s2Wg2e.IMhDSeJsCv1_j4_sEJJCr3Xan_E
 Muw0UQkpDO6X1emfsvU7im5eElhquJMNl2t_HWyrEowus105gBGsQsnn0UIjgzSlFTrIt9TZAn_g
 WpByFykcY_W.TySCYiwRaL_7_.X0Bv8vjmU53KkSGJ7sqzmQkLNCDOJGhg43CCcCqeUMJoXBrabG
 94hPtikohw1Obn7ZXPz9lqGqysyl0orohER6TQDAIYzkDukawxaKBJ68nqLEEroHGd_D_lbgCJ5w
 x.mCMN_mSBS4AN7YQbc00LrBwgeo3z3QhRuFGpnTJ_mnOcopNrIvadtjW1DGy.l5CMHn7bE5j6cB
 pfw.UEuYJzNIpNBSNBscVhfxCvngI_0aB54vKYzbUDD0rrm0B5x6lKi51zUOufYUwxrIsaEP9VUD
 9oeomzNXsCsn2oENkAyK8K85ySDZEhfx.k0qUpVl96RRnfKyVYJ7.0GO..2c0EokP.hs31L45cri
 mktuETwiVgfklOtr_ApDj_hxkexJdzfxMgBprUnPHRFzDJNmSdMZyIHQXFo9_K4kDzNGL66c0gzj
 .vHACZ8.89J6bKPRbKG9sDeFkQKhGBChI4WhTDialZWzJBoZAmHV.JQ548tHG0aEVN5jeCsrpUOq
 PNjv0YzQ6eh6dqruTqlXjq_wmvY3iEmarvJod7yHkKAG90ENeblWf4b8MZ4rErc87wcyc3KgvM39
 4nMyQ87EgaWhvJNNBedsXd0r7SVo8oZA0cZwSNUpfxa562tQXsmNH8shttn0iexTwRvvoTsL71UO
 HuLXgW3O3Kezno0j_
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.sg3.yahoo.com with HTTP; Mon, 4 Mar 2019 16:57:39 +0000
Received: from 157.40.35.255 (EHLO localhost.localdomain) ([157.40.35.255])
          by smtp430.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 6ac477fa106f9f21964eac499ab7cc8d;
          Mon, 04 Mar 2019 16:57:39 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2] staging: gdm724x: Add brackets around parameter
Date: Mon,  4 Mar 2019 22:27:29 +0530
Message-Id: <20190304165729.24744-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add brackets around macro parameter to avoid confusion. Issue detected
by Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v2:
- Add driver name to subject line.

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


