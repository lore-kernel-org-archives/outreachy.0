X-GM-THRID: 6392026082663464960
X-Received: by 10.13.192.193 with SMTP id b184mr2089223ywd.27.1489594908846;
        Wed, 15 Mar 2017 09:21:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.76.208 with SMTP id a199ls882424itb.0.gmail; Wed, 15 Mar
 2017 09:21:47 -0700 (PDT)
X-Received: by 10.99.111.143 with SMTP id k137mr2228885pgc.1.1489594907825;
        Wed, 15 Mar 2017 09:21:47 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x233.google.com (mail-it0-x233.google.com. [2607:f8b0:4001:c0b::233])
        by gmr-mx.google.com with ESMTPS id t8si104506ith.0.2017.03.15.09.21.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 09:21:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) client-ip=2607:f8b0:4001:c0b::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x233.google.com with SMTP id m27so68822537iti.0
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 09:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=cgGBRjUXCydopmQSApBZdy+igyNtsT0+HDHryFCok+Q=;
        b=r/xaO/kfi1COs+vBQpsNOcCsbMVcWDqikwTCBOw/yg7CcKGXGbv+8JfanYMdZw5hWh
         TMM5KzG6lN2YZkBsJZ+uaaZkFLLJjRzWkP8Y7AdZ9jkA2YqO4YItkWWSQTgBSyu3rz8S
         T3C+cHnJygYLfI+z6b9ZunGGz3uHAWz4c7JS5BCBTGH1OMuL1+Drjzy5ZAr3QFX6qFSP
         AvKIqPkH8HqiZWjRXmO+6E5wWp90Bww6g1DBfukgKFuKdEYia/lyoaRfaLf8QsdXpzmr
         KJJT9ipKlU86Iicvip645TDqdwRAuOT+9eqT5TZXUp2rgJMamMBb3naFN0qOZcWT/jTb
         c7dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=cgGBRjUXCydopmQSApBZdy+igyNtsT0+HDHryFCok+Q=;
        b=OGM9S5ors9x182MI6BTOBRvcmZCGhDEw2obF/7sbP+leVgyvJivPd+j4kkhpS0+R/5
         MhCITH7lst9xegD8XdjCXmVGtnA1OVGQO7S/YiCh0957DtZF9ncroq6zsJl/gk/A0a3D
         bgL3q5rlYNKoSYhg3B2n/Y2eQluwoo9d00DfTaOYCnRn8mjDo0ZE1asZ2YqIVJ0SN0ow
         mWjKw+4sj5hEkHhJe7NSLUdm4hO5PHjBk/iTaoAQtYO72wpbBFMjQ/pi3wdZuhzsPbc5
         uMKqNySsZoXmQFa0D1JeYOdP/Bn3G+wRFCNj/bzV1Zo+GkybJ3mEUNerDVAzSnmTLGCd
         xiSg==
X-Gm-Message-State: AFeK/H0jiOaMhHlPrv2du9RmhXHZKxlOys379nNTbq+rh0Q4SLUJkD5gO+NFnMKFk6Vv8L+wFBdz/W5LC+7Tzw==
X-Received: by 10.36.64.198 with SMTP id n189mr6051112ita.6.1489594907403;
 Wed, 15 Mar 2017 09:21:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Wed, 15 Mar 2017 09:21:16 -0700 (PDT)
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Wed, 15 Mar 2017 21:51:16 +0530
Message-ID: <CAOCi2DFuiO2gMayheHWijqxXcFw71_ykTxhFfWZacYntxugR5g@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] staging: lustre: Replace typedef with struct
To: outreachy-kernel@googlegroups.com
Cc: "Drokin, Oleg" <oleg.drokin@intel.com>, "Dilger, Andreas" <andreas.dilger@intel.com>, 
	jsimmons@infradead.org, Greg KH <gregkh@linuxfoundation.org>, 
	Gargi Sharma <gs051095@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 15, 2017 at 4:50 PM, Gargi Sharma <gs051095@gmail.com> wrote:
> Remove struct typedefs and rename structs accordingly
> as per kernel coding conventions.
>

Please ignore this patchset since these changes were already done by
someone else.

Thanks,
Gargi

> ---
> Changes in v2:
>         - Split multiple typedef replacements into different patches.
>
> Gargi Sharma (6):
>   staging: lustre: Replace typedef lnet_rc_data_t with struct
>   staging: lustre: Replace typedef lnet_remotenet_t with struct
>   staging: lustre: Replace typedef lnet_route_t with struct
>   staging: lustre: Replace typedef lnet_rtrbuf_t with struct
>   staging: lustre: Replace typedef lnet_test_peer_t with struct
>   staging: lustre: Replace typedef lnet_rtrbufpool_t with struct
>
>  .../staging/lustre/include/linux/lnet/lib-lnet.h   |   8 +-
>  .../staging/lustre/include/linux/lnet/lib-types.h  |  32 +++----
>  drivers/staging/lustre/lnet/lnet/api-ni.c          |   2 +-
>  drivers/staging/lustre/lnet/lnet/lib-move.c        |  48 +++++-----
>  drivers/staging/lustre/lnet/lnet/router.c          | 103 +++++++++++----------
>  drivers/staging/lustre/lnet/lnet/router_proc.c     |  15 +--
>  6 files changed, 106 insertions(+), 102 deletions(-)
>
> --
> 2.7.4
>

