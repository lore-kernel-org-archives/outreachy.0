X-GM-THRID: 6670815133562830848
X-Received: by 2002:a24:6cd5:: with SMTP id w204mr1023623itb.16.1553170181320;
        Thu, 21 Mar 2019 05:09:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b2e:: with SMTP id c46ls1877262jaa.2.gmail; Thu, 21 Mar
 2019 05:09:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwCpo++TTsJ8KYHY4KoL6Rioz13QfAYK9WzfyDKKNS8Y6aPkP1+vX4O/WVrlIxwbwoF/Bjj
X-Received: by 2002:a02:ba89:: with SMTP id g9mr997315jao.14.1553170180458;
        Thu, 21 Mar 2019 05:09:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553170180; cv=none;
        d=google.com; s=arc-20160816;
        b=UgHjntxQ9teSc9l9s2cPl7KehjlVLdkgLUq8S3IrpV0ZxaYLe+pGRbd6Jj7LGVCfoF
         nvdS76qj4EkojYWE39VS0Ja1X3mkRaz7MEfbrxc3HfWUyVehyN8TKVVhYzErVTlmkLs8
         sGYLXVoAZ5jpBNngltW8Olfx3lrFonmSYA6/nnHoeNK987N4F3RjvqJXT8EtU+VMDaEc
         AyWbiVaewArxV3Cnq+K59PJnhRNntBu1tl5giUeMzLBPSTeven4SAoyrIhbdp+zGy3uz
         QLimWJpuejyydsS90/hHf/PLtN0ak2UVnAe97ojEev15xvEm3lOYxrw5hT6HtSmyvCU3
         WlZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=i95k9+StWP1zflD61TkIcnQWbJmtBB9H4A63/c49dYU=;
        b=i/o5BXIn6hBN8a45YL0oXkEXnJkj1G9sSANpG2acFGbqSHouQYa0iPDnoneLhHO0cC
         G3Quf93V+ZFzgk2lKT8HK4aoF13cKOo5mSyskagrRWW8MN3G4O7ywQCmmXIeK4iMO6xy
         JiEwygAiK3yFF5UUMeKQmRpMYW8aRnJJTzryBpCsVCSnZyEXeszUJVdakyiRDvE8p5Q0
         FUPBagbX+PxhK3BMCJCxFwNPSnmIgYIfRa4oUP1uT3e5+SvM5D7HGdHK/r+Ulsm33Svm
         c7UnutDkRLHrCr4TsuSUt+ftrCYbSYCIOznNMGVSyL60ey+XQxxxNwMSH2oUJm0jCHPQ
         G77w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZSLqW+qv;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id e74si454328ite.1.2019.03.21.05.09.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:09:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZSLqW+qv;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 10so4174056pfo.5
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 05:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=i95k9+StWP1zflD61TkIcnQWbJmtBB9H4A63/c49dYU=;
        b=ZSLqW+qvP0zOvewTQKFbwUZTXZixIKVffkKluF6vqvSB+Ruosa1FAI1vC2RJMvyASy
         JGGdfEMNjKz+mXOdDXsxZBKuCG3XcLI4rKxu4oekbCUFscPNL5LTfy/xdfdeHu+6vO/k
         Dm5XVn2inSX0bPPXh4M71QWfRDY3QFNuQ+PFuLnTgt2rMBDxmZ1mqBm+bLat6pKb2OOG
         ApSr892YbuBFYX1zha3kgFBvwLChZEfZogreaG9lhhVwXRDBUVig/hc38S+bfLRbF9JA
         20Mn+UloLL/74Z9eP26OYOgZqxSPjMTGc/AMqNDC4mQAF+TiW170Ra9loXrpbGzEFgFh
         daTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=i95k9+StWP1zflD61TkIcnQWbJmtBB9H4A63/c49dYU=;
        b=XWj+jQqwGfISd3+DaK1oWSbNiWUFci3OM8nmCOSH0jr8Tk8Rt3sxkbX76zmgHMELpS
         HcYvYaZ0u4qjdmzmMUox7OyRT2zUaU3qtnSZTbDUCHxUn4uf/szPcoBvlPWx9mpn85JC
         zwQrACCBQ908PohEFEj5UMlkHulM+CCCgwgHyhhOKpJopqTGvGBRRV2X5AMstrvnHn2N
         Vcdw+ZZWW45CZkVztLs+EUAt7orz+QaTyV9J01uxpfwNB89sMRXOWybc1YaTBle/jdMY
         A+Qb7K7zSljNohxYCraIunb35pkQhHflaCuJ0hRQwWheeZcsWEewshlE3eIM+9QpOHGv
         Rv+A==
X-Gm-Message-State: APjAAAWi+G1G9u7p7cG1Lettz9GwYkWXHtvDsqUMtOnSwFW2/O1tgyTE
	DngGRPlGfNcBDJBJCDm5Uaw=
X-Received: by 2002:a63:6e8d:: with SMTP id j135mr3014163pgc.160.1553170179515;
        Thu, 21 Mar 2019 05:09:39 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.80.198])
        by smtp.gmail.com with ESMTPSA id c130sm6687518pfb.145.2019.03.21.05.09.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:09:38 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 0/5] staging: rtl8723bs: include: remove typedef of
Date: Thu, 21 Mar 2019 17:39:03 +0530
Message-Id: <20190321120908.43680-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset removes typedefs from various structures defined in
/staging/rtl8723bs/include/rtw_pwrctrl.h as The Linux kernel coding
style guidelines discourage the use of typedefs for struct types.

Himadri Pandya (5):
  staging: rtl8723bs: include: remove typedef for struct pno_nlo_info
  staging: rtl8723bs: include: remove typedef for struct pno_ssid
  staging: rtl8723bs: include: remove typedef for struct pno_ssid_list
  staging: rtl8723bs: include: remove typedef for struct
    pno_scan_channel_info
  staging: rtl8723bs: include: remove typedef for struct pno_scan_info

 .../staging/rtl8723bs/include/rtw_pwrctrl.h   | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

-- 
2.17.1


