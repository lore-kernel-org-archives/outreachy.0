X-GM-THRID: 9034069442560
X-Received: by 10.182.135.230 with SMTP id pv6mr72740596obb.17.1426700578870;
        Wed, 18 Mar 2015 10:42:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.149.197 with SMTP id uc5ls348541obb.70.gmail; Wed, 18 Mar
 2015 10:42:58 -0700 (PDT)
X-Received: by 10.182.205.232 with SMTP id lj8mr75967630obc.39.1426700578657;
        Wed, 18 Mar 2015 10:42:58 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ni4si3231115pdb.2.2015.03.18.10.42.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 10:42:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id we9so48891408pac.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 10:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=yE81nEXeom1YK1lj3OQjKA+LLXVmCWWw7gpEk7/AMvc=;
        b=U/CADTDYktVdPOT+CNTeRO/TUSTmKtl0nPoy8Q0OrlqmeWiR4bYBIEvHDxDDJ6LR3t
         MHYMawc/6tfOK6qy3dBj+aqSebOJBAsa66AwdJ2dCudjVwtAsOyYupNYtRlcbSNg/sBd
         tLJrMiv4oxpPrOdj5s/vtbroWddVIaqso1qKhRm5OaAsKjJsuy+IgZTphjkiaLNgH5S1
         yHuko3jUFObae0H3pxLJ1Z1Xjo/fkSvC9apPWEhJClfHj9E4Dw4YPs2TBodxLnohQCr3
         Hgq3MLdlJqNxSO45gRwloE4CyUnIqhOPoxJ22Fr7F0vD0DLgGcGMczLXqgXVHBx6ARHO
         R+KQ==
X-Received: by 10.66.123.110 with SMTP id lz14mr69665587pab.30.1426700578413;
        Wed, 18 Mar 2015 10:42:58 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.240.77])
        by mx.google.com with ESMTPSA id i10sm28565499pdk.53.2015.03.18.10.42.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 10:42:57 -0700 (PDT)
Date: Wed, 18 Mar 2015 23:12:53 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 0/2] Staging: speakup: Introduce helper macro
 module_spk_synth
Message-ID: <cover.1426700096.git.vthakkar1994@gmail.com>
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
Changes since v3:
	- Fix build warnings of v2

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


