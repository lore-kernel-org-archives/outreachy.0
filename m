X-GM-THRID: 6608518464000753664
X-Received: by 2002:a67:3e8d:: with SMTP id a13-v6mr8679709vsi.23.1538721224593;
        Thu, 04 Oct 2018 23:33:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:b301:: with SMTP id a1-v6ls1166580vsm.9.gmail; Thu, 04
 Oct 2018 23:33:44 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60kHaQrJToyn8niNi2FUrmWVNpPvPMKTlrG4hTfE2qdtMPyOrTB3sis0mVwE/yqyhFuL4Uv
X-Received: by 2002:a67:354d:: with SMTP id c74mr8412682vsa.39.1538721224011;
        Thu, 04 Oct 2018 23:33:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538721223; cv=none;
        d=google.com; s=arc-20160816;
        b=SponK56Zing7DMqQN9RT0Sd+tHhAZvQkWtpU/GnaXqFmGgjffZZgr86BevL4BE31EU
         AZWHMpTOyZ5Q0wtCGrckAx1EjD+wBTyja8Ckb7RCdT66gv+nHOGTtrrWF9pUX8WSyIqq
         BnBcv3H4NgnE+qYV+9RaGjl6/viDgA3IoFrUIpCKqOLgjnQ6/sL2n3WRyry2AozOVqGP
         seofTa3OnhiYTi4qR2dYeX2QPKC2aj0o48Pup2ww96mFZWisMdmioVjNTh2A9IYv4Fbh
         hrILIWS5dgoIAwAwJ7y95ckLhgSIeFleHudyczpJD9OhTfCJEmbhpEnzKiNtuuIYxpl4
         Kcng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=38M4DXtvj3Imf/Y/qGaDjt0GR0UmLfDA+e09uNa8KI0=;
        b=YTjVD0dkb2W4ODbDOw/O+dHwqHGq468RTpVsxgza96YzpmE+wFkydQTz6/j6vmL1A9
         WD1W9eN20Us6RoGL4YohGGXTnB0ycVnnSUdGc//y646aCvdzoIBtCj9KCIuBgRN+ONnH
         OA3qPA0urh+H6XIxqiZ0s+HYP+3QptgvDyrB00ttQe7XShFJF7SulDNgpwWBFDwtyXxo
         e8aW+VBqBqGhZXCaxrfaqeE0YqRdrI9wOVx/Mx/od6Ok3VVqUO1GJTOfHl3MFFmtZJB0
         9DIqVb1VYfl9Zkks0GdVeKs68oWFNrgszrAx91a8ZE2KRtWX7A5gkNXJm3TFSGydoOn8
         tLGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WG2FpxqL;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com. [2607:f8b0:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id o18-v6si229231vkf.1.2018.10.04.23.33.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 23:33:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) client-ip=2607:f8b0:4864:20::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WG2FpxqL;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22a.google.com with SMTP id s69-v6so9520414oie.10
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 23:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=38M4DXtvj3Imf/Y/qGaDjt0GR0UmLfDA+e09uNa8KI0=;
        b=WG2FpxqLr79yxZiZt251SMmeHKBe98c7tRZ2erb7KHGrQB1bNeiNHixMg82hlnbn6K
         0L4ybd1Q15HAuesoa2H5FNBIDPTASUwu1fEENlH/fsxpWsX1xRJ3t3jLdG3ZgwREpGIx
         inKuNSAAh6POjm5w5KFy7ET1Nd1u2bGmFCAqA5+g5Ll5wf/+R8AFscRI5aCH9ddsaAZf
         ddkm23iQzcrkfywtLhlfNMWmiz6F+J99o5KQ101lCCrLlhTMibvcojIDDz+u9A3TIuHt
         MfGGBusKxl8RaiwmshQ4/OFZVGTl/x7c99gS/UabmABoabqFz8gkwuV7EX3B4A4mqeir
         gGIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=38M4DXtvj3Imf/Y/qGaDjt0GR0UmLfDA+e09uNa8KI0=;
        b=sRUcNpZHNnLG2J3BghQb70bFcNDMGj4gfO08LRxL0XHxgaHvkox7xdK7FUVh3yyP++
         7P9qR6aMIGxarKJqy0HNn3YPlNfIiGaF94DzfiQGEczX7He5R6HcQMpYBn2j5FuAS5iM
         tPQxNfTxdI9bmNmnpUwk0qR0DuDXrUxyLK814fXSE194Dosgp3i/qqFgeobMDi9fiEl7
         ahM/yFSatFhfHyRwPHv5X9CoKORVXFzV2gx2eBxGU4IN6u5OYyoTTdzWHxQG6o9INGaL
         dya5L7+Jex8ZRDqFDSKO3NkuoaGcoqOcJeZVU+/0+Xj5rvvnqTwxZc8XwUXUsY9exPEc
         YONw==
X-Gm-Message-State: ABuFfohdjnZZYvTv9tJPbuKFNcV36PJJ4oshgaREQMJMHIc/rEYJgVxS
	+EpGmy2VSlUmz2EF6+/6y3vHt5z5Y8EV1Y15Lf4=
X-Received: by 2002:aca:5c3:: with SMTP id 186-v6mr4545417oif.185.1538721223550;
 Thu, 04 Oct 2018 23:33:43 -0700 (PDT)
MIME-Version: 1.0
References: <5bb62c85.1c69fb81.9de38.b242@mx.google.com> <alpine.DEB.2.21.1810042054400.2377@hadrien>
In-Reply-To: <alpine.DEB.2.21.1810042054400.2377@hadrien>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Fri, 5 Oct 2018 12:02:27 +0530
Message-ID: <CAB0Mk-N-bYrww+_LxhrD4bq+nEzXLjfHzLPggc_K7B+WycZwHw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [Outreachy kerne][PATCH dri-devel]drm/ati_pcigart.c
 SPDX License Identifier is added in form of a comment.
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Oct 2018 at 00:28, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Thu, 4 Oct 2018, Bhanusree wrote:
>
> > SPDX License added Identifier in the first line
>
> Try to use the imperative in the subject line and the log message.  Your
> subject line is actually confusing, since "is added" means that this is
> something that waas done in the past, so it is not clear what you are
> planning to do here.  You can use git log to look at subject lines and
> commit logs that others have written.
>
> You should also lok at what others have done in the subject line for
> indicating the location of the changes.  This is something where every
> subsystem has its conventions, so you can't just guess something by
> yourself.  Buf if you do git log --oneline and the name of the files, you
> will see that none of the existing patches on this file have constructed
> the subject line in the way you have done.


Thank you. I will follow your suggestions and make sure that I will
not repeat them.

