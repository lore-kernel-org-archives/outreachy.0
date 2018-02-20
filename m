X-GM-THRID: 6524033541786828800
X-Received: by 10.25.216.12 with SMTP id p12mr1151735lfg.32.1519096015598;
        Mon, 19 Feb 2018 19:06:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.68 with SMTP id u65ls909129lja.13.gmail; Mon, 19 Feb
 2018 19:06:53 -0800 (PST)
X-Google-Smtp-Source: AH8x226fXQK5NroLh6nCJ8qwNt4TLaG8M2jrBBksN2vfJwQpbDOcFio/2sdfEeHqBjsat8Q07O4c
X-Received: by 10.46.44.4 with SMTP id s4mr429184ljs.40.1519096013775;
        Mon, 19 Feb 2018 19:06:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519096013; cv=none;
        d=google.com; s=arc-20160816;
        b=Ju5EDRfjsfnPjciM5ulz/WUKNESzukDkBkJZMFx47Rx80ca/iRV+YsnqAsSsdH0Iw3
         TbFGv2ff8yN8RCLkzaUAkM5yDofqYZN7g/TmbSXwqVGbsbeUrYkLpiVzusyZMZlh95pz
         H7v2uKjy1HEOz+2Frig+ube1CPdXjevGxQdDT6Umslo2Qs3Ld4lyX/Ym7IwwhCsTEzuH
         5BOeDSHgtokzRJJBIez6q0VGNyA0/dzM6Ir2a0F6hG3m+BQHQiKGeUN51b9ozHP7SX5g
         3Xi0MhrDVoGuT3E3kCk39NyFQbdeB2zqwv+VQLXcVtvfhEX6OqPPjEWzWwnamfNnknhK
         CHBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :arc-authentication-results;
        bh=3gh6m9NlhWZ8WZfg5JGCluXs6KdevUI5hj4jPOdC0UA=;
        b=nPuCc5wyhnF4m2i55hWwKduhoeDHkwpQFcN9+pcPj/svXyYBBnYPYt106iFxv7iGt9
         9pbpTwK8Z1T+BsdSR59j3Oi4Et8eZYGPuYEXTavILh+R8+mZZqKTo0MFjhN4lBruT1PH
         hVyf6e/95YVZofW2iUt+9XFHKrzbIyf6vZcr4mCHD5KO1MEhXD1nKv+UJdjjz06mIlJ/
         Q8YA8JkNGEGF7zNGyv609dMcCweTQALcl6h2BoGWSKzz2s1AKdA8QP8Hb3fe9OJzAnYm
         ITneGc1dXd1e8q4jHZzhoFzzLHyC2W+AsEWHJcWhxUzyPUu3FtlyQAx0lOmBnb9K+H29
         pFcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.68 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com. [209.85.215.68])
        by gmr-mx.google.com with ESMTPS id w7si86919ljw.4.2018.02.19.19.06.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 19:06:53 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.68 as permitted sender) client-ip=209.85.215.68;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.68 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Received: by mail-lf0-f68.google.com with SMTP id v9so2135327lfa.11
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 19:06:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=3gh6m9NlhWZ8WZfg5JGCluXs6KdevUI5hj4jPOdC0UA=;
        b=f4oLkxBDaw8YhmXRGxOxLveB437Zlfwan+4xkHApzl8QKhMAflUI6+cPnX04Rgu19W
         Q/AWajM2GXkCjHTIJr9j5F+iT0+iKabrcFpQh0K5yf4ePca6oFx2SHIvRxIxa2ucrgCp
         cuJeCTLb3Ht/mVcx4mxC4LBsJ1mFkbgPtMGm0JRveKOEgrkGCklV3uZo4EMBZZI+Auxx
         J2pRvA1+YLY8ltDshUWIh2JfqF34eHKRdWEij89P7mXWHJkX2rrTvAzmWJB8Je+a/zlB
         k4dPeZY7W0xtMRKz0gZjv2gdiCYO65X+g/s0wEMRSgORfQcfCHkziMiHLg349k1L3Znh
         pqxw==
X-Gm-Message-State: APf1xPDJDx+uePaFP9I1NfSTgNqMCmv2IU0FOwDSC/Po469AB9ZhQOFe
	ziArvdtdff/n1cAGmOOuxptxd+uo
X-Received: by 10.46.83.92 with SMTP id t28mr3376472ljd.63.1519096013187;
        Mon, 19 Feb 2018 19:06:53 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com. [209.85.215.43])
        by smtp.gmail.com with ESMTPSA id p67sm1979018ljb.95.2018.02.19.19.06.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 19:06:53 -0800 (PST)
Received: by mail-lf0-f43.google.com with SMTP id g72so2158489lfg.5
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 19:06:52 -0800 (PST)
X-Received: by 10.25.27.82 with SMTP id b79mr5021303lfb.64.1519096012752; Mon,
 19 Feb 2018 19:06:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.112.4 with HTTP; Mon, 19 Feb 2018 19:06:52 -0800 (PST)
In-Reply-To: <20180219175436.GA2709@ubuntu>
References: <1518994920-4952-1-git-send-email-santhameena13@gmail.com>
 <CAK-LDbLnPARa4iMTwSF71BTcWRt2yQv2oB0v0Ye5=w8D-b0pbQ@mail.gmail.com> <20180219175436.GA2709@ubuntu>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 20 Feb 2018 08:36:52 +0530
X-Gmail-Original-Message-ID: <CAK-LDbLvCZ9V3L6jX2frX=xiN2XvjdPuw9xq-CWwyFndTxbH+g@mail.gmail.com>
Message-ID: <CAK-LDbLvCZ9V3L6jX2frX=xiN2XvjdPuw9xq-CWwyFndTxbH+g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: remove additional
 blank line
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 19, 2018 at 11:24 PM, Santha Meena Ramamoorthy
<santhameena13@gmail.com> wrote:
> On Mon, Feb 19, 2018 at 09:36:46AM +0530, Vaishali Thakkar wrote:
>> On Mon, Feb 19, 2018 at 4:32 AM, Santha Meena Ramamoorthy
>> <santhameena13@gmail.com> wrote:
>> > Remove extra blank line inside a function to conform to Linux
>> > kernel coding style. Problem detected using checkpatch.
>>
>> Hi Santha,
>>
>> Change looks fine to me but subject of this patch is bit confusing.
>>
>> Can you change it to 'Remove extra blank line'?
>
> Hi,
> I just got an email saying that the patch has been added to the staging tree.
> Now, I'm confused if I should submit v2 or leave it as is. Can you plese
> help me?

Hi,

Please cc mailing list to keep everyone in the loop. And no, if Greg has
added a patch in his tree then no need to resend teh patch. But you
can just keep this point in mind. :)

> Thanks,
> Santha
>>
>> > Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
>> > ---
>> >  drivers/staging/vt6655/rxtx.c | 1 -
>> >  1 file changed, 1 deletion(-)
>> >
>> > diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
>> > index 9aa4d52..bea0b7f 100644
>> > --- a/drivers/staging/vt6655/rxtx.c
>> > +++ b/drivers/staging/vt6655/rxtx.c
>> > @@ -1080,7 +1080,6 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
>> >         else if (fifo_ctl & FIFOCTL_AUTO_FB_1)
>> >                 byFBOption = AUTO_FB_1;
>> >
>> > -
>> >         /* Set RrvTime/RTS/CTS Buffer */
>> >         wTxBufSize = sizeof(struct vnt_tx_fifo_head);
>> >         if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {/* 802.11g packet */
>> > --
>> > 2.7.4
>> >
>> > --
>> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1518994920-4952-1-git-send-email-santhameena13%40gmail.com.
>> > For more options, visit https://groups.google.com/d/optout.

