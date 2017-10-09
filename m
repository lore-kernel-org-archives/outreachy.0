X-GM-THRID: 6469221009179279360
X-Received: by 10.129.19.10 with SMTP id 10mr646434ywt.64.1507575679631;
        Mon, 09 Oct 2017 12:01:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.182.40 with SMTP id u40ls409308ywh.43.gmail; Mon, 09 Oct
 2017 12:01:18 -0700 (PDT)
X-Received: by 10.13.222.67 with SMTP id h64mr658452ywe.150.1507575678850;
        Mon, 09 Oct 2017 12:01:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507575678; cv=none;
        d=google.com; s=arc-20160816;
        b=TDvsLFE5ca7fgFlZDiTEgDXPRIXQFbbU2OIdFp53HwnvMBjsp6Rq2xRWOKvtBN/4QW
         d2E9nioK0HiRFbr453eZQcQvaeZup+GNsgVFRsxjvSqsUQzPXKC8QGZlti+uDSwLxy4E
         Qc3yBcswhMqHpqB9zhwepJ2oB3PIB48f8mJjT+BtU5JzlXDubiKWV+KHeQxKXK545hJ2
         HO5DP7jA4cstPkMwPVp+w+xvtmxpPd4ce+a57ADC3QISv9CO7q9xb/fcBN/lIDLmXcJT
         YoO3eU+Dk7pbwnQYbuhh1aDqdOhIRgJTgZpgjW0Sbm87w0NZWHrplfhfl4HXkRUksZqR
         F8Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=vphNOndw9Z445xNgGGs4ZfdR149UPMBH43/sHZ55jFc=;
        b=H2NEc/moXp+Y/hior4hkVsVgSHAPXJmMNdl9J0eHgDfxdJNMTa2L1kBCBi8bfGCHAO
         JnaUgWF01CDPJejX41Im5oSKJOn5e4GvpXmCdUnBdBB0/+Q61LmI61pftcYDaWKB5FuU
         1q2dZs163Di1Et9spf4hH22wlUYS/20InipTY5+pe3FuGhad3XdXKscP6wMVYMn3VD3U
         AVXDfGIIpXBnR/1NLHpaDJPIUWChAEuonydvaWS6MdYRlGv5PTFySM98I6BFDKpcEHET
         1t3A89uOFrr6nAfPoX2kRpBuh2ElWJ3OZTt7wSQCW1Z0rj6MVSYSwVxfcWM5v5/PbAVK
         s95A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OixThk8A;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22d as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x22d.google.com (mail-qt0-x22d.google.com. [2607:f8b0:400d:c0d::22d])
        by gmr-mx.google.com with ESMTPS id x26si172276ywj.28.2017.10.09.12.01.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 12:01:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22d as permitted sender) client-ip=2607:f8b0:400d:c0d::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OixThk8A;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22d as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x22d.google.com with SMTP id z50so40017495qtj.4
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 12:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=vphNOndw9Z445xNgGGs4ZfdR149UPMBH43/sHZ55jFc=;
        b=OixThk8ACDCFfXc7WjxU7y1sm22CzsWiYYWSVaStLeFNbrjMxi1WpuCNwHTn1RLCKI
         1c1H8w6vbqlMkdsDJiG1mcEiPWAXxesbFZUTM+SdQp1jqCdPq+gdJubwn5EOv3KGlIpy
         WrSU5DKamtEIYm/bUfbTE0BCCiqMTDBy46YkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=vphNOndw9Z445xNgGGs4ZfdR149UPMBH43/sHZ55jFc=;
        b=jWLmc+bjLRI265PnwYIPYNYMfY7DaUD8QGTV1jMZiEDI1kR7IPqwVXyHNeOiCksgDP
         GUwbtB9xUlgm4/uzx6Z6C3iUZHR76S59Snp9ByfMoO5E2T9Bc/mmGTYmQ5RYs8fPSzGL
         FoUSnPsRnuZcdKkuALFYIa/obaqqtpFyId6zciJ7CV4C7HSqi8PucFMEYH9/jcaECndq
         Z13DHEQNL3R2YOBhlQlXhVQM94fXjgUq0+vLZX7jTUYSZU3XKXHXqxIbILJr6YuaHtU1
         tnvK4IZkbxUfZjEsI0jbaWgfYzSkcEGHpDz+BJ4rVYevfbqnrPVBJMhquZgdiIedm1pF
         TScw==
X-Gm-Message-State: AMCzsaUcDnbh2ZgDvlxWTawgExwGQvrVYCPJ2+S34mywEJHw0pMpULvY
	5NHNn4V69AL7cXcO40Lfk1VeVGrSSs8=
X-Received: by 10.37.130.69 with SMTP id d5mr411237ybn.25.1507575678210;
        Mon, 09 Oct 2017 12:01:18 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com. [209.85.223.173])
        by smtp.gmail.com with ESMTPSA id g84sm3438058ywg.100.2017.10.09.12.01.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 12:01:17 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id j17so6831963iod.5
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 12:01:17 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBoFwOqTGADSrMCXd+BWYWD6x7PO0igWMcAtVR+N32wHGRkaJB3NmJ2k0697ll/ZB+IYhmPd4+X8WS54EC7mVo=
X-Received: by 10.107.200.136 with SMTP id y130mr14329966iof.74.1507575676989;
 Mon, 09 Oct 2017 12:01:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.174.66 with HTTP; Mon, 9 Oct 2017 12:00:56 -0700 (PDT)
In-Reply-To: <20170925073841.GA12494@ulmo.fritz.box>
References: <1506271437-23058-1-git-send-email-harshasharmaiitr@gmail.com> <20170925073841.GA12494@ulmo.fritz.box>
From: Sean Paul <seanpaul@chromium.org>
Date: Mon, 9 Oct 2017 15:00:56 -0400
X-Gmail-Original-Message-ID: <CAOw6vb+YrGO=09bPzsX9aFtFKpQntadwT43dh4sL6KUwdH+f0A@mail.gmail.com>
Message-ID: <CAOw6vb+YrGO=09bPzsX9aFtFKpQntadwT43dh4sL6KUwdH+f0A@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] drm/tegra: Replace dev_* with DRM_DEV_*
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Harsha Sharma <harshasharmaiitr@gmail.com>, dri-devel <dri-devel@lists.freedesktop.org>, 
	"linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 25, 2017 at 3:38 AM, Thierry Reding
<thierry.reding@gmail.com> wrote:
> On Sun, Sep 24, 2017 at 10:13:57PM +0530, Harsha Sharma wrote:
>> Replace all occurences of dev_info/err/dbg with DRM_DEV_INFO/
>> ERROR/DEBUG as we have DRM_DEV_* variants of drm print macros
>> Done using following coccinelle semantic patch
>>
>> @r@
>> @@
>>
>> (
>> -dev_info
>> +DRM_DEV_INFO
>> |
>> -dev_err
>> +DRM_DEV_ERROR
>> |
>> -dev_dbg
>> +DRM_DEV_DEBUG
>> )
>>
>> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
>> ---
>> Changes in v2:
>>  -Break line over 80 characters
>>  -Changes in comments not required
>
> Please don't do this. Most of the functions that you're trying to
> replace here are not DRM_DEV_*() for a very specific reason: none of
> them have anything to do with DRM/KMS in particular. This is important,
> in my opinion, because these messages are very device-specific and the
> additional information added by the DRM format string aren't useful in
> the context.

Hey Thierry,
It's likely not useful to a tegra expert such as yourself. However,
when I'm switching between platforms or providing log-parsing
instructions, it's very useful to say "grep for drm". Without the
common drm prefix, the reader needs to know they're looking for
tegra-sor, tegra-dc, etc as well.

Not a big deal, I just wanted to provide color for why someone might want this.

>
> Perhaps the only ones I consider to be good candidates for this
> conversion are the ones in drivers/gpu/drm/tegra/fb.c because they deal
> with the DRM fbdev setup and hence are not device specific. And even in
> those cases I'm not sure we gain very much by this conversion,
> especially since most of the replacements now end up having to split up
> argument lists.
>
> Sorry if this isn't documented anywhere. I also suspect other driver
> maintainers will be less picky about this sort of thing, so you might
> have more luck there.

I think the TODO entry states that contributors should check with the
driver maintainers before taking on this work, so it is documented :)

Sean


>
> Thierry
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170925073841.GA12494%40ulmo.fritz.box.
> For more options, visit https://groups.google.com/d/optout.

