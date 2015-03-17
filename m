X-GM-THRID: 8728898174976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,dab188cd27b71f71
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.28.230 with SMTP id g66mr70165873yha.2.1426602452318;
        Tue, 17 Mar 2015 07:27:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.200 with SMTP id s8ls145713igr.37.gmail; Tue, 17 Mar
 2015 07:27:31 -0700 (PDT)
X-Received: by 10.50.85.115 with SMTP id g19mr2336848igz.0.1426602449676;
        Tue, 17 Mar 2015 07:27:29 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id ni4si2543778pdb.2.2015.03.17.07.27.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 07:27:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id ni2so11149504pdb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 07:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=S5TUsVpFrbCgMM5phVvo5FmOvPZxEGMH2Dp1c/dhdTA=;
        b=rfQGVbVwPNBMku4LXWHSSk/8Vk4qC/Ra7aOoBKyIIpnuExdGocr0WejSzL61a1LPWP
         v3qtjNhVlGFW7MdCm+gTpsNg3x7qAQWuGJ1Hs9QeZSD0THbjCt0zu2OBryA5KX/tDEZX
         i3FTqBUN5Jke03qMg98OYrOBL6Hv1N2KaLkA+jgwqTT5o6JDb8cfmb+7epL2VSaxfCq8
         owmWxaJ5BBfSfu54lJRwr/3ZdNApVhlutLcU0VChRllwCYvTuc5NY2z7RO0L4jxtECdc
         KQfMqwe+7NDwMqtcGaR/u1A1DMFRgnhdbwSRLjP2SYA3FVQoYK52SHRruCcjoeNjnavf
         EpiA==
X-Received: by 10.66.253.101 with SMTP id zz5mr121055284pac.143.1426602449149;
        Tue, 17 Mar 2015 07:27:29 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.206])
        by mx.google.com with ESMTPSA id kd9sm22818590pab.0.2015.03.17.07.27.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 07:27:28 -0700 (PDT)
Date: Tue, 17 Mar 2015 19:57:23 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] Staging: speakup: Introduce helper macro
 module_spk_synth
Message-ID: <cover.1426601962.git.vthakkar1994@gmail.com>
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

Changes since v1:
        - Add blank line after defining module_spk_synth
Changes since v2:
	- Avoid adding unnecessory comments

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


