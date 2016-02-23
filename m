X-GM-THRID: 6254605326031519744
X-Received: by 10.66.146.193 with SMTP id te1mr33325487pab.17.1456263783939;
        Tue, 23 Feb 2016 13:43:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.34 with SMTP id 34ls1357890iod.2.gmail; Tue, 23 Feb 2016
 13:43:03 -0800 (PST)
X-Received: by 10.50.43.227 with SMTP id z3mr18270280igl.1.1456263783650;
        Tue, 23 Feb 2016 13:43:03 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id yd9si4097465pab.1.2016.02.23.13.43.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 13:43:03 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ho8so120037432pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 13:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=lBvCwoOf+8WTu3YdXx2AHmTAzxIZksCHlBnbbbN8ZXk=;
        b=Rd3Fatk83jyrN5mVUkeeuuXa+WcXwVT9IGKl0WiIs/2Gmkfa1KX9P2UcuIolszpYg0
         CNkHZG7W4l1R6zIsb//Dg6X9ki7/kvAm7ZJHlORhbZf9KHno2pEY9Tw4sbscYWDkiP2z
         3HsmK4lWoC7hExwQBDxeJyKFiUrELl66Lm3SGnhmZ/b1PrhDSdJ76ybKQOep5o9FD9i0
         PxmupTUreX3Lqqav03oe3yjzWYleBYfvHVMCBzzM777Bp20ot/vJjAHcRM+ZMOled16P
         fQC3Luln4L4slkyA0FJCBaObVuNqHSq0SfCrBtXlmkEagWwIHjYiVFayK3igLau0ahu7
         zYSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=lBvCwoOf+8WTu3YdXx2AHmTAzxIZksCHlBnbbbN8ZXk=;
        b=j7HrhbHMQtU9Go6KUMF7ek/XZupW/rv6NB7RkWjjGYuUm7xZHNjrM/l9vuHnQkkW8q
         eXmdOlJOL+5vPQj0H2sOsVWj/l+xuvDJ3lc7MvCiGERS9Wvp6gVVSVZcFVjWdfF44IzQ
         bSrPa/TZT6GNGRGnXB0aNTHMQ8sMqoqw+0Cn/PBWy6VAScQcTcEDlnOEh7HlpSG5SO9P
         UMtceHamZ+WjPPKOmSROJB022H2lYB2CV06pmx8JNxvmwHMS4tdg2aAxa80ShlhPzBxP
         wxUs4nr60Xp2CCtAW8IX4xWza8DKPVfekzGgNJI47ZsIu5HXfZzykAu4JHRpkyShrrcs
         mv2g==
X-Gm-Message-State: AG10YOQfyAYkHBOuV3FI4kPL36Q6DmIRBiLUe+1BMeUuKvUO9fbH822MUjkFAMkckTUb3A==
X-Received: by 10.66.228.97 with SMTP id sh1mr42465348pac.77.1456263783478;
        Tue, 23 Feb 2016 13:43:03 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id s197sm46223269pfs.62.2016.02.23.13.43.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 13:43:03 -0800 (PST)
Date: Wed, 24 Feb 2016 03:12:54 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/3] staging: lustre: libcfs: Use swap() and do some
 cleanups
Message-ID: <cover.1456263289.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use swap() function instead of using a temporary variable for swapping
two variables.

The Coccinelle semantic patch used to make this change is as follows:
//<smpl>
@@
type T;
T a,b,c;
@@
- a = b;
- b = c;
- c = a;
+ swap(b, c);
//<smpl>

Additionally, cleanup if-else statement block.

Amitoj Kaur Chawla (3):
  staging: lustre: libcfs: Use swap() in cfs_hash_bd_order()
  staging: lustre: libcfs: Remove unnecessary braces
  staging: lustre: libcfs: Remove comparison with zero

Changes in v3:
        -In Patch 1/3 corrected spelling in a comment.
Changes in v2:
        -Divided one patch into a series.

 drivers/staging/lustre/lustre/libcfs/hash.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

-- 
1.9.1


