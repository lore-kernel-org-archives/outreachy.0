X-GM-THRID: 6612482196656619520
X-Received: by 2002:a24:be49:: with SMTP id i70-v6mr12879206itf.32.1539594637986;
        Mon, 15 Oct 2018 02:10:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:1246:: with SMTP id i67-v6ls6631659jad.0.gmail; Mon, 15
 Oct 2018 02:10:36 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60424DNPGDp3PKzeplrcevQyRFHaebvTO2+TK+0UESBAcZN+X07Cn1ZLIcKZq/nix5AtNOd
X-Received: by 2002:a02:ab96:: with SMTP id t22-v6mr14284968jan.6.1539594636861;
        Mon, 15 Oct 2018 02:10:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539594636; cv=none;
        d=google.com; s=arc-20160816;
        b=brb4sKC8eBy5PPLtCdHxD9Khrol3u9rU4gyFrgQeMUqzpx8/+d1SHvrVSpGsnaA/DL
         TCvTOHIR440wtcPSel892vqtZk5CHeaqdRhI7uGE4Wbr4f+n/EilBjoCwH3Mwik0lExe
         m6UbjxzT4cL82xuofNnZhqzsRNSVvMhFHl5lt36SA6d339s568UxCyfcnRTcmrZhN5jT
         3Ug+2GB/uXZsj8nq48XMDvRtEcO1F8krfxFRpYsFAsmyrLZrs0gYLKCUU0qPZVlJ5hEt
         qxpVcrzqTQbjix0L6vRbvbRSO/gOTBQidS81ZqMzbqtqzFUH1C52PGu4Ow+9/UhwpDIA
         Dmvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2nmvqxb5K1T0QyhW+IbRz/1RapRIJw9IdZYlfdzCsVE=;
        b=ThM0QyDjr05q9fu8viFGQRILHVk4x1Gxvo0V2Xm2CXemVDwpo+y2rlPKImWqfmafL1
         hamZ9pHX7vaTLfTqxsymPsvinBxfXjM3+K0EDwGKb2iX4+UhOBxDz6QYKJZLUVvxdxNC
         P3qGmreCCHVL5l70OtRqNPmmB8k58dAGQaE04WqJ3Jl5pcCQ3AzYvO/6qAJTpEDSqV5n
         /v6pDzkPoSZDVquNxd8IB3EzhSgCf8Pn/iVd/dbKIB3mf1rjgRY4QAYLOz9nsGeQSUC8
         GAK9Rj3/HxW9vaqIBjsJ1+Y0/vwez3wPDqhTlQmnQHseW8lYeP7QY0xJ0nltGFNIJcu6
         2mDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f7euSgHt;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com. [2607:f8b0:4864:20::329])
        by gmr-mx.google.com with ESMTPS id b81-v6si526698itb.1.2018.10.15.02.10.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Oct 2018 02:10:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) client-ip=2607:f8b0:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f7euSgHt;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x329.google.com with SMTP id x4so16788216otg.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Oct 2018 02:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2nmvqxb5K1T0QyhW+IbRz/1RapRIJw9IdZYlfdzCsVE=;
        b=f7euSgHtxuAl0RFsTHq/V5HoA9DA2Y7OcU/x+l/Jpl7aG+GnKYLM7laRXbvy+Vtyfc
         4Vsx/JFQ2gJ+G6fDopdwcELE/uMynbc1ZavAeJndQXnG0fekjc9oCr1ZaAdU1rZNXFIM
         20COtBW+WJyl6oFUn+ARU4iNNmFkyYKiKQ05mXBB1He8XH/x3zGo3Zg/fg6jGLS2oi9T
         zatcMu59cwaYQL5Sar2QEb4/50bJFWPtfW5LjdnKTI3mZFOesbZg6qhtiq1pVAE/g0P/
         y36JuwEmT5hSkpq85TFFYDrpB8VZU6FAQGAQNgHvNoJmtafB3U+Ht9VqD3MHGQIoGBwu
         RyaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2nmvqxb5K1T0QyhW+IbRz/1RapRIJw9IdZYlfdzCsVE=;
        b=GcfGsI+IcuZYVfVTPprRjST7yIP939rHPxFfSPkYE3AeYzPRecxeGMMEEqIq5Pm4z5
         ED/UmLOs1IoM9eVQM2x10G/OkMRS1TQejp/iAR5PeXGHR3QvPb+5y0Q/71UbZyGXNhHv
         QAFHuNizY8s1qC4WYTEy6BEdKbbteSYfG0DRuacAcDujOUZDwaPZD2mF3ru/qc9pBohF
         LuJCKSEbwFFOuAaQM/r+0qH5NG1D6kiL97kyDTkzU/2ZysoDIsMo4Q92ZwDkjH5TjcLP
         lHdAyTv5yd+MB1IiVyJBk1xhjttEj4yGJtbh+H3RkNy1y5UqEeuRK0oNVZflyJylTYVR
         0gjg==
X-Gm-Message-State: ABuFfoh1WjdEcFvut4tEelxAVMpT1Nb9z7G86XLLqn8lB95/eJvJ2lBq
	rCyJgLz2BHDLzijLH1IApt4KNGWE4QQKGjT7xs4=
X-Received: by 2002:a9d:ec:: with SMTP id 41mr9973100otk.322.1539594636279;
 Mon, 15 Oct 2018 02:10:36 -0700 (PDT)
MIME-Version: 1.0
References: <20181015090009.GA16087@aakashd-VirtualBox> <alpine.DEB.2.20.1810151102530.3442@hadrien>
In-Reply-To: <alpine.DEB.2.20.1810151102530.3442@hadrien>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Mon, 15 Oct 2018 14:39:15 +0530
Message-ID: <CAB0Mk-NLreRzM7b34iCJ3KGMdM=dNZLiPvmyn+cWfrR6Z2+HYA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v2] staging:
 bcm2835-camera: Remove 'ret' variable
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Eric Anholt <eric@anholt.net>, 
	Stefan Wahren <stefan.wahren@i2se.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Oct 2018 at 14:33, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Mon, 15 Oct 2018, Bhanusree Pola wrote:
>
> Coccinelli -> Coccinelle :)

Should i mention this ?


> Mention that you removed the now useless variable ret by hand.
Should I mention that i have modified the file by myself and
Coccinelle did not generate it ?

