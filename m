X-GM-THRID: 6949336424403435520
X-Received: by 2002:a05:6214:12d3:: with SMTP id s19mr14318445qvv.26.1618226476156;
        Mon, 12 Apr 2021 04:21:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:f20e:: with SMTP id m14ls9068287qkg.8.gmail; Mon, 12 Apr
 2021 04:21:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzWgCzygTR69ytG/wHKBj5wcKTDExuSTOwy0XIrYb8OwDT96vMkrOdYTHrVZ+VOsKT0uxp+
X-Received: by 2002:a37:8ec4:: with SMTP id q187mr26263146qkd.381.1618226475335;
        Mon, 12 Apr 2021 04:21:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618226475; cv=none;
        d=google.com; s=arc-20160816;
        b=xT/EU82cyVFBqscnqtRni2yeYhE3plp7ORCKfolVLYNDWV8ER2nw5BdUG+jpBSbQvl
         zcUAOvRUeU0gniKoHCVkOlpUivyxCvxxQiW4Zl0XZFG2ss5qYvV25YsJF8xJi8tWD7MU
         sUMiJSiGcqjGlnJBqZM9YlB8/ELfqnQhI8Pa5pfpNWXfQgroky0qXuqIPlTAwMIZPnPR
         +rU2NpNwkB5zGCxvG1OCBEaCwaPy38JMmen2yTm4hIbeHkdb0CnEIj6k5peRk7vrrjjJ
         wHiTePVGuqYSVgtmC9v0xQZ9d9X1tMMnN4TLVFShlCpEmsbD2RjtFdOoKeKKXu4lJNG7
         +diQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=WxFymkv1ReyBJIeSaYrMs9DALjw4Mde+TrIX6jgLR/A=;
        b=d0hKSHz3z9lCmyJAHTDQzTgVIli+jObh6/Zi4sXC69tY88b9D2x5lvaFMswG6vMupH
         SgZWLWQDgqKnK7Bz7IuQ81/nzq2Q7TIdvlHCGS5k6FA3xWL1+8ZGJh6Nm7DxVfiNh1mx
         /3Vn0KfelGLpZeMMsMog1EPuxSprcTgiU1jhN/q1huvGFnadKyKecKvd7WutSDe6gWFP
         tu+oNPh4EHjSm4ahUUZ9hoBIGYW9v2ZAQu/Ot8M++0hvXSGMBqrb4kifdDe+plTnoouF
         LnocZzeZmNY88LRBM9n1RlK0apBMrnEtW9B67ezzubD0l68LdgGDM/V3rNpcBsY9+IEM
         CFqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mU02UGTj;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id r24si1107608qtp.1.2021.04.12.04.21.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 04:21:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mU02UGTj;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102d.google.com with SMTP id s14so1626279pjl.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 04:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=WxFymkv1ReyBJIeSaYrMs9DALjw4Mde+TrIX6jgLR/A=;
        b=mU02UGTjy8WnCsjIBrTuIdTn6VlqvZ+TcMx+l0IwFrOl68I2/iT2qnUK59+L+c18SG
         LOk3jHz2BHBojlwRkGyI+xuG8DytqRFsGORbGwB4Goq9WkKGj9N0CLoixBP57ynJ016j
         zR0+bqhD21knLMjMDtKYigqFhm8j1YS9RyxHjM6RtMc/kWsvJVL00x2uytee5b8HVPnm
         ABNXOajLAsefIgB+eLgyv0WkxyGBlApPQ2GXuJ/rW3aN2sjhjOdrUJyvzjbJfErJ+5rk
         lZSCXJFS0B4Kmav7Rejy0gysYbEmu7iLqbbPThVLIPO87Uh2HDznmjq/AgRxfHBlFw7F
         GVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=WxFymkv1ReyBJIeSaYrMs9DALjw4Mde+TrIX6jgLR/A=;
        b=gQGmaE0GSHkP4MypV6sV/WRgj0fidg93SF6WKaWdMUJWBuUDw455fdg/lYnOG6oEv+
         1AH5wB3T92SGG3hw6d3H8mr1AgJZW7uX/5vEJKP8UqL2hy3d2XGQwyzDzkeuKRb93mDP
         xU9xGAupCSbQNUNVkgTSdDjgZeqsZ8jlAI/uCPtnUAhSyYaSg8EoMLDM9xyG2t+j96N/
         hVMob58wu2xxDAYVmnmkNWsBdl1i1b6cS6cpu5f3Vc+BUYvlO0mMeAWN93hyR6iQJf1U
         Q0w80JqT3zjnjWP7WY3UkItLB3aNw2upbxtr1cTqLkD/8lgKYdu67w2mb0U3/HGlWY92
         GisA==
X-Gm-Message-State: AOAM531XHTJh5AUIJWu50RJTMlAykS29mgobQHT7CGJYD8OwT/KP3K6O
	eqdVn744TBwGJSPDmurDCpo=
X-Received: by 2002:a17:902:b70e:b029:e6:cef9:6486 with SMTP id d14-20020a170902b70eb02900e6cef96486mr26555304pls.18.1618226474418;
        Mon, 12 Apr 2021 04:21:14 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id d20sm9635615pfn.166.2021.04.12.04.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 04:21:13 -0700 (PDT)
Date: Mon, 12 Apr 2021 16:51:06 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v4 0/3] staging: rtl8192e: cleanup patchset for style issues
Message-ID: <cover.1618224838.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Changes from v3:- Changed subject line to match prefix on the patches.
[PATCH v3 1/3]:- No changes.
[PATCH v3 2/3]:- No changes.
[PATCH V3 3/3]:- No changes.

Changes from v2:-
[PATCH v2 1/3]:- Modified subject description. Changes has been made in
v3.
[PATCH v2 2/3]:- No changes.
[PATCH v2 3/3]:- Rectified spelling mistake in subject description.
Changes has been made in v3.

Changes from v1:-
[PATCH 1/3]:- Removed unnecessary parentheses around boolean expression.
Changes has been made in v2.
[PATCH 2/3]:- No changes.
[PATCH 3/3]:- No changes.

Mitali Borkar (6):
  staging: rtl8192e: remove parentheses around boolean expression
  staging: rtl8192e: remove unnecessary ftrace-like logging
  staging: rtl8192e: remove unnecessary parentheses

 drivers/staging/rtl8192e/rtl819x_HTProc.c     |  18 ++-
 1 file changed, 7 insertions(+), 11 deletions(-)

-- 
2.30.2


