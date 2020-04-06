X-GM-THRID: 6809913191851622400
X-Received: by 2002:aa7:8082:: with SMTP id v2mr21681158pff.18.1586171962555;
        Mon, 06 Apr 2020 04:19:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:16d5:: with SMTP id 204ls11100657pfw.3.gmail; Mon, 06
 Apr 2020 04:19:21 -0700 (PDT)
X-Google-Smtp-Source: APiQypLDpErDzRrXJ7AoK0gqgo9TGoJe4WrzscnkmOmhxCE0kDV4ZzBU28t61e7eEjknZT/2yp1I
X-Received: by 2002:aa7:953b:: with SMTP id c27mr21461171pfp.201.1586171961150;
        Mon, 06 Apr 2020 04:19:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586171961; cv=none;
        d=google.com; s=arc-20160816;
        b=w4Nn2h4FLbfv2OEmAwCjUKnuVgk1zRgGBHOvsYVnLf3+2mm+92Xeu9+WSOh1Z9GrAu
         0m5GpzNvU2vb23Y8QZU8cVfabeKNfFMDoZtytuQw3CFUn+dVnk52ETF63FBac3VdGBaH
         4HUb43sS9kJddb5tYOTKAUX2OD1d02itE0sCP/Gvv9qv4QO8Jcqo6qa7z5MFQLQZQ7Vh
         xhuEOFelHxV1EUrV5kGYM2PaVs4C7j/0P9AYYGp8BLhmRWTfY6i+0AKHcEtw73x5cx7D
         dlMs48CkqM9sSXHCeKUHdF4SHmaa3mAONqe4feiMr0qAORpNUsgm8oiNoiyjslUSBT9I
         t1Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/NL/CkbmfuGGcHHcKqZSq2cxxaH58B3cjVb2n3z7XoY=;
        b=fHk2GfOw60Zgv66yXxxm+ZDRbVT2I2Z8F5yd9rsGG1ADJCN8YM2P27/74qaZrGW50O
         L0Uq5JObrzgwU8Lhdefy+GdgM3Qo5apqmolXtEovyPCZVI0/0fapMxQfDuhfOA7cy3yq
         ocRP5Bfz5arWbEpPnSo20djfXIY15ThgqX9Jz4g+Qm+JYZGt1F9HGbnRsYfHg+uZW4L5
         i67MBPM7FZ22omMD7OkHNtxPfixyBGwmuH7Pc8XNCUHddgUFw1KDx2hdku0z/fci816P
         ewqBbF0Dd4E/iEZwlWW20f2Ueg4HVaE8j/fYY7rFIcDReA4pzfDkNcy0fuzPvKcq99lz
         Zdcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PTZQvCYG;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id s63si1041398pjb.0.2020.04.06.04.19.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 04:19:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PTZQvCYG;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id x1so5780770plm.4
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 04:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/NL/CkbmfuGGcHHcKqZSq2cxxaH58B3cjVb2n3z7XoY=;
        b=PTZQvCYG8TBNKF6Mrfe5PrbacQFgA21WgsLz6x8eRGswfw74tDZAOMc7Ba84/+U4b8
         SmJrUUTDC4aI0DQE0uh0OLS90M+djOhMyQ03KL22+O81BUYLluZoUBAtHbGlhV5OZxKH
         a+Qi9weyXQnujxHpe9V//kiZHfdLTleGgRvBtRM6LCyd+xWei5IILbsVROrFcguVVGzk
         haWJIO6YiJ0ERdhCmpeEEmFV747NYe2FeDDtR2MVAFTILG9NQCT5fBK+qnq0JFTOws41
         0s9XJOg4WBC+be3ZeA5YTAanB0N5jTi8C9c+zGmytipfHjIjH5+yx7W+YQitkCOkWB5C
         VIFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/NL/CkbmfuGGcHHcKqZSq2cxxaH58B3cjVb2n3z7XoY=;
        b=Aj+sat119MRqoEb2jQyzxpHdU0AfqcirZZnCa64sw9d7T1PEjqLOF6Okl9zfZCmhYo
         c20gtkJCHGCXXn1D+ck21nf8oPimJdNSpese0zNU1C4BQR8lLbiHrA6cYTTXMG4J9rYd
         sIVqufBpRcv1vNzEY9mlwJbEYVLUPl+lcvZoINgyF4jFARaDnf8AOQFIXx6f4l0eqoXw
         Qj+1PIwEcyymC8KdciDSt2ccAnQJUJpvwvsfuRVkxUZyZYUGNVliUpQZidHXbtgv0IvS
         +nZqanjW71pL5TI6fOjyAZTrKWHELTgYfNqD5eMYSwg8s/k8P1B6r0ATSz4bQrPiVVR0
         r14A==
X-Gm-Message-State: AGi0PuabV/fPOHb50FvsFrYowt0ZQUMeiWbVq2PY0BLK0NrV3JHvTc+P
	6m1RteVlnaOItOAQ8lshfLs=
X-Received: by 2002:a17:902:a70b:: with SMTP id w11mr20987615plq.59.1586171960793;
        Mon, 06 Apr 2020 04:19:20 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([2409:4065:11f:6885:99b6:8ae:3f27:d6e4])
        by smtp.googlemail.com with ESMTPSA id t85sm10512845pgb.1.2020.04.06.04.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 04:19:20 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	julia.lawall@inria.fr,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v4 0/3] staging: rtl8188eu: Resolve various warnings reported by checkpatch.pl
Date: Mon,  6 Apr 2020 16:47:03 +0530
Message-Id: <20200406111706.25957-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset resolves coding style and indentation issues reported by
checkpatch.pl
This patchset properly structures a multiline comment by adding "*" at
the start of every line of the comment and also break lines into
multiple lines to respect the 80 character width limit. Also, as
suggested by Stefano Brivio <sbrivio@redhat.com>, this patchset also
removes extra unnecessary parentheses to improve code readability, all
for the same file rtw_ap.c present under drivers/staging/rtl8188eu/core
directory.

Changes in v4:
  -PATCH 1/3: Add ' ' character right after '*' character at the start
              of each line of the multiline comment as suggested by 
	      Greg KH <gregkh@linuxfoundation.org>
  -PATCH 2/3: No change
  -PATCH 3/3: Remove unrelated changes as suggested by Julia Lawall
	      <julia.lawall@inria.fr>


Changes in v3:
  -PATCH 1/3: No change
  -PATCH 2/3: Replace PATCH 2/3 with PATCH 3/3, as suggested by Stefano
	      Brivio <sbrivio@redhat.com>
  -PATCH 3/3: Replace PATCH 3/3 with PATCH 2/3 as suggested by Stefano
	      Brivio <sbrivio@redhat.com>. Also, align 0x3f below the
	      left end of the function call as suggested by Julia Lawall
	      <julia.lawall@inria.fr>


Changes in v2:
  -PATCH 1/3: No change
  -PATCH 2/3: Add curly brackets in conditional statements to improve
	      code readability and properly align the lines of a
	      function call as suggested by Stefano Brivio.
  -PATCH 3/3: Remove extra unnecessary parentheses to improve code
	      readability as suggested by Stefano Brivio
	      <sbrivio@redhat.com>

Soumyajit Deb (3):
  staging: rtl8188eu: Properly structure the multiline comment
  staging: rtl8188eu: Remove unnecessary extra parentheses
  staging: rtl8188eu: Line over 80 characters

 drivers/staging/rtl8188eu/core/rtw_ap.c | 99 +++++++++++++++----------
 1 file changed, 61 insertions(+), 38 deletions(-)

-- 
2.17.1


