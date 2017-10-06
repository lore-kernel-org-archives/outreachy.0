X-GM-THRID: 6473933964018974720
X-Received: by 10.101.83.73 with SMTP id w9mr218350pgr.99.1507330211296;
        Fri, 06 Oct 2017 15:50:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.4.206 with SMTP id 197ls17029pge.15.gmail; Fri, 06 Oct 2017
 15:50:10 -0700 (PDT)
X-Received: by 10.99.163.104 with SMTP id v40mr369783pgn.172.1507330210304;
        Fri, 06 Oct 2017 15:50:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507330210; cv=none;
        d=google.com; s=arc-20160816;
        b=QZN0jYs64KYQIzI1znsdOVQRZgAJCnFFO0TSLZb5+2Uw6QOuk4fHAGTAWROPlwzaVQ
         g7pPUUC4RloKznKe8Z2BttYSYlJ/DKjyEaNSU2/FPeK7TXzzi6CVGlXEoQswPiCuwOoc
         zn+aK0/ykJbDRunaSlBtIAkCNkljMqjrZD8vspb1FOlHhZx+ACP/0cifVUFU1riQWo9N
         XD0gEBOnZlf3Eqj+qnY6wJURKI4VuZbO4yxX1NOwyVLlz+jM0xjJBQvu+uVdrO4fHXqh
         Xuh0JH8SGvKdocM0ob56VFTSU4ATJNLqxS+F0GTgo5BzWigo8RqRToaur+k6DQfXQkvN
         PTBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=N6A4dAAH5AXjV0ZcBx3yn3BkWK2cBCECMfFqI88XeFk=;
        b=o3/Bo2dnifhWKxrTZexQWcEe1WCXW2TwnxcyvQ0Ta5B/BplkfnRbBbmgON37oZyMpo
         Isx2pvE01+5f9eNtyVGCv00Cuz1vyqc1XK24GsOq7YRKHuPY0VCMfIwSgB5Bn9mtJk45
         KsFYmP/+o8qQkUys6csdHdSPrtMnWk7qyvtJP/FKPLPPhB7KCqFrZgKkb9KzJT5B88uj
         wXsw5uTy+Vw62WViYiPiXq9kD1Eejh10xpC1UvHin4XCLto3GN1r+uvgppkdF5fCxuEG
         ivsgUSobUK8OqCUz0Vgc9Uk0dx4hufmW4nLNCz9PP3o/I2L405MpZ+DYoipSx7+XXMhy
         1TJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CdMmfLTL;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 13si290562pfk.26.2017.10.06.15.50.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 15:50:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CdMmfLTL;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id u27so19402468pgn.1
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Oct 2017 15:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=N6A4dAAH5AXjV0ZcBx3yn3BkWK2cBCECMfFqI88XeFk=;
        b=CdMmfLTLcRq24o/kysyemfXh010ypg59L9eUd4wRdZccyxSB9g+wfWp+4nHgP6Gjev
         6wqM/cWXCYDIepHEqDbGNs07+PsPotW+DEMvBcss+VRBT3XA2tly6BrVF+xnh6tbbbyA
         ahs3ZsCh+Q2af4Av6/lmh8M0QmB1+kZdix05s/PRL+Ss+pRiBCmGxeYMLsZMrKYSb2Pd
         +Hh9k35wkN3fMYdqkdhcQxx4zgOS1MSAbsSX1qKhj4s7641jMRR9AW+IgrVarunlpCUG
         htGaGMyQNpmH/o5zOUnIp0+oCbYewXqSPfYD2T11TIrmnZzjevQ27CyID4qEm7twvvN6
         TIfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=N6A4dAAH5AXjV0ZcBx3yn3BkWK2cBCECMfFqI88XeFk=;
        b=DMuMWpKrPJhK1v4UYa+Z7xIOE7vBpDaDeimpLptXNq4hyrCoKKdcAwoOfwQfVrY728
         Hk27IzaXYof7iE4snDEPQml9uImw1UNG+GBvuMhpCYf494T7dd9fLh516bAtyn3cmuWL
         snzGEwX5+kxrLXn8cOMnwX4g9BIAI9P+p1y2s3+y6GD4msC/aTQv+G9kKfsGA6MBuJ3f
         NnTbqpMLtKr0G4Q7lRwvVT6fWCJGU3I45kIpK+160q3b0c/7WwC+Urd/AAxlzaG1B7+V
         qRNnUxGy8R7Y6RIuQfVRuxCod8dJ/XEwIE1TahW2+3+Mh2dfYvJLDfTkfeSqnVuUbe9z
         WrpQ==
X-Gm-Message-State: AMCzsaW8lGtNmswn4U5xteieJFZrNOdtRxw8vED2Igy/U4lZuPnExwO9
	I7y9PuyCGJWyuXTIQ+D0wtY=
X-Google-Smtp-Source: AOwi7QBLGWNRTe1ESqe6ivIg/F9zyeKhyeBgJywMarr9yM0rQr86hs5Qkl0sbWdsrxlBZQjEDJJZJA==
X-Received: by 10.98.210.5 with SMTP id c5mr3522291pfg.181.1507330210063;
        Fri, 06 Oct 2017 15:50:10 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id x26sm4923653pfh.95.2017.10.06.15.50.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 15:50:09 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] test: shell: update shell/run-tests.sh to refer to relative path of testcase
Date: Sat,  7 Oct 2017 04:17:52 +0530
Message-Id: <20171006224752.2188-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Refer to relative path for tests from any directory if path for testcases
is specified.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 tests/shell/run-tests.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/shell/run-tests.sh b/tests/shell/run-tests.sh
index dbddd8d..fe30115 100755
--- a/tests/shell/run-tests.sh
+++ b/tests/shell/run-tests.sh
@@ -1,7 +1,7 @@
 #!/bin/bash
 
 # Configuration
-TESTDIR="./"
+TESTDIR="./$(dirname $0)/"
 RETURNCODE_SEPARATOR="_"
 SRC_NFT="$(dirname $0)/../../src/nft"
 
-- 
2.11.0


