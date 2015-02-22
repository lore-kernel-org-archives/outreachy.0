X-GM-THRID: 2273030701056
X-Received: by 10.112.35.135 with SMTP id h7mr501704lbj.23.1424569936219;
        Sat, 21 Feb 2015 17:52:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.30.38 with SMTP id p6ls425867lah.52.gmail; Sat, 21 Feb
 2015 17:52:15 -0800 (PST)
X-Received: by 10.112.126.194 with SMTP id na2mr192959lbb.18.1424569935687;
        Sat, 21 Feb 2015 17:52:15 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id ta1si400323wic.1.2015.02.21.17.52.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 17:52:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id k11so11929358wes.11
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 17:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=kcVs1oyT6Ticuz3iSdH6zAj5HO0z1USpGLITkoj85ZQ=;
        b=Fwo0iMfb9Mz24DSlx4Vij8X+raH3fXLjHJW7RblgPFIikbZKBARiwieVhfi3QFNTWr
         ZnhV2PhFpMKLZwU5U+ldRqbuH2oLjY1E63Nenn3pv8Si0RPQaF8ARDsJ2I6Hl9Qqd3rT
         IqGYmKwGg0cifZVL0827IMfrYOSHVoOh1w/wd5Jm+Roh4B5gKr3/VbIVsPHsC+gEYbWN
         ilUaJyTW8oTOFXbtJ/3iWhSi6FWxVuHGo99amiGft8VZZGpcTCCZQMHuZgwyABkm/gqX
         xfcTfUnFW+i4oDrTHspZjb4Z/bDPElCzTxwqtVZkBuhC/COeHzqRR1zoWktcPeYL5S4e
         Vg8w==
X-Received: by 10.180.80.34 with SMTP id o2mr8146081wix.75.1424569935594;
        Sat, 21 Feb 2015 17:52:15 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id dm6sm9227136wib.22.2015.02.21.17.52.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 17:52:14 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 0/7] Removed some checkpatch.pl warnings.
Date: Sun, 22 Feb 2015 03:51:56 +0200
Message-Id: <cover.1424569663.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch set removes following checkpatch.pl warnings from ft1000_hw.c.
WARNING: Use #include <linux/io.h> instead of <asm/io.h>
WARNING: Use #include <linux/bitops.h> instead of <asm/bitops.h>
WARNING: else is not generally useful after a break or return
WARNING: braces {} are not necessary for any arm of this statement
WARNING: Unnecessary parentheses
WARNING: Missing a blank line after declarations

Gulsah Kose (7):
  staging: arch: alpha: boot: Combined seperated strings.
  staging: ft1000: ft1000-pcmcia: Used "linux" instead of "asm".
  staging: ft1000: ft1000-pcmcia: Used "linux" instead of "asm"
  staging: ft1000: ft1000-pcmcia: Removed all useless "else"
  staging: ft1000: ft1000-pcmcia: Deleted unnecessary braces.
  staging: ft1000: ft1000-pcmcia: Removed unnecessary parentheses.
  staging: ft1000: ft1000-pcmcia: Added missing blank line.

 arch/alpha/boot/bootpz.c                         |   3 +-
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c | 295 +++++++++++------------
 2 files changed, 147 insertions(+), 151 deletions(-)

-- 
1.9.1


