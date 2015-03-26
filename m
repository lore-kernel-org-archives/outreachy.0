X-GM-THRID: 10002918014976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3882c5572bb5485a
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.221.165 with SMTP id qf5mr17100595pac.30.1427389810924;
        Thu, 26 Mar 2015 10:10:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.129 with SMTP id u1ls838673qge.13.gmail; Thu, 26 Mar
 2015 10:10:10 -0700 (PDT)
X-Received: by 10.236.16.130 with SMTP id h2mr17185491yhh.36.1427389810674;
        Thu, 26 Mar 2015 10:10:10 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id kt5si754400qcb.3.2015.03.26.10.10.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 10:10:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id 3so91357928qgh.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 10:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ftTewr5zJrsDOL0DgM/8A5+Xq9lYzf2jlAXQrwToDFg=;
        b=DGVO3q/vX9nqxfzC+N4odHs7zqqd+AGBp2dHcipiXkrqIF+13KeQEsbcLRLStHNsmv
         iF2X91Mkdi9UMi2tnNx5oSQGe2juvwkZsGqbfL+b5QbjwtdgqWBwlh6DGdtEfOdELmQE
         eYjjkpwRw3ZxkIy/CEG7RO4HMRu2hMbPXxcMaajEiaCvMilsbtnXLusKED6VfLcpk9OP
         hcjCQZ6OdwvaZepu/aeSJvBu8p+vPvbqtVnxmj5Fq9pe7vt/faH8vW+pNpX8/IbQP0PC
         oQe+jxVwA1kBlisbYe4WAzvCRHFZlMS5TaFNVA9YM/EdYQWU+IvRiAK9Wmhp+4gADttm
         0ODw==
X-Received: by 10.55.26.167 with SMTP id l39mr31020013qkh.63.1427389780434;
        Thu, 26 Mar 2015 10:09:40 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.wifi.univ-paris5.fr ([177.194.75.171])
        by mx.google.com with ESMTPSA id o19sm3797905qkh.25.2015.03.26.10.09.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2015 10:09:39 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH 0/8] staging: sm750fb: Coding style cleanups
Date: Thu, 26 Mar 2015 14:09:12 -0300
Message-Id: <cover.1427389602.git.helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

Coding style cleanups for sm750fb staging driver
All of the issues it fixes were caught by checkpatch.pl script

Helen Fornazier (8):
  staging: sm750fb: Add space after struct definition
  staging: sm750fb: Fix if/else/for/switch braces style
  staging: sm750fb: Fix for statement style
  staging: sm750fb: Add space before if statement
  staging: sm750fb: Add space before switch statement
  staging: sm750fb: Add spaces after ','
  staging: sm750fb: Move switch case trailing statment
  staging: sm750fb: Change "foo * bar" style to "foo *bar"

 drivers/staging/sm750fb/ddk750_chip.c | 156 +++++++++++++++-------------------
 1 file changed, 69 insertions(+), 87 deletions(-)

-- 
1.9.1


