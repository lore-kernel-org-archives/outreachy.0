X-GM-THRID: 6527220059011547136
X-Received: by 10.36.245.4 with SMTP id k4mr13682503ith.39.1519819055148;
        Wed, 28 Feb 2018 03:57:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.53.69 with SMTP id k66ls887170ita.8.gmail; Wed, 28 Feb 2018
 03:57:34 -0800 (PST)
X-Google-Smtp-Source: AH8x225RkYWuVsoTOU6kkBghJkzIMoLqTt27dTlseEMe/dxOfcUMf7W0UT2FpEIMkBdaikfc5BUC
X-Received: by 10.36.54.15 with SMTP id l15mr13853920itl.29.1519819054244;
        Wed, 28 Feb 2018 03:57:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519819054; cv=none;
        d=google.com; s=arc-20160816;
        b=NER0R9B9J2hIPayHHtTFqMed3LNULK6biXpv6wUMA42GbF+P7S0fGSFhboO7bjsaFh
         vcnQFpOpjua4u5ueNgHGmUxCtJNiMlucYWubBgsCoSHB05iWopF0F031pjCrbMXv1bd6
         wja9Ow4W58Xnym12nfe/bK2uIRwDKfXNqsuxQuu/lDth+g26cAPfjkEd9SOxyei1t5K/
         0svQvKT9hSFiS+6ha+hezvI/fwHCCB0SWCzw2ymqi635cla++tUywvP0+o0Jmt4azcGu
         b4/L/mpKbgVkn6JwpmLoW3TSr9r1KuoowLPw7BpR94MfbxNVMrL62Z5/LVSFSHaj980C
         uL9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=NmhjN0LzwJthWnixRKLy33uObD9vIugsC1eIxtkndr4=;
        b=poEfPJHyEoakavYVtRXP8At9GVUr2mgHq9B/fURBIc8GiS2SBB2UQOvw+vLpcAbl9z
         VLbxIGAaqAiSP6p91+9naIh/hdpC2IZoq4Zyz2fZYSxia4HqQY8pJcmUNBwoc7QEOwTz
         KrQeJEvCYr9CGDGqsYFfqKl9xj9GlDEvH78EadOJZIfWhpcQeBxV6I2eC9gmD+tdug4e
         3lankVbLi+SW0V2vKI2vAMDUSHcalUehha/q0AciarTf5zaA/bIoKuAYgsKcok+4LjvR
         dDT5GCsAbD77n4BPNy/mkroZCRra8CKk+v5OXCgWVbz4tqPcebjIFELsht4uU7t7MHyT
         z/9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=IXbJGL4x;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x22e.google.com (mail-pl0-x22e.google.com. [2607:f8b0:400e:c01::22e])
        by gmr-mx.google.com with ESMTPS id i201si155794ite.1.2018.02.28.03.57.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 03:57:34 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) client-ip=2607:f8b0:400e:c01::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=IXbJGL4x;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x22e.google.com with SMTP id bb3-v6so1361379plb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Feb 2018 03:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=NmhjN0LzwJthWnixRKLy33uObD9vIugsC1eIxtkndr4=;
        b=IXbJGL4xUUq1q+YsOg8Sdbr0fStvoDujNIOfLvcec6EeZbLilV5n/KFPmvzlo9tdlB
         GoM5Qs7OAtqIE6Stvn3z4RSecv1hKfgcEiFuOzIUvSlt4hR4SREa+NxLLyoV1Lbq/0BS
         FHcO1lBC7IvL05zbrtXXKzhXJec3gwLp4KJAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=NmhjN0LzwJthWnixRKLy33uObD9vIugsC1eIxtkndr4=;
        b=KbNCBq/2WRVEmCM4ztNISboome/Kw4ZuPDRgtWWVrkROkvU3Af3dA7I2KDwWCbfKzJ
         myl9QzNxPhHJR+F7N+bnOIH2QM/CvtLjmBwuLMTm9GlYDLN26H5PBNOEMk9X9Op7nuxF
         LWvPeb1LVrS/JhyOgtwYGVQkdYjHU8dsZyQhyd5guy3IQbinmai7dePVCEdGDlSWp46F
         U5qfsV817CyLdR2hzpilz/BKVaUimyU61+YJoPZaka9n5bwo1FN/EaEIE964aA6Tt7HF
         DsiX6GmOsHIO0hbb3rDuEiR28pF3sS1aCVxUpiFK0chXGwp+s6B803cQsG2Fjsa5eZz1
         vSkQ==
X-Gm-Message-State: APf1xPBLfTtw9l815BfNlulOQZjtMLfkoIRj1QwilhQGDvGoFcSsRLYB
	2ICJJ86TD7Nizx9MBMJECQdh1y02
X-Received: by 2002:a17:902:bc3:: with SMTP id 61-v6mr2893182plr.398.1519819053314;
        Wed, 28 Feb 2018 03:57:33 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from DESKTOP-3NPFG8T.localdomain ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id 7sm3659694pft.84.2018.02.28.03.57.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Feb 2018 03:57:32 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Re: Re: [Outreachy kernel] Dificulty with git email
Date: Wed, 28 Feb 2018 17:27:31 +0530
Message-Id: <1519819051-124-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20180227183929.GH20601@kroah.com>
References: <20180227183929.GH20601@kroah.com>

Thank you for the advice! I think I know how to do it now. Should I resubmit my patches (as version 2) with the correctly formatted commit messages?

Thanking you,
Nishka Dasgupta

