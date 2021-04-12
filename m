X-GM-THRID: 6950220202165403648
X-Received: by 2002:a63:34ca:: with SMTP id b193mr26666430pga.320.1618224243523;
        Mon, 12 Apr 2021 03:44:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1656:: with SMTP id 22ls7036899pgw.1.gmail; Mon, 12 Apr
 2021 03:44:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxdw94Fmht4rdNZhoZZH/PDdi7bwupMIyreBlmZZUAjjrh19wmsF/t1sMwJBj9FyXj+UVcA
X-Received: by 2002:a62:3086:0:b029:248:16e0:7c6 with SMTP id w128-20020a6230860000b029024816e007c6mr13349450pfw.19.1618224242312;
        Mon, 12 Apr 2021 03:44:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618224242; cv=none;
        d=google.com; s=arc-20160816;
        b=LrkdwCeJL4C5624KgD2dyfx4ir/JffbTmHYlEtDsjTfAlXQg6d8EDukyZ1kLfHuzC6
         bdpZlitr+p6nY2+F1tOajAxV+HdtGG/LUmESefJiELVS53T+EXg+skoUOtQuITiYSNo4
         viZcVt4tltePadt2NzvrP9hGUNF2NNqc0E2bwDl1nYQxLwkqZ61e5gFGrR48CSeiQZ6i
         9hHFMi+HrCTnO+RazyoqdwLiSzrn75vLKghsByL5bQeqN0ED0N199HlWP3N4YOpUgYLy
         RSPYyaBVJMN8Ohr4oKcRY671FvEJmzXq2phZT1ap15RiM9iM1+H+i6GdKPCXTMkypb5g
         M/oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=nfSnDyKH8eQyblcVTBktK3kbpdYMJZiJC2JxbskSzHw=;
        b=Nm74r3Id0/uIkKwjQWajqpP2EozlgkFFzGjWP/ldB8G281n6q3f3GJeSHZCPzVh3gh
         nYhnvF8rYnwwDbvANfMqqXlzKiy0cAz2oSn/oM8jACXGnp5jF9QvbsTc7kOTahVqmgfh
         UvYmgTI3zLg1SttB+diaMwStjqCfKRNOmbrL6KZfpC6IEAMuNN00jVP55i4ONHBl8dhe
         tXB4gqWnyF81+XGbkqo/JW9G+Wh6A+pO83pxwWPzoVPtszsepwyJLKEFtUFf0dprx/9h
         0bi4TU9XXf/uVIrhzJcOxZoiEW4GLa1VasnSN5hEoBbu9npmX0uxT8JKjZBiMqW1bEjp
         LkaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LjAUt+sq;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id k70si828110pga.2.2021.04.12.03.44.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 03:44:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LjAUt+sq;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1033.google.com with SMTP id z22-20020a17090a0156b029014d4056663fso6883112pje.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 03:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=nfSnDyKH8eQyblcVTBktK3kbpdYMJZiJC2JxbskSzHw=;
        b=LjAUt+sq2bBQByg90jwnPgHNjJt8VwRb+Czau/fcSUfKl8MXfbn5XkBeny3hL8WoiN
         GKzSiYFfVgDaNSWoReOQ3208Fhp4hTGe8Os6jga1nGNoLRx8AI8IDVwoX208TgY4aaN2
         LnCpqOOwAQwl+Ir7PbP5+AUDXatcs4FAjPseeJFd6KUT4dHY4EZ1yq2yaUI5/LFQV1W9
         u7EBHziZRtDxqK2fkLLu1/Vo/6jvHKBhETpHPDqHQ/+JmLtbFQCWFlVubEi+YJWx8S+T
         bmmZ2mgEASbRqRNRcuCJ7OKvcFPoIvekXET/be31nslbmc2/euO47ht/C3Tk+MJwnd0M
         rk1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=nfSnDyKH8eQyblcVTBktK3kbpdYMJZiJC2JxbskSzHw=;
        b=RRNIZqcpdVNU2fhPS4O8Wyg4pBNoYLrLYUxC874SPWKOxQId8Ydx3Whenkw7EmCOHR
         oQUVMOyC2kqEOE0zdiKFG0TugEINWmLewOzpaP0gMAMkjIuw66dHHZSiib1IuLfhajFT
         3JWmNMA/GjqII8pGvOlX2blVJf+uVxBYMG3bt2BF7Xm1XQ8l6FWI5w/7MQ1w7mAeLmNn
         6JGiWJMpt3rZ2mtpb7caCD7Eov9g+RNYznndfCii942OmArU+ioso1+rHAL27VFztxf0
         ltSVlcrELJbXI1AqWi8jUDwAT2PbYifj90BLp5dx64dd6K6K6FxNsZxTynd6tYEWzTr+
         oTkQ==
X-Gm-Message-State: AOAM531JIB2MGZEDJ1kfmfqfc2lqYpbqHxgL2VFiVu9NQ4wjOBD7doOc
	aOgtg0IuRm8UuJbMIdcCWQA=
X-Received: by 2002:a17:90a:b292:: with SMTP id c18mr23074230pjr.179.1618224241916;
        Mon, 12 Apr 2021 03:44:01 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id 184sm9695577pfx.156.2021.04.12.03.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 03:44:01 -0700 (PDT)
Date: Mon, 12 Apr 2021 16:13:54 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: nsaenzjulienne@susu.de, gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 0/2] staging: vc04_services: cleanup patchset for style
 issues
Message-ID: <cover.1618223171.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Changes from v1:- Threaded mails properly and changed the subject line
to match prefix on patches.
[PATCH 1/2]:- No changes.
[PATCH 2/2]:- No changes.

Mitali Borkar (2):
  staging: vc04_services: remove trailing whitespace
  staging: vc04_services: rectify spelling mistake

 drivers/staging/vc04_services/interface/TODO | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.30.2


