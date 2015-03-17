X-GM-THRID: 8728898174976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,dab188cd27b71f71
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.66.4 with SMTP id g4mr15874632yhd.11.1426588576489;
        Tue, 17 Mar 2015 03:36:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.182 with SMTP id h51ls56425qgf.91.gmail; Tue, 17 Mar
 2015 03:36:16 -0700 (PDT)
X-Received: by 10.52.186.7 with SMTP id fg7mr46672676vdc.0.1426588576277;
        Tue, 17 Mar 2015 03:36:16 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ni4si2436143pdb.2.2015.03.17.03.36.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 03:36:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id cy3so6077909pad.3
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 03:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=eGEsyFhCWM7tA+bkgoSce9Eh39dBAggAwAoT23FiRyw=;
        b=A2Fw9N2uxuemcKo0rIwMvofu1dZbPWbLsfi61189JTcCCH5Pn3Q4kYeROzsi8yTL45
         Gm5B4vTv7nwDHinezazSZ1t11YiOvrEeB3LOX/ZtiYTwOChFmEcWEMrOCNRihgYQ4r0X
         xitIx8bkDF+EJXLplctMbeTqxz6awf8a+yJoqgdnyexzf76V5N0UynxVJcfZT+fJ6P4X
         0fB8FBCMSYBBigER3khp9IhPOdNJLGdnFL3L+aoKsZCNEL6W2f+ncYAirb9Ilm5SC30W
         xKikBgNBuVuvODpsyUZWo2X3hOoG7Ex19SPZjK7pXk7WprO5Fxfh97eIjXdcLV9+q/F+
         3YNQ==
X-Received: by 10.66.140.15 with SMTP id rc15mr74561578pab.44.1426588576141;
        Tue, 17 Mar 2015 03:36:16 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.206])
        by mx.google.com with ESMTPSA id qz3sm21755435pab.13.2015.03.17.03.36.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 03:36:15 -0700 (PDT)
Date: Tue, 17 Mar 2015 16:06:11 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] Staging: speakup: Introduce helper macro
 module_spk_synth
Message-ID: <cover.1426586934.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch-set adds new macro module_spk_synth for 
simple modules that contain a single spk_synth without 
any additional setup code then ends up being a block of 
duplicated boilerplate. Macro module_spk_synth replaces 
module_init()/module_exit() registrations with template 
functions. So, patch-set also handles all such cases 
where module_spk_synth can be used.

Changes since v2:
	- Add blank line after defining module_spk_synth

Vaishali Thakkar (2):
  Staging: speakup: Add helper macro for spk_synth boilerplate
  Staging: speakup: Use module_spk_synth

 drivers/staging/speakup/speakup_acntpc.c | 12 +-----------
 drivers/staging/speakup/speakup_acntsa.c | 12 +-----------
 drivers/staging/speakup/speakup_apollo.c | 12 +-----------
 drivers/staging/speakup/speakup_audptr.c | 12 +-----------
 drivers/staging/speakup/speakup_bns.c    | 12 +-----------
 drivers/staging/speakup/speakup_decext.c | 12 +-----------
 drivers/staging/speakup/speakup_decpc.c  | 12 +-----------
 drivers/staging/speakup/speakup_dectlk.c | 12 +-----------
 drivers/staging/speakup/speakup_dtlk.c   | 12 +-----------
 drivers/staging/speakup/speakup_dummy.c  | 12 +-----------
 drivers/staging/speakup/speakup_keypc.c  | 12 +-----------
 drivers/staging/speakup/speakup_ltlk.c   | 12 +-----------
 drivers/staging/speakup/speakup_soft.c   | 13 +------------
 drivers/staging/speakup/speakup_spkout.c | 12 +-----------
 drivers/staging/speakup/speakup_txprt.c  | 12 +-----------
 drivers/staging/speakup/spk_types.h      | 11 +++++++++++
 16 files changed, 26 insertions(+), 166 deletions(-)

-- 
1.9.1


