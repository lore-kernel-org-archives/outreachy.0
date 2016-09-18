X-GM-THRID: 6331266648892243968
X-Received: by 10.13.219.10 with SMTP id d10mr5497759ywe.17.1474189473492;
        Sun, 18 Sep 2016 02:04:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.121.132 with SMTP id z126ls2031883itc.5.canary; Sun, 18 Sep
 2016 02:04:31 -0700 (PDT)
X-Received: by 10.66.157.166 with SMTP id wn6mr2395637pab.51.1474189471308;
        Sun, 18 Sep 2016 02:04:31 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si4393239pab.1.2016.09.18.02.04.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:04:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so3055965pfj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 02:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=URZIfZ8kNz8Qt/w3hrza9XOdw20NbWzDDP0Ycse7wgQ=;
        b=VWOTNKalpI2SfqRDHTS5xl+Y+LjUdS174kTgXx6CN/WBFG+UHHHZ02pV/1K0BYuMzm
         CsNCjhcJyGkko947pvsvTq4m+xg8e5n6YaSouHfSGjyk3KldfNGWn94doJL6GJtXHq+i
         djwXKwoAlC8xAEP2y9RoBLzt6ulzkJpvjGklwl7VsHsPA1VZjVkrWrCccqX2YsdSrNET
         8QAzW7F4KEE9TZjDLXpaEuX7SA+cZ6+01tlJ+41nMwSIvOr9OfZZWUJHuPX1XJQODoXL
         8ZMEaG1y/aWs9eZL/MdVD9asYm1SObSBqLBFoKwqP7LCRCiFdohj9Z/w/Ra8fw0y8/dU
         LeHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=URZIfZ8kNz8Qt/w3hrza9XOdw20NbWzDDP0Ycse7wgQ=;
        b=L7LrglZ/Q6sPqh0SYgrax2QHyt32R/vDKs4au0PGsAJlVdMXpna7olotwK6rLxogyF
         zEuhbXhhWpnKPoqPUlFEMcUNOPyfWjRyreqckdFkdrpYfQx6R10FNJNw+H+BoMnyg9AW
         wbAfk/onHObypZWG8YDG3jYsZKmy44QTzn2g2ampsdKbnVQa50Ze9OUC6geZb3OcKGMp
         sv97sShF2Ug4sH6vuAjT1FjMEPpyh7rftLfEEeCjgGf5W4V6htMD0UGcp6AfyxRQUzdm
         EV/y1lrcDxOiW6yw0FUNrc6fWLaGHaz2ovw/NVwym1h/EtbITcB/jsgkD7QRBOuLPsuv
         iMlw==
X-Gm-Message-State: AE9vXwPvhHv0GHl5+FuqVGzUx/BSL05mSCNSBkuUSQEvNJYewgw/XV2faUMc2fjMC8WO/w==
X-Received: by 10.98.23.197 with SMTP id 188mr15188105pfx.96.1474189471151;
        Sun, 18 Sep 2016 02:04:31 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id c145sm30429562pfb.15.2016.09.18.02.04.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:04:30 -0700 (PDT)
Date: Sun, 18 Sep 2016 14:34:25 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/4] staging: vt6655: Fix checkpatch issues
Message-ID: <cover.1474187686.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple checkpatch issues in vt6655 driver files.

Changes in v2:
 - Subject line and commit log messages

Namrata A Shettar (4):
 staging: vt6655: device_main: Replace NULL comparison with !x
 staging: vt6655: device_main: Replace explicit NULL comparison 
 staging: vt6655: card: Break multiple assignments
 staging: vt6655: device_main: Break up multiple assignments

 drivers/staging/vt6655/card.c        | 6 ++++--
 drivers/staging/vt6655/device_main.c | 7 ++++---
 2 files changed, 8 insertions(+), 5 deletions(-)

-- 
2.7.4


