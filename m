X-GM-THRID: 6525083396428791808
X-Received: by 10.31.152.82 with SMTP id a79mr2140785vke.125.1519246732199;
        Wed, 21 Feb 2018 12:58:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.157.86 with SMTP id g83ls1293319vke.13.gmail; Wed, 21 Feb
 2018 12:58:51 -0800 (PST)
X-Google-Smtp-Source: AH8x226tTzeniN1zL0ox6KD2lUEfdVCoJzei4tnfly0IgO6YNJoGw8OTZTsxC8iYAbf6qlb0MZrA
X-Received: by 10.31.254.9 with SMTP id l9mr2176013vki.31.1519246731005;
        Wed, 21 Feb 2018 12:58:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519246730; cv=none;
        d=google.com; s=arc-20160816;
        b=uksNFEWwrLaO+6InatLpvspKtmLSopzMuEZ/ekoC3iHQZDxOov4D3LMvZxVnMiKWVB
         sVZSOy7iU+yfq6/rKgPL1valSJVOnHmW88YcVeXCal12KhGANvHc8Lwa8k0XJqWwD3DQ
         TTWBwmo7AKJNrXak8PdFIDyR2oX+ixIZM09tWFAUSR+t7X5ZLWI0qN2YGDNRbAuXl4Gx
         XmrUM4nLoacjaqUhyKRZiHvZj3KTLiqJgYUJMzwa+0rqw8gWULHjpEgkCAuX8YFhF8Yh
         ykEZsbMJcbyGXuMCDjzx4mgG1S+AmkkITPfBbOO9quvVOMIL9Pmq2ELTPKnLELSWGxtH
         SuAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=xtYeKeGc0JiMP1A4FD2l7JHkyUUHL49tt5yjkoXYoho=;
        b=dpUsv1V0MrpCkkmTk/Jtbhk5BxStB5Vs5H14nOcCqatp//M0DMfl57AbE3k3lS2G1S
         H+gBKxYYG2otJrxfl128577jT5JP6NcTwMYMowb5paQduo6J03fYzovfcKprbO5i3Cvq
         zBQQOvaWp90RiBAoDuVGitjGXzilb44Nc64nSfK0HcoeDYvW7kPl7lbUCbYKiIFf/a4A
         jouE3Aka3fTjUtoSVstk05xs16KlcWZRfORpFtGZyAY2T7N6XzVzUn+gXf3NiM+5LFlg
         niBVuTRi8uK/p6P7/KThXBTojtZqwR+yqjyuByYsm9MdAvSX5I+/k1RBCfpBbFBrJh/x
         AK8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p81hBIPF;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 143si574063vkl.0.2018.02.21.12.58.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 12:58:50 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p81hBIPF;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t15so1161364pfh.9
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 12:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xtYeKeGc0JiMP1A4FD2l7JHkyUUHL49tt5yjkoXYoho=;
        b=p81hBIPFQ2Y1DEMVRA0sOZrYsNNVQVSw/kYDPMYRP6fAtXFmx3Cz2DoFXvSw8BxU9G
         6Pd0ZnY7X03Gg0TwkdQIYKbSU62+USHmbbOf+YGISPQpzzrT9brZbTcMLSk4l2q1rghT
         Hf/RN6VuIpj4KSDEo3PSFnzxl2pHO6cdXjdss/g9dnAPJPSFejWX/5xFnSlwaZve0vER
         KhBl7j8ipYxMeNj9ZWeGCaekUQeirO+sA4vMen3dZ+02oMsYtBwJ7a4V57HW0kGYKc71
         5J3RZAfCmnXd6sHlQNhebxEMahjNb0D6SftL7w06kqcSqx5cnFBegKDz37AYs7JuOfXr
         Noxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xtYeKeGc0JiMP1A4FD2l7JHkyUUHL49tt5yjkoXYoho=;
        b=BdgXb9eUSKsiMOt9STDozE8x/shSJeeJj6in1SvEXqVXNg2swUU9sh5bVIOlItl9CO
         l/pmSykcwytuhjpyyIruli8BSDwmN2tXm9412SrFrffB3OKm5BJ1iu7TH2twMy693My1
         T5/uXMnS0q0NRZknoYLbNV9TVWPDm+NtWXr9RGT4IoaEib3+iQElUsKz1dFFEpLf0YcY
         7KimutU/JROipCUEWpzttyt4t7tDexJRb2J0HEujH5lTJ4cU245Rho6Zb8kr41m6BHnC
         ffrnztQA9AKuDW37nNX4noFBtp+dGWVMqg8PeS0t68vooDTf3DRx/RSlkxXQlOmSOMiR
         rIiA==
X-Gm-Message-State: APf1xPCLepdL0f1rwdD/U3Mfgy3D/s9srfyf3E6ndTW5wffVzd0fuFFC
	y2tRd1YyW3WA+xsD4xOCBvY=
X-Received: by 10.101.99.205 with SMTP id n13mr3752780pgv.345.1519246730159;
        Wed, 21 Feb 2018 12:58:50 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id e127sm25582510pfe.157.2018.02.21.12.58.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 12:58:49 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v2 0/3] Cleanup in staging speakup driver
Date: Wed, 21 Feb 2018 12:58:40 -0800
Message-Id: <1519246723-2977-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Do coding style cleanup to improve readability and maintainability.

Change in v2:
 - Change commit message to begin with capital letter.

Santha Meena Ramamoorthy (3):
  staging: speakup: add spaces around arithmetic operators
  staging: speakup: match alignment with open paranthesis
  staging: speakup: remove space after a cast

 drivers/staging/speakup/speakup_dtlk.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

-- 
2.7.4


