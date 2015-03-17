X-GM-THRID: 8728898174976
X-Received: by 10.236.40.112 with SMTP id e76mr75317127yhb.5.1426577203666;
        Tue, 17 Mar 2015 00:26:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.128.234 with SMTP id nr10ls416obb.66.gmail; Tue, 17 Mar
 2015 00:26:43 -0700 (PDT)
X-Received: by 10.182.237.18 with SMTP id uy18mr64377369obc.36.1426577203300;
        Tue, 17 Mar 2015 00:26:43 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id pc4si2398483pac.0.2015.03.17.00.26.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 00:26:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id c3so1805141pdn.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 00:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=CHYAuuDe3yLUQG6xNih3Kep6lvOAdmThBtUcuYGe3Yg=;
        b=cXHF0QfZ1pMnzFxllThvWW4KdQ+lhTa02T0ygQsQ9JkRkTylfna5vGQDxDerltifzT
         EJMOTDIG2RPWW3oQlyZbuGFOEEqzhCeCKaX94+tOFO7tFC9XSmtdjbnALF9e3vmX7ThI
         t1lYfCUMq4dX7DNytrEDO11VQbIe7sO7a3W0GR/p/Y/eri4Oc7p4E2p5AiqR7EYDOMmE
         13CwOekBYOg/+bRuScl1flGHZk0JJ57Gorxc8o+30AcMnECw06f9YX7tLVpiKnAaYQWG
         i6GNtuxSa9tuk49OFXl3RlHWBWtJoTFoRLN8vmZSeWMFG7MDea+1N2aqt42xZRbhFn/c
         AnEQ==
X-Received: by 10.70.123.131 with SMTP id ma3mr119813539pdb.16.1426577203074;
        Tue, 17 Mar 2015 00:26:43 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.206])
        by mx.google.com with ESMTPSA id r8sm20720658pdp.10.2015.03.17.00.26.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 00:26:42 -0700 (PDT)
Date: Tue, 17 Mar 2015 12:56:39 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: speakup: Introduce helper macro module_spk_synth
Message-ID: <cover.1426576680.git.vthakkar1994@gmail.com>
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
 drivers/staging/speakup/spk_types.h      | 10 ++++++++++
 16 files changed, 25 insertions(+), 166 deletions(-)

-- 
1.9.1


