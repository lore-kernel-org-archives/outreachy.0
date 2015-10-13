X-GM-THRID: 6205040264708358144
X-Received: by 10.182.221.196 with SMTP id qg4mr27013641obc.23.1444725227035;
        Tue, 13 Oct 2015 01:33:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.53 with SMTP id 50ls2800473qgc.26.gmail; Tue, 13 Oct
 2015 01:33:46 -0700 (PDT)
X-Received: by 10.13.212.203 with SMTP id w194mr28224111ywd.44.1444725226547;
        Tue, 13 Oct 2015 01:33:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id uv4si238647pac.0.2015.10.13.01.33.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 01:33:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy16 with SMTP id hy16so14857213pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 01:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fB2s/oJFbK0kXzPwjZiHc98xEx/z3Gz3TheAx1P5f2I=;
        b=viCi45HtGyufv74YxEwZr+Xn40wjy6KmVvt1w5wHQPqmC5pUF4AZyUzWM2PkuAratX
         rfgqv2Xyvzboki3osZJrbWs4/mUg5vMwx9WSO8smRRBItKeQJEAnZvyZ8qba78RF+oAf
         vqgNFsUsTVXaiXg9/HE8LxfThmLacVfpGcEce7Z0JDnFvdc+N7C0uGaHR/oNFj4FKSVM
         hu3G4XIP3Ctoiw6avtAPkkM36gJ8h0GEU8Nt9/rdoB3MTLCI/soNZ7ugQr05OcTKAGKf
         L+ttVBoZorJEn9iE1fWI12TymM7Es7XqYZEaLI6Lxkd/l8aHdAiOgUs919oolKz05Hoa
         7Vkg==
X-Received: by 10.68.68.143 with SMTP id w15mr39515108pbt.56.1444725226368;
        Tue, 13 Oct 2015 01:33:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.82.229])
        by smtp.gmail.com with ESMTPSA id rk2sm2365080pbc.75.2015.10.13.01.33.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 13 Oct 2015 01:33:46 -0700 (PDT)
Date: Tue, 13 Oct 2015 14:03:43 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] Remove useless cast on void pointer
Message-ID: <cover.1444725049.git.amitoj1606@gmail.com>
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

Amitoj Kaur Chawla (3):
  staging: rtl8712: Remove useless cast on void pointer
  staging: rtl8712: Remove useless cast on void pointer
  staging: rtl8712: Remove useless cast on void pointer

Changes in v2:
        -Remove unnecessary parentheses
 drivers/staging/rtl8712/rtl8712_cmd.c      |   2 +-
 drivers/staging/rtl8712/rtl8712_recv.c     |   9 ++-
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 105 ++++++++++-------------------
 3 files changed, 40 insertions(+), 76 deletions(-)

-- 
1.9.1


