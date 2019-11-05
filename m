X-GM-THRID: 6755712048500310016
X-Received: by 2002:adf:f4c9:: with SMTP id h9mr22007916wrp.354.1572938633566;
        Mon, 04 Nov 2019 23:23:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9d8b:: with SMTP id p11ls14777386wre.7.gmail; Mon, 04
 Nov 2019 23:23:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqzsgSyQCq7cdMk/N2qmfdhJKxJcwIQIvtITezRSZsCUZWd9ldnCc7zUsS9I5byjE62u3pe6
X-Received: by 2002:adf:e286:: with SMTP id v6mr21717610wri.241.1572938632501;
        Mon, 04 Nov 2019 23:23:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572938632; cv=none;
        d=google.com; s=arc-20160816;
        b=zLni69wU8vsDlTM4FOCxrVNlxJMccFqjkNAS7/UyDEC0I5gdGgJOCxoZ5BhoaCjZP7
         wDzT49tB0A+wPlHWhEqhCNNFItUYMK2SLE2R0OKiCMYlEcY2oVNJoCEq5DA4kI3FqytA
         W7YHnEwoed6UioPWpirDj1S5XkOuMQDfqvSbsRsvtVZstWDeF9vSKRaCweVfBFeqaWUm
         E2aiIvZ2rB9JPCOMDwLsn0jhV1+/5U8aoC5/Zg0e5BNCrYkt1HRQ3/yCJ54fXjg+D2Or
         oOgDg2dFcPY1FvRTmFQoZVgacFCH/nN9dXuwj4T5wNSWcRc63YuG9vSE03U97TRDLsWs
         2tIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i/fODqIVF0d+S3axyBKO8bCBYeARDgDGkVQ/htnac8Q=;
        b=Q2C4M7dz79jTydzK1mIDyFZ8VrA0yBHrueWXim/yVP7nxoNl9mIOHsxktPgrL8sTI1
         7mttWXiBQvHVxHN/E7JQUgcuFaqStwnWFjmn5Ki/Iwo8hyjtM+AU84JX5FFsFS++NW+U
         3OBLLi3F8btSxhQWoVkdGSM/uXbgvksW1F1FYv+mziyxmtcGmeiS/3TLy1wykg1fP1y3
         xnKTEVIcXlATtD2O02KhM7CWw2z/YdUQ/vOxQoUFbsp9wkOtp163/wmHcR/HOquACzqO
         ti91S2y+t2kSfIdp+IF/EysZRTW4/A6zYWAyqCyJzYszqTv+MpCsx5GVfXMdDF9czOYX
         i/CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q2N77x19;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id q22si863841wme.2.2019.11.04.23.23.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 23:23:52 -0800 (PST)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q2N77x19;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x141.google.com with SMTP id y6so14285968lfj.2
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 23:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i/fODqIVF0d+S3axyBKO8bCBYeARDgDGkVQ/htnac8Q=;
        b=Q2N77x19kIwMs3Q554nE4CtHcR7aHo6VX6b7rvcHG6S78EWKUI0aVswgxeyLQKctZQ
         ZmZMiTWGrNkH8xdLMQvMqSnFahtih+ER5/sfVU4vqtmXG64gQSJeRnoS9SoVve3xa8w6
         f0z5wH+Mh5IVBoOQlY6w/08g0Se9JxG9jcc2pesKLTFceMBox31RVa2GsUYGNoIAd/wc
         dVHx/NgFm0COOgcMkyVFhGEyyM+Qih8RMIfJp1RoT3TkoV5agCcYTNU7y4ZcbPHcOgEF
         nesvo1IesWXAGD7VVv6RCcIWB8pkvqKG02BxuJJhiXP8eMRAGwTe9scPzhfshrD+L1ZY
         f/hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i/fODqIVF0d+S3axyBKO8bCBYeARDgDGkVQ/htnac8Q=;
        b=EDxfuMtuP8WZhVPS3e0Hek2iAIbXe4FgJQqTPqRYLnMW665Z9me6gbqzdhT9kUIhiR
         OO38CBniIq2RlcKch9pTsYpWhalg+xzzP1fWY28/G1e9Yy3wU7TioS/0UwTocsu5tfq4
         m2fiNgtjbmnC/l57GdTx+Q+eVthQSUggdPuHEiwkygxjHMlRDdjh0+0n5R8JSI54RHPe
         PkBiVxo5diUXCsxqaD7UxlrVQM2XrUoWMAj03nw/p5tA0M+VDVRK7p/iWStFj0aBFWpo
         rHs5kvVE6ngyQguUj0Ov8hsWt3VbU3LVnfl+kACeNhpd0UR+jLNzYTSOodEmO3JOR6UT
         TTyw==
X-Gm-Message-State: APjAAAXC1f+07JXYhUFTT/PBPioBsbcf/im4U1ldxjoJX6QLY9DYBDGf
	rVC2D9mon8+Q55TLObFtN06s1Q21fykfB8R+Yl6rR6MS
X-Received: by 2002:a19:41d7:: with SMTP id o206mr18602439lfa.188.1572938631918;
 Mon, 04 Nov 2019 23:23:51 -0800 (PST)
MIME-Version: 1.0
References: <1572936777-105285-1-git-send-email-nachukannan@gmail.com> <20191105072024.GA2587462@kroah.com>
In-Reply-To: <20191105072024.GA2587462@kroah.com>
From: Nachammai Karuppiah <nachukannan@gmail.com>
Date: Tue, 5 Nov 2019 02:23:39 -0500
Message-ID: <CAMOCsdsYwL2jf3+K+W+LiKkg5bpsfQc093paHsTENe3cx51COg@mail.gmail.com>
Subject: Re: [PATCH] staging: wfx: Modify return statement.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 5, 2019 at 2:20 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Nov 04, 2019 at 10:52:57PM -0800, Nachammai Karuppiah wrote:
> > Remove return variable and return the expression. Issue found using
> > coccinelle.
>
> This says _what_ the patch does, but not _why_ you want to do this.
>
> Also the subject is very odd...
>
Sure. Will resend the email for this patch. Should I just add resend
in subject line or make it V2?
Thanks for the feedback.

- Nachammai
> thanks,
>
> greg k-h

