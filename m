X-GM-THRID: 6618908371010453504
X-Received: by 2002:a25:552:: with SMTP id 79-v6mr1439444ybf.52.1541638302793;
        Wed, 07 Nov 2018 16:51:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d209:: with SMTP id j9-v6ls223519ybg.9.gmail; Wed, 07
 Nov 2018 16:51:42 -0800 (PST)
X-Google-Smtp-Source: AJdET5d9AP+Aji/sBhMrmE1TbvAt2BcJ8cDUd/pNis4Of7LvCGcSpUMk/GR8iR7svDyBtpi67QkA
X-Received: by 2002:a25:bf84:: with SMTP id l4-v6mr1378635ybk.100.1541638301987;
        Wed, 07 Nov 2018 16:51:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541638301; cv=none;
        d=google.com; s=arc-20160816;
        b=lQVFnroSEgrhNmhi654eaPVjD+17eaa6bCB5DdsRsw9HdPSHgUYAhVbLDOIrlSBCpe
         uBII69Cw1XpVTCElBnruDCpODOYJLjb3BPhaJtVi/5YdpjGkKHwTLLj6eu1700ui3aWw
         OXzXfqgSkJFgyI9f4sK7rzeNmkRq0rKUVp2hTXFACpEmojTaChbZJ0dAq+RxXG/cwLOk
         ZAoEqGBqNwA2SQxjZXRZG7F73iAKk25RF2/Lj15+RQkwjrxejU6WhOrZVS225Q2WGMEn
         GQ1LaitgefXqAS0q1a/WGzLyLdDdJtbNK/5uQiIDVG8HWgh5oFHoLlwohrvCitbqA9WJ
         Q+Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0FZJp4Tt4V3BXZj6mfiepHher+a0ubW9asnf2UPJgPA=;
        b=wkBdMekx9Xa5a95sacNLCQMFMVpn2f+62hqm/XFzk4V6XvWcJ0YYvzKAMUEQC2Xpx4
         y7eJR+i4I0iKS9NKaOdT7qATkN11kYsfZgbYTrWDOIj2nMx7eIMJ40c0wGL3Pf6V3SCM
         0MFKzeahDE7U63jSmyMcWhICh9BrLdqmz4YXiMt8VguIHCIZWqEjTz3kyzUaCPb74sH3
         PXFLNsW4PXSvs/g5FcuhsrmfPbY+FZCEU2oxxFg8kpM9hFsPJEChcocQVvZULx5j5ozq
         NH0Gr/8O3msDT75jrfJW8J/4g7x6ut9SIefTgxF0K2UwmtsdDRFQh8hokS+Oa78LmIl2
         uGcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=cyK25tM5;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Return-Path: <ezequiel@vanguardiasur.com.ar>
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id l125-v6si105427ybc.1.2018.11.07.16.51.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Nov 2018 16:51:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=cyK25tM5;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Received: by mail-pg1-x52d.google.com with SMTP id 80so113107pge.4
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Nov 2018 16:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0FZJp4Tt4V3BXZj6mfiepHher+a0ubW9asnf2UPJgPA=;
        b=cyK25tM5UQy55gfTCkEgKMmVo3dKmY14dN1bazr7+kQDlQkaXqqzr1jkwxEFCuYrPr
         yMBl1o4j/dzDQMkA1IAqHDT6/w87zjd6XyKS8R85fxGOBSzx9XmfRAGkXzZKB+v1yRAB
         dTd2XANCFIhZL187P3mfvnuAFxW7jMZk472+REWpCOLRn83I7BN9EMK/fy55YYPsrSy8
         7ZvT0lK4zNuwGUAmpt0qSabe+E53RNiQsvwbpCAgO6RYYKJDzrC7QVwjU7QzmnjJtLVU
         R3zR3WOrfnu4yabMkSO3L7xLND1wt6M1yoOE3nrThD0mkSMR0sBqNkzeMxhLPb5V8p9v
         QG8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0FZJp4Tt4V3BXZj6mfiepHher+a0ubW9asnf2UPJgPA=;
        b=MB3pXt4zXwE4pqhmSot8R9rUN/tbZKKXGT3diY51Qq7hmOWduehNAa3jWTHhu5kTPZ
         1Tqz1Om8Hm41X4J3NeZsK0Lq50eqAPRYNqg1qRF1XG0OMfe96uVGlMis0ZfHGdMrLt86
         LWZBxFhS6/fQKiMM9pZla/H9IrxfbGsjVh+1N7pWjeFpzyt1v6Ru+6OaYY8voC8yagDx
         NsC9jAQfRM8XXcT5EZ20eGC1JEo2597jIIvVMhlQjzJREfqniRuDquk7PvZEF+MxsuC7
         u3IOouIgMhm97dhGhaHK61R9eHMGxredl1prqYUf2zz13V1DXmSRkuuD5tiQ+LUylnfv
         +aGw==
X-Gm-Message-State: AGRZ1gItME5zWd0QYaImOWdGrSQ1x+iP6+poYMeK++ne7K8cVyFit8p8
	Upo3b4dGUkJRZxLS2xb3GmNQ5ZjL1FBsktAfF6SbaSAm
X-Received: by 2002:a65:5a8e:: with SMTP id c14mr2077054pgt.137.1541638301204;
 Wed, 07 Nov 2018 16:51:41 -0800 (PST)
MIME-Version: 1.0
References: <cover.1541451484.git.dafna3@gmail.com>
In-Reply-To: <cover.1541451484.git.dafna3@gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 7 Nov 2018 21:51:29 -0300
Message-ID: <CAAEAJfC=R3U9Pz0K5MkYT1Y0FM=PA2e6uUfbYL3sfDuobCWMDA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH vicodec v4 0/3] Add support to more
 pixel formats in vicodec
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: helen.koike@collabora.com, Hans Verkuil <hverkuil@xs4all.nl>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Dafna,

Thanks for the patches.

Just out of curiosity.  Why these patches havent't been submitted to
the media mailing list?

Also, how are you testing these changes?

Thanks,
Ezequiel

On Mon, 5 Nov 2018 at 18:14, Dafna Hirschfeld <dafna3@gmail.com> wrote:
>
> The new supported formats are
> V4L2_PIX_FMT_GREY, V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.
>
> The returned encoded format is chaned to support various numbers
> of planes instead of assuming 3 planes.
>
> The first patch adds new fields to structs.
> The second patch adds support for V4L2_PIX_FMT_GREY.
> The third patch adds support for V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32=
.
>
> Changes from v3:
>
> patch 1,3: - no change
>
> patch 2:
> - replace the 2-bit flag FWHT_FL_COMPONENTS_NUM_BIT[01] with GENMASK
> - add TODO comment - handle the case where the encoded stream is differen=
t format
> than the decoded
> - allocate maximal space for the V4L2_PIX_FMT_FWHT format
>
> with the test 'flags & FWHT_FL_COMPONENTS_NUM_BIT[01]'
>
> Dafna Hirschfeld (3):
>   media: vicodec: prepare support for various number of planes
>   media: vicodec: Add support of greyscale format
>   media: vicodec: Add support for 4 planes formats
>
>  drivers/media/platform/vicodec/codec-fwht.c   |  73 +++++++----
>  drivers/media/platform/vicodec/codec-fwht.h   |  15 ++-
>  .../media/platform/vicodec/codec-v4l2-fwht.c  | 123 +++++++++++++-----
>  .../media/platform/vicodec/codec-v4l2-fwht.h  |   3 +-
>  drivers/media/platform/vicodec/vicodec-core.c |  35 ++++-
>  5 files changed, 182 insertions(+), 67 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/cover.1541451484.git.dafna3%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.



--=20
Ezequiel Garc=C3=ADa, VanguardiaSur
www.vanguardiasur.com.ar

