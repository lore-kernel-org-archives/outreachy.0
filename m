X-GM-THRID: 6467951789613252608
X-Received: by 10.223.153.226 with SMTP id y89mr732582wrb.18.1506066758680;
        Fri, 22 Sep 2017 00:52:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.199.73 with SMTP id b9ls1168693wrh.17.gmail; Fri, 22 Sep
 2017 00:52:37 -0700 (PDT)
X-Received: by 10.28.4.84 with SMTP id 81mr76241wme.28.1506066757649;
        Fri, 22 Sep 2017 00:52:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506066757; cv=none;
        d=google.com; s=arc-20160816;
        b=A+zbEQSWX5X5ZipxHXlPhjRWd8Dl9ctkKyWydRQZ/1vkAANqUFF1XuorbLPzzpp4Nt
         qY1575lobOywo0Y7iUOEij0RiZaBApeB5r2gHjyHH3DW/l1mKKRAL2x7dBKviR7Zyakg
         Cla/76H+yEeUndfsMRbekVIXEHsLwb44nIo1Tp7G2ZyGAvlWtpPfVh3dkzywm0AKN8KI
         zTCs2iNmCMDeaUriug91Hz+a1NOeV2M/mjc/bzg7P6mFIHaG1ZKjADSTPRM6m/PNBozZ
         QfrbNKpe/F2T2odalZ+rUx0XtbipVb0LTLnEgW5TOzBwt0gYsxyQfc8fks36fk/THX4W
         8ysQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=eofMs3duO09kWoQtdYkvESKQjT1cyVn7QobwMZFroNA=;
        b=j0fDSsSxwL7ed+6H7f6oI0nrW4BtR9d7QUBa9c5srcZCeZ9YEl63cm13UIJZJd264p
         XTUsGP3QCXSgrZabuxeTFclHQJlSAIX/EMn8k1MUDDK4TU1etL9OzBR7l7oFgpgDTXdj
         2H5vgtTwL5A0IuuNfgtKad2JpM30orgrAnSwNizyt79hxxcPJJ4KDeTCHTQh1UQKdHam
         +W4kIwgqYt12ZLrh73RiCU5z+SlEFiOKZjBN7cKoiRE1wydTw+xzAFSUxkZf+0LgJb+W
         xRvW3cwiN82R36XT+3Z1mhFdLGiLGpGm6GDGhORaO+At2cbadia3V4l98YinFWwO37g5
         EyIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U4BR3IlQ;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id t142si61178wmt.2.2017.09.22.00.52.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 00:52:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U4BR3IlQ;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id f4so502573wmh.4
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 00:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eofMs3duO09kWoQtdYkvESKQjT1cyVn7QobwMZFroNA=;
        b=U4BR3IlQaLeMBgJAjpm/Gn7lDD4wr9a/r7LnewlSSXUcR9jKCe6F/CkHb1tvDiGgFE
         QgufRuM/e7XMm1be/qKBStE58zuCkTzPyWXEhFgQ5+U4Z5qzU5CTROB3bqKt8kgAEqlC
         Pgb2ibogi3CjG5qcU39Tdiaz2p4V2nQ/cdea/U7wH5cb9Ll/rSYQFH8XCHFU/Xxx0A4h
         SBEpnEGFteIOFoU6mJzjbzmbcjZaVl6D/8qEfOASfxC9E/UvTwHudRLa5y6VSNWSjiq2
         NkE2FyPXP4kLk+eH1fEQE9IDpBdoVAKycTC2b6PZC26hp0Hf4w61Zvnxk1qmCJpeMtd0
         0Z1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eofMs3duO09kWoQtdYkvESKQjT1cyVn7QobwMZFroNA=;
        b=X+LJA4QcGGrMkr4piAxf9QJVNELVZYLLU0U7qD25XqGayk0q2g2UBDWUI9t/2mBgDK
         w3hJ0N2xYf19vntEkkzIYQLkKViEyQ/LmQZUorWIikJ+g6jCN2o8uFTpcdXZlUdgTdPM
         rY+ORJQdITixGO4bcYQ8M07kksYXZ9nh4/WXBP2K5upfkL0pl8snZ96mNnoDTnuFtVdI
         z3xRFI8ktoT0/LB0DcfpsHGkyN/LatqKZpTUwublhwyOTyRwCnMpbwo9y/5ZPEFTMw0I
         z53cyvilSDyYeEgFCfI5tewIu8aoYBPwlNSpFC+Wnawb+SOBYzv3LYa67vUy2d7wmvzQ
         FhLg==
X-Gm-Message-State: AHPjjUh3Ld+TSWUsLOeO1T6BrbXGwhm1qKkdD0w76YstemEAFxRYPTK3
	0pk3hneQLKAx36QBqnaLVkQ=
X-Google-Smtp-Source: AOwi7QCjPomoeSlV90kmkygJk3rsIQ4Zi7UVQ7xKkefI+j50qXNAub+oe/8GedUq7RYHNy3CjjM75A==
X-Received: by 10.28.141.70 with SMTP id p67mr2876566wmd.80.1506066757341;
        Fri, 22 Sep 2017 00:52:37 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id z51sm3288865wrb.22.2017.09.22.00.52.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Sep 2017 00:52:36 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Samuel Ortiz <samuel@sortiz.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/3] Staging: irda: net: Code clean up
Date: Fri, 22 Sep 2017 00:52:11 -0700
Message-Id: <cover.1506065957.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4

Adjust the code to respect the Linux coding style convention.

Change in v2:
Use my right email address to sign off the patch set.

Georgiana Chelu (3):
  Staging: irda: net: Do not initialise statics to NULL
  Staging: irda: net: Use NOT operator instead of comparison to NULL
  Staging: irda: net: Fix style issues

 drivers/staging/irda/net/irda_device.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

-- 
2.7.4


