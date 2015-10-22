X-GM-THRID: 6207871882034675712
X-Received: by 10.112.54.197 with SMTP id l5mr3276639lbp.21.1445501150294;
        Thu, 22 Oct 2015 01:05:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.168 with SMTP id bh8ls570189wib.7.gmail; Thu, 22 Oct
 2015 01:05:49 -0700 (PDT)
X-Received: by 10.194.240.230 with SMTP id wd6mr3310591wjc.0.1445501149888;
        Thu, 22 Oct 2015 01:05:49 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id bn7si643747wib.0.2015.10.22.01.05.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:05:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wiut4 with SMTP id t4so17611402wiu.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 01:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=fxQgzJ35yXEoFQJtfe2P+IwPHL7XIio9ifKyMF4lV3I=;
        b=uQuz9l/AmcmzvY/qpf1YXujnx4PD7RBGEPDHo8sQnZu8hC3CwOyeFB+g3f+ZPZt2Zc
         uZW9mcbM2RPtR4nXI9Vp3k4omLZghq9aiMa7DzxDdD5RCznjYM72NqUAAaZlWV7s4dqb
         9L0LbYSyZLzHmlwgba8v4Q6xcTMbyvd0je5h9GQHRu4MU84cFGVv//hPKuOyPezbKFuR
         S7LLPSJuNTf6uRO0v8jxJLO9sQ/UzMJX6kYL+K6xjghWPoEE3c2dz5m0L+nMG+EwvoJL
         Ujo99bodRjBDI71SGHoyVyUzltsjla2oDxYyx3Bg9bo2GfTWe69h2w6t0qlqG8YBZmAc
         X2wA==
MIME-Version: 1.0
X-Received: by 10.180.188.130 with SMTP id ga2mr1733673wic.93.1445501149718;
 Thu, 22 Oct 2015 01:05:49 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Thu, 22 Oct 2015 01:05:49 -0700 (PDT)
In-Reply-To: <cover.1445458023.git.ciorneiioana@gmail.com>
References: <cover.1445458023.git.ciorneiioana@gmail.com>
Date: Thu, 22 Oct 2015 11:05:49 +0300
Message-ID: <CAEnQRZAwZWC=Qk-qk8Shs59OaMTmJQcuotBYogLo8Lc=DppNKQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] staging: dgap: fix multiple
 checkpatch issues
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 11:17 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> This patchset fixes multpiple checkpatch issues.
>
> Changes in v2:
>     - reworked patch 2/5 in order to improve readability
>
> Ioana Ciornei (5):
>   staging: dgap: remove unnecessary blank lines
>   staging: dgap: properly indent to match open paranthesis
>   staging: dgap: remove unnecessary space after cast
>   staging: dgap: remove unnecessary brackets
>   staging: dgap: add spaces around binary operator '|'
>
>  drivers/staging/dgap/dgap.c | 435 ++++++++++++++++++++------------------------
>  1 file changed, 195 insertions(+), 240 deletions(-)

For all patches in this series:

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

