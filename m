X-GM-THRID: 6527539355129479168
X-Received: by 10.107.79.13 with SMTP id d13mr13549184iob.11.1519816318080;
        Wed, 28 Feb 2018 03:11:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.223 with SMTP id 92ls690155iol.14.gmail; Wed, 28 Feb
 2018 03:11:56 -0800 (PST)
X-Google-Smtp-Source: AG47ELsZtXsjr1nIgsNH8Clei0B30/Fu0Hmmo9bpM/p0pUbsB6UUu+aWEcAp/WY+k9oaDhJ7OfuK
X-Received: by 10.107.158.72 with SMTP id h69mr13232534ioe.19.1519816316962;
        Wed, 28 Feb 2018 03:11:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519816316; cv=none;
        d=google.com; s=arc-20160816;
        b=YrsaxcAw08Q8qPwBo1DaIDTO6TYWm1iXlD5qEfjldIgWppgNP1xkW8+jITIpvedXjY
         zxowUgIOQJ5rEe3jdKgKyvz7dS109Cnqat5Mcl6BN5JvqrVf2B/in8L3Jyf5VQhzLAqv
         rYgKzHXP2iSD1DgqZrMrXsL4n8H+i7T+aY8LpJfT7uZR/h79NOp/U2RBo2i+gmxG2+47
         meNuHjDPOLeZDRwau1/Pv5Ecj1KMzXKFKeun26vHDts8nhibOT0tCC/r/T8HKf2HWdC1
         G6kl8yOn7WGVZoQrMrtJCYFSrMNkcjSFPgryrFQ4mrQrN3GG4wWvhtQtFHLxa9lGBld1
         FPdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=piO7Qv5WiYHeQgaYNQPKsuzwBlnCK+rVKvCkuM8Bz88=;
        b=yP5Zr50Q/Hw51ed++p8w66mr+gxcVimi6yWFRK0VQ5s3FPjKLrx29MbYQyeqw4h0wr
         m7UuvX4icuMNp4PkuZjgKbGic//KsLu5KQoEvXEx370Qgxjgga8PMGCC04Q97oiWTFFq
         xUpZ2K+MGQlQgqHOAVAvnyX4eGbQGe6OA/VOVWWQn61mcGHmQhXqadVDwGLqqG4KCU22
         dECuhGEn3ct7GA7tvSV3DFxzCeD8b1jOvWLyWw5n7bN/CQR00QNttKKt4CfTthaG8dkm
         q5y41rTN5O7p50lSBcVLZt3TtiPWkNlahueyCfgnw3+aT+AJgMNZiEP+V0MgisBhVEI4
         kzRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i+1xyOrK;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c0b::229 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <rvarsha016@gmail.com>
Received: from mail-it0-x229.google.com (mail-it0-x229.google.com. [2607:f8b0:4001:c0b::229])
        by gmr-mx.google.com with ESMTPS id x35si125900ioe.2.2018.02.28.03.11.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 03:11:56 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c0b::229 as permitted sender) client-ip=2607:f8b0:4001:c0b::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i+1xyOrK;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c0b::229 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it0-x229.google.com with SMTP id u5so3066058itc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Feb 2018 03:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=piO7Qv5WiYHeQgaYNQPKsuzwBlnCK+rVKvCkuM8Bz88=;
        b=i+1xyOrKH1xvNKMz/5u1v/C+UlWuGg1uYHO5tUJH77BRFXi4zXpXC+0gkBvpMwyz7l
         D5Y4l3FUeDlvcjFgF7YkwlWww8NzredNiXvrr9bE5R4oeSP3Vp5euw/be6YDGVwcsOGi
         yX+GtYNKpXD+iAG2V3gZL7lQNh5vw55Ppx1Fob9I6eozOA52+Ya6VBwODaNI8vjlp3qz
         cr2o03rZ2jhW8y/dT1ugcmCS7xbdQa3/bklAQORMCki3trvMVYwOARP9pg/YQsSEOEp2
         /edC+p5vT8N7iw2JVM3lmkrN7/d/ijyvlULr9IFYjny2MkBjljJL3DWcgb2kcgPiGI5u
         qLZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=piO7Qv5WiYHeQgaYNQPKsuzwBlnCK+rVKvCkuM8Bz88=;
        b=Ill0aWLIh2c67g6r4ANSNIDX3eASy+gzEztRZfv6jXlyi/rqGaUpGxIsSXBQPgsg8I
         PKWVB/oo/ORohv8Zf4UUiV0KA4RSDUpVF56HwjS331ZDtBT59hyN8TyD1Wdlk6YKVWLc
         Isxd2mA1vQ/VfDDQEON1kYqRJc8j8QqWjL8yxdS6iX/4s3YXd+DQ+uJTqr6EHttXOSis
         4vcOoXI+lIib4iXZ01Z6eG+zB5l33EBe+LIYxPIcgJeaX3ml3gXDkR2Je5Gxi9lEtGcN
         T7mx5zCPgb8eisX+QrRYmkDnDxDmed7xI08c95UI4JylWBRqPzxanfZG0LbCLZblfop0
         YfcA==
X-Gm-Message-State: APf1xPAerOHTVD1Mv/4ImM3bFRRbJxzkbdpJ2CuDSh2/MapXmJ9AS63E
	CPoCeG28KL9R76SoyZODfk5ZA7+b+uTud3MFanlnQw==
X-Received: by 10.36.112.17 with SMTP id f17mr20562023itc.34.1519816316252;
 Wed, 28 Feb 2018 03:11:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.132.101 with HTTP; Wed, 28 Feb 2018 03:11:15 -0800 (PST)
In-Reply-To: <CABwYNcWn2bj=fN4dyCopd74W7dP7mNC6PNj_urzJ_Vc23TgGnQ@mail.gmail.com>
References: <CABwYNcWn2bj=fN4dyCopd74W7dP7mNC6PNj_urzJ_Vc23TgGnQ@mail.gmail.com>
From: Varsha Rao <rvarsha016@gmail.com>
Date: Wed, 28 Feb 2018 16:41:15 +0530
Message-ID: <CAAFX7JRPDwvtZyOCVDobnj4FVHikVuU01V4vJe7cx0Azf6YoMA@mail.gmail.com>
Subject: Re: [Outreachy kernel] post commit hook
To: Shreyasi Rao <shreyasirao97@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

Hi Shreyasi,

On Wed, Feb 28, 2018 at 3:15 PM, Shreyasi Rao <shreyasirao97@gmail.com> wrote:
> In the .git/hooks folder I found that there was no post-commit file or
> post-commit.sample folder so I used mkdir and touch to create the file. But
> when I edited the post-commit file with vim
> .git/hooks/post-commit.sample/post-commitit gives me the following error
>
> .git/hooks/post-commit.sample/post-commit" E212: Can't open file for writing

The file path has error. The file path should be .git/hooks/post-commit.sample
You need to rename the post-commit.sample file as post-commit. Then remove
and add lines as suggested in the tutorial. If post-commit file is not
available, check
with pre-commit file.

https://kernelnewbies.org/Outreachyfirstpatch?action=show&redirect=OPWfirstpatch#kernel-setup-done

Thanks,
Varsha

