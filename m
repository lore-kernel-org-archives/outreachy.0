X-GM-THRID: 6664067951305424896
X-Received: by 2002:a5b:e83:: with SMTP id z3mr3360317ybr.61.1551865671279;
        Wed, 06 Mar 2019 01:47:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:60c1:: with SMTP id u184ls396781ybb.3.gmail; Wed, 06 Mar
 2019 01:47:50 -0800 (PST)
X-Google-Smtp-Source: APXvYqwyvltSHvBUpgX1pJFnHA2mHhzB6fH78nV9S/gMz98jaawyOqdvMsB2iMcIWYDXsVnuhMqO
X-Received: by 2002:a25:595:: with SMTP id 143mr3410286ybf.68.1551865670351;
        Wed, 06 Mar 2019 01:47:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551865670; cv=none;
        d=google.com; s=arc-20160816;
        b=rxbpQR2cOEe1rrDaXKYu8tTAAKjDTFvbrdIcXKPOZKfuWEEKaZN4WhZuwCXDzMozE0
         56A7WnaHk4XcyVbQOKg0URm1x8TPtNkXleolpw6k6OOgPXylOE78eCSK99EpENueirFr
         m08AX4ZSBFfG+KNDvp+z/xj8W5fvknfeLj2AeWVLPawPHv4Hg+KhaZZXnIgi6euvf5Ff
         VqNVOJAeKbBGp/op+2sT95RrUC1phOBSjJZ1fIpzXXoLYpObUdMaTaPtfyG2tmAYhrvP
         bjw1u2l+wXg3oVDVNSWGlBqvyhf7Eoj/Lcso1VNNU+C2XGNZIUeGafKQ83M8poZmQ6Ar
         2IKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MovWlpS4vAInUDG/yDYjcoaYC9Wa4vVesHfpcl6Vg9g=;
        b=WzamwcR3D0OAfwUtVc1WT0H6jrk0yn0i0zDkDBYrafvsJXpkz+msHmi7EXtUQeQHXn
         rPiLe5MlAkJ7jWNBXYJgQvHk4K+4MuWTMwcjkCNzD7fbSOQFK/cT0Yj3f95dgJ2nnH4u
         g15QSXh2kimbJhYTpomMF09tQDE8iOcLfPuOHvHWtn9Zzw1WE7lZWMlSsLfpvW3gWcOO
         EqHeVCcGyQmPU1J8GpDsSMcQMfLpZWRzY1SMjpl0Pv0iuXRd6rpxKt5NhOFX/36AbtVY
         eg0H8B5r6keWI42L4gpV2hMZTswPpxySRiqBoVcGB49XdQw2IEKu61zsbCpm2rtudvv5
         yoCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sunWVRtB;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id j16si23075ywa.2.2019.03.06.01.47.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:47:50 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sunWVRtB;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id v62so10187835otb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 01:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MovWlpS4vAInUDG/yDYjcoaYC9Wa4vVesHfpcl6Vg9g=;
        b=sunWVRtBsfg/dzSzU3uQZhRZxoA4LmS0ubO03QxwJiUAUi0a5vCn9gl7XBG9ZAFJYZ
         nKXrLa/nywf+OmWMpH70TyFN1hK/a35YgxbFYuXKI4bF8WU4Qex0v28b99O6JpGYMUdo
         YLyt2eQ6eUIcqEGZxwVD+FE9XOL6d2yHt6x7F3P8ATzxP+OKv0z66Gs9QM7osaagdiyn
         xeYiZsgjYOjpZrIPQxMwiavIr4tWRZ0IxOgIemLea7VlL0fj6x5bT/j5zzFKU2w76gdV
         MjnIwH90NdBkhs3R/s8S7URdRXdJmLA15FNTRCcmmi8NsWvlNMCjCXctxG0Pmlu2T9sM
         rexg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MovWlpS4vAInUDG/yDYjcoaYC9Wa4vVesHfpcl6Vg9g=;
        b=c4ISAFg/nz0rRBK1pYGBH524ERMv9wcV8O+Xz6awdex51QfO58hkhpSMh2W+gVS9aW
         +heF/FWt+5uHSKwgKqMzy7tZKRDQfoqaa52JStwzJDyVEx8egtZNwP1/7LAVh8mFPTzc
         CMsQaiYwC6DrOAaK2tEfS4EEJKQedfP9bF3/9ZMgYzCrG9uvdVlsV33JOzlkbRI8ENXp
         Fd4dsGCmsnXaABBR3tmyiz4S1DgxTsUn/88FARFwgwDfgKVDXH9XyDMkEUuQD4+YU9BR
         m7VeylNdSI9NOqajTszm/QGdQzgz3pZmmaWbcXYqV3AgoezGVaGR0BUfUn655/+B3jxw
         gxJw==
X-Gm-Message-State: APjAAAULRYJ5MOgnFoXfTw7sNyNifuXkF+o6ZxwylKBvfzqDwFfbAfTf
	NuS8A1JI+3N9sddEYgB1Q3cc2mgJ02QPEE8xgM/DiMnz
X-Received: by 2002:a9d:6ac2:: with SMTP id m2mr4095776otq.100.1551865670172;
 Wed, 06 Mar 2019 01:47:50 -0800 (PST)
MIME-Version: 1.0
References: <1551805986-49458-1-git-send-email-idebleenasen@gmail.com>
 <20190306091521.GD7927@kroah.com> <CACw+u4GRhRY5kgjQgd-sYOLp4nfHU-tp_oKfK74i+QR7cnWQNg@mail.gmail.com>
 <20190306094415.GA31537@kroah.com>
In-Reply-To: <20190306094415.GA31537@kroah.com>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Wed, 6 Mar 2019 15:17:38 +0530
Message-ID: <CACw+u4EX+DM3mtVc6gK3TvSwoL5g=9LX+=zLjTEufxnK=VCREg@mail.gmail.com>
Subject: Re: [PATCH] Staging: pi433: Fix line over 80 characters issue
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000028437058369e200"

--000000000000028437058369e200
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 6, 2019 at 3:14 PM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Wed, Mar 06, 2019 at 02:54:44PM +0530, Debleena Sen wrote:
>
> <snip>
>
> For some reason you sent this only to me, which is a bit rude to
> everyone else on the mailing list.  I'll be glad to respond if you
> resend it to everyone.
>
> thanks,
>
> greg k-h
>

Sorry didn't notice

--000000000000028437058369e200
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Mar 6, 2019 at 3:14 PM Greg KH &l=
t;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org<=
/a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">On Wed, Mar 06, 2019 at 02:54:44PM +0530, Debleen=
a Sen wrote:<br>
<br>
&lt;snip&gt;<br>
<br>
For some reason you sent this only to me, which is a bit rude to<br>
everyone else on the mailing list.=C2=A0 I&#39;ll be glad to respond if you=
<br>
resend it to everyone.<br>
<br>
thanks,<br>
<br>
greg k-h<br></blockquote><div><br></div><div>Sorry didn&#39;t notice</div><=
/div></div>

--000000000000028437058369e200--

