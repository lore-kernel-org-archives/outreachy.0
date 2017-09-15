X-GM-THRID: 6465879632669310976
X-Received: by 10.84.197.131 with SMTP id n3mr14928728pld.19.1505454916576;
        Thu, 14 Sep 2017 22:55:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.140 with SMTP id f134ls5199622iof.31.gmail; Thu, 14 Sep
 2017 22:55:15 -0700 (PDT)
X-Received: by 10.202.192.8 with SMTP id q8mr13214995oif.38.1505454915740;
        Thu, 14 Sep 2017 22:55:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505454915; cv=none;
        d=google.com; s=arc-20160816;
        b=vxCOkNbQRTv6F4PAEu8v+d3lKrJoKQV709zCumcdpPpjUFTLR1wzmYDCFgGrMxUYfx
         bukqDEma3zEyjvlvkGuWXpaF+mvAIkLYFjpmrpQlKCKsjV0LbQk7Mfb6zPw2G0FifE1w
         Fzf2fxvqpC/SJcH8LL6SLq95eSJnv/Sxp+gYC6JB+pIvD3QNYrqsGv0JYJ9cVoV1Cyuk
         9t+2fBoURKq8SEu1sVsGcfS7sxE86r95tA4cJGadxABYTNQZ6VYdYEYGy7AljFUJL45d
         PS9MeAoza/HVML9Vd0I/l7EzK64enR1GCRaNhNMDD1KEWbqBiu38Te2Dq6ODtnpkg+lV
         Wq2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=DH4jdFEsahsVanEa0F6bZyfwXRLlIsniOUF75EyKr10=;
        b=I2R0zjKQy+pFN8pwAQ6mMIhbpF3n4B99zncvK5KhXG+RYdwhGWB/5tyBcfK/bZ5noN
         UIUsBKphKz8K8XTBtGk+50QqxyX3xL3qMammftEQyoAZp/UjTUkHfcOeP/iEYS3Wg74y
         9e+BveNz8K2XHgUHpgNW7X+iClRjA/8zageQ0uKsnb8BrCv+Ej1R3NFxExVTDuB3bIqH
         Xv1GB0U6Sfby/J6ukqSW49gDWu3+VkZyB00x7yktweHpCvxyRs2WrfXnghloGCVpvPVK
         wZ1/CSXQVVoFxo8OJd8AcyJ96+qJFKNC+0YFXoT0401bmP21LtRczWKCdKl8nxAZUrTp
         Zb/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qx3Ux1nS;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r78si17814pfb.3.2017.09.14.22.55.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 22:55:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qx3Ux1nS;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id i23so778359pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 22:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DH4jdFEsahsVanEa0F6bZyfwXRLlIsniOUF75EyKr10=;
        b=Qx3Ux1nSbfsrXGa4bogWhIT9fabGBZe8f7Zn+lAjwDMsaaTsmSJ9pXXOPv8g+BD8OL
         WsSE7eQ42gmuClV81BJkrfQYDcsCNhfkwpDSg2dtmwlCfei/HuEvEL62arr8pt1Cbnw7
         ImgaGgkUPPe3dWdOg10J6mAITFeokr92MFMqB/XlNoDyyJQQCNIonUOPL+ND8H6uU/SB
         Phm4ijZKoxG3+bu89Dzo25BLOpPnilEy2V37st5Z/bsbP/hXE8mq7+MMXzm6VTCLFRhZ
         Bnqd5rCkLp/z4UuzfnRvaHp3+RAx5Fg8uy8/+kTus+LXtiN6vHMdvIp9cAd6OZtAZI91
         U1qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DH4jdFEsahsVanEa0F6bZyfwXRLlIsniOUF75EyKr10=;
        b=SHCdaMMEXJyzJ1LHjVJujM7f5Fq/pe5I0dq5IwKp7tF7geHWs33dv7gX3jUZyMt0J6
         HpDmMQxoHJaM2ggUdgGBZVk37z93q3jwyMgfhp3RnQcTmIgIb4rcRleVHa4oCKK8NL4J
         L5um4+09e1PaB2D9fTXBuJLXLGTesChEo0eW4hJqyQkOC5eAf1r0hKUCRVK0+vMGh70r
         fOcSiXbuYHTMEgyvesc/BSfCOPhAqqzxcyypPMqG7dfaIpHvCWNfXH0tlK7HWTAW2P5R
         cJ7wwBfUNa/uoO4AYhB555BCwI+HL0FQMYe3UpXrGxyfAftcAn6QsvQB+USoRneybPvj
         m8GA==
X-Gm-Message-State: AHPjjUhW80Dm6tuTImq8wUb8t6JnTiig4wg0YvxTPTeXtphj1f6zS+u2
	8rPTalI8nPsdU7wOCd6SrA==
X-Google-Smtp-Source: ADKCNb6FLtdiOsV/CybVsYowpeaHrlXD1vh5ObyG/Ulqnc4CGub6EdD2+XUKjACgjgsFAsdeXoSCwQ==
X-Received: by 10.99.115.30 with SMTP id o30mr23967884pgc.447.1505454915326;
        Thu, 14 Sep 2017 22:55:15 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id f69sm580861pff.4.2017.09.14.22.55.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 22:55:14 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 0/8] staging: lustre: ldlm: fix line over 80 characters
Date: Fri, 15 Sep 2017 11:25:00 +0530
Message-Id: <cover.1505454643.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches fix checkpatch.pl warnings 'line over 80 characters' in ldlm files.

-------------------------------------------------------------------------

Aastha Gupta (8):
  staging: lustre: ldlm: fix line over 80 characters
  staging: lustre: ldlm: fix line over 80 characters
  staging: lustre: ldlm: fix line over 80 characters
  staging: lustre: ldlm: fix lines over 80 characters
  staging: lustre: ldlm: fix lines over 80 characters
  staging: lustre: ldlm: fix lines over 80 characters
  staging: lustre: ldlm: fix lines over 80 characters
  staging: lustre: ldlm: fix lines over 80 characters

 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  4 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++++------
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 41 ++++++++++++++--------
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
 8 files changed, 67 insertions(+), 35 deletions(-)

-- 
2.7.4


