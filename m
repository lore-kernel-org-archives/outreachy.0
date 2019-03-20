X-GM-THRID: 6670329493054291968
X-Received: by 2002:a17:902:bd4a:: with SMTP id b10mr7552398plx.86.1553057109947;
        Tue, 19 Mar 2019 21:45:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6c81:: with SMTP id h123ls482505pgc.5.gmail; Tue, 19 Mar
 2019 21:45:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw4owxwxeAFihaV1gAGTc6yXZzcQwAqq7hhyDtt6O0UojBa8sXf6FOTTOAL5nnB3uaBD4EH
X-Received: by 2002:a62:1c97:: with SMTP id c145mr8286254pfc.118.1553057109345;
        Tue, 19 Mar 2019 21:45:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553057109; cv=none;
        d=google.com; s=arc-20160816;
        b=pPdqN/J+otYZw2AwtZh6u0ZemirG8JY0uP/K5SYkrycudGD5VZvJyfBJ3VXGgYsUlW
         BHwF3Ymu3mPpfBAYzp2CCJVBb3NS+LfqGwYRLqxOvwzXNT3bulHlldcPNGzYsQat4GLl
         EzbynXlJAmvf9av5hEJGBHMqxNm1209Mz23JMBEXKfVUZAXCipFNJoR7JOQH4Wghs0yW
         xbj/aw3oHZd4sRnDT5fQlHsWBeNE/orSii1wT8+A9ELxCbh0kfmsQ9DR54bKWX+z0BVH
         Jn3crfDV1N3Y8DOMMtzto7q3Zb65nCbgsLkwXfYpAmNhSZwTn8C4EAnLiafKBLiMEtk3
         N7tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=1qzzBnwk8iK8kOa9jGHUfvLBRM0BlzLYO5OgtEZkDUg=;
        b=ocDmr0t7emPwPc7RBwuIoflNnx3lqixLdJz/ySKzwzs95iraDEu4RO74p26cU9t33d
         9f01tidFUXYTbg30FUepqFr/U0hh6O0c+Ncgt8ezUA5/BLIYwXnlE8YXfTh+pZ3Ow1ea
         TP7vn7dK7wHBFQoR35/UQGFl0rQKE0lHGf56lbvBUItk0+lfnRTa+/GsVgFNivjIItFB
         fGWLRPQ0oNOfq4+PetVnyhJxJAY0ZOIC+aFiy2b9FjVgZhSjbVyPuraHFCo0i46Kskvz
         dTDcRGPKd6i0MFeUCyBHcc5uzKkt+vI4TA65mnbXv4bFo3sKknHjpnvDulU9SMKYbkzP
         Gj6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UqjnmoTu;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id r133si44061pgr.4.2019.03.19.21.45.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 21:45:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UqjnmoTu;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x535.google.com with SMTP id p6so805425pgh.9
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 21:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1qzzBnwk8iK8kOa9jGHUfvLBRM0BlzLYO5OgtEZkDUg=;
        b=UqjnmoTuLa0/rsiX9qsexUtRc1461R6mE/O7Fb/yV/Ke8D7yJHa187dEugN67m+l/T
         pDFd8iPO6RvLQOzansl30oeL/fK/mIX6AHE8XKIjbMlO3NwAJSbze5HuRbzt1z4xkRnr
         ONRNVTqVlekjP4gtUVjY+ZLx7Q+2BCoIDoShX9Ih7vSTTXnsPImZRIxq/fVSuyX6kKos
         oxVxiUbasfS+8x5EqX5COH7V0pznUW5rL5gPoRZjyiyZ5dS2Bmcl5wvfgqlqV67UdpKl
         3l8NeJLguQsuJxMKdcEblK0Hd/72NdEnUSekp1rC7+2z+P9a+AZYIPdsuEvSB6bS3Kk0
         2kzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1qzzBnwk8iK8kOa9jGHUfvLBRM0BlzLYO5OgtEZkDUg=;
        b=iXLsee+M2ESjO4S5XcGeq6cJ8X/1kD6vo6hP8U1FRQVJFtUOs/YuZrN6fmqO6sqTv4
         C0YbA8stBVhvA7aBQB5RQsjD1vj1Zn/tbr3LdnMW8uDsabhNxZjF3JB/DaGQsB/7I/NF
         Lap7kgXmkNuBAtNdos73HJbU2daq2UwHB4+6PATyJt70KmL014X7yPrm9HxLQnhTMCsh
         G/9lX9/aYuCnyVnwh1f7RUCNt+Hr05OwyLa39uX4Q3yyyeMcGQuMWeHwhRBBwxpbMMEr
         c1QBSYhRvE3RDJjlTvFCzqKILPYCJYs8qpM6A5i7lWt7xw30VrpIQmmnn91gHDiqEP32
         Mnjg==
X-Gm-Message-State: APjAAAWwNxwRCKs9hkub44Ov6o0JciYcFJhFot8xWsepiWnoXXCcQFJH
	CNtBDihpldkfjJ1U+os8M3Q=
X-Received: by 2002:a17:902:284b:: with SMTP id e69mr5714406plb.11.1553057109188;
        Tue, 19 Mar 2019 21:45:09 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id k74sm968128pfb.172.2019.03.19.21.45.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Mar 2019 21:45:08 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 0/3] Replace '--help--' with 'help' in Kconfig
Date: Tue, 19 Mar 2019 21:44:58 -0700
Message-Id: <20190320044501.5445-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Replace '--help--' with 'help' to silence checkpatch.pl warning: 
WARNING: prefer 'help' over '---help---' for new help texts 

Wentao Cai (3):
  Staging: unisys: visorhba: Replace '--help--' with 'help' in Kconfig
  Staging: unisys: visorinput: Replace '--help--' with 'help' in Kconfig
  Staging: unisys: visornic: Replace '--help--' with 'help' in Kconfig

 drivers/staging/unisys/visorhba/Kconfig   | 12 ++++++------
 drivers/staging/unisys/visorinput/Kconfig | 14 +++++++-------
 drivers/staging/unisys/visornic/Kconfig   | 14 +++++++-------
 3 files changed, 20 insertions(+), 20 deletions(-)

-- 
2.11.0


