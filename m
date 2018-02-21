X-GM-THRID: 6524033541786828800
X-Received: by 10.107.190.199 with SMTP id o190mr2721514iof.32.1519234555877;
        Wed, 21 Feb 2018 09:35:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.144.3 with SMTP id s3ls419221iod.7.gmail; Wed, 21 Feb 2018
 09:35:54 -0800 (PST)
X-Google-Smtp-Source: AH8x224uviwZmOA+hYUdvZEL/s0dJnx4KeuEE6m97LMdfpHO2D5ceOaXPrxMTgnRvyHCveNGkyxB
X-Received: by 10.107.140.7 with SMTP id o7mr2717766iod.44.1519234554742;
        Wed, 21 Feb 2018 09:35:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519234554; cv=none;
        d=google.com; s=arc-20160816;
        b=bTW/fBEkzQo5qW5sUfUgDYzRKw7sAN8g47CSltK+z6uvzbEE/uEv72t6eQCehjg2Yd
         lrwhn8qHeX6NnJ0hGXZLDPgVLyOgeHq2AylYRPN/hZtPuMSz/CwVU59fnASs8Ediv6bs
         5C81EJ+e4hdXAiOP7ck08Hm5YtyoyzSOa9hUBib6l/2Z835x9ZmeH9kQ1v+3VPLBVzRS
         pk1p6ULVUk6UiAWjh6diGuwL+aVasdKDKM+h6KkNmPnbR3ZHW4RZCO596qy4tZdFh0m+
         /6Z6a80ZMMh5QDG3ySqYGtHlnzs029awbbSjv0/SEMY5pjiTjcyHWWQSitVGYnYVHSe3
         AivA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=hLSMVGsoSOuOyDAa5PprwOJK6TL7baoUQadzx75wHbs=;
        b=t1Lq5s/gR1++sohMvFIPDiVkVx5+6SnKU/NMFxabmecGVd4gDWrZnqojjDBziojl8X
         4HaHiog+Og29V3hyDkqWGwNv1cAdnSi9EmesOkJaS9IlQipeidsBB2tcZwrjjvgVMESl
         LGltf/L2W26WGtn/YZBsQNtV4+S7fhTjZgcmW5nSOnsX2CPQQzVdFJ7ShO7M3yLs7gmM
         570TWyaaQCFcCgdKWJT+2tFPyO/YSShg5JzKDLxxGQpHtNmynvlMJyXiE+XKNgeAFts8
         3lsJm7s4taxT3WNY3LAU1md9NIlQXCVobAJdkgcTxt1Oi/TOKeICwB19caqpc1x2/Hee
         KN/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c2atD9bI;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id x35si1134572ioe.2.2018.02.21.09.35.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 09:35:54 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c2atD9bI;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id m19so913138pgn.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 09:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hLSMVGsoSOuOyDAa5PprwOJK6TL7baoUQadzx75wHbs=;
        b=c2atD9bItAOMcYkTI4JH+MvtbKbFnQoJsuZ+279nW5gt8mgegKBsfzcWUtcekohxe8
         PVgZic3PRYaYJzVd1Txk2kEO2HbSr+QvROvKmoknhqEZ0C9bB1C/Exe803GQ+YQasRTg
         7uOW9hFimPheM0NDkbjqYEBQuFM4CsWeawjlVfn+MLvb878wsnqHQyEvn3B/hgj//z7u
         Drchl01oi3jFYHoujaXALgGDoLlK4PWKnkmIDwRCnefG+/hhJ537BV4RoKPp3Uo/3Xtb
         gkSiNAS0WddYBlACjTpUP1qDrMnmKhvQ6z5TIZ6m3E6MWzgp2qd1TGDe0YGW1Wjg+9DJ
         q3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hLSMVGsoSOuOyDAa5PprwOJK6TL7baoUQadzx75wHbs=;
        b=ggrUdhlf9MuGV1/JxgEtNklhGAp3twW337nYsVtR2HqxexM1syaH6wHW0FqMsZJtaq
         jMR8I3v6o1QDB91yNvTA0HBCj8oze7s7JxG22Eom3xCk+ATItaOMEt19pwfRnYXKuOf+
         meqLHaI3cSi5H9Mq9Pt/S39GNIZ00TiZ/re2kq2rfOEPnqfNng6lNL/4LfkFATB9cwHv
         iF1SAZ7T8sG0sZQW5c9jUgRRHUbiGj871mvx0ZM5M796oC7hpac5HPVDF0JXTm0DUN9t
         AwB9JqYY5naN8hV+grHxaCYX6lztYSoiKufxXKuzIiYUA50l8AH5BJ336nuNjKOuXdDU
         QziA==
X-Gm-Message-State: APf1xPCXWbR2sHE0xvn4bae10gzOwalwMgQgILeGZWPPD3acLeh0e6Wm
	Y+hGdTClZfIsAEx4V3Acouu7kg==
X-Received: by 10.99.170.73 with SMTP id x9mr3298776pgo.393.1519234554074;
        Wed, 21 Feb 2018 09:35:54 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from ubuntu (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id d74sm74953804pfb.54.2018.02.21.09.35.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 09:35:53 -0800 (PST)
Date: Wed, 21 Feb 2018 09:35:50 -0800
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: remove additional
 blank line
Message-ID: <20180221173550.GC7590@ubuntu>
References: <1518994920-4952-1-git-send-email-santhameena13@gmail.com>
 <CAK-LDbLnPARa4iMTwSF71BTcWRt2yQv2oB0v0Ye5=w8D-b0pbQ@mail.gmail.com>
 <20180219175436.GA2709@ubuntu>
 <CAK-LDbLvCZ9V3L6jX2frX=xiN2XvjdPuw9xq-CWwyFndTxbH+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK-LDbLvCZ9V3L6jX2frX=xiN2XvjdPuw9xq-CWwyFndTxbH+g@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 20, 2018 at 08:36:52AM +0530, Vaishali Thakkar wrote:
> On Mon, Feb 19, 2018 at 11:24 PM, Santha Meena Ramamoorthy
> <santhameena13@gmail.com> wrote:
> > On Mon, Feb 19, 2018 at 09:36:46AM +0530, Vaishali Thakkar wrote:
> >> On Mon, Feb 19, 2018 at 4:32 AM, Santha Meena Ramamoorthy
> >> <santhameena13@gmail.com> wrote:
> >> > Remove extra blank line inside a function to conform to Linux
> >> > kernel coding style. Problem detected using checkpatch.
> >>
> >> Hi Santha,
> >>
> >> Change looks fine to me but subject of this patch is bit confusing.
> >>
> >> Can you change it to 'Remove extra blank line'?
> >
> > Hi,
> > I just got an email saying that the patch has been added to the staging tree.
> > Now, I'm confused if I should submit v2 or leave it as is. Can you plese
> > help me?
> 
> Hi,
> 
> Please cc mailing list to keep everyone in the loop. And no, if Greg has
> added a patch in his tree then no need to resend teh patch. But you
> can just keep this point in mind. :)

Hi,
Thank you. I'll keep it in mind. And I'll also make sure that I include the
mailing list in all my messages. 

> 
> > Thanks,
> > Santha
> >>
> >> > Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> >> > ---
> >> >  drivers/staging/vt6655/rxtx.c | 1 -
> >> >  1 file changed, 1 deletion(-)
> >> >
> >> > diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> >> > index 9aa4d52..bea0b7f 100644
> >> > --- a/drivers/staging/vt6655/rxtx.c
> >> > +++ b/drivers/staging/vt6655/rxtx.c
> >> > @@ -1080,7 +1080,6 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
> >> >         else if (fifo_ctl & FIFOCTL_AUTO_FB_1)
> >> >                 byFBOption = AUTO_FB_1;
> >> >
> >> > -
> >> >         /* Set RrvTime/RTS/CTS Buffer */
> >> >         wTxBufSize = sizeof(struct vnt_tx_fifo_head);
> >> >         if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {/* 802.11g packet */
> >> > --
> >> > 2.7.4
> >> >
> >> > --
> >> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1518994920-4952-1-git-send-email-santhameena13%40gmail.com.
> >> > For more options, visit https://groups.google.com/d/optout.

