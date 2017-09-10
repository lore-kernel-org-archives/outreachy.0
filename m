X-GM-THRID: 6464167912849539072
X-Received: by 10.98.155.146 with SMTP id e18mr4131634pfk.41.1505056375149;
        Sun, 10 Sep 2017 08:12:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.82.10 with SMTP id g10ls2833100iob.18.gmail; Sun, 10 Sep
 2017 08:12:54 -0700 (PDT)
X-Received: by 10.107.133.138 with SMTP id p10mr5055512ioi.133.1505056374133;
        Sun, 10 Sep 2017 08:12:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505056374; cv=none;
        d=google.com; s=arc-20160816;
        b=YOBFJcYsiXK4AzLs7WdEji3qdnGeeZP/tH1zqD9oiFHfmDPT91bjGZvIS5qByimSuX
         H4cMCRgUggzAGG+tZFYeux0s0iJ10ZHjkXfHb7ar+vE6WQaV2wjHUcN7CtR5KJ8hNMRX
         woN/QmpR66Lc41L6hBpCv71pZ+fH6wFnxoMzoBhpTwr9/eHqBlyhv6aDGSiw0UFnJvlv
         qC6WEryD9AA32P16QTnc4+o81aXSrBboXcUTIGPLmETkm0PLBR5MBQetpfIiYJxYAkG2
         IwsCocJERHbMh6VexYlfG85dfpz3h37Fzd42oHhfAWfU9cj10EG1EbYn2ErlayJGfW1A
         BFNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=44mu6rC5OLA+MFytNKqEIljdQEChAHBuykhvz9L+AfY=;
        b=0HbQshKuqUV/48LS7XTlY0xWtfkRSc9URY6fDNRf2QzhCVghzU00qJTw+dnCmwKW+8
         RPO1BVrVC7qijZFzR4+kydR/EDyvs/1gp0Mh1bNYSb6nYl6No/6TZLjRGe3jKYz7WiWI
         pIhzd52oii+NzenfmmHX2eGILtL5sgejiEG/F1XIJmrZuq1921KH2KqdgNdFLqES+yZ8
         X9OY7dUOCzgPher4bdRNYHd0DVUl7SAhMBlazXUK9oyxP1L9GoJZgIi3eoPGm0omQ0hv
         Ze3jHxlKonCnxrmcv/GlujbqvAyPKCt3gEiMriNjeE/oSUB7LoDTyfUCq7jSVIb/TM12
         kInA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EIx+k5NS;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a17si697618pfk.15.2017.09.10.08.12.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 08:12:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EIx+k5NS;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v5so3515591pgn.4
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 08:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=44mu6rC5OLA+MFytNKqEIljdQEChAHBuykhvz9L+AfY=;
        b=EIx+k5NSS7XIWFtAzLdH3IsoYrJKV2mZvyLSn06RodXvaCiBTKJR4YXlH+DtAci1q+
         LBF8qO+kjzK2acnZCXqYqEywL/D/xXWKWjDhDkjKjJHkXldSOv6gOnxjzm+JrEyDHd4z
         RvuYSfnKpi1uilLGpMvCMGC69xy4j7WmBx4F+FiRUw4xBcShOl0kAeHyMWFwWpuXrPM7
         jWhUOsLygvNFelyyvU3FeJoPg8C6hWraoPnS+5NgR0nW7XUv/hvxG8lMcSQCvdn1Qtlh
         ZZNq9HwjD1w+i4OnfG75o0YmVwv83fNRPe6TGnet7JalsBjkivJrbrSo4RL9HomJeDl5
         ikcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=44mu6rC5OLA+MFytNKqEIljdQEChAHBuykhvz9L+AfY=;
        b=TicKJyVMiwNMTQNAPCszW0VDXPJQryhIfu5jipAHhRRsNMBT2w5qumDQ+nYkgh1FVF
         i+2gebGVWnwil+bV7D+ODXEqvox8LkaFuw7l87CuOvAf+AKV2NlLY3sDpYPNDjFQ3otQ
         9xMtjzmu4jzDXAMHwKnt1p4Mz7XShixRQ9dVSuoNTvoROF3afXuoFCPSIqSC4L2513Nn
         DRMGmNw8kUDo0aJvu2Jozt1Mb2fOQ5hZjaEUch2Vebm41bJksWJLXK0+Hnh/Zh+DyZif
         k4jLZICuEgVnwitZQseMAAh6LBKyUXS0mBM40ekJ4OJ4n9mmcArlGtPKShuzmw8Ez9/r
         eGAg==
X-Gm-Message-State: AHPjjUhAp6/Is8aT88TsnPzG+PtNqJx/XWw+VNJmHlUI8+YR7GyEJWi7
	kAzJjbRIQ6meBg==
X-Google-Smtp-Source: ADKCNb7Rjfbf36BcPs5Qzwsr5gQCi+cB0dIt2G7ifVKmLwKiBY4HYcok0xrOyk9N9hkQdoPI+k8Agg==
X-Received: by 10.98.50.5 with SMTP id y5mr9220378pfy.203.1505056373913;
        Sun, 10 Sep 2017 08:12:53 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id w134sm13823584pfd.186.2017.09.10.08.12.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 08:12:53 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 00/10] staging: rtl8723bs: Follow linux-kernel coding style
Date: Sun, 10 Sep 2017 20:40:44 +0530
Message-Id: <cover.1505052882.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Linux kernel coding style uses one space around most binary and ternary
operators and spaces are prohibited at the start of a line. Concatenated
strings should have space between elements and space is required after ','.
In conditional statements, do not use unnecessary braces where a single
statement will do and put the opening brace last on the line, and put
the closing brace first. Unnecessary spaces and blank lines should be
avoided. 

Harsha Sharma (10):
  staging: rtl8723bs: Add spaces around '='
  staging: rtl8723bs: Add spaces around '+', '|', '*'
  staging: rtl8723bs: Add spaces around '?', '==', '||', '!='
  staging: rtl8723bs: Remove unnecessary spaces at the start of line
  staging: rtl8723bs: Add space between concatenated strings
  staging: rtl8723bs: Add space after ','
  staging: rtl8723bs: Removed unneccesary space
  staging: rtl8723bs: Remove unnecessary space
  staging: rtl8723bs: Remove unneccesary braces and change position of
    open brace
  staging: rtl8723bs: Remove unnecessary blank lines

 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 190 ++++++++++++----------------
 1 file changed, 78 insertions(+), 112 deletions(-)

-- 
1.9.1


