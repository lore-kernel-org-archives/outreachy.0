X-GM-THRID: 6395896934008094720
X-Received: by 10.13.192.193 with SMTP id b184mr8187437ywd.27.1489160799340;
        Fri, 10 Mar 2017 07:46:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls8574815ota.23.gmail; Fri, 10 Mar
 2017 07:46:38 -0800 (PST)
X-Received: by 10.129.172.96 with SMTP id z32mr9202852ywj.39.1489160798840;
        Fri, 10 Mar 2017 07:46:38 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g82si1804464pfb.5.2017.03.10.07.46.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:46:38 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so10644742pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 07:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cBRsr4Ak/aMZRu0TjxwPYL785NWWicNqSKVu/lHXXgc=;
        b=ZUPKozxZ/fmoKA0F2l/PLIF51kpddI0MLs8A8s7LALAZWflI3huHovT2cPo1YFQHa4
         VXnC0IAnTmXaNXtpabCLTSm3XE/OsVzQAqYfMzpo7weTbP2cHFHgphTWL8/OKuP9Y3vT
         0Z06OXl+O1ZMo6r0WB7kWd5lP18mOq1cDEnI8vafoVrUzuL59PGH2VLIdS1ObZ7/a8ii
         GR9WxLpZyd7uEYgRF3Z8YgpUKb/Bds7t4H8HTX9M/fHDcS2YwURufOQv+fhhcTGw6k/a
         IYV6LPeg+8dExzjEhMomeT97AvC4PSSZMaMmL5QgmEHiY8TZs0un0PLa1lz7Kj5yZfQk
         HtEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cBRsr4Ak/aMZRu0TjxwPYL785NWWicNqSKVu/lHXXgc=;
        b=F/8a2b66RlIoWfOoxDiMbDw5ozFrntckRRDb8V9iy1UNzuebFqdtj0OYSI4sN3CkCJ
         +pCMfP9XJ7PK/8WZirSGYrjmXoFQ6l2Ca6ilAf9vYFcJMuvrGwvhzGZFGhrYs7tJomrI
         U9hj3RUCMHESneGs3BnBEWpniyvPaMBVdwg4HHyC9qkQWXF3bjDn7uRA4DmUKTbZSvwS
         m2iOqjm1H2YwugZ/11cDpsxazfwbb1Geax5jA8Npv56lA5m2/NcTw/QUGKqhbyRBAb6E
         5NFff2DcesqKqQBSbvcvlhzJGiDnA37LNA2KzP184nHeAzRyg+PxNgjyVmzGiExTZgUy
         ysaw==
X-Gm-Message-State: AMke39l/W11u7W0F+uOnhceiWd8HCGJHRXWpuqn4ysbUXve1nxt4egjnC+pLDCJjV9z8rA==
X-Received: by 10.99.160.17 with SMTP id r17mr20675466pge.39.1489160798611;
        Fri, 10 Mar 2017 07:46:38 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d189sm19642905pga.17.2017.03.10.07.46.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 07:46:37 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/2] checkpatch cleanups
Date: Fri, 10 Mar 2017 21:16:30 +0530
Message-Id: <20170310154632.4445-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver.

Arushi Singhal (2):
  staging: speakup: identation should use tabs
  staging: dvb-frontends: removed code in comments.

 drivers/media/dvb-frontends/drxk_hard.c |  1 -
 drivers/staging/speakup/speakup_dtlk.h  | 10 +++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

-- 
2.11.0


