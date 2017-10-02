X-GM-THRID: 6472213781908815872
X-Received: by 10.159.207.139 with SMTP id z11mr1141979plo.31.1506929700095;
        Mon, 02 Oct 2017 00:35:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.54.65 with SMTP id d62ls2783788pga.33.gmail; Mon, 02 Oct
 2017 00:34:59 -0700 (PDT)
X-Received: by 10.101.81.196 with SMTP id i4mr713229pgq.174.1506929699065;
        Mon, 02 Oct 2017 00:34:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506929699; cv=none;
        d=google.com; s=arc-20160816;
        b=zR/mDk/z6ihlg4W+Fn8h4AiDbUnzSBeW3slBPBVHCoPTkrpsGpPopP7W5hCisV0TUF
         iABy5p7Rha8itvdR/EMe3r0SKBtPLljMkVCGtuIpl8Uuf7aGKUHhvZSb1r0VGAV2JNGZ
         /3NjUHnuLsCIxH4vGSbTeSe5frzGL5EdFnsxtaCprzlipSXk5tHf2uoqqACClRb6HkiG
         jJmo1vctX8bsr2hx3wDP1+itH/Ip3Qze7xAJ36fzdhDbqZ8TF6wOYvhWiGWogjMschvL
         sOdLtCOYd6Vnu++461DuYWkQZ/h88DWDBvmeksvvyM50rew/6tIc1uqBPE+RdcHU+Yf6
         Ctcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=SrEEYmfg3hfcIZxoRhmx3TbV9FiiGcPROqtARJdUNU0=;
        b=TShr1De1+9pRjllOLneQvsK3AfcBhkjrxGXV/WDl5ydA8FDRsqCumUNLlCanh9kAiG
         KBOf9qyqIHw6gO/2c2flNJvNI/iuqkQMqaDeIe1eO5tHDHCJzHwfF/BaOaLXstIl6ZD6
         BqBYpRp4lITnPExcF/XbQYND9S6yatLJkFkCC8KFa2+sR/xUwHPOsT4IJ6EhMyUk5JF7
         n8k/WQZdiSfupzH3PG6o5/c9YzIoDla60tsc2kdV3xR8KRd4xiibSWfzecV5lsn1qjLM
         ab2nLgTs0KHXkYZWoaIqQJVMFOvqww00s3Ji+4kkuOMpaso9OY87+WUAtvSnjWkQCDJJ
         i2sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qIyK2Qfn;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a28si297402pfe.24.2017.10.02.00.34.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 00:34:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qIyK2Qfn;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id y192so5157331pgd.5
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 00:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SrEEYmfg3hfcIZxoRhmx3TbV9FiiGcPROqtARJdUNU0=;
        b=qIyK2Qfn/OqY/pj4DvQ+Bhz1wypdSThMFuRm/ScpdrD9pDMxe/bibatG/XubGtqrxH
         VVerJaPirODNuILxCDGaAvJuiytawVqYnAWdBHOgDoy+ffHFOO9SM1DRIKJCydYAwxlJ
         MzNknUZxjDTGlVb9ZAGULoBMSGR32b5/yaBnx6NFNLcnmo7BBZtGGMaHRsQt/sK1lXwe
         4kJ40oR/kiVy81qWHewYwtHh4rYTVvWHu6bA4wiXlSKhPvSMMvpSlzWgrZk0MWiuwx7D
         rl1tlNt8++yg2rfcREGPJdYuqP9vN8t55vC32SLtijFTt9cZJVkR7WJubXjDPA1k3LVx
         WX0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SrEEYmfg3hfcIZxoRhmx3TbV9FiiGcPROqtARJdUNU0=;
        b=XAmhA6R+mb762XpL9TA0/9J4qBHLWEMHJb0Odlv2GC6uYU1EYZTYCNa1G5N0XyBxQ7
         Q62qCqkHJFovNtD9xF9vw3iqBgw2vpw4wTU4KUUURmsK+k/v7bpZqGg9R0a9Fn1sXdnr
         KvlafOimbw6kOagupfZIYkBOk7gA7FDkp+nRKKUD+xB1UcETv1+Yi9/RV6xw6vpW9F1Z
         WNxGljzIZcCxJe6qzbo++L69TTURfUlaDohhd/AiJrHf+Vrxf3w1tLn7H+OZXM2VLMVh
         ehny/xT6kc2N6a/0Lv35KlFJOon+KycFGYBSKBFW5OIbvrXz9gJEs9FBlNNbKBdycEk+
         5s8g==
X-Gm-Message-State: AMCzsaUW6UZ3AXgrt4W0sUrzspfykcZ9ZRDkgOoYCwfp23mo9u/oYRWg
	3Gzl+YC2CvhYixS84JMXbGhqivFU
X-Google-Smtp-Source: AOwi7QA+TwmD/PXj2LIcBDbBPZ6zoQQJxQwDvjGF2IJyR0a7H72CS0RrjkAibgXZlf18cklrvzD2cQ==
X-Received: by 10.99.52.196 with SMTP id b187mr2877878pga.222.1506929698890;
        Mon, 02 Oct 2017 00:34:58 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id s9sm16323720pfk.20.2017.10.02.00.34.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Oct 2017 00:34:58 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 0/3] evaluate: Follow linux-kernel coding style
Date: Mon,  2 Oct 2017 13:02:47 +0530
Message-Id: <cover.1506928244.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Issues found using checkpatch.pl 
As per linux-kernel coding style, code indent should use tabs wherever
possible and avoid unnecessary spaces.
Comparisons shoukd place the constant on the right side of the test.
static const char * array should be static const * char const array 

Harsha Sharma (3):
  evaluate: Remove unnecessary spaces
  evaluate: Place constant on right side in comparison
  evaluate: fix checkpatch issue for static const char * array

 src/evaluate.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

-- 
1.9.1


