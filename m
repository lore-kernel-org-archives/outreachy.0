X-GM-THRID: 6335880985647775744
X-Received: by 10.13.212.149 with SMTP id w143mr1100349ywd.38.1475187248249;
        Thu, 29 Sep 2016 15:14:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.45.116 with SMTP id v107ls4299990ota.19.gmail; Thu, 29 Sep
 2016 15:14:07 -0700 (PDT)
X-Received: by 10.157.2.101 with SMTP id 92mr1137155otb.100.1475187247814;
        Thu, 29 Sep 2016 15:14:07 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id x73si1081136pfd.1.2016.09.29.15.14.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 15:14:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id qn7so31612349pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 15:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wDM0bjJnDivS81ZwCaqyEHYMmL78a+qNp/8Oy6MxYek=;
        b=mEygh/f66FlMrpjlL7BguYl22bvWWCoe9X6xCmALRjAaBpdOtQA7P2dsFRf3YfbWKq
         L6Nhdb+uxRPOC5KjKPuuH3C0o9rO8vimQZnO+FPjup1e14CFyZGgijq64Kk6B7zW4DTy
         efAuwqaobEqoUidFiPe/zu/QkDKJCmn+e54u0iAui0RIkZaj4EBWI0DKyxCAbOJIzzuD
         EvilS9/JJAjBJ+c2uigygNIgVFc+AV57NFrv6dZ+V1H80lXbYtt4On6UNjmtf5/3JZgL
         FEnjdnebvzqXHlr8d2h5E+TXIj4d/FzIfU/brxGORm8vvisBq+Aa6qCeVsFo8z/9Z6aV
         42eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wDM0bjJnDivS81ZwCaqyEHYMmL78a+qNp/8Oy6MxYek=;
        b=CmUq8vqfSJE5J5wTxzO4xC32p/zn8V80Bf25Wxeomz+xHtvh792Xe3ZO/QxpUoD9jz
         tkt0WNYeI8iK3t+r7RgFCF8uLAzxnD9TMOgWA2kWel3Dv2iZYQs4lMg7n/BxscaljkbZ
         PeKng+Um6AVF2dFz6U6HgFSjmylaPmr26XxbXjfqUawhtMcHU4etJb3LJfBm9bvXHgCo
         yCxN67hXqTLb2rN15zgFLbYYTb/8k2j2dkWIkFPmuIoPV4EdTrrKVEB848yRgWVcXdYV
         1TVLqyUbK0MN/e1UQ4gORi7FkxK1Rso2U7jlGUEIZeQRTRmvODagv2rO4kI0R0107wPo
         G7bw==
X-Gm-Message-State: AA6/9Rl85nQHWuwB+OXnkvxrncP4iMThGKzQO6h+teWlugmmF2W7HReCY5H2iigJeaI9yw==
X-Received: by 10.66.1.71 with SMTP id 7mr6210117pak.168.1475187247437;
        Thu, 29 Sep 2016 15:14:07 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id c66sm22550494pfd.24.2016.09.29.15.14.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 15:14:07 -0700 (PDT)
Date: Thu, 29 Sep 2016 15:14:05 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com
Subject: Split String Checkpatch Warning
Message-ID: <20160929221404.GA7406@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

I'm seeing this checkpatch error:

WARNING: quoted string split across lines

example:
MODULE_AUTHOR("Ralph Metzler, Trent Piepho, Ben Pfaff, "
             "Christoph Bartelmus, Andrei Tanas");

Just wondering if this is a good thing to fix, and how do I fix it? I
don't see anything about it in the style guide. If I put the whole
string on one line, it's more than 80 characters. I found one option on
stack overflow that says you can do:

char *my_string = "Line 1 \
                   Line 2";

So I'd be putting a space and a backslash after the line?
I don't know if that conforms with linux kernel coding style though.

I'm also wondering if anyone knows any good resources on common
checkpatch errors and the proper way to fix them. 

Thanks,
Liz

