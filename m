X-GM-THRID: 6207028887884398592
X-Received: by 10.112.173.170 with SMTP id bl10mr2904451lbc.7.1445187526357;
        Sun, 18 Oct 2015 09:58:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.78.81 with SMTP id c78ls448004lfb.45.gmail; Sun, 18 Oct
 2015 09:58:45 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr6062900lbb.22.1445187525709;
        Sun, 18 Oct 2015 09:58:45 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id d7si337678wiy.2.2015.10.18.09.58.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 09:58:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id ll6so66671292wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 09:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=YxVxO0JSsKdVwlFSo3XP1/gtmWMnjg4yp+TR5pr0fVc=;
        b=etVRR+djBgresQsElkPZt7lUijai1c6a7XLrmKhJ9UV1TD8IJA0LipIDqGdu4t7IT+
         AFH5IUwRsgLnW1etpP1jux6G8IlxL+76n6ZZzGJO9IZrlhj1k8+5KCa4pifNWzQD7y9u
         TinZflsxFx64xIOaDDmzRpKnMPiaOPcURoy7ebasywo6yYD/aXOJD04r8l7U+UO3RgN0
         xbwO9xLHOteS8Yy6r9RQYvWol/9AL9hATsL8Zu/g0x49i+kUcom/rHvv97+YFbFIwNBK
         iyf/oqJkmj8RVPtZSxFEKMSXxhlQSRiBZPTUnQiScctsKNE/aFLfgL0LKsUJLlyE7h4u
         urhA==
MIME-Version: 1.0
X-Received: by 10.180.90.166 with SMTP id bx6mr15315964wib.93.1445187525580;
 Sun, 18 Oct 2015 09:58:45 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Sun, 18 Oct 2015 09:58:45 -0700 (PDT)
In-Reply-To: <20151018164156.GA31672@ubuntu>
References: <20151018164156.GA31672@ubuntu>
Date: Sun, 18 Oct 2015 19:58:45 +0300
Message-ID: <CAEnQRZAduH-jJ1ei44dO2HME91+oDXBFPp2x787wGY6N1pDtTw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lcommon_misc: Correct
 block comments
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 7:41 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> Alignment of block comments should be correct.
> Fix checkpatch WARNING: Block comments use a trailing */ on a separate
> line
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lclient/lcommon_misc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/lclient/lcommon_misc.c b/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
> index 8389a0e..d80bcedd 100644
> --- a/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
> +++ b/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
> @@ -48,7 +48,8 @@
>  /* Initialize the default and maximum LOV EA and cookie sizes.  This allows
>   * us to make MDS RPCs with large enough reply buffers to hold the
>   * maximum-sized (= maximum striped) EA and cookie without having to
> - * calculate this (via a call into the LOV + OSCs) each time we make an RPC. */
> + * calculate this (via a call into the LOV + OSCs) each time we make an RPC.
> + */
>  int cl_init_ea_size(struct obd_export *md_exp, struct obd_export *dt_exp)
>  {
>         struct lov_stripe_md lsm = { .lsm_magic = LOV_MAGIC_V3 };
> @@ -74,7 +75,8 @@ int cl_init_ea_size(struct obd_export *md_exp, struct obd_export *dt_exp)
>         cookiesize = stripes * sizeof(struct llog_cookie);
>
>         /* default cookiesize is 0 because from 2.4 server doesn't send
> -        * llog cookies to client. */
> +        * llog cookies to client.
> +        */
>         CDEBUG(D_HA,
>                "updating def/max_easize: %d/%d def/max_cookiesize: 0/%d\n",
>                def_easize, easize, cookiesize);

While at it please also add an empty comment line at the begining:

/*
 * first text line
 * ..
 */

Like here: http://lxr.free-electrons.com/source/Documentation/CodingStyle#L467

