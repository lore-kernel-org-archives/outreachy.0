X-GM-THRID: 6527317257974972416
X-Received: by 10.31.50.133 with SMTP id y127mr5779740vky.93.1519759478907;
        Tue, 27 Feb 2018 11:24:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.96.8 with SMTP id u8ls872738vkb.0.gmail; Tue, 27 Feb 2018
 11:24:37 -0800 (PST)
X-Google-Smtp-Source: AG47ELsPZ40CtuqO5lMhZRn8fMTPQ4NkxDXa14cbU/+Q2uumv8NWZFWHpietpncUkqXbZcvKQvWS
X-Received: by 10.31.200.134 with SMTP id y128mr7616833vkf.65.1519759477688;
        Tue, 27 Feb 2018 11:24:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519759477; cv=none;
        d=google.com; s=arc-20160816;
        b=Dz01UER0prFvfu5sZqUxvvyXOYsFmaVgxElreGfs8mCpZErsaUntKvl0R5xpRi1dlC
         3IFd1uMqENb1V3/EdyBUDhejCJNBXeRftQGr6m2Wr/qsqnXFvCJkKH/k6KmTo1wt3AlN
         2HwtIvGn/IVZP4qIbIsR6j1eJG1Di18si2DuhW/EhJWgd+17bZumXBufbbOLEfQnJl8h
         v63/uEKlO8aQY41QhSKx7MQ1koCexJuTynlwdqx5iWQQq5rz/yHnoJ6OO7913VzAf8fM
         oI8bvW9jeRZ+VGcKnsGA12ZX0ysTOsH7UcCXDTR+7bB7WQjNP/GHs3SrhpbkDOEgfOrO
         UaaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=WO942w1JkpTuQ96OkfYvdp1rkUPWqf/n4bZsVEnr5ao=;
        b=Z06uT2t4TM7Jakv4zs1YlMp3oEfgdms7e+paW0wb+BnqvqivY4U1PBnAExjz5PCr4r
         C/kxQYQsjdq/J26lfDcf6hv3lMNCJM6yYHjcbY/RBOK04l+lvvaN0rodap0q8g36pwnr
         2hMfzvq/IeNQcJNyhIqH2HGsAUM5J9sfRBOLtql/jJjEJ/57SdAKsm2mco4Z2z4A3QcA
         XK5pEj9swEbAHssgJf/DtDTXtWkG5+Qz4shfNh5tlUYYIbtebNy6UYH5rhNeRoEgdMOs
         YPmZI3mQe4oIGRDUbhAQUEKThBDo68hhT8JcUOBxsXAONAAsjsuFnXAfYk3PV+PrHDvz
         zw5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=bRRvfbR6;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::22c as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x22c.google.com (mail-pg0-x22c.google.com. [2607:f8b0:400e:c05::22c])
        by gmr-mx.google.com with ESMTPS id j185si891019vkh.3.2018.02.27.11.24.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 11:24:37 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::22c as permitted sender) client-ip=2607:f8b0:400e:c05::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=bRRvfbR6;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::22c as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x22c.google.com with SMTP id y8so7891157pgr.9
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 11:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=WO942w1JkpTuQ96OkfYvdp1rkUPWqf/n4bZsVEnr5ao=;
        b=bRRvfbR6VQpqY1HwFgdcYs0J26Xzu6K8OMRsxTPT7WhHgoglK4MnutivM+ocdPmG+G
         5u8yIXMmpWUHmMkBmC70ihC7BXyKVRwaBkNV2rUXuG0PC51HESGhBKJW6oVkTOxKTaAc
         6fYPXOLZxD+tjX0phs0bEX38Td4RSgaI5z99c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WO942w1JkpTuQ96OkfYvdp1rkUPWqf/n4bZsVEnr5ao=;
        b=rar30/A40O5lFRacnkxGeru9OmBlvwRFXBFKEwxxnpEaZmj3IDJtuhhqytZMMrANyf
         GcVMw718GPG0njTxF7n1jNfQhtL8wZ3hAMfm5TWBW63/N0j18O6HGw5fjZC0HFLvy8bo
         OwPnRciNhJlxljqBBZr5Lgq63w82TrrPtGqVYE7IOUuTyDPbktigXlkuwlV3R+hw69VK
         FXeanUfPZAYw/P4Fu1OgrEXCQkKuYSB1pBHeLYWmAtfaKyvgaJbLNPXzU8wYangTYDov
         q2TLHTMrjtei95fcL5FkKt0rpk+K24dQsCea9Q24b8NQsM4d5iVv1d2apcbxplfP/4oL
         21bQ==
X-Gm-Message-State: APf1xPC0V29WQMdikP5aopWz++PvIPzs1clcveNZ4x50oSRtSMeRjbqE
	Xf9gydLXMC3Em3guoj4pe428ow==
X-Received: by 10.101.97.67 with SMTP id o3mr12464087pgv.251.1519759476356;
        Tue, 27 Feb 2018 11:24:36 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id 83sm24703942pfj.151.2018.02.27.11.24.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 11:24:35 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: eric@anholt.net,
	stefan.wahren@i2se.com,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging:vc04_services:bcm2835-camera:mmal-vchiq.c Blank line added
Date: Wed, 28 Feb 2018 00:54:10 +0530
Message-Id: <1519759450-25582-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Blank line added after declaration. Issue found with checkpatch.
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index a91ef6e..e3460b7 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1977,6 +1977,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	int status;
 	struct vchiq_mmal_instance *instance;
 	static VCHI_CONNECTION_T *vchi_connection;
+
 	static VCHI_INSTANCE_T vchi_instance;
 	SERVICE_CREATION_T params = {
 		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
-- 
1.9.1


