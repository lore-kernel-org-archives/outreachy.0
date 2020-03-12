X-GM-THRID: 6803323360497369088
X-Received: by 2002:a92:884d:: with SMTP id h74mr8323966ild.3.1584022157670;
        Thu, 12 Mar 2020 07:09:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3ccf:: with SMTP id j76ls1714825ilf.8.gmail; Thu, 12 Mar
 2020 07:09:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu/Zdz86nNSE3bU5PmYLFZnU2cpF0m/eusCZh7JfWtY5e35pB+bLj4MUm12WeAcA0av24fg
X-Received: by 2002:a92:cb8b:: with SMTP id z11mr8585716ilo.240.1584022156079;
        Thu, 12 Mar 2020 07:09:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584022156; cv=none;
        d=google.com; s=arc-20160816;
        b=mxt5etvM2n1LxPSlc9lnYQNbC1oHbq9R6q9ppUqBgEnwCPPqEoRpzale0PpflZJDqk
         5unlLzz2DDBR4fwL7341ttLZ+hBpyxsyXyqtjJ2Q1XngeJc7B0AjDcQuZ7ntPAbOfWwB
         WpCyAN5WdRKhomoj0Yy1aA1ZA6huCPM7Ym/+SjRU8h0tRBJUZVyDQiD6nThaoGaMlz8J
         ipakb8+Moep2F/td6jJoNxyGxfHFalpI42ELiFDS6tBEvaWO+jR59X/m7+wEMO7rRbq4
         Fai6buoC3lLCzlF2jJTAhVowYiUq0Jz131e2EUfyfu86BiP2j1rNvArlGcWAUf3cu4xK
         ZQEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=C1lRCHmAEtiAGWNoHLNzxFdLjSGZIvxljtZ6W76mXp0=;
        b=Ytbx4bcXHDtgMBq6cXH3Ni9ygt89OBhLQ4tbO/uus80QHXylc1ibZZhFH7+jxw2F72
         6eWne/1Ox//RQ/v8Q/XyvMT88Mbd2rJFnGB4g7+2bxSezpGhrNNHxSuKrwuEYih6DiGW
         PqyLVPw1E6+J/qwH2tGZ3wCprN3eJCkE+8cSRpTidgXJZxCvDoVkAHi1+Y30OGHyeAZb
         gKYgYHJ4Ng3nnCUM3uGtOdrsGpF/dSekHEkwzD+SE/lbQBUUxiP74XFplCHZZKWJoCHq
         nPCNcNZqkzh67HDAB6AkSeKH4JRThWXEcK0NTesq0kXIAQ2YtFXJm6/3m3HxXORGy23w
         Jm4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=iQwBLs62;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com. [2607:f8b0:4864:20::a42])
        by gmr-mx.google.com with ESMTPS id e7si227002iof.4.2020.03.12.07.09.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:09:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::a42 as permitted sender) client-ip=2607:f8b0:4864:20::a42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=iQwBLs62;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-vk1-xa42.google.com with SMTP id w4so1596578vkd.5
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 07:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=C1lRCHmAEtiAGWNoHLNzxFdLjSGZIvxljtZ6W76mXp0=;
        b=iQwBLs62GKkcB29jABM3QVO5S06NlLDSMWxCAQ7GGeGv/aIuPogaIN+DdR/6YELVNv
         RBx4x6zD5EQ9D0lT4/0RGEUNd5rfjg9bWQUmYSAxMzKwRWGzojsNnK0avSNYu1e25Wqm
         enLi9M1ZhmW6259fgRRRE7sL8hXDmAl/6WcCCbbuLL7dxhUk7f8DnrvpfJ3HCBDiSp9L
         QhzeYVwkIAHwwkIuC+Vo/AsM+aSCq0hhUlqF/E69qQMGaXQOzGX0vvHgTJ0R/ZbnUTOr
         KUjZkR+LsNfvV2e4oEIT6Q+Bo7TR7sI6j9kDQ99nR+clrBCU4v2Hz5E3HLUgGboHzrd4
         fFdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=C1lRCHmAEtiAGWNoHLNzxFdLjSGZIvxljtZ6W76mXp0=;
        b=WY+6FB6pfjUewqZs5yE1RySrnsbyWEZ7+eNVql4ydYPuEnUtgHsd26ZJUXuU7TZgIG
         Z4JBQqDBByO74BNJsgThkRHS4a3ii8/QVdDmicsoe4kTfG5aoVqQP4zdlHp4dC1yfHN5
         PJra+qOreRDbrSar8lCRe+dETn5+sAsdVQUf/A4VK66vfQR1CKq4oPeff+yibSs8+RS1
         lNz/IUxhicGfMye7n6KnFdAoFwpCA5IfhXXLgYO4wzqn54Vg/bJkT7oN5WADML2Gcf01
         axJC8kAmzAsVTSxpxJUT0NHDky+BKxOFfZuKfzNa55z4YAl2bv5eGqnIm/lzFtoln2Ka
         k2TA==
X-Gm-Message-State: ANhLgQ1aM3cnay+cWfXHLax1e1wGSja6TcmY9UM/9yBa6PtAhXwGSKpJ
	6PUwind+16kYUQdGVfGv+H5h1FMAl2fBwg==
X-Received: by 2002:a1f:d5c5:: with SMTP id m188mr5306771vkg.7.1584022155265;
        Thu, 12 Mar 2020 07:09:15 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from evX1 ([189.172.48.149])
        by smtp.gmail.com with ESMTPSA id q21sm15565771vkq.32.2020.03.12.07.09.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 07:09:14 -0700 (PDT)
Date: Thu, 12 Mar 2020 08:09:11 -0600
From: Enrique Vargas <jevargas@seas.upenn.edu>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Stefan Popa <stefan.popa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: adc: eliminate spaces at the start of
 lineslinux-iio@vger.kernel.org
Message-ID: <20200312140911.GA731@evX1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Eliminate WARNING found with checkpatch.pl related to spaces
inconsistency on identation.

Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
---
 drivers/staging/iio/adc/ad7192.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index bf3e2a9cc07f..51b1cd3ad1de 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -156,8 +156,8 @@
  */
 
 enum {
-   AD7192_SYSCALIB_ZERO_SCALE,
-   AD7192_SYSCALIB_FULL_SCALE,
+	AD7192_SYSCALIB_ZERO_SCALE,
+	AD7192_SYSCALIB_FULL_SCALE,
 };
 
 struct ad7192_state {
-- 
2.17.1


