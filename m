X-GM-THRID: 6950903323792769024
X-Received: by 2002:a63:86c6:: with SMTP id x189mr10240195pgd.264.1618383294208;
        Tue, 13 Apr 2021 23:54:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ecc2:: with SMTP id a2ls711164plh.7.gmail; Tue, 13
 Apr 2021 23:54:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyvr7SG6TvwLHQALo3TFNC+unkNdQJbjSEi4WZo2cKARgxiWXMOHbFzgfCTozKxNScbdkkB
X-Received: by 2002:a17:902:cec3:b029:eb:5441:9897 with SMTP id d3-20020a170902cec3b02900eb54419897mr1000590plg.48.1618383293126;
        Tue, 13 Apr 2021 23:54:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618383293; cv=none;
        d=google.com; s=arc-20160816;
        b=d2LQDS1tMcmRL0B1KXQqOBBwMy28MhGBZmk6K2RDzq3MjV98a4GInbFTbxZ38or43X
         yoOVd7iSr6L/wU+k+fSUBJzNrNwdXE8O/Yx0BUTDgbybztCqepfGoaILhfdreJgbkmkG
         n2flgXBOI9akQV2cQfuRiWom5o8Qxlyhei09Tfw8XeXh6OkLlTrBcJldS36XkcUf3rzi
         H9ayV4J/HBsEH+mjKBTsThXP5aHRIG8ZHTofkIsDgqfxocmYEMwUqvkxE1ofgsFJHoFZ
         SXRbTQT1fi/jqYOuYi1GLK0Q6r9WhDTWoBG4+7j9rDkjBs0pnbSlnVoH1VNYA/JeCKU5
         wN6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=zjGZSJ4KhJd9LlJKKk+vKP/bKS46sOTGkiQwBP1VtGE=;
        b=ygYunB5ks1kXKTWLMGLA1/PMiXMMsNNLj22y5wUfU+H0eaL0EsEL59jpnfdKJSLaNO
         4uQ836pSgu6sxYikfRZUsWY43XiOu4QTunHqYLackyym4Br1E0lTrr9y/TeUf4mAI7wk
         djx8EcEpLcJMIVI5MsRhShm3910ELv89M1rOC0GmxuQzdO96heV1P22UvHlTQuYM9n7A
         3QWUxCEgsHNntv/UJ1t4Z8gcsigghzEP8mtrHVP9ElY+eI9DEY1Yk0PhTwGvu8RfPjqp
         EubsS6BZ4+vQ2xY9usimkhNBWdEQp+nzpQus9EswZdJxuGOvLNrdOLQbX9BPQaNueyHY
         UOSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KKB9FpUH;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id mz7si608875pjb.0.2021.04.13.23.54.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 23:54:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KKB9FpUH;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id i190so13085440pfc.12
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 23:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=zjGZSJ4KhJd9LlJKKk+vKP/bKS46sOTGkiQwBP1VtGE=;
        b=KKB9FpUH30uY+/y98TUqidow/1dG2KfxxDL6U/EbsjDCFPOKEPiLKc8p3AHsvTiJmS
         B18PembLrTJMfnAWetvVk06sKbqiuDkHTGi9m0VURe7TJC54rQnqGsGs5G3QXFzZZAgq
         b0nUDBaADaeVpbz4r3XoUrUzXQsmByXV+NWPq2tHd0Ogzc/kF3SCvSCavR6Jl9tUvBKp
         Wk3a77bhepf4kGsOHJ52FVyvMH9Bfwcz+VPMXCwTWc7EiqzvxHnJhreDpyeE+dryoenl
         KLtArye4LjPhgn6JruVO8xtZ/y3XHlQiZwaoxmq1/WnHjdjNu1beqmKEsXm4tgvcULv5
         8uow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=zjGZSJ4KhJd9LlJKKk+vKP/bKS46sOTGkiQwBP1VtGE=;
        b=ljCfMthvrAoBpf22Vg8x1Oy6v6UPnlSQrqLaofMNzwco+jvAWmC/aRj4mr5ZiTNBzQ
         n4h0R39swmYoNp/NTfhZCiReUy1zymcINv09hcdBtaT3GTUJo2BzLRHqbRNt4Zl+b+nN
         mVwswHhnv4iXmFM2yz0/Cmaf/IsdiaRaRbSQn3lWTPVWy6RdhHd8TPwrdj4lfgki3jwj
         H1ShS/f55AsKQfDdKSqNkt92RBDRLgw948VX5qcGTdlKzA7qRC0xB/zLW0iClLjU8Hxl
         fBYPkG+LylY9rbfeqwSszUpEno5parmq2YJVlHy2aniiqmiMlJIi4dctRxVRhSHMT6o/
         9ptg==
X-Gm-Message-State: AOAM5335TCvlm6eRjd0fpofy8WtZ2n5jVgn2nZAA2r1wFF7Cu5159Erk
	xBG+MIDHzBkf2WIDbIlt1og=
X-Received: by 2002:aa7:8c1a:0:b029:249:e2b1:4b2d with SMTP id c26-20020aa78c1a0000b0290249e2b14b2dmr18151700pfd.6.1618383292734;
        Tue, 13 Apr 2021 23:54:52 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id i22sm16164505pgj.90.2021.04.13.23.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 23:54:52 -0700 (PDT)
Date: Wed, 14 Apr 2021 12:24:44 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org, davem@davemloft.net, kuba@kernel.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Subject: [PATCH v2 0/5] staging: rtl8192e: CLeanup patchset for
 style issues in rtl819x_Y.c files
Message-ID: <cover.1618380932.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Changes from v1:- Dropped 6/6 from and made this as a patchset of 5 as
alignment of code is done in following patches.
[PATCH 1/5]:- No changes.
[PATCH 2/5]:- No changes.
[PATCH 3/5]:- No changes.
[PATCH 4/5]:- Rectified spelling mistake and replaced memcmp with
ether_oui_equal.
[PATCH 5/5]:- No changes.

Mitali Borkar (5):
  staging: rtl8192e: add spaces around binary operators
  staging: rtl8192e: remove unnecessary blank line before brace
  staging: rtl8192e: remove unnecessary blank line after close brace
  staging: rtl8192e: rectified spelling mistake and replace memcmp with
    ether_oui_equal
  staging: rtl8192e: removed multiple blank lines

 drivers/staging/rtl8192e/rtl819x_HTProc.c     | 67 ++++++++---------
 drivers/staging/rtl8192e/rtl819x_TSProc.c     | 10 +++--
 include/linux/etherdevice.h                   |  5 +
 3 files changed, 37 insertions(+), 45 deletions(-)

-- 
2.30.2


