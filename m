X-GM-THRID: 6332315370185031680
X-Received: by 10.36.233.196 with SMTP id f187mr637455ith.40.1474357063539;
        Tue, 20 Sep 2016 00:37:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.133.70 with SMTP id r67ls3109777itd.6.canary; Tue, 20 Sep
 2016 00:37:42 -0700 (PDT)
X-Received: by 10.66.14.193 with SMTP id r1mr5405505pac.117.1474357062936;
        Tue, 20 Sep 2016 00:37:42 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id e66si2191755pfk.2.2016.09.20.00.37.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:37:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id hi10so535500pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 00:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9KB5gXAn4jemQKhiZWhEDsImYd588i8DMJJuygrwTU4=;
        b=PLRJrFtCBRQntE4Nc0zRQkW7kQAt2Q1Z/1OmR6/yy9Ket3b+Y1RAEyjZVAfYWJ5nrl
         lfuSZgbHoB4UbfGMYXQecm1KBBoWpTClTUMSh4AmQF3HzX2wjAkllsbXJkSMO5sroTGK
         IJJxHJlrqWuC/vgJSYsd/kSpRanhx106yUwLMwLB0hf8M0I8CMRH5UO79C6e8Xc4ArRS
         ULIEW0rWRpHA2NvfLmXmeTOVmHJlp2uZIxKsOjurC2iwLZrN9vPj2tD+EQ1GmtzXOAs8
         MOvWuRSQtG1rR8b2lH9H2seaZ6jIAhuq3zzUXF2amW0Nn5BlbyCOGDBU+cPCHtBjzxNo
         0cfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9KB5gXAn4jemQKhiZWhEDsImYd588i8DMJJuygrwTU4=;
        b=M3xsqaKSLl0asjqbMb0WrjXvo/1tNn4M0BXAeZd5fhgU2wCoKmo5gGfv9RmTfwfmlI
         3bu3fVmR6RJ1F4tG6WPQ30/Hd2zlM9iud+Xkcr3m9JQSb4FVaPrQ2itNnGug2Hk6nfi0
         LSeCUKJPC7USJHzLLtS+LaLaWcbYzSzb6pdlcO9u8vm4yTxgbbvFybS3izMQsfYuTPUr
         5+eTqUNZhenNGmXZvScQzf3rLmkuK/bnKQXA3vb8ABieJMjXkgGv9kA7xAp+sXbbFXVC
         IJWsE+evOo0FKY7F66DFmkNLxxGYMnaB3zf4kGv5IOBtA1dpQ9bHPGSNlfGbLdG9naRS
         sM9w==
X-Gm-Message-State: AE9vXwPYxdOBU7MtdYE2HCJwrs5OkBNkL73GwZ2WOhybRjzavH4t7VUZwL3jSxdstzxn2w==
X-Received: by 10.66.1.71 with SMTP id 7mr39082883pak.168.1474357062775;
        Tue, 20 Sep 2016 00:37:42 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.179.109])
        by smtp.gmail.com with ESMTPSA id bx9sm36558598pab.17.2016.09.20.00.37.40
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 00:37:42 -0700 (PDT)
Date: Tue, 20 Sep 2016 13:08:24 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Staging: Use "foo *bar" instead of "foo * bar"
Message-ID: <cover.1474355964.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

This patch was found by checkpatch.

Sandhya Bankar (2):
  Staging: ks7010: michael_mic: Use "foo *bar" instead of "foo * bar".
  Staging: ks7010: Use "foo *bar" instead of "foo * bar".

 drivers/staging/ks7010/michael_mic.c |   12 ++++++------
 drivers/staging/ks7010/michael_mic.h |    6 +++---
 2 files changed, 9 insertions(+), 9 deletions(-)


