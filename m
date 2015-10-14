X-GM-THRID: 6205566056947253248
X-Received: by 10.107.14.196 with SMTP id 187mr4434228ioo.24.1444847969314;
        Wed, 14 Oct 2015 11:39:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.232 with SMTP id o95ls350086qge.32.gmail; Wed, 14 Oct
 2015 11:39:28 -0700 (PDT)
X-Received: by 10.31.44.18 with SMTP id s18mr3901207vks.6.1444847968872;
        Wed, 14 Oct 2015 11:39:28 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id el2si1055130pbb.0.2015.10.14.11.39.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:39:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabur7 with SMTP id ur7so12483343pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=aTvHNjjFbsG9rmzBidIVg69JjHqCRNarz25TMuPQwKI=;
        b=WsSBeAvt3Bmqv2aJOF8e5Ye4GyW92SglBMGRuv3A+nr3ic9S2rRReuANEtQeNsjSSS
         jvdylUVcKqRQfSJ+GxIUad4l2Gf4g+d7cupWeLcR+QZioLLyplGzpgtGSp+Xw+/CJC/f
         HzW7p63n15lQbAMmQ/od1yyT6aq877NjMzUcz/AUxEISef2etf4RtJiQOG3QfM3Owzbg
         g1kHnCZr/omW9jttu3DG5J+s6rQpnLT6r4BJ1oXabeQJlKYlk2SfZ/2/X8VAZ8hWVA6Y
         LEcYA+Hq/cTl0mvTvGJgB0gwfbfTq9X2KmB+b/ImKx53fsoZdseViSwhNeK6X9gE1v2d
         wpEA==
X-Received: by 10.66.119.135 with SMTP id ku7mr5045844pab.21.1444847968683;
        Wed, 14 Oct 2015 11:39:28 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id dd4sm10958455pbb.52.2015.10.14.11.39.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:39:28 -0700 (PDT)
Date: Thu, 15 Oct 2015 00:09:24 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/6] staging: lustre: Remove useless cast on void pointer
Message-ID: <cover.1444847780.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes multiple useless casts on void pointers.

The semantic patch used to find this is:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Changes in v2:
        -Fixed subject in commit message

Amitoj Kaur Chawla (6):
  staging: lustre: ptlrpc: sec_bulk: Remove useless cast on void pointer
  staging: lustre: ptlrpc: service: Remove useless cast on void pointer
  staging: lustre: ptlrpc: pinger: Remove useless cast on void pointer
  staging: lustre: ptlrpc: sec_gc: Remove useless cast on void pointer
  staging: lustre: mgc: Remove useless cast on void pointer
  staging: lustre: osc: Remove useless cast on void pointer

 drivers/staging/lustre/lustre/mgc/mgc_request.c | 6 +++---
 drivers/staging/lustre/lustre/osc/osc_request.c | 7 +++----
 drivers/staging/lustre/lustre/ptlrpc/pinger.c   | 2 +-
 drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c | 3 +--
 drivers/staging/lustre/lustre/ptlrpc/sec_gc.c   | 2 +-
 drivers/staging/lustre/lustre/ptlrpc/service.c  | 6 +++---
 6 files changed, 12 insertions(+), 14 deletions(-)

-- 
1.9.1


