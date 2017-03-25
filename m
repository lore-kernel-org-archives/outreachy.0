X-GM-THRID: 6401457215612387328
X-Received: by 10.157.54.169 with SMTP id h38mr5038310otc.12.1490475575299;
        Sat, 25 Mar 2017 13:59:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls5032985otg.40.gmail; Sat, 25 Mar
 2017 13:59:33 -0700 (PDT)
X-Received: by 10.129.175.85 with SMTP id x21mr5415259ywj.31.1490475573764;
        Sat, 25 Mar 2017 13:59:33 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-it0-x235.google.com (mail-it0-x235.google.com. [2607:f8b0:4001:c0b::235])
        by gmr-mx.google.com with ESMTPS id p186si707930itc.2.2017.03.25.13.59.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 13:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4001:c0b::235 as permitted sender) client-ip=2607:f8b0:4001:c0b::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4001:c0b::235 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x235.google.com with SMTP id 190so20043389itm.0
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 13:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=KG9rrwRnDA4YYcZiYgwKLKbU0o6TPhTBpKZ/pBNCIHA=;
        b=Zo1soh+8ow6nh4CoaNfwwwBo95T01ajGmZghDB7Oz2io/rYG5y5MMhNVO630W6xxr4
         rpy84X7qemsPG76luCyDeQAW/Su1UMmUIz7Kz6Pws4hd3HWpVBoveEE9PAPoKFGCzuvR
         KNMaX2w4UPlpX9rcJXgHAOFNw9dRfB4LFNWOpm+H2Z7jk3jW7w2VecmXEYiE0mz+UTHH
         4JR24nWlHIFMqtwfYs3OqPUxQ3p3EYzf3PcBeGpLDBFRABW2qjsXFQr6LFI4YTIspp/u
         rbJ+/YozNWE1iIOOqk6ixbJgZkww3nwWEwmMN6H8iyTuDWR/mVHKqLodn+of9zNE2cf/
         wQew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=KG9rrwRnDA4YYcZiYgwKLKbU0o6TPhTBpKZ/pBNCIHA=;
        b=MQpGGt0Fa91UQrsZkBd6FgdCsdxeuEcYYTOGgDRw+ks6sCO9LLVN3axdjwVQPKcAPX
         c18GCaqsy8zooIbWyv6+6BV0iW3l/LyXFfLsslRqoBrYsAJS5tM0r9sxj/+drrdcLneS
         OKd6x78Z3z4lDYLBNW61U6CQ+HsTp9ROQ2d6JqR2zpNCx4aGdKLUBp3iV+pCFbCpOPB2
         fYFCwjYlC46zlT8Yo5lQGfB/zJXve6HA91xuPwF/+EngpCl+nsNfU2lI/kB+LEadth4a
         dmXhgcZf7kKZRRWK2ZZb01D5bCggCH+hWualbU0tmiXDI+rBchWerkrDBWZG6wCNm65C
         tO/w==
X-Gm-Message-State: AFeK/H0jvvoASXHJkCSVAaXe9zWKqtKcnHMg70vRyWzoa8LDZLBN7AnJsVJyg91rcGSy30f76W7AyQqS2JZIuA==
X-Received: by 10.107.18.99 with SMTP id a96mr14319394ioj.66.1490475573513;
 Sat, 25 Mar 2017 13:59:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.15.199 with HTTP; Sat, 25 Mar 2017 13:58:53 -0700 (PDT)
In-Reply-To: <20170325153314.GA15129@gmail.com>
References: <CAKG5xWipwnUZ9kNMG7BJeJRSH2XP-JZ6KovuBpA0_ntb-5SitQ@mail.gmail.com>
 <20170325153314.GA15129@gmail.com>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sun, 26 Mar 2017 02:28:53 +0530
Message-ID: <CAKG5xWhwqB34tgqmHB-0--7iLOqgA5qzp-PfAqfP41_YwDhFHw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Doubt regarding Sphinx build
To: Alexander Alemayhu <alexander@alemayhu.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 25, 2017 at 9:03 PM, Alexander Alemayhu
<alexander@alemayhu.com> wrote:
> On Sat, Mar 25, 2017 at 08:52:42PM +0530, sayli karnik wrote:
>> I was trying to build Sphinx documentation. I ran 'make htmldocs'.
>> It gives me this:
>>
>>   SPHINX  htmldocs -->
>> file:///home/sayli/git/kernels/staging/Documentation/output
>>   DOT     Documentation/media/uapi/v4l/pipeline.dot
>> /bin/sh: 1: dot: not found
>> Documentation/media/Makefile:45: recipe for target
>> 'Documentation/media/uapi/v4l/pipeline.svg' failed
>> make[2]: *** [Documentation/media/uapi/v4l/pipeline.svg] Error 1
>> Documentation/Makefile.sphinx:70: recipe for target 'htmldocs' failed
>> make[1]: *** [htmldocs] Error 2
>> Makefile:1452: recipe for target 'htmldocs' failed
>> make: *** [htmldocs] Error 2
>>
>> Am i missing something?
>>
> graphviz.
>
I ran 'pip install graphviz'. But 'make htmldocs' still gives the same erro=
rs.
> --
> Mit freundlichen Gr=C3=BC=C3=9Fen
>
> Alexander Alemayhu

