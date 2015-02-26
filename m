X-GM-THRID: 3783863042048
X-Received: by 10.112.147.35 with SMTP id th3mr1169568lbb.15.1424964816518;
        Thu, 26 Feb 2015 07:33:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.72 with SMTP id lm8ls54201lac.3.gmail; Thu, 26 Feb
 2015 07:33:35 -0800 (PST)
X-Received: by 10.112.126.194 with SMTP id na2mr1419936lbb.18.1424964815617;
        Thu, 26 Feb 2015 07:33:35 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id el6si144129wib.2.2015.02.26.07.33.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 07:33:35 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id y19so11899422wgg.10
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 07:33:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Zjv0m+XhboDng+QBi0CrsaJLJPbhobFj+nzR8rSf/XU=;
        b=AM7OnL3LZXfawszPqYXHCwws/hZN5hnlY4UNh87RbuIx6WWiVX/hiavZ5aSRzYy8Lr
         ILN6ZTTJDkri2V76L7XsuzABdpCvIgxapGww6LqdInM8V0xdlVdF5xlwEwW35mwudU0W
         u4CzlgJ8jzjpIsdEITsQfBlMojlqiiuu5Aj9szhOGwb9CpDMwE6+GA6CY2F1QmELz+8f
         cRKuKNXyCYRv1ki1ePuoo1d6Y7HpDzAFbry3xJ+/7ONvc5eyCoIEmEFIRuyh+sn2ZlFC
         1CRzSIT8zJKsViptn3RqCGKU2FqMZmt+MK7dr8DE43THBPcwPEIO9eLLTtKKjdbLJYgi
         NiAg==
X-Received: by 10.180.78.202 with SMTP id d10mr51201898wix.25.1424964815500;
        Thu, 26 Feb 2015 07:33:35 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.248])
        by mx.google.com with ESMTPSA id fm10sm3335461wib.7.2015.02.26.07.33.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 07:33:34 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 9C7A463370; Thu, 26 Feb 2015 18:33:32 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 0/2] Staging: iio: Fix coding style issues
Date: Thu, 26 Feb 2015 18:33:31 +0300
Message-Id: <1424964811-8548-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes the following coding style issues found by checkpatch.pl:
- Missing blank line after declaration.
- Space before tabs.

Haneen Mohammed (2):
  Staging: iio: Add blank line after declaration
  Staging: iio: Remove space before tabs

 drivers/iio/accel/mma8452.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

-- 
1.9.1

