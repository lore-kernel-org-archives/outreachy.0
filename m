X-GM-THRID: 6205040264708358144
X-Received: by 10.107.6.221 with SMTP id f90mr28764172ioi.13.1444742253299;
        Tue, 13 Oct 2015 06:17:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.133 with SMTP id w5ls3440200qge.68.gmail; Tue, 13 Oct
 2015 06:17:32 -0700 (PDT)
X-Received: by 10.13.242.134 with SMTP id b128mr31004957ywf.7.1444742252865;
        Tue, 13 Oct 2015 06:17:32 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id zg1si290228pbb.2.2015.10.13.06.17.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 06:17:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hy16so21462076pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 06:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AiRpaLq9Pksaf4X/vbQq3pRri3ETpXHnGzVfcWrHqXw=;
        b=vYXIp7pneBfMUlhOYlEATiR4kn28SSBTyYUMofZtXTLNBn1TcB7JOr34zMNxy3wE8G
         U+gygW6SjMRO44fv/zegEAM3tgUilFA5laTpxOR2v7WsUcy8rebJAg5b+0sSFdtLAhhS
         h7uSgsl6BvsXz2zfh8YAFeTX1oi4dbgZ3V5ntDhB9NeQPht5afo24AZkPO6sg4GK/05Y
         3mqRc4LdjLQKqPt/hKRyFU3PHv67hvbIG7JXwBRi21HqgtxK7O0BHtJUEv33hc+3ZyC+
         r4w+aLqZLWTXSUvDQben0oxoykzy//M58rb6bYR8Bb4ZtHLN+kDC78I3I4S9ckBC59Uc
         I4ZQ==
X-Received: by 10.66.216.39 with SMTP id on7mr40454678pac.73.1444742252644;
        Tue, 13 Oct 2015 06:17:32 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.102.12])
        by smtp.gmail.com with ESMTPSA id rm9sm3989559pab.14.2015.10.13.06.17.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 13 Oct 2015 06:17:32 -0700 (PDT)
Date: Tue, 13 Oct 2015 18:47:28 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Remove useless cast on void pointer
Message-ID: <cover.1444742060.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes multiple useless cast on void pointer.

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


Amitoj Kaur Chawla (2):
  staging: lustre: llite: Remove useless cast on void pointer
  staging: lustre: llite: Remove useless cast on void pointer

 drivers/staging/lustre/lustre/llite/llite_nfs.c | 3 +--
 drivers/staging/lustre/lustre/llite/xattr.c     | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

-- 
1.9.1


