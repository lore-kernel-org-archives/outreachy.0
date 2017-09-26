X-GM-THRID: 6470117861435113472
X-Received: by 10.46.65.84 with SMTP id o81mr809607lja.19.1506441706962;
        Tue, 26 Sep 2017 09:01:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.216.71 with SMTP id p68ls592102wmg.2.gmail; Tue, 26 Sep
 2017 09:01:45 -0700 (PDT)
X-Received: by 10.28.150.151 with SMTP id y145mr387928wmd.22.1506441705944;
        Tue, 26 Sep 2017 09:01:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506441705; cv=none;
        d=google.com; s=arc-20160816;
        b=dqK8YP791cufCyKZhHBG0DKrNNeH2burdw80BXTWk+T3x/XVebvdcKg9rIcOisxp5p
         e2ul+jPpgIr9jQZrylVNVJMqfDP8dv0/T95FUJLoXD/yPnirZOmuRW+IeQB1wWl7Wndk
         k4apRwni6f/A1mpFIFCuaDU5irngryik+Xv7o7q3zCfkHlBZAcatJdBZNy4US0eHpS+r
         BauqdXQWbZX9p8kdwQ+OiQ6FfHSAUEQJCMoDd9XMO5c94HFYjreFqE6ZSzFBbJJEXuEU
         zQ3x6kkY7ClDvbOdCYQcueQx35jW0SOR9JtPEFaltsV2mkHQ9hrn6YsHDh/UagcGpptY
         jKAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=B0KxR036g+8K+NgLLk6dxTnDkxwBX/VuL+YlQ/IzFgY=;
        b=Uh48XfDdKGSVAbN8CNev5C3EEc+oSHhzrN6NL3p/r/4SGmH2Gr4cSEG2ExX33Tep4K
         kGlzkIjrtyaRbh+/wV0aM/xSNZ1vDyBFtTy2hf4eLJtzZsplaECdYw1hSFSnMcO/KVjP
         DQdki3l1StmoLIQrrUlcPlRT0nHVGB5seypd4kX2ep+BE+hPLBMY/wVnuJ09SxET05kE
         JFyEE/kKjcwm8aK3NyPabqka1bb6/T6+4GQgMT+b0vAroVHHLa5YfH+ZzF5HTvviMI/E
         WK5ElddHl0le30uZJSOQIp4xCkGSR3GuPwWDloD72LMVblym3JSRgHvF42JqOVzRIOtE
         F/6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQIc8QTd;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id c142si1292402wmh.3.2017.09.26.09.01.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:01:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQIc8QTd;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id e64so9585502wmi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=B0KxR036g+8K+NgLLk6dxTnDkxwBX/VuL+YlQ/IzFgY=;
        b=DQIc8QTd1wwtc95NfVydG7hwPyTOvGKqj/qCinzY3Ul8yhVVfcjeWXwkHH0qk/bM+c
         +p5S2OMOe+sXH6IucMjRhZF105NLjwFgFv4X4eCJyd+5zGAQWbrWi/TWxOmGZk7NzxNl
         TF+b0jbilZ+VFP3Bz9ITejBB2m8tEgFatUE1voTYpwlmMPSQjGeF5e4gEnB6a29VQn3M
         rMRKMivL7w0B8r/cqc7q10AKAU2HBf/xYFHzB4yoIUDg0Ajzeg9owYoAzrkYOSxSG8ta
         iPY1+m5QtgWgw8A+KUJnaGaLeb1/9I/zEmt8IrjYTqMM596FbOMuOV0kaLbLlaUlEOhN
         DutA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=B0KxR036g+8K+NgLLk6dxTnDkxwBX/VuL+YlQ/IzFgY=;
        b=pCdPS6Cx9zvXw8ioVnGT9BTw/eT2ldz1O+1D7LUHfWJzcNPYGpYzedS4IdGvG0dSSa
         3RlIpNz180x4XzV/cDbmMXYfkX/VPdcLQz9NIDJ/MuM7+UbKPsNjc9VL/pbMtLpYLxPd
         PU3HDkTJxx/6w6TOlpop/dDT7U1X1ZYNp774lySL5QE/3v+h2enF7jwWqOn2So/tEMAc
         KoBoWKRdthuxM6E0xtBe9Ncf1zZSKGAlIJlzygXzp7edXb/yd83pZuh4u7Iod4uarZEh
         vuojUGf2veMNmUiVLsc4v3cGCzQEsRwQecYhR8g36Fac9r7EqXel6aXQF30swZW3zw/L
         Lbqw==
X-Gm-Message-State: AHPjjUjCg0VH9VlRjGfdcxrvlsxB7i8UG4EuL6tMlTDOeSoyCIu69Xjc
	App/L0El82UaJhKxSc7s8yGkp/mx
X-Google-Smtp-Source: AOwi7QCWB+SOGqOFRVwO0JjRfL4G4QKdnvN9TIuYkIksbakS9USrVuBxS0EMhrJR83CsVpiimF16MA==
X-Received: by 10.28.1.69 with SMTP id 66mr4261373wmb.88.1506441705435;
        Tue, 26 Sep 2017 09:01:45 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id p80sm2601166wmf.42.2017.09.26.09.01.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 09:01:44 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 00/10] Fix checkpatch issues
Date: Tue, 26 Sep 2017 09:01:28 -0700
Message-Id: <cover.1506436974.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4

This patchset was created on Julia recommendation to
remove 'out of memory' messages and unlikely checks.

* [1/10] kmalloc generates a backtrace on failure and it will
show the same information as the removed messages.
* [2/10] unlikely checks are not necessary on NULL pointers
after a memory allocation.

Also, new changes were made to improve the code from hmm_bo.c file.
Some of the issues were already in the file, others were introduced
on previous patches of this set.
These new changes are available on [3/10-10/10] patches.

Changes in v2:
* Nothing changed in 1/10
* New added 2/10 - 10/10


Georgiana Chelu (10):
  Staging: media: atomisp: Use kmalloc_array instead of kmalloc
  Staging: media: atomisp: Remove useless 'out of memory' messages
  Staging: media: atomisp: Remove unlikely from NULL pointer check
  Staging: media: atomisp: Adjust checks for null pointers
  Staging: media: atomisp: Remove return statement from void function
  Staging: media: atomisp: Add spaces around bitwise OR
  Staging: media: atomisp: Remove braces {} for single statement blocks
  Staging: media: atomisp: Align code with open parenthesis
  Staging: media: atomisp: Merge quoted string split across lines
  Staging: media: atomisp: Split lines wiht over 80 characters

 .../media/atomisp/pci/atomisp2/hmm/hmm_bo.c        | 164 ++++++++++-----------
 1 file changed, 76 insertions(+), 88 deletions(-)

-- 
2.7.4


