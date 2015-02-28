X-GM-THRID: 5033577938944
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3aeae413636a43b0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.9.199 with SMTP id c7mr180lab.5.1425127187067;
        Sat, 28 Feb 2015 04:39:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.134 with SMTP id ky6ls254301lac.76.gmail; Sat, 28 Feb
 2015 04:39:45 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr2718470lbc.2.1425127185567;
        Sat, 28 Feb 2015 04:39:45 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x229.google.com (mail-lb0-x229.google.com. [2a00:1450:4010:c04::229])
        by gmr-mx.google.com with ESMTPS id mv2si24003lbc.0.2015.02.28.04.39.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 04:39:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::229 as permitted sender) client-ip=2a00:1450:4010:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::229 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by lbvn10 with SMTP id n10so22024919lbv.4
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 04:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=z9nFV3cLUEgXUWP23KzTtqhpgWTUHrQ86Z+ik9tbFa0=;
        b=l4AvvDwaZyETMO98nr/l/l0JU0fVcaUmskufKMFfXkIjvlNm/xJzPDCl0VAAN9IvEr
         WIwmww936NGKpqeC90sWBsZWDiRk49lu7vicIax5xEwwNW+/y8fdm/87ROB4Ids4HAUK
         UWvuqHsjgWOsd6pAsCTF65WvMEdhPY6nTnXORRX+j+BT4DQtdysRpdzYPGtpMuCGSn2y
         lrS68fx8SZKzBCqclc7XunIc/8B8s1YgHHolgZdnL8IV8HLu6xv+xsY30/qgzCblFk4g
         9l8pmcveGcEqvG5EA8gjaRCmpKcyweEB8ri9gir5yONg9X4TG9Wu0V8wHuPzq0mL2Wfr
         Ak9w==
MIME-Version: 1.0
X-Received: by 10.152.228.167 with SMTP id sj7mr16302655lac.2.1425127185459;
 Sat, 28 Feb 2015 04:39:45 -0800 (PST)
Received: by 10.114.12.1 with HTTP; Sat, 28 Feb 2015 04:39:45 -0800 (PST)
In-Reply-To: <cover.1425116493.git.ksenija.stanojevic@gmail.com>
References: <cover.1425116493.git.ksenija.stanojevic@gmail.com>
Date: Sat, 28 Feb 2015 13:39:45 +0100
Message-ID: <CAL7P5jKLn-DQTbqLU+gyRjqHxi9ZXw=HB7x0wbyirhqj1LZCag@mail.gmail.com>
Subject: Re: [PATCH 0/3] Staging: rtl8192u: Fix coding style issues
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 28, 2015 at 10:44 AM, Ksenija Stanojevic
<ksenija.stanojevic@gmail.com> wrote:
> This patchset fixes some of the coding style issues, found by checkpatch.pl.
>
> Ksenija Stanojevic (3):
>   Staging: rtl8192u: Add space after close brace
>   Staging: rtl8192u: Add space before brace
>   Staging: rtl8192u: use __packed instead of __attribute__((packed))
>
>  drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h | 73 ++++++++++++-------------
>  1 file changed, 36 insertions(+), 37 deletions(-)
>
> --
> 1.9.1
>
Please ignore this Patchset.

Thanks,
Ksenija

