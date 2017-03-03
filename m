X-GM-THRID: 6392947471116402688
X-Received: by 10.107.17.92 with SMTP id z89mr1151074ioi.3.1488551297538;
        Fri, 03 Mar 2017 06:28:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.72 with SMTP id z69ls2882494iod.16.gmail; Fri, 03 Mar
 2017 06:28:16 -0800 (PST)
X-Received: by 10.99.136.194 with SMTP id l185mr1195113pgd.82.1488551296551;
        Fri, 03 Mar 2017 06:28:16 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id a17si788469itd.1.2017.03.03.06.28.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 06:28:16 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x241.google.com with SMTP id 203so2456450ith.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 06:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ukrNm5gQ5qySMcMFz2pvnZUHlfNBv3rof9XabsKqOoU=;
        b=CD677SLt2RFhu6Hx5bkMJyjb0s2DJw3c//Gu9hDp3LAd0FumhsXKb8VXKO19BVrdrx
         EdCtIycIOLDL9vm8qGfzAjCYqFyCzZaMpAHGCbp+3hu1qR9brqa4ffjlJ4Jf3l1C9k7a
         /s7O9Bib4bjEyVrprKz59W5TBWxpCERr77HqZkYIsTbvfaEUT8GkEEP6wdZjQdlTUgJj
         guDhkqHbD2+P+5bOhTYi2IDAJb+6RHDdu4RKGe0JFxae/y9qpXPBcYiVYM8P3mB4vvRS
         dBlG55rzISmkutsoXQBK6mJlUuLqLSjI4qQvKixL5kmGLCfmHZoNU9i7Q8upyVQIYEmd
         Jz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ukrNm5gQ5qySMcMFz2pvnZUHlfNBv3rof9XabsKqOoU=;
        b=MWLXVvZ0rB5HyjwxOuUO6eEYGWBNbs6VlvZhoYpGBIofi++yv8kJiMZRuLfORpmqhK
         zCaRoje5C0cbGZmSu0t6dIUPbNKQ/mPytLpg+W75mSKwDFeSyoRMO6LOiZQiKDXTer3I
         jZIgtnyiN7TAp2n0UzXe6NQKtZcurAB7UAGFKQYYEn6PD6ezB+IuFtyVGleMNCwqP+rw
         ke2EpxVxP2UUONUSZM6ozx+N3wVEkBNBRCX0YYso8xbSj7z4BhtPocnlKZohCKYu566w
         rVfu2MlBUU1Fy/lAQFmQ++hXRy3uSQiBlO0hyVA07tE6ci2S4clcOa2q9mXH8tVXNVAo
         14Fw==
X-Gm-Message-State: AMke39l4Y1F9+FYzt830d+H2tC2QdqYoBD6CCqpSrn6c9wXnfTtY5NB/vsZhQaG9VUV3e0gXpHs/WpPg1UlxiA==
X-Received: by 10.36.138.65 with SMTP id v62mr3423049itd.108.1488551296135;
 Fri, 03 Mar 2017 06:28:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Fri, 3 Mar 2017 06:28:15 -0800 (PST)
In-Reply-To: <cover.1488480443.git.aishpant@gmail.com>
References: <cover.1488480443.git.aishpant@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 3 Mar 2017 16:28:15 +0200
Message-ID: <CAEnQRZC8Oujf4zhjkkdF6q3Yg3E36DR0SepirtgEakzki2d3ZA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v5 0/5] staging: bcm2835-audio: fix
 multiple checkpatch warnings
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, Eric Anholt <eric@anholt.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	bcm-kernel-feedback-list@broadcom.com, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 2, 2017 at 8:54 PM, Aishwarya Pant <aishpant@gmail.com> wrote:
> Fix multiple code styling warnings issued by checkpatch on file
> bcm2835-ctl.c in bcm2835-audio driver
>
>
> Changes in v5:
>         -Fix out of place commit messages
> Changes in v4:
>         -Refactor commit messages
> Changes in v3:
>         -Merge two if conditions
>         -Fix subject of patch replace printk(... by dev_err(...
> Changes in v2:
>         -Replace pr_err with dev_err
>
> Aishwarya Pant (5):
> *** HERE ***
This string ^^^^ should be deleted :).

