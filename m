Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.210.54
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793422378;
	b=f/aRK+G43vK+BR1AVmLyyJFRmuIS0/t5JcPXlVIvOgKQYJVXqS6+hgk8KuBKE4o1BU6u
	 teOWZ22PiwdTPt11Ic1yvyQNYJKdH3HNBFbTO5R5Dp3s1FNgkzruh6IfoU73LNAzk0EwX
	 MhII8DfUQEDZOAGgNjaiRHALLF/U8/cXir17QaY8bmnZFF4HrIYnC0kKAR7xiHXJg391I
	 CRqW0b5jCzhok1T8Zosb6gY28HA/citwvzLuopkbfUwtbsMYLF1JifwJ+ElKd6wRVQkAR
	 J58Y9BnVG19q29GOxh0c7bvuuuSaifcLa0XDmrhrt0EdSP85AhidD2EpfIOPc7eTJPA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793422378;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:References:
	 In-Reply-To:From:Date:X-Gm-Features:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding;
	bh=C7r0Looq3OFL9/sV8eh/zyQwOFrjKGIhM1/AoZM04/M=;
	b=ei/n9vDxGQFvLHQIec2Bs3+TqxhqnA1b41bXG0eqxzKi4OJR5c0L9tcPWDJ4mT3Re1jK
	 yyGLoVvuoT8475cnt9IzlqV7xV65iIqF6fB1ClN7nK/n14Yxe9F606bqLftYkd3MoJ7e9
	 c/iZTC9GNy8z/z6jKtQmEzb5hvIp7QfbcmmSASYW/TIoFR5mDO4GavYXiuuXewuhvUKE6
	 fIMJu19d4eF1o1CsrQi35grhk8KZxbLBq55aEw2/0fI58bHtwCGzql2PMUAgp7pYiBi1j
	 Hq2IwgVpetvYME09P6XhiPKySwTmVO2uGcPFFF4ydYunrxQ0y0EUDGp8JuXnyCY+cyw==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KpxHBgsz;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.210.54
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49085606A31A
	for <outreachy@lists.linux.dev>; Sat, 31 Oct 2026 04:52:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 49085606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KpxHBgsz
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-843a4ca671eso601909a34.2
        for <outreachy@lists.linux.dev>; Fri, 30 Oct 2026 21:52:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793422377; cv=none;
        d=google.com; s=arc-20260327;
        b=gtcfna+16gxSQO551XbdNEWcR4vMh7xdtKSrO/Iw3+1SfUN2W8j1vhRj9SaG2BuL/o
         lMeiDwbX3MFqyGH+Ks2I30KjebmqufLRYpGJEpb/mlPRIt9LnJQxj7F98qlVVWMNbDlN
         cdpaswHHF8DreikKTrV8rLH1ln963XrkZc/Dz50cLyPghE2MuAPRhg+tnrJmavcZqALH
         zGB8acGgqzXJP0YQtBOHzQMW6bI3dt4B6t6KJfVQHbNyUbaP5eTN7BUy/ORrs0aDeB3v
         37XTtr36r1kyWuJf/Wy9jC65ty1HJMyvnlvpHuw/rMiVlJvtU3zGg9lyGcHdtpNjJ5v2
         zLiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=C7r0Looq3OFL9/sV8eh/zyQwOFrjKGIhM1/AoZM04/M=;
        fh=Od6VrXDnJYJM0i2VkkOIl2Qu/k88FvztJXkagWT32Jw=;
        b=PLtTbvIw9zDMzP9J8XH/25hZCzSMXY07qeJoh9Qgd82Qh8kGekGH8iXZxbX6oYR7wo
         CrIA9bpo4JaxsHscciWxFGe1O4ObGACCGspf1ujH0mIS/LDapgFGl2+2BeoBOnrQ0j4S
         HEOzHnO0Ae1/p2nYCASFViscchhWYoOHshamrw7qNL6x2bmgjrac9LqikZdbq+JgSRe+
         lXYtJrxtA1iRcArikJ8Xj53jXzH4Kb8x/o+RiPEpG2lTASWXRGCynmJec5Wkl7VIxEYN
         CImhzgOGobkPOUtxQpWgAmQ3yNT9rYh4ji0jGB1riSJlG7PmmOg7D8a04rNTwQVuQkYq
         5V9g==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793422377; x=1794027177; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=C7r0Looq3OFL9/sV8eh/zyQwOFrjKGIhM1/AoZM04/M=;
        b=KpxHBgszyaZbqNRY4aDHVNxPBjZRnuO6ZTA1BNIH4wUNmYoT8lu3e4SXOy0Bgc+aPx
         0sDEvcoaMBCZERI2SphVpUHK2YNG8euL7PwM4hoOdylAsOWjdKO2Px4kNI3/u/fODjl0
         J0V3O3QFgmNO1feDcupEZhSf0APREA4xO1pZVDunv3PhgH97BDat2jVnJonX5td6nKaU
         v0N/KiUhIsqAYBFWrsHfwQFMPVtVG0mc1rxmjSBk46V+gIwXrMQYaEH+FlG1GcSJfcfI
         gL+9Sy25f01WATCvSrFYjV8FDgzNlHevNavdboU01tB21EZe0/bmpOs74Tj5zftm+g//
         6I+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793422377; x=1794027177;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=C7r0Looq3OFL9/sV8eh/zyQwOFrjKGIhM1/AoZM04/M=;
        b=ZZpCD0lI/wM/npRyJXclfvvxPYTuFahXtkwMZq2WsJ1YC7QphR2unIMOWPRFuYGMST
         SFpOD4Ct8V7/NV61dsCCGxCHKGpqS3lix8zDBr9S7njvDBX2SbeNyQtyjTFQ8E2Etgtt
         CKgIfuXMUJYKXIvtKhgBuseDmDMY7pR2ha5R0DV3U/9WX5Tt52Px+TVzYXVmBFhLDA+j
         u6I0OIqIxUGysqotDXwnTwN8vXQYd1uZFWYJ8zKWnBO2IxC3315MV4Bx4PxPNrkABvtA
         r9dU+FvdLU/YlZ5aMF8kgzjGntNULh0hfalAxNmZU9VppXH2iGhMb5cgH/zUMOIn+9jd
         g+tQ==
X-Gm-Message-State: AFq9FYJoA4jgmRhQ3x1rihivZEDChohLZYp6MMZwIUyzdcMtNKQYFT1j
	kO5i/z0untNFOsYfT1w31qCKMiF07wK6puifTpy0g+qNKEV9tWOzVhUK4Xu1qmaITbKjyWMomYX
	ePNBaS8U39oOMpSiXVCIse9jdM3cG+BDBm2POedg=
X-Gm-Gg: AYBFou0qWFo/msrTg0Iw8BezfhjqJAK1eCQKMD7y+nA/5pbePyOPZE2H4mYhq863y7m
	uGentDxhiip+x309vTEn16oL49ngpDZrHvbszLmYoUYDqzQXXk9qtfmoTMn3E4LGpw4ulwOF1bx
	GIZxcBoLVgP36ouo9Ault5FI7bpX0dWMNZ1+TLCbNJGRk4h3G1txoaNtUNTl3HpGGowjUxsnsoe
	vMlLEMyVMbAXQ22pCDQrAys4DQf2AHyxey9cJz7No+ZdZE0w+0sSzn6QkMGGJepE40Zbw1WSFXu
	idqXnlb1g9c7zR8m94uH2hIDTe0d3Dm65ZF/8g69+vLZuAh3dT2lfa9gBrhE4/iqqKVitpOJNGb
	yK/eRya2WyeQqc4F+SDI5ZMkOEOmXaMHEvIhiwuM64HXn8Fh2X8tBaOohe9FWWri9QXn7y6xh7C
	c6JJ3zca+cQrYYpgiJxCT9XbR8g9RjjgxDpdYnbzP/
X-Received: by 2002:a05:6808:1713:b0:4f3:68d6:f12c with SMTP id
 5614622812f47-5640dc8fa07mr3133341b6e.24.1793422377058; Fri, 30 Oct 2026
 21:52:57 -0700 (PDT)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <20261025151702.13434-1-sowmyatorra@gmail.com>
In-Reply-To: <20261025151702.13434-1-sowmyatorra@gmail.com>
From: Sowmya Torra <sowmyatorra@gmail.com>
Date: Sat, 31 Oct 2026 10:22:46 +0530
X-Gm-Features: AclHuK_X9nFcpXnVdJSane85WqPOTI985p6EkWeLXW6uvtNIlD9Nkg9pUAlCUmo
Message-ID: <CAFsBPPm5X=FUGf_4eSMYbUmRp0cubi50C07RQ1po=pGO2RX6iA@mail.gmail.com>
Subject: Re: [PATCH] scsi: sd: Remove unused zone append tracepoints
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org, julianbraha@gmail.com, julia.lawall@inria.fr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I=E2=80=99m following up on this patch. Actually the build passed, and both
unused-tracepoint warnings disappeared after the change I made.

Could you please let me know if anything needs correcting or if I
should do any additional checks? Your feedback actually would help me
take the next steps on this patch.

Thank you for your time and guidance.

Best regards,
Sowmya

On Sun, Oct 25, 2026 at 8:49=E2=80=AFPM Torra Sowmya <sowmyatorra@gmail.com=
> wrote:
>
> Commit 1846f308d66f ("scsi: sd: Use the block layer zone append
> emulation") removed the calls to scsi_prepare_zone_append and
> scsi_zone_wp_update, but left their definitions in sd_trace.h.
> Consequently, sd_zbc.c still generates code and data for events
> that have no remaining callers.
>
> Remove sd_trace.h, which contains only these two events, and
> remove its include and CREATE_TRACE_POINTS definition from
> sd_zbc.c.
>
> Fixes: 1846f308d66f ("scsi: sd: Use the block layer zone append emulation=
")
> Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
> ---
>  drivers/scsi/sd_trace.h | 84 -----------------------------------------
>  drivers/scsi/sd_zbc.c   |  3 --
>  2 files changed, 87 deletions(-)
>  delete mode 100644 drivers/scsi/sd_trace.h
>
> diff --git a/drivers/scsi/sd_trace.h b/drivers/scsi/sd_trace.h
> deleted file mode 100644
> index cba3c0b825ba..000000000000
> --- a/drivers/scsi/sd_trace.h
> +++ /dev/null
> @@ -1,84 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/*
> - * Copyright (C) 2022 Western Digital Corporation or its affiliates.
> - */
> -#undef TRACE_SYSTEM
> -#define TRACE_SYSTEM sd
> -
> -#undef TRACE_INCLUDE_FILE
> -#define TRACE_INCLUDE_FILE sd_trace
> -
> -#if !defined(_SD_TRACE_H) || defined(TRACE_HEADER_MULTI_READ)
> -#include <scsi/scsi_cmnd.h>
> -#include <scsi/scsi_host.h>
> -#include <linux/tracepoint.h>
> -
> -TRACE_EVENT(scsi_prepare_zone_append,
> -
> -           TP_PROTO(struct scsi_cmnd *cmnd, sector_t lba,
> -                    unsigned int wp_offset),
> -
> -           TP_ARGS(cmnd, lba, wp_offset),
> -
> -           TP_STRUCT__entry(
> -                    __field( unsigned int, host_no )
> -                    __field( unsigned int, channel )
> -                    __field( unsigned int, id )
> -                    __field( unsigned int, lun )
> -                    __field( sector_t,     lba )
> -                    __field( unsigned int, wp_offset )
> -           ),
> -
> -           TP_fast_assign(
> -               __entry->host_no        =3D cmnd->device->host->host_no;
> -               __entry->channel        =3D cmnd->device->channel;
> -               __entry->id             =3D cmnd->device->id;
> -               __entry->lun            =3D cmnd->device->lun;
> -               __entry->lba            =3D lba;
> -               __entry->wp_offset      =3D wp_offset;
> -           ),
> -
> -           TP_printk("host_no=3D%u, channel=3D%u id=3D%u lun=3D%u lba=3D=
%llu wp_offset=3D%u",
> -                     __entry->host_no, __entry->channel, __entry->id,
> -                     __entry->lun, __entry->lba, __entry->wp_offset)
> -);
> -
> -TRACE_EVENT(scsi_zone_wp_update,
> -
> -           TP_PROTO(struct scsi_cmnd *cmnd, sector_t rq_sector,
> -                    unsigned int wp_offset, unsigned int good_bytes),
> -
> -           TP_ARGS(cmnd, rq_sector, wp_offset, good_bytes),
> -
> -           TP_STRUCT__entry(
> -                    __field( unsigned int, host_no )
> -                    __field( unsigned int, channel )
> -                    __field( unsigned int, id )
> -                    __field( unsigned int, lun )
> -                    __field( sector_t,     rq_sector )
> -                    __field( unsigned int, wp_offset )
> -                    __field( unsigned int, good_bytes )
> -           ),
> -
> -           TP_fast_assign(
> -               __entry->host_no        =3D cmnd->device->host->host_no;
> -               __entry->channel        =3D cmnd->device->channel;
> -               __entry->id             =3D cmnd->device->id;
> -               __entry->lun            =3D cmnd->device->lun;
> -               __entry->rq_sector      =3D rq_sector;
> -               __entry->wp_offset      =3D wp_offset;
> -               __entry->good_bytes     =3D good_bytes;
> -           ),
> -
> -           TP_printk("host_no=3D%u, channel=3D%u id=3D%u lun=3D%u rq_sec=
tor=3D%llu" \
> -                     " wp_offset=3D%u good_bytes=3D%u",
> -                     __entry->host_no, __entry->channel, __entry->id,
> -                     __entry->lun, __entry->rq_sector, __entry->wp_offse=
t,
> -                     __entry->good_bytes)
> -);
> -#endif /* _SD_TRACE_H */
> -
> -/* This part must be outside protection */
> -#undef TRACE_INCLUDE_PATH
> -#define TRACE_INCLUDE_PATH ../../drivers/scsi
> -#include <trace/define_trace.h>
> diff --git a/drivers/scsi/sd_zbc.c b/drivers/scsi/sd_zbc.c
> index 56e455fb5add..a7bdf089e142 100644
> --- a/drivers/scsi/sd_zbc.c
> +++ b/drivers/scsi/sd_zbc.c
> @@ -20,9 +20,6 @@
>
>  #include "sd.h"
>
> -#define CREATE_TRACE_POINTS
> -#include "sd_trace.h"
> -
>  /* Whether or not a SCSI zone descriptor describes a gap zone. */
>  static bool sd_zbc_is_gap_zone(const u8 buf[64])
>  {
> --
> 2.47.3
>
