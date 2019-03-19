X-GM-THRID: 6670188410102087680
X-Received: by 2002:ac8:1911:: with SMTP id t17mr8805193qtj.22.1553024260501;
        Tue, 19 Mar 2019 12:37:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3b2a:: with SMTP id p39ls3487568qte.6.gmail; Tue, 19 Mar
 2019 12:37:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxx+aFamkuWIgda7ZJeUKrUOSXDdkK5ge4ubCIlqp2cHQU1BAUFAcSmKtuzqIXGQ0XRM45A
X-Received: by 2002:ac8:2f74:: with SMTP id k49mr12910365qta.45.1553024259983;
        Tue, 19 Mar 2019 12:37:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553024259; cv=none;
        d=google.com; s=arc-20160816;
        b=eXAl1V9CTWlAGTkl3oDiVdN6cImEs6ohKBlqYZqF8etKl8bZ4UldPRiYJvhR8IY2db
         mVXBApDVUDYt6f08w5b9hh/LzJgtsnUJlqsqNBNnztXULUyTmSlV+dwaCdkrmJcH7AWI
         q2S3A5pun0AvS6jyOJhGPBV0Cc6wEZXSGNXDTe6uf1ybCI5vh6uKz5UqXDuMVxu+03Wc
         q5/eJlk6xvF5Y/+s+WVp5tUxOUNT9J+9d/MKiCiMgaWe85VP9TNj3qyr+wQOaBvnFRZ7
         huFSQ1o7eva/e4J25eqlbYL3lBpeqCRwEygWsmFPaMriAf+bRhVJe39setVTbwYzEBD0
         yjfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=+85j+fV+mFICLRpZfLfto9TDI2L/viYi7liu3wQvFtw=;
        b=PgYxsayG6wgA6NrPp8XxRTNXzj5i3ix8kk/HGfZniy7wJv7V1uYfcVFBi5TGjcp/2Q
         PX/sEa9EjVI1wsggoEHkmHpxZPP585/PLTw5Sgahsn82zgP3BD58fKDhSG9rCmg26aYl
         2UYWO1+Agn5QBLc7r4/8C8Xa1mjqNYNkXAuFcKmIn8NlcDEgaTWumD0CRcW3TSKR5jEf
         AJ4vnwaXnQAZRjMQemBE2/NoWQQwDtJ7lRR9RqCB0bp15YOWMwvi8Yx4M3Ntuo4MifYC
         LiY/QFuabkbzgvjWSamVBYlAaHlRvG+VsHPEBiZdjaNhSEsmlEL+WZl5lFdpu8n/Qz17
         IgYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=XkDQL5Ll;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic305-20.consmr.mail.sg3.yahoo.com (sonic305-20.consmr.mail.sg3.yahoo.com. [106.10.241.83])
        by gmr-mx.google.com with ESMTPS id 27si108831qtt.1.2019.03.19.12.37.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:37:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.83 as permitted sender) client-ip=106.10.241.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=XkDQL5Ll;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553024257; bh=+85j+fV+mFICLRpZfLfto9TDI2L/viYi7liu3wQvFtw=; h=From:To:Cc:Subject:Date:From:Subject; b=XkDQL5LlBoxDB2wOtbqcjM7wduGyQHoOetG0g25W2cPOHR50oebX5ok5koSacC5k7DGGJol5flnmqIPLMeuNFuVvSdPQMCVoXlFkzOZe/sOyIcvRsWFOgIB83/6mIGF9Ca2BEEHpfAr1i8Y7MRV62mXNRagp/X+/+aLOZ3G9BcX6BRgDjTiZZMMxkQIAHzlW0K+wi38AH5Oqc1eX9wTyQiiOD5u37pgwTLA8fgGYv+f1s/OBz5Wz11fch2kdjiRClDWkE6iC8QqWtb/nmn89f89vs1Sn8Ina4Ju3miJg95DFDtpIsauU2jM1+HMfI2rkRgTq/tj6Q/lsHR9car+FgA==
X-YMail-OSG: CaH0d70VM1mvDc_ype8zKHqlUq5CQkopBc5WUfDaQHZ2J6UvuGz41SaZUooCIWj
 lW9tvXX9wIPnOBNkZ3LYLtAjiDa.3g19VRVrLf1ro95vpvQDvIbUgNauTX.uA0hzvfTsz54DZ0P.
 PF75phIgcUjy96RolkMXyX7d.ClVXvLMTkbI0sIxP0QLseXW7Q2Vr3bAtMbey6hNbQAy40eFKgbg
 PT__5CR_P1qcmTt0aJ_HwhHTA4bUz9lfSHfC3DIUSYrFVBBYAYsQU6QGt6fyqYTrbPNpHc_JQIih
 5yiQwkQePQMQceIGBbiUthzuJ8P3v0FWQEDP5AorZyw3HHoIdTDAFd2J_U3_7Z5vyeG8.hZEX0G_
 xPiMIBlvd0CLk4z6CCQokSApr_jQ.cfhZu.FejsgdTgFZv9GT5p3NOkBwQfC4_3ffCk.8Z6p7lqD
 LSWfFlEygMCfuJJV.9EBmC1tSM2WTUW0HHPn1iBSYWQdvvPVgqPgO7K.HigNdxmtdhyitLmmLNxC
 Dhyd3CFuLAwvG1mCuZ8fZteipIfgZazBpAAnsMMiDaJrYvuRBLcpFFoo3.f.4Gw7x1B7h7SOe.t0
 7YzhBpcoj19g2xx3gPZlPEavqm5MMn6B7MjdccA1.2Yti2FJh.NR9QeEfHxjKRP2ILVmi_EE3zNV
 9tEcS4rC9HJZS_0FL00SKS4O0Fhmkf8fp9D_.nuv2I8SFkTQpYimlPhS1YMK1OKCdsdZonXc13Rx
 h.ski.k1rlINpL6i1S1m1VW64sS1hkonm7WktxrsPqLhgIVORG9m3vTkF2rHccpJzqXJhzoIfXYc
 Ptk3Oes.dbYBiEXd2sYns1DsnWEoiP1smbXcGJxo9qmjHiZAi6HjG7mg83IkdadSHCTX45eYNyTG
 2ObT7H_hUYLfDZM5Z0lceg9MQhj2bp_k06LW2V.cL9T8LrEpesxBhl91NI5i33BmIYROJF4NfslH
 LjQ_6PZZyPV2lPquE2drUvtqO4CdUXkgg2SNBKPYm_a_JnOJbt89GTMrXktqgunY70PTnt.Nl5xg
 DxG3fAdYQxw2ZOFXcNpUn8r9GffESw62ZKW.6MnUxo7yP19UcCyyJMC9wBb47Wzrz3D.XBx8PuGT
 KgdwBSzORAetSa.x8RfKjGJYV1SktDn_avsI-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.sg3.yahoo.com with HTTP; Tue, 19 Mar 2019 19:37:37 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp406.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 62ee6c0262fc76a6a938a9f66e2b4aef;
          Tue, 19 Mar 2019 19:37:34 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: speakup: Remove return variable
Date: Wed, 20 Mar 2019 01:07:22 +0530
Message-Id: <20190319193722.9561-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variable and return the required value directly. Issue
suggested by Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/speakup/i18n.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index ee240d36f947..a748eb8052d1 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
 	input++;		/* Advance over %. */
 	input = skip_flags(input);
 	input = skip_width(input);
-	input = skip_conversion(input);
-	return input;
+	return skip_conversion(input);
 }
 
 /*
-- 
2.19.1


