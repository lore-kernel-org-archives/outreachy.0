X-GM-THRID: 6810515093003960320
X-Received: by 2002:a92:5c4c:: with SMTP id q73mr19510822ilb.46.1585696612662;
        Tue, 31 Mar 2020 16:16:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:9a0c:: with SMTP id b12ls2005932jal.11.gmail; Tue, 31
 Mar 2020 16:16:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvFR2olq11o7Wy78rXb4JOP7K5O0VHw1irffybiPad5o7xY7z72PITk26+tnSh+1x+8PEYL
X-Received: by 2002:a02:7b05:: with SMTP id q5mr18335763jac.105.1585696611461;
        Tue, 31 Mar 2020 16:16:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585696611; cv=none;
        d=google.com; s=arc-20160816;
        b=ogbEmdiP5PjM3p9jKAzezmqdkfSLW+QOzVulCVudV4OLe3yXCMe/+rILQynv9r3w8+
         8skdX5KdAKzStf3Nr6rjFLpW7k36MlhzYMFaOdO87Rzizl9Y5vsxXH6eqtbP4EDc6OuR
         SZx0ZN4mAMoBpHwGUcuSoQOd+Vg3mU6OXXcVSbLGYH+AsdZ1MDQ+GJl5vWMnDaYh2ngt
         02S+90jl6hNw7Wv9698pLHB06Lv81mKw6KhM6NEJsTQD4P+2b683tKKZjOQKwhopxdyZ
         bZqA42VS5ZCPNrrQvwLj86bU/Xu5uPiXgk60wO+96ndGh4pUNMsBJHIGLfuyU6s7b600
         Ti6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=6N1mJzAmFUwoRo6tOktmJOa67t9CQ0Z8zD9zIb9G/EY=;
        b=R42Gk+/VmCn2fl61/Ub3wEx0TwfKalj8Nlzd7gA5pB/dKOshiCchcChMpHpA9gWNEX
         f45lVaQv8bkYAtcz9aPafUIm4LCsf/3ef2RGzHVSrDq7AqfxW9O/UTz3IJkp51zJIRt0
         qaBE9ouNI6C+AgOyGJ1WgIdud4LOoGI51soUQ0ATYXJpjFIdA8vNkzXozPsWUgo6ePKt
         evsrVTc37kkvbaHhdx0lfjPE3hAaCRu6AmymMrlYdFzZ+jh8I9sp6rtT49etx10HlfF1
         0SnLsFiYxb22kFlOylfKJ9imxqq2YbxYCaVIf5hrjYTqbmW/DJv2mI/RddKJ7nUkBJJ5
         WmEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JszAkHlV;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id 131si29832iou.1.2020.03.31.16.16.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 16:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JszAkHlV;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x529.google.com with SMTP id k5so8913894pga.2
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 16:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6N1mJzAmFUwoRo6tOktmJOa67t9CQ0Z8zD9zIb9G/EY=;
        b=JszAkHlVJFri7F1Yn5ctlBKQnUzTbLlRHlThl6GyOruEV1u2yxb/3bO9GJy9sfUuNN
         PIjpgQx3a0Cri9HaNDCMPCC2+RUTHYCpXyP0ows9d354DdKXkPbA+mkOgoZjgCUAvE52
         PFdfN3TQkGCgceN69+EcW3pmcjejcpvWLHNyoJX8g2FHU+koAuBNmcbjJLxTek+Shpq1
         sg/qgiGGc7qowBKaiDXGYJxVIEqEbCAxaVvxTN19Bed970x4CauTt8eSXEayNi2YBmzb
         LlfwSfUDkCn0n1YeQ60/tYVB52UeaCLffzPRR8ygJakNw80HXhRiiwLCQH/94CK2d5kQ
         MMcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6N1mJzAmFUwoRo6tOktmJOa67t9CQ0Z8zD9zIb9G/EY=;
        b=h3WR99s8jxNn3VmOcdBfXrije4cpMp/n1b+544vWIo19t8xm/7NP0jkkzImB3T7dEN
         aYg8T43zXeZG79xzRFUnyu4KnBKZz+H/5EyZoulp7UPpXn1kbFPpb1d+ceaHvDc1uu5u
         inXaMOFCj4F2gmKflB4oJrrauDgjUtnyY1h+lOwMlbPAopnM9DEG8YcKSf6nGVvTFPTg
         /fHtY62subKY4eeO0kSw+5bpq/8shrEZ+Oc+COlHm5lqJ6IFtvRlP45CZ/wyMSyXL/XY
         gQRX+CAryTXpyBc7LpI/YpCoe3ppehon7nen6UYmSvoZPitA3h09xMfoYhmkUQIQ/Utl
         MXHw==
X-Gm-Message-State: ANhLgQ2mX5C2GpXioH5EsFBWpw+z3Bmr3nW6ULSRC9J9Kue9ddLGRaCh
	QuXReqKi0lzY/6Mf6RKFpTY=
X-Received: by 2002:a63:2882:: with SMTP id o124mr18901235pgo.390.1585696610976;
        Tue, 31 Mar 2020 16:16:50 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id b17sm180529pff.81.2020.03.31.16.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 16:16:50 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: julia.lawall@inria.fr,
	sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v2 0/4] Staging: vt6655: Simplify statement logic.
Date: Tue, 31 Mar 2020 16:16:42 -0700
Message-Id: <cover.1585694821.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reduce code duplication and complexity within switch case statement. The
goal is to improve the readability of the statement so that the outcome
of the statement is more clear. Checkpatch identified long lines and
other formatting issues within some nested logic. The last commit in this
patch series addresses checkpatch warnings that were not fixed by other
means within the series. Some long lines were left under the rationale
that removing them rendered the output more confusing.

Briana Oursler (4):
  Staging: vt6655: Limit return statements.
  Staging: vt6655: Move rate determination logic.
  Staging: vt6655: Eliminate nested if else
  Staging: vt6655: Format long lines.

Changes in v2:
	- Patch 1/4:
		- Per Stefano Brivio's recommendation, remove curly
		  braces and unnecessary else clause.
		- Remove unrelated newline.
	- Patch 2/4:
		- Remove unrelated newline.
		- Change to a clearer patch subject and description per
		  Stefano Brivio. 
	- Patch 3/4:
		- Avoid beginning commit description with solution, per
		  Stefano Brivio's advice. 
		- Move declaration of len to the same line as other
		  unsigned ints declared in the same scope, change
		  recommended by Stefano Brivio.
		- Remove unrelated newlines.
	- Patch 4/4:
		- Change patch subject and description to better
		  describe change, per Stefano Brivio. 

 drivers/staging/vt6655/rxtx.c | 131 +++++++++++++++-------------------
 1 file changed, 58 insertions(+), 73 deletions(-)

-- 
2.24.1


