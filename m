X-GM-THRID: 6252872571566424064
X-Received: by 10.66.228.102 with SMTP id sh6mr11768223pac.12.1456064259508;
        Sun, 21 Feb 2016 06:17:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.226 with SMTP id z2ls396412igl.9.canary; Sun, 21 Feb
 2016 06:17:39 -0800 (PST)
X-Received: by 10.66.62.162 with SMTP id z2mr23141438par.11.1456064259014;
        Sun, 21 Feb 2016 06:17:39 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id g136si1140510ywb.5.2016.02.21.06.17.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 06:17:38 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x230.google.com with SMTP id b67so94992225qgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 06:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=QwmonQdf1R1XrOGfXswDrD7aoM4W3FYexz+pjII1AA4=;
        b=A47QIM+wLLMhVedIAueYRkQk7VYPnfMrEGIyTZQWuN0cJV8bnzEHxkbh/ZWAOqWNaX
         yJ6F9+emtSKuHoid7dm6kDXIZHuXxUfiht/LtoPHD2sIESdIOajvwaRYQP2NgxbbI3Qz
         X9vl+prQATG48YFkFsI3vTC9I5uw5sTSjfJ5JxhuB05nxDvvha5oCqeVsYrIpqJjY9P3
         MPMhP7iRq8HU4mx0UttgQriOhbU7slUwa4FFx90hTxvN89AbFQSO09MUb/IMTpLAZSZr
         C5hJTnpymJnJEKYebaL+E0CivLaDY0t5dqFhQMU5VsXRet0+Q9RUBaOOghSRz/c8J/ua
         Fmdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=QwmonQdf1R1XrOGfXswDrD7aoM4W3FYexz+pjII1AA4=;
        b=CW3aPlSIAifesffyDiOT2IpdbMTgzdCKW+1vShX0Bdt+fNT4v711ZaK7whvIgzLp7A
         vRiqP5ZNURZu/uCQl5skTBzN2+7asMqm0eMEm92jSrOIfeKcW5vLSKYnWKHYhWmds4QO
         hYdieTT7yr9DNSEgi0rpUJ4Ri7Xy66+J+Z4UpeSCDdUoB/o4qmtiEreuji9j8A6XDCXC
         99NQZaeYr5Yi1T/xCL3cEI4FjfBeGYNRzRsZV17EK5hQU5g5pLew+p23P8UmOqJ4kwld
         8jTiRkbMyw0PB+DyLLVZA2l/wWhdTme6PD+z2+Ro0o9era+ot6js7d/IT6D7Nav6Ouwc
         UY/A==
X-Gm-Message-State: AG10YOR9MhWlGSEF7RMiosQwvku2eA6a1S5xQ45iHtVrrYsKSQcaxegAI7MK06BxFq556GfI2nEwwImEYrC68g==
MIME-Version: 1.0
X-Received: by 10.140.23.81 with SMTP id 75mr28503047qgo.35.1456064258809;
 Sun, 21 Feb 2016 06:17:38 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sun, 21 Feb 2016 06:17:38 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602210856220.4210@hadrien>
References: <20160221062813.GA18950@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602210856220.4210@hadrien>
Date: Sun, 21 Feb 2016 19:47:38 +0530
Message-ID: <CA+5yK5EHGWR3r05s-zMNpGgj2R2bYoVmZr5z1rF9bACh-sF8Bg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Remove
 exceptional & on function name
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 21, 2016 at 7:27 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 21 Feb 2016, Amitoj Kaur Chawla wrote:
>
>> In these files, function names are otherwise used as pointers without &.
>
> I'm still not clear on the "otherwise" part.  This semantic patch just
> removes & from all function names.  Do you do anything to ensure that that
> is the most common case already in the given file?
>
> julia
No actually there is no other such case in this file. I'll revise the
commit message and resend.

Amitoj

