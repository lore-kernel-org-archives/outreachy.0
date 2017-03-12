X-GM-THRID: 6396739450609598464
X-Received: by 10.99.101.65 with SMTP id z62mr15114956pgb.153.1489356963020;
        Sun, 12 Mar 2017 15:16:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.119 with SMTP id a110ls14172784otc.29.gmail; Sun, 12
 Mar 2017 15:16:02 -0700 (PDT)
X-Received: by 10.157.80.33 with SMTP id a33mr13235100oth.89.1489356962681;
        Sun, 12 Mar 2017 15:16:02 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a3si2836361pfb.2.2017.03.12.15.16.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 15:16:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so17003144pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 15:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/On4JdXwI0v/shsW+KUSDFe0Pwv3vWSfkPH4v8IyXCM=;
        b=aqJcNO4tlWZzPG/OX3g9MePImMvMzSpyV7deGvVuLCofa+qT1YppNd7B/JaEWFZZFm
         od4a+Z1q3wUjGFu8T318IhL8Lv136LmL/bWzUCf3A0ozeAzhS+gGsv06BkBijFPwD4q2
         Zcl+fIQQbjUldRTyvvMmfIN1L189EOx+X/p3/zhnbZJCZsISDg3EXIdji+KB+ljhq4Kg
         5RJBJzGZgfNlWAgmnfVceJl1cKy8+Qp/JchwP1nWMGu/73f1dHWc9gpGkVD8m/Ur197/
         w07WMXllOnZDr+c+qT9Tsoo7qF9i1IcDLNGQbVkiNlfWOYKiGuic3CQbfCdgOUB2gWd3
         b3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/On4JdXwI0v/shsW+KUSDFe0Pwv3vWSfkPH4v8IyXCM=;
        b=ZxjWmNlUJ9tCKXmQdrA4TN2S7dYIFS/oaQz+1wTSVG7YU/w1PiWutqt98JBMQbVfqw
         49beOpJ5qI4TYbw4ni/smGa73QTpKajsQIdFWr06hYQJu5hVXXWc2U+J9XHyd8J2BQb7
         cSfQ8Cnubw34M2vq8k1YpUYh+c2mQe9OlWm9ITv3Qp+47uf7sVzXeNrZ2S+t9rFsXCax
         f1J1HnL3z2XLYzTY0DSEHLjNm8xBPq8xPLX69b1inivRKYX4t4+b506hHoi3KdsbiUKV
         DdIXq6FVuIqHQBPxm6wYwABFX+rxv3st1mJmUDIw32q9hqMGKoTs0RwzWf3gN9AN0hAD
         t1eg==
X-Gm-Message-State: AMke39kX1+ww4mrS3zwJZlOVtOgw1PB+Jl1WrsFEHcv3hAXBMJARQmlx6Lbw1tN2z4/oNw==
X-Received: by 10.99.117.11 with SMTP id q11mr33795449pgc.9.1489356962301;
        Sun, 12 Mar 2017 15:16:02 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.240.138])
        by smtp.gmail.com with ESMTPSA id g29sm29856186pfg.37.2017.03.12.15.15.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 15:16:01 -0700 (PDT)
Date: Mon, 13 Mar 2017 03:45:43 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 0/2] Replace mlock with private lock and improve code flow
Message-ID: <cover.1489356140.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch series replaces mlock with a private lock for driver ad9834 and
improves code flow by eliminating excessive goto.

sayli karnik (2):
  staging: iio: ad9834: Use private driver lock instead of mlock
  staging: iio: ad9834: Remove unnecessary goto label and compress
    return logic

 drivers/staging/iio/frequency/ad9834.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

-- 
2.7.4


