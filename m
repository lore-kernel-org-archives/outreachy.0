X-GM-THRID: 6465611589668044800
X-Received: by 10.129.182.97 with SMTP id h33mr14387596ywk.68.1505416328235;
        Thu, 14 Sep 2017 12:12:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.84.140 with SMTP id t134ls2850378ita.14.gmail; Thu, 14 Sep
 2017 12:12:07 -0700 (PDT)
X-Received: by 10.84.232.65 with SMTP id f1mr13964447pln.44.1505416327526;
        Thu, 14 Sep 2017 12:12:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505416327; cv=none;
        d=google.com; s=arc-20160816;
        b=pXuc7eEl8kQOjtPXD6MeUv7gH/+xJBWnZDgud3LBrgs/ECGafQcceWfJWaaX6vq7CG
         Ainv4iCMuIY56U9BJMGnSJafJRreo/Btx9wf6HuH/RjQc/ilSCczGoWPhI3+lYJSt4vO
         uU81sPYuFgux3EBN5wCA+T5KkCbWjv8XdhydqDVT6Sl7L11wlcM5xnZCVGdG4FGkafAC
         lSXdcekWDBKq02boNvOojkfF4g/gQfExYtNU3uhD3VJG30C+wTcThYUzX0NGZ81bJfjB
         /oELqqzcOxZ66YlqsbHPOGtuF5+KrrB8m14Uy2lhkJ95Us8fhGFOX9GHHEpZFAdTHJ5b
         wnvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=+ycCrMa8zfLADB3LWqNmj5kUy8TieUyvRqFR3WAvS7A=;
        b=S1Iomidr/t0bbaYTOPMK1SzYzqljINswf2zrBkcpIUk/T3wAIEde4znCrYNstHKiBR
         K7iNiURw3Znn3O7RfDu7w58OA9xpzRpR+Wi3uF9sF99he2bSaIR2s/8srKDfV938Y9wA
         2XvU5nkYKarAKvTTbxeyh5qhH3QqkeUZkHAAB1F61ZH86ninaTt3hGp7tKd6EBcj2+CE
         eiVae44Ep9mksx4VAOCznvmbN53hFp5tzw+7bBvMQrAWArlJIvby7BTrR+rzlLuLqlUQ
         v3+h/mYGieFgjB6kNNsMa0aO+ewWl1lUEcnBSt+GwPO4AigxWM2R+8zFAEpgOpDpEC5G
         +1Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JajtA1YI;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u19si100463pfl.4.2017.09.14.12.12.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 12:12:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JajtA1YI;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q76so117098pfq.5
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 12:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+ycCrMa8zfLADB3LWqNmj5kUy8TieUyvRqFR3WAvS7A=;
        b=JajtA1YIW7eOCvsoqjCXnDkCk4Aj+swZ3Rq3o5HshIcEaS0SdrPn7db4tTicwDYs5K
         ekMStJLUItEVCLnc/7/x5qJgTKdLlAxbtR/wB8Kfl58PnFxlIyMOAL4dGAdw7OqAKkKb
         /oXb5ZYEA+S4qTWyjtPUWYt/BUOcseVctfGJx3zzxuHPzUryCqvV2JqzQDOrwx5lfKTq
         247G9g8ZJB0LuC4TSzva/4cXHcw1ToLFPRBwMdaDnDnxqHug006Y+3fJRPo0y1SwRMmW
         Qp+JdAoml86497bCDfCM0YJ+T4dmgebNYazIidm/vg0hllWKctyxf7ntBFzk3EakclwB
         o25A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+ycCrMa8zfLADB3LWqNmj5kUy8TieUyvRqFR3WAvS7A=;
        b=uMgevtnElD8nDc3OJErHwoqxMUKZxWVy/hiUminkE73gyPnwwL6I1uGHH2UPvWU1H/
         Ek07SROWqDxN5Fnp4YaRltwkiOJhTpM2Fb+LkNSPk9xwAjAzEweswAdD6oiaoedGdxLq
         Sn+exZKNkC+hzCkX0YSj5yM7znOg/0n0myhhy6KQwzVbi8sjqIQvxUrDeRcmu4msux0x
         i5DS4u7GS0JhNvYF8/k+Hw7BGNy8+eilQ8zt70cxSmWiZFGI3q4am61dregUWGTiKyat
         /Ok1VOEcAnJ4QCrDu0nVlMqsNsgj9NAj1iGUN5tTrjgMOfoIYf3MmNlvwsD5lPWAbE5j
         MziA==
X-Gm-Message-State: AHPjjUiXOJosM8MwjG+Fh2Z3ybt0eqJCD0Jl4tpoUhoXLdVW9jWBEK1w
	KHrbCialggeIZA==
X-Google-Smtp-Source: ADKCNb52Jaag+BAgUaA7DiVMSVDGehdxqksprKhedUMtcHXqrGrkqQdhc1eQQ2DBodTXa8+0PF7Eng==
X-Received: by 10.84.229.78 with SMTP id d14mr24872081pln.415.1505416327266;
        Thu, 14 Sep 2017 12:12:07 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id s27sm27944600pgo.59.2017.09.14.12.12.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 12:12:06 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 0/3] staging: lustre: fix macro definitions warnings
Date: Fri, 15 Sep 2017 00:41:50 +0530
Message-Id: <cover.1505414917.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patchset fixes macro definition warnings by checkpatch.pl.

---------------------------------------------------------------------

Aastha Gupta (3):
  staging: lustre: enclose multi line macros in do-while block
  staging: lustre: fix macro definitions warnings
  staging: lustre: enclose multi line macro in do-while block

 drivers/staging/lustre/lustre/include/lu_object.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

-- 
2.7.4


