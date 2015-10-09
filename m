X-GM-THRID: 6203507432884273152
X-Received: by 10.67.3.137 with SMTP id bw9mr9533318pad.4.1444366628140;
        Thu, 08 Oct 2015 21:57:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.75.166 with SMTP id d6ls689839obw.85.gmail; Thu, 08 Oct
 2015 21:57:07 -0700 (PDT)
X-Received: by 10.182.153.169 with SMTP id vh9mr9635854obb.18.1444366627647;
        Thu, 08 Oct 2015 21:57:07 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id uv4si6352790pac.0.2015.10.08.21.57.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 21:57:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id lk4so75177896pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 21:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ybH7sPlRCrLtQZ7CN4GeVOhVZNY9KkS+KkwNAfN3L3Y=;
        b=rIwJqnyDFldLfMpyqcFtB7rvILlSL9Ina68WF9KVzyJMkccpvXNfpm9/uzBVU5QGmW
         kqRS1hLPAyCAKUKG/4y6KqnUn0c1oGezVEPNaDwJwiZD8yZv98HmKhTCaDmKXjWk6gll
         A+R/iZnLIeF54ahReVrMqmR0F3AJpHez1v/ugODL8dKQTbaL1uGKJR3oDu/80yIJ90GT
         IhATXJVzREnMnxgmfVn8dQE7fsWTeVI1i+3ShJcZ5YqXh9RPgYFM4ltMVyIAG0MDXzHY
         DwDHDSusCSOSznfe46j/Qf+PAafWd6+Kn7CodePp0vZe05kYUl0tyFJ/GjeBprNP/46N
         2gWw==
X-Received: by 10.67.7.137 with SMTP id dc9mr12746616pad.116.1444366627522;
        Thu, 08 Oct 2015 21:57:07 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu ([2601:647:4700:de30:8067:188f:6c60:7880])
        by smtp.gmail.com with ESMTPSA id d13sm48683727pbu.17.2015.10.08.21.57.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 21:57:07 -0700 (PDT)
Date: Thu, 8 Oct 2015 21:57:05 -0700
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] staging: skein: fix checkpatch warnings
Message-ID: <cover.1444366020.git.deepa.kernel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch series fixes several checkpatch warnings and errors.

Since the previous series, the macro indent style of skein_block
is made uniform.

Deepa Dinamani (2):
  staging: skein: fix block comment style
  staging: skein: remove extra indentation

 drivers/staging/skein/skein_api.c   |  47 +++--
 drivers/staging/skein/skein_base.c  |  18 +-
 drivers/staging/skein/skein_block.c | 378 ++++++++++++++++++------------------
 3 files changed, 224 insertions(+), 219 deletions(-)

-- 
1.9.1


