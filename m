X-GM-THRID: 6207871882034675712
X-Received: by 10.112.144.105 with SMTP id sl9mr1734578lbb.3.1445413278590;
        Wed, 21 Oct 2015 00:41:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.153.65 with SMTP id b62ls155611lfe.57.gmail; Wed, 21 Oct
 2015 00:41:17 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr1734991lbb.19.1445413277989;
        Wed, 21 Oct 2015 00:41:17 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id cm6si957827wib.1.2015.10.21.00.41.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 00:41:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wiut4 with SMTP id t4so10322803wiu.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 00:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=KUG/Ehq5HO3ZC8UGTlVOjI86n2xDnHZ/wo//m6rziVM=;
        b=xVL3u5Xx37GTAKMbf8Irg3KNZTisOgHrL0Nviw3938VD16twvpDiNJGSm0+w/F8MWa
         MvV+Ui66gbkxnRAn4j2HvoJYAkLSNQ2Zm51CocqrmEJ2/RVh3zup1bZCemiW0z9geKZU
         uscj4wvI0jwVW6xHv9HpJ3kzI0hvk+/UV97Kii6Nfkz1uCiUCyNz7tfyQ/XPLNW9wNqH
         jG9Zw1Mc75PkYjGs2iMtIAcNge7Hz6YdQIQeyOVXFg3uTRfSPx20wturrDrBQMMQxfbC
         KGXLiEibIqghX7bl4eAzMndlLAyiR8sN0ODWt7JiVq7rU6YU+IC8uTmMrJWxGAEmreMY
         K1hg==
MIME-Version: 1.0
X-Received: by 10.194.175.104 with SMTP id bz8mr9077546wjc.42.1445413277842;
 Wed, 21 Oct 2015 00:41:17 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 21 Oct 2015 00:41:17 -0700 (PDT)
In-Reply-To: <6a5c7c89e9bc61382ab763935b0f9b9442f67cb9.1445382697.git.ciorneiioana@gmail.com>
References: <cover.1445382697.git.ciorneiioana@gmail.com>
	<6a5c7c89e9bc61382ab763935b0f9b9442f67cb9.1445382697.git.ciorneiioana@gmail.com>
Date: Wed, 21 Oct 2015 10:41:17 +0300
Message-ID: <CAEnQRZArNAOoCpnPWBxJPjRC13tiYyT-fTVqkfaZVZn3psaFNQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: dgap: properly indent to
 match open paranthesis
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 2:13 AM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Indent parameters and arguments passed to function calls to match
> open paranthesis
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>

Mostly looking good, two questions. See below:
> ---
>  drivers/staging/dgap/dgap.c | 52 ++++++++++++++++++++++-----------------------
>  1 file changed, 26 insertions(+), 26 deletions(-)

<snip>

> @@ -3538,10 +3538,10 @@ static int dgap_tty_write(struct tty_struct *tty, const unsigned char *buf,
>                 return 0;
>
>         spin_lock_irqsave(&ch->ch_lock, lock_flags);
> -

Why remove this new line?

>         /* Get our space available for the channel from the board */
>         tmask = ch->ch_tsize - 1;
>         head = readw(&(bs->tx_head)) & tmask;
> +

Why add this one here?

>         tail = readw(&(bs->tx_tail)) & tmask;
>

thanks Ioana!

Daniel.

