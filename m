X-GM-THRID: 6205566056947253248
X-Received: by 10.129.83.10 with SMTP id h10mr3831900ywb.6.1444845939115;
        Wed, 14 Oct 2015 11:05:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.106.165 with SMTP id gv5ls174110obb.4.gmail; Wed, 14 Oct
 2015 11:05:38 -0700 (PDT)
X-Received: by 10.182.44.130 with SMTP id e2mr3774201obm.32.1444845938687;
        Wed, 14 Oct 2015 11:05:38 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si957574pac.2.2015.10.14.11.05.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:05:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id p3so12798121pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=kMDPvitQGsYgB19hg97zx/RaDcCjJflQKrMm3JhyKBs=;
        b=GABzZ4zeBNUhG0yLDfuG2LPAJMPsl7p0QHr6u1oiD1ZOsKT10BWsRKlu14ZBNoXQW7
         CSqaXmRiixWxSmcCp2iGE6QJienyKfXAHz5KaqK+aqi2um6S2KlMFFhW54tI5d5zaldd
         xf4E5ijW0HCCWwoI7bwBZG0Z3Sq218t6vjq/21mFYJPspdI7ofkXrkVas6+zaSJshX1S
         esiZKth3VnRlNMOhzDH2ozey/VrbHKRSAy8L63u0lrpNHaQ5wo6ybNOKZ/GNNfE5wLW6
         F2fpVlmtKXFJkxcEJcGAB1E7JDymlEPVJKxAz99zlLcSqTU/CCKItmyoBbIftbehH9It
         Ct8w==
X-Received: by 10.67.3.167 with SMTP id bx7mr4979312pad.47.1444845938503;
        Wed, 14 Oct 2015 11:05:38 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id so4sm10855597pbc.72.2015.10.14.11.05.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:05:37 -0700 (PDT)
Date: Wed, 14 Oct 2015 23:35:33 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: lustre: Remove useless cast on void pointer
Message-ID: <cover.1444845733.git.amitoj1606@gmail.com>
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


Amitoj Kaur Chawla (6):
  staging: lustre: ptlrpc: Remove useless cast on void pointer
  staging: lustre: ptlrpc: Remove useless cast on void pointer
  staging: lustre: ptlrpc: Remove useless cast on void pointer
  staging: lustre: ptlrpc: Remove useless cast on void pointer
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


