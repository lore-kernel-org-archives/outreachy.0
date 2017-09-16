X-GM-THRID: 6466355648618561536
X-Received: by 10.202.235.133 with SMTP id j127mr15658472oih.50.1505566231340;
        Sat, 16 Sep 2017 05:50:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.73 with SMTP id u70ls1430510ioi.17.gmail; Sat, 16 Sep
 2017 05:50:30 -0700 (PDT)
X-Received: by 10.202.75.140 with SMTP id y134mr14830652oia.98.1505566230649;
        Sat, 16 Sep 2017 05:50:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505566230; cv=none;
        d=google.com; s=arc-20160816;
        b=Xy1wjNz1HdFWbhFt5bAo+/ZOFkSS3VIP5Ssq/R6lDxbTaH29I5rO/Cw7Wdx7ffOXEi
         x2O1Rf8W8eg8P+DeIepMYJsuwNhSZeV9vGPGEfv0qPYfgQF5eNfkUCvR40wEN55U79RP
         KNTg+bapB87QM9IGm99fyFZR1h1fjaXx+nShcricbDphDO7La0d0SiXYMc/pbw/OoUka
         sX+Gh/txx14inqEjExvHyJkY135aAYtrolYGWq/FDBVA8VotSTwW04fFydX+5Ik4v0aX
         gUO3//kqFTiaWI7luXD81TrA2XcXzqPwBRdtS8nUwSMNkhYCIee4q6bB3msoet1BBuQC
         ISgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=UNIRTGL0ZLJZAH/MSc+DQUU/Bm9DFwoe+sGFD117J/g=;
        b=kRAqobd8n99MYUnctP12k2ngO0YbDevjRurEuv4WVOhDV9CZue2dM0OUBSoNoAMVXU
         IH5dcBA5KYoemMp1jWoyQ7+MsLDhzTPxFmVnV1+g1e4ikhTQ8BuKJJNa06PZrlq1v3rO
         x5sEjwtjY4wRz5awgqhQ1fzTovUEyh5cVXObvCtPjVvNZrLQHw4wK7rTkI8WICJsK7bu
         Xmh0M7DdXb+FBPnB1f/wYMqRd5bXELkWmHS7qnJ4ksnzBGGJ92nYbLhWMmzNh2vsWn6K
         yajymUPiKm/2ksHi8V5L74yekIy1WdRvkKc4PqMM4PkMkNWTWzna+LXKqazoCOtFCXDZ
         p/nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iZYQLxWn;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-ua0-x241.google.com (mail-ua0-x241.google.com. [2607:f8b0:400c:c08::241])
        by gmr-mx.google.com with ESMTPS id e5si106191vkb.2.2017.09.16.05.50.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 05:50:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) client-ip=2607:f8b0:400c:c08::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iZYQLxWn;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x241.google.com with SMTP id g47so1387309uad.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 05:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=UNIRTGL0ZLJZAH/MSc+DQUU/Bm9DFwoe+sGFD117J/g=;
        b=iZYQLxWnw+Y3BGt3kTPiwMQcxdp85fHScGucAnzeDTphcX5pP3LwW2p8prGz8prKeI
         5FtsTyjwir+0EhX3efU0v75cTI1X0gcPhSJlcb+2I+w3IIp+3eJ0FaiS9VeUmZZVrYT1
         R8UHY2pP5/iH73I/AQCO0h7RxJeYhFcKawYgKtfRDrZR2lVPTu18ze3K1upL63UaSJKe
         mWU7c6HUd3XrAa4zzmfiZ3Ugk8/iXqWmYd4ZEiY0Ih3pjXnLQ228d1NtVSI9UUIxsIxq
         mFy8/MBVz+WnzlOjrpg6r671glrbQQPCN7O6QDlpfJRJGFzuRzoCt7w2FuSbgUxKRoBS
         rpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=UNIRTGL0ZLJZAH/MSc+DQUU/Bm9DFwoe+sGFD117J/g=;
        b=anPwT3BsxRzr+iEmAUm2brb1Wjin0R55VjybkRtYjxiXfHmFDxHdNr7CTa8108gJAv
         5JMjdW48LD2wNLYesP9yOLMEK2aI04ryCbQgwqS2Wo8CYDy248AXNzmWz0DqN4U3sns7
         X0EbHqMly4wipAp6SZLr+8zWouMHPYFmSZcIfKqRu93Nsk/ZxOTiYP7Nr5tcXE9cbxPt
         5um9E2ZeEGPCAeotgkfJfS79X83zdQIm2aU6rIkxDOAfOT+QaZLfZo37Gkid5m99LCvv
         rTk1Pnq/lg1E9w0trBTAlv0SVfCq6yhTH9S3x+druIbHWC5RSRt7PXim4CeCZV3UWpFM
         KzeQ==
X-Gm-Message-State: AHPjjUiQ6lCn1Hp9KxWR9qGFcLJgzxbsg6pqYkc9kWDNKjvwKZW9fBP3
	BVBLJPuzSahh8A2nC5s5t+9VIsZET3Uf0bU3k2/bpQ==
X-Google-Smtp-Source: AOwi7QAeSHnNUIUDTJt5ZBM7lMRZ+LAaVWgk4ZbjcAS36e6Rc1X8U8jEQal5/KxMPaN0j8Ow1ur4dJKZhxEi/RZo26Y=
X-Received: by 10.176.86.18 with SMTP id y18mr11563322uaa.1.1505566230112;
 Sat, 16 Sep 2017 05:50:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.2.149 with HTTP; Sat, 16 Sep 2017 05:50:29 -0700 (PDT)
In-Reply-To: <1505565724-11498-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1505565724-11498-1-git-send-email-aastha.gupta4104@gmail.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sat, 16 Sep 2017 18:20:29 +0530
Message-ID: <CAHXiS58vAvWBLuUe=Mu=3MksB7yEXNU4a_COkUU-0tBzgpLpfg@mail.gmail.com>
Subject: Re: [PATCH] staging: dgnc: remove unused variables
To: outreachy-kernel@googlegroups.com, Lidza Louina <lidza.louina@gmail.com>, 
	Mark Hounschell <markh@compro.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

please ignore this patch.

On Sat, Sep 16, 2017 at 6:12 PM, Aastha Gupta
<aastha.gupta4104@gmail.com> wrote:
> This patch removes some unused variables.
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_driver.h | 1 -
>  drivers/staging/dgnc/dgnc_neo.c    | 1 -
>  2 files changed, 2 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
> index 764d6fe..d69d9c0 100644
> --- a/drivers/staging/dgnc/dgnc_driver.h
> +++ b/drivers/staging/dgnc/dgnc_driver.h
> @@ -233,7 +233,6 @@ struct device;
>   */
>  struct un_t {
>         struct  channel_t *un_ch;
> -       ulong   un_time;
>         uint    un_type;
>         uint    un_open_count;
>         struct tty_struct *un_tty;
> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> index a8491d7..0fa4267 100644
> --- a/drivers/staging/dgnc/dgnc_neo.c
> +++ b/drivers/staging/dgnc/dgnc_neo.c
> @@ -1182,7 +1182,6 @@ static int neo_drain(struct tty_struct *tty, uint seconds)
>         unsigned long flags;
>         struct channel_t *ch;
>         struct un_t *un;
> -       int rc = 0;
>
>         if (!tty)
>                 return -ENXIO;
> --
> 2.7.4
>

