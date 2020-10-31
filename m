X-GM-THRID: 6889706616955863040
X-Received: by 2002:a17:90a:4e83:: with SMTP id o3mr7289509pjh.164.1604134826797;
        Sat, 31 Oct 2020 02:00:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ec06:: with SMTP id l6ls2782893pld.8.gmail; Sat, 31
 Oct 2020 02:00:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxiIEPS8+JaWPYsDPpaKK4j9Slg+993kOkWC09S7RZrC12Jh4blB/8TEICfkk2a6VlfPn+z
X-Received: by 2002:a17:90a:488c:: with SMTP id b12mr7344120pjh.204.1604134825040;
        Sat, 31 Oct 2020 02:00:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604134825; cv=none;
        d=google.com; s=arc-20160816;
        b=Ztnp3HrN6maELxW45TtdTnW8Jp+tN4igFy5Sa9U/ZiD9dJ1wUIO354EYXmuBgoMT1d
         eU+LGQWBcZKgiz0JY33ZHfUjBnL6413DvtE67TBhzwpOwSfm6moaNwkrkZZF6NHujeJN
         u3tnLZCJN9YeNyrthI4D+rcsrZzD5e07y2zpRI6Tcb/RJN+RIWXjtsV5CDRqpUm5h5xx
         3BWhWTwuWIW5y20tWKdUJ/XNuawGMbwHmOm3njbJt0H3dhr5+RTYhCpiwiW5Qb0p8YZe
         AMuZBX+NicZXHgN684kV5r72ONY9bIDWNWDaMZUeQCdkFhWvjmCMhG8u0UoxGpBWWMjh
         bbWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=fMAfHC/R9BzNfzpyhFNmsTD/I34dhh24IhzJE8iWc3Y=;
        b=Fi1fwmb9Xy4DTvDs1PLpregiQRjYG99jSj7wMbt5PMjEHwHEW6Fh37htqZU8ksri5Y
         UuEq0bMq4vo+1OCQ4TbYjHMp2DDCFKLPX7bBFDXrelJ4VfVYRMGN0l15GDgfMmcqaX1t
         Vo8EpUPSq5+P7+0BwSQjk5W9HQI3KvzIZzKEbTVN3LFAo3ipE8Rfvh5A+96lAVSE0AkS
         nCId2XlZRIuw75K8Rt69WUQ90JAvb0O8Ty1fUoBFjzMvi4FoaMYKRX5lPE6yBQXxuzDs
         GLKBX7C4CDKpaPWa31u0qvAR0Q2r0hGmy9lF7/ZRBq7HkNjesLLupdcZYzxtTMfpEHmH
         8yPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rtb0wtgC;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id p4si479215pjo.1.2020.10.31.02.00.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2020 02:00:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rtb0wtgC;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62f.google.com with SMTP id j5so4198562plk.7
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2020 02:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=fMAfHC/R9BzNfzpyhFNmsTD/I34dhh24IhzJE8iWc3Y=;
        b=rtb0wtgCL1d3NSYUfoVVPUgrZALfZWiq91D1n3Cy3nvbLqvRscrXEovikAyfV1G0CD
         C4rgXxFIPkEUgS4rS1Cizcnv+MNRoCtJ/BkSXvsBZAyrLZt3JXypaR7mU9PVSchdUy5s
         maiD6MUQQ/JMVi5x8wig8XvloKc7VYNaJP9ShjVbjdH5a//WQGs6fOdrrLsNovlUWkR5
         BbqPVY5JaCHoN6ZHLk1ZypVZO67cHbZDwFsSzIyBOjoVSl70GJK56ETfRvI8XkU2iLjY
         /0aid+9W5+K0F/kySv9AbwmE1FpATSGJCbqj9YKfBpryUGpz7iGH1e+UydeYpsD6jAE4
         b2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=fMAfHC/R9BzNfzpyhFNmsTD/I34dhh24IhzJE8iWc3Y=;
        b=HX0JqAZxafGfcRwVx3bm//sk0VOQfUwQMxcOknx1dNLYenFq7cvKzD/4JKfpx4ION8
         LCrjV6Kgyme5U7BExpKElit0x8vHnYlQUWWniMWhgaU52zl7ijB8LsLamR+GpyTk22Jm
         mzadt5OGEPrKFSrgSJsnIirEiJ1rDTHkBNKZor2vnevVLQzdvNw19PL33yvRTdXYH38Q
         mYP+/1Sv8JZNnI5Nk44Ie5QbyzwVTkOzvBtrhRC6kfbLEXLYXadTF05mOQv1o3V7bLNh
         tceGFpmG6j92vcGrQhxqb8atfyAkXnRC9O2TcjGdNWHcpmm32PAVPokMEgZS5JtqikAz
         njGA==
X-Gm-Message-State: AOAM530FU2CNlqZELxRz8ONE4Mk600DK667xe8xpfyIF9lJdQigQfbat
	A/lGjEpDynK/YrRjsUkH5sB0cdMECK2UWRE8
X-Received: by 2002:a17:90a:5217:: with SMTP id v23mr7268647pjh.160.1604134824713;
        Sat, 31 Oct 2020 02:00:24 -0700 (PDT)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id mp13sm5681568pjb.36.2020.10.31.02.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2020 02:00:24 -0700 (PDT)
Date: Sat, 31 Oct 2020 02:00:06 -0700
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: vt6655: Remove else after return
Message-ID: <cover.1604133727.git.mdejesusfilho@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset removes multiples useless else statements after return statements. Reported by check patch.

Observation
-----------

After cleaning up the code I noticed that the code from 530 to 548 repeats at 551,569 and that it can be removed and one of the conditional statements can be simplified. 

Marcos Antonio de Jesus Filho (3):
  staging: vt6655: Remove useless else
  staging: vt6655: Remove useless else
  staging: vt6655: Remove useless else

 drivers/staging/vt6655/rxtx.c | 99 ++++++++++++++++++-----------------
 1 file changed, 51 insertions(+), 48 deletions(-)

-- 
2.28.0


