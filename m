X-GM-THRID: 6465937630940889088
X-Received: by 10.176.16.69 with SMTP id g5mr16271831uab.12.1505468420330;
        Fri, 15 Sep 2017 02:40:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.181.208 with SMTP id e199ls5242025iof.10.gmail; Fri, 15
 Sep 2017 02:40:19 -0700 (PDT)
X-Received: by 10.55.167.142 with SMTP id q136mr12735133qke.34.1505468419455;
        Fri, 15 Sep 2017 02:40:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505468419; cv=none;
        d=google.com; s=arc-20160816;
        b=KF0GYzMQHXslfyLBPNe/GC8JIhtF9K6g/EjignjtoUcmU1mYKZw2fcU2fAAD3O+A5p
         dwC5AYrLxDsBCsbNC0Dox+qIGytSMYMikkK8IQUUy4geFU2LWDsxc3nTVUyM8Dves3XS
         +tg5gLMuT1OlZ48t3TbkiysPhY6iiHGAkQANCjkkS4YePs0g1YPeg5EtEibmzekkdhrr
         XYy9Yf25sasKsfh3yxdsow/zYNk1keBK9zxLvJZ6omZDQFCbZPBGmHwSaF7E6z4jMhfb
         3hGlWr4MkOuylkJqbdinFuQMExQv3XoUYqUhyh1Y/E6uoHP/SdpDYd/6O83LMfn7fIBC
         Wo8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=M9wHU03TXjkPyIUhIP/FKaBP/lK1Zam17qnoBUMbS5Q=;
        b=QWg9Qsisdc2cPPqLLuMvJEO+UBcOgE3DQuOOizBvnVBlCR1kZjdclnMDXG045qakUy
         ss+zhpygsXXn51P38WvixBg8vBnb89Maj9SpBwwxifQk5tH4jp4j56f7VV5uI2cTB1WD
         fC9c35Z3yaOA2M/JkIHxQZdHdTOqeDBSCXIphvE6KFBL8Lgu342JaR8BEdKv3kPtHI4+
         euzD6fVQQPX+0FKwuqP6r6D1zJKvtf5anHZCCRkxx9zfGfbK2L8JnGOly28B79WtmfgA
         WU07ksiQcN+AvyBDZMYLPNJFQevbbFfi+RnhEgCV1KsRfFAnSbU0VA3D2vtpqC4WNVc+
         OmVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G0Lj1zF7;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y18si43696pfj.18.2017.09.15.02.40.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 02:40:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G0Lj1zF7;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id f84so994520pfj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 02:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=M9wHU03TXjkPyIUhIP/FKaBP/lK1Zam17qnoBUMbS5Q=;
        b=G0Lj1zF75Jj7oUCCBk0/gIU6/plRmFsGHQJvzZLVoGUKhC6WOUp0NtyzxjHnhHDw6R
         RjXbFIg4eQ/xqhu6LmT0qp4wLZTpJtvS7Sx70LJG0mktcoEyAJTk9LxrkbpkkWLUB4xT
         P0qPtbY1rsko9xn+bEFfvNiX/HQJLbtCGPb/LxrtsWAoPTco5K7r9iyHEaANzSBk8CMl
         a4NkmHaaZ/N2zcVtljx1CXO9MiWIzElWeurnVKblKHgBNeWtEPLsY+wbi3p4T9ztGnPE
         VCABNeRcSbjYueMZUAYf6wVi0XlYaoJjOllQgbgE3q+igQrAQEtIHkeyR5IdrCt4IDkL
         gtQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=M9wHU03TXjkPyIUhIP/FKaBP/lK1Zam17qnoBUMbS5Q=;
        b=LA6EdPWWAdSQx7twhbk07nf2/MuZEm3rJ11OLNn6VPN8oK6HwYNmNHRU2U1pBs3hr6
         MIbNYIdkfFQpEWX+xlGSa5f8zp5bMSrGbkgYmBkZICzWRpyMMsO71dnFUSTMGTe8vWJI
         NQgOYRvOMJ4j0NsfKBBP7vYqbVYNWeTZ8VS9bJiESc9Blmdp4rBDTm3AbUQMTFFHeeml
         I43qScFfZG1HIeVNmhPQ02GDbHK6KDY8n/YhJCXYfDAoRbT0EIaTDtovb+iaw1J7VgMm
         EmfaFpaoz5Dv4+2CftIU/QND98dLPSnA/tHxbLYot72nUs5bVhyjCRfV68DOGzrMimxW
         5TYQ==
X-Gm-Message-State: AHPjjUj9uCdbolV7ynYXabeziPmHMJYeWvXPFHI3K8NnqTH7sixxE8gi
	F28F59P8sUWKljXs77E=
X-Google-Smtp-Source: ADKCNb4UWGjSIWyCJAHY6aUDq3PAb2B3TRSgKiRAAlQvqJPdQMVn5EKo/KFpfUlKosOyWskOod4dwg==
X-Received: by 10.84.252.130 with SMTP id y2mr26153533pll.68.1505468419056;
        Fri, 15 Sep 2017 02:40:19 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id y83sm1545726pff.167.2017.09.15.02.40.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 02:40:18 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 0/4] fix code styling warnings in llite files
Date: Fri, 15 Sep 2017 15:10:08 +0530
Message-Id: <cover.1505468281.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches fix various checkpatch.pl warnings in llite files.

---------------------------------------------------------------------------

Aastha Gupta (4):
  staging: lustre: llite: fix lines over 80 characters in llite files
  staging: lustre: llite: fix identation in dir
  staging: lustre: lllite: fix multi line comments alignment in file
  staging: lustre: llite: fix multi line comments style

 drivers/staging/lustre/lustre/llite/dcache.c       |  9 +++--
 drivers/staging/lustre/lustre/llite/dir.c          | 24 +++++++-----
 drivers/staging/lustre/lustre/llite/file.c         | 16 +++++---
 .../staging/lustre/lustre/llite/llite_internal.h   | 25 ++++++++----
 drivers/staging/lustre/lustre/llite/llite_lib.c    | 45 ++++++++++++++--------
 drivers/staging/lustre/lustre/llite/llite_mmap.c   |  3 +-
 drivers/staging/lustre/lustre/llite/llite_nfs.c    |  3 +-
 drivers/staging/lustre/lustre/llite/namei.c        | 24 ++++++++----
 drivers/staging/lustre/lustre/llite/rw.c           | 15 +++++---
 drivers/staging/lustre/lustre/llite/rw26.c         |  3 +-
 drivers/staging/lustre/lustre/llite/statahead.c    | 18 +++++----
 drivers/staging/lustre/lustre/llite/super25.c      |  3 +-
 drivers/staging/lustre/lustre/llite/xattr_cache.c  |  3 +-
 13 files changed, 124 insertions(+), 67 deletions(-)

-- 
2.7.4


