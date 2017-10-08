X-GM-THRID: 6474399283336445952
X-Received: by 10.99.120.8 with SMTP id t8mr549622pgc.26.1507438552865;
        Sat, 07 Oct 2017 21:55:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.62.137 with SMTP id l131ls521864pga.32.gmail; Sat, 07 Oct
 2017 21:55:51 -0700 (PDT)
X-Received: by 10.99.106.72 with SMTP id f69mr572830pgc.139.1507438551839;
        Sat, 07 Oct 2017 21:55:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507438551; cv=none;
        d=google.com; s=arc-20160816;
        b=HcoIH9oaaZ1UbgWxGL80mk9UjztTtjqR3ERIlt9Wc19974mM4KdRH8+ntzNrudJXBk
         fbMNqy6OzA4z6N5Vh82baAjLgfRr97+lBJyUZk/LHxmkMibNITWXMD1vqq78x61EQcXh
         qTtWIAMkEWQDgjTWsQZyriEpjk4OaJSDh919WWkEU2nERz5p3k3Uzs9iNR7w+h93Gk60
         NBVoqAPTq0kBLMCKFqBP18a6CFaVw+9VAETYRFVmUrDy+XJ7c5cvDul98VcVLPAWUD6P
         16t+5X48VwdiAwUmcZ+bAJv9LdNwkI+O8T1ndsmo6ZGHbqIBJhK3cEjTFYGePEzC4uv3
         +SMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=7iNQnCuVAWZ+u7HlXmnyledmVkbvIalgWT4cnAGFKv8=;
        b=RLXSXf64PtWn5e+2HeLe6siL+CW1eoHFbLDSNCAIeZOrDZZisAecMAnNXz5KtaVTcY
         rTbE6eEe1qdj64/xCJX+SejgP0ARj3/j12TRm/H53HSBEpLa+CHkzXPFKLZN47bELsOa
         1giLD452yUFAGFulYwSqwdjLuK6QDKYd96ZNjVb+ZQ03LgCK0NuMcszwef/FxH3Gg4sl
         XXSk12KV4NiIAMBq0HqCrc7b6AuXeknbPyIaHNlDpTcEvuiRx6jag2+DXkV8wZ/LMbKo
         MPqCph2NLw2ZK04em1AiTboAEHu89zUFH3ODzveOKD+jD1qDGLTiRshKiuhhDd9LBCXS
         MHBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ao5EzM8f;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id r24si30739pfg.16.2017.10.07.21.55.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 21:55:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ao5EzM8f;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id u27so22629909pgn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 21:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7iNQnCuVAWZ+u7HlXmnyledmVkbvIalgWT4cnAGFKv8=;
        b=ao5EzM8fciRhv+OXFGae55T3Jrty3lboApiGwa1y/Efjntv3vmzoCq+TQ34/toSUG1
         dvJcWY7TcXgaUfIzatVoFuezbXbZ3Kb4+pH9iHr5UCQvwh61yfMOx+KWgKSDhGWwSZq0
         54tNeRVAGmPw1dtyTRx1RlcBzAq2oYfT/3NoRvl9MCPnflRPqlGlm0nT7dPjrqRlM4nB
         eiYksAhIZ+aMb6mPWRcfsp/nfVmNuqZEZrScIZTBz12t/GS+ZsjRUu/yjqWHjJuBSEHP
         t815T4JoN3EZMDKlS21VH+bLU2eQ5Mcc3/UVPwPLeMQ3F4gQyg/G2PeQ9sdB1AX4r7DY
         8qtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7iNQnCuVAWZ+u7HlXmnyledmVkbvIalgWT4cnAGFKv8=;
        b=hE/hgBTJRvOVz2jUIjeFej/WEb/JPt4Y2pqz4cG9Q4iOVO8m1UrBDtJtBX8IAWhr4U
         QX3s9ob0WO9EfP0f8GqWV2wh29ZGm+8Pf+bzLIcpBg/P4fHy5+qdcgJ5+eK4c/jt2RtJ
         LudmJjM1feFjALiZREd+UCPiRruxZQ9a02hZ4w7TBlKNyEEn6y9UDBIS+q5L5A74O/7k
         NGVKSg6iyxFrByY25VhIPqjUOKVPUHp31Ye/VCffNyMZYqxfIxHUZY+pu1WLbNFFsDXz
         Tctg7KEjOVj9ORbR2Nrb4Dwuszqbfdeq4ORcAPs04KjhTpZpel9Z5jYR2UfSX1uAvnAF
         kAsg==
X-Gm-Message-State: AMCzsaWu1NL22ZOaUKhSJwrx+YsIhc0w820AfXcTrLDExMiuJR6aQeHv
	Z7Y0MZSMPCWuL/ZReIjmZlc=
X-Google-Smtp-Source: AOwi7QAcMauA69c2OhQCPO5mPmGFP+UuQbOxu+0tIZWQGzHSRmIMCawoRUElpQxjdFNbsD24d07KWA==
X-Received: by 10.98.14.203 with SMTP id 72mr6703128pfo.344.1507438551497;
        Sat, 07 Oct 2017 21:55:51 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id u186sm9164410pgb.33.2017.10.07.21.55.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 21:55:51 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 0/6] staging: rtl8723bs: remove unused code, ternary operators and fix type
Date: Sun,  8 Oct 2017 10:24:50 +0530
Message-Id: <cover.1507437263.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch:
	- removes ternary operators in assignment statements
	- change type of variables and field
	- fixes checkpatch.pl warnings
	- remove unused variables

Changes in v3:
- create a patch set of all the changes

Aastha Gupta (6):
  staging: rtl8723bs: remove ternary operators in assignmet statments
  staging: rtl8723bs: remove unused variables
  staging: rtl8723bs: Change type to bool
  staging: rtl8723bs: convert type to bool
  staging: rtl8723bs: rename camelcase bAcceptAddbaReq
  staging: rtl8723bs: remove useless variable rtw_AcceptAddbaReq

 drivers/staging/rtl8723bs/core/rtw_btcoex.c      | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_debug.c       | 8 +++++---
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c   | 4 ----
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c     | 5 +++--
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c     | 8 ++++----
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c   | 2 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c       | 7 ++-----
 drivers/staging/rtl8723bs/hal/hal_com.c          | 6 +++---
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c  | 2 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c     | 2 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c     | 4 ++--
 drivers/staging/rtl8723bs/include/drv_types.h    | 3 ++-
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 2 +-
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h  | 2 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c      | 4 +---
 16 files changed, 31 insertions(+), 36 deletions(-)

-- 
2.7.4


