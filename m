X-GM-THRID: 6259255438173274112
X-Received: by 10.112.162.101 with SMTP id xz5mr1615751lbb.20.1457361593722;
        Mon, 07 Mar 2016 06:39:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.59.86 with SMTP id i83ls670876wma.27.canary; Mon, 07 Mar
 2016 06:39:53 -0800 (PST)
X-Received: by 10.28.15.82 with SMTP id 79mr1435813wmp.3.1457361593257;
        Mon, 07 Mar 2016 06:39:53 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id v68si370983wmd.1.2016.03.07.06.39.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 06:39:53 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id l68so88222468wml.0
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 06:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=uRPFQynWbmkmOyWDeSFoqdgd8xCwpZ+ejyWuWRB8HH0=;
        b=RjyAUatoeIbRU10j22x083lWKwKslUVX8wdLbNrg4OZ76kefKipeMaT+yyoVgm+SFz
         3JreMrqqA9wIvEBqlNj0LAA8oiTs23iozjrdnQxB/UEeE8j5/mdvIoSEck8i4bbjXKm1
         pQWPgMD6asc7rTqw/fsHhx36fSqts5tnez8leCbnupKdCvbmul4l2FFlfX5zEQe2Urai
         L3G8FkT94SiIu6jtJwEWzhS37pwKw4GkDcgv3plVYbo5N0u9F7/wGJ1Nb9Fxjh38wZZL
         LEvbbrltg2M3Mj+LlWCAPzLRxE5H3152QL0ajMc1U0TW2JHQrIgJ/sjpRtH8dSZ3Lfzn
         1IFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=uRPFQynWbmkmOyWDeSFoqdgd8xCwpZ+ejyWuWRB8HH0=;
        b=ehWDBRHR6jf88reFQxJ9vhRS8YQaZOUnt69mnB2dYtqzj7PrpBoKrOBJol43Bco/Zs
         7+3of4OAioDFzuxYhKzJMILwEHo9mima/8iFkbtHqzNhfpqNpiyF9PuUveMxFHpV/Sj3
         BtC9Fa965WFP34Ro6nq5ZkhGyW7ZRPk2/3D2YAXcmeb7QMqksNab4n0LP+y9hWsnUJB2
         BWgDgRquzNcMxYVVcangn5Qh+i79myecA+PKmVYNSoYjB4EphnIoXB+qJ3IEHh2AMi+z
         7//eof5KMnAy49sBsP5PAkfAE/TNZ/69uh8XbJJXuwzvXuhFHNYtjWaD0Cx5MnnIXsal
         KsmQ==
X-Gm-Message-State: AD7BkJINpcy6tcIDR2/60HtfokIlq7QKWIJiI+OJNgRI3r0VsnYDsu9legyJg3SR7BUL41GNN/94bDch4v/PSw==
MIME-Version: 1.0
X-Received: by 10.194.123.102 with SMTP id lz6mr25771875wjb.2.1457361593124;
 Mon, 07 Mar 2016 06:39:53 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Mon, 7 Mar 2016 06:39:53 -0800 (PST)
In-Reply-To: <d24b294b-76f6-487f-a1b7-5f149303fcd2@googlegroups.com>
References: <d24b294b-76f6-487f-a1b7-5f149303fcd2@googlegroups.com>
Date: Mon, 7 Mar 2016 16:39:53 +0200
Message-ID: <CAEnQRZCFPmwcuBasLTrFH-FaDMmH5-V36-dEhYg463EwqXfjTA@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=5BOutreachy_kernel=5D_cp=3A_cannot_stat_=E2=80=98=2E=2Fmodules=2E?=
	=?UTF-8?Q?builtin=E2=80=99=3A_No_such_file_or_directory?=
From: Daniel Baluta <daniel.baluta@gmail.com>
To: parul bansal <parulever333@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 7, 2016 at 12:27 PM, parul bansal <parulever333@gmail.com> wrote:
> Errors are coming after running this command
>
> sudo make modules_install install
>
>
> make[1]: *** [_modinst_] Error 1
> make: *** [__build_one_by_one] Error 2
>
> Please help me to resolve these errors .

Can you turn on verbose mode while running the command?

sudo make V=1 modules_install install

