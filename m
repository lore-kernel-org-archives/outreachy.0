X-GM-THRID: 6464947819093426176
X-Received: by 10.202.212.138 with SMTP id l132mr9760379oig.71.1505284607376;
        Tue, 12 Sep 2017 23:36:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.68 with SMTP id 65ls2498388ioi.0.gmail; Tue, 12 Sep 2017
 23:36:46 -0700 (PDT)
X-Received: by 10.84.211.77 with SMTP id b71mr3878344pli.54.1505284606569;
        Tue, 12 Sep 2017 23:36:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505284606; cv=none;
        d=google.com; s=arc-20160816;
        b=fvXKBmB3ohGOYVFcIPfYpq5QuJppXwyC4U1aQwS3NmPxfR45nJvFCNnUamIw3ovelt
         sbjV8q41t4ez8wCABdSQXcjmwCjIN24Jptu/rSXCqemE/VWpAlL647sVkxuQQ5C4KtFz
         Vu/G3zIUlOgYQ6b5CMpbimvCw0oBV4XtXNmQ5K75jNYoBQysed6wzezwvrPstYgTzLzn
         HvGOB67wO+5LFOSbIznxybUFEwUdcQkI9Vr+uJKVng0L9s0Rtlq9842Bci9TGd60CeX+
         sdjL6SLGEH2gHlxBa7KDbcgh22Zkk0h7Ma0iYAGKSwRF3eAOAd0QtBDsxhnsqLRAcBSJ
         OJ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=eTfA0c8H50KgoJPzLIVno2pooo8TuxZha1NM9n0CUN4=;
        b=mXHe+j+1sw3RBZtzRYAnuqRvqLt92i9vP5jfuIUm+l9XTS5fa+ZC3KWrnMW/hcPytO
         qEaliein22hyACG5CILLJUaX3Ge9Sl6hL6TwmdM578JkK9HLvXQrH53eMO6HvJUnPIY3
         0CwqmqGYvovpjDYvkysi6IN6yaTPtTE6Fpp5SRz0ivPNNlLDXrhIJN+yt7ocQRu+soSa
         5Bk83+FyjLggKDvgHq1Sp7EgLs5DXVq5Wkc9vJxhEyF4mHwLqV2F/g+ReuE8Cn5r5z9D
         rHTGjhIrFZVCytGybBx7EIaX26wQD+Ow4i+VEBHvlEeIMbTxVMf/gbIihHHp8NLufval
         fOsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NSWz6oYz;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id e63si322350pfm.12.2017.09.12.23.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 23:36:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NSWz6oYz;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id i23so2370689pfi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 23:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eTfA0c8H50KgoJPzLIVno2pooo8TuxZha1NM9n0CUN4=;
        b=NSWz6oYzTOwPN6nCzBPhQZUGuBxT7DVwTudPIx2TBq5fZRSjCjCh4USu0tFUgSJO5N
         n4kyVWMl/5LyMZOR+g9SDeO+EbZ99PDB92LzENKiPS4Ol5Xncdu07TUAfnLBaxlQxlJ0
         faGBopxq6IjcxTjJX9KlknIWCLeKJCYVXqEzjXCpHwy5mMxOGT17QV8baIQPzdzyYrjh
         jSN34IE/l1ZNDJZzIt+tZvS/Ip2EaLs3HU+zqNUjgGce3N1USkymhZVN0MEpfsDWDBTY
         SOdU4SaKT/Eblc6ry8WvkNci8R8B7UFXgrL2dkEfres0PJQEuf1Z/6Xr4G30njtSKhsl
         umCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eTfA0c8H50KgoJPzLIVno2pooo8TuxZha1NM9n0CUN4=;
        b=FtNhxrQu9gOCtMuCrmn2j7UF+t+5DkhaYTToN5ynjZeqLw7K5pXSmMIV2BoVUinK43
         F9jeD+jbeLAqWZjNNbyRFEQNWaEF0WqjRfkMEa6ow7DwfFJFGABXkSEc6KVr/VVHu8lE
         EbN0JHFzbQIBb9jEYnnYHZT5U/UhHSLCvBnYxYEJVZa6xe3JIzNkMHjIla4i6DMa+XZt
         dMUqp5PwiPiPdLNJHTgHpHW/yLt42/QFKQds8+uHRDLSkoe9gMvRdvfvOxz6CHJqt7ce
         WiIujMAD/fzLJnHMQmrP/C//ZYlv9Ift2Hej6Fym7u+E2WWfZCj7NYDUTTmXBwE4UmgO
         cXsQ==
X-Gm-Message-State: AHPjjUjKM4TXb4QUS5IrvONnwpYRpwrU7Sb1AMV6yA5h6y9vR3ZL6YSn
	TMwwq1wQ+6R/n8yx
X-Google-Smtp-Source: ADKCNb5w6Ow58y9tNm03OL+g6eB6rVfuD/MNVcD5HaPS3BhTllJb4J4rO41SCGJNsizHq7Koam7AAg==
X-Received: by 10.101.73.4 with SMTP id p4mr16721626pgs.215.1505284606375;
        Tue, 12 Sep 2017 23:36:46 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id f88sm24492376pfh.95.2017.09.12.23.36.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 23:36:45 -0700 (PDT)
Date: Wed, 13 Sep 2017 12:06:40 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] Staging: vc04_services: Code cleanup
Message-ID: <cover.1505284040.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Changes in v2:
 -Rebase from master so that patch applies
  -Include "Remove typedef VCHI_CONNECTION_API_T"
    commit as part of this patchset.

Meghana Madhyastha (4):
  Staging: vc04_services: Remove typedef VCHI_CONNECTION_API_T
  Staging: vc04_services: Remove code under comments
  Staging: vc04_services: Fix 80 column issue
  Staging: vc04_services: Remove trailing whitespace

 .../vc04_services/interface/vchi/connections/connection.h        | 4 ++--
 drivers/staging/vc04_services/interface/vchi/vchi.h              | 9 ++++-----
 drivers/staging/vc04_services/interface/vchi/vchi_common.h       | 3 ---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c   | 4 ++--
 4 files changed, 8 insertions(+), 12 deletions(-)

-- 
2.7.4


