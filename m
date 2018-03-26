X-GM-THRID: 6537294064154312704
X-Received: by 10.80.230.17 with SMTP id y17mr10406644edm.0.1522084393091;
        Mon, 26 Mar 2018 10:13:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.144.194 with SMTP id d2ls2152927eda.0.gmail; Mon, 26 Mar
 2018 10:13:11 -0700 (PDT)
X-Google-Smtp-Source: AIpwx49xBNZtAAEkHD5f62lpcBG1DppFiGm26c3NGxr1aQ+NU3wwbqupkQlHFGCF8vV6F43YUWLH
X-Received: by 10.80.242.133 with SMTP id f5mr2316188edm.9.1522084391632;
        Mon, 26 Mar 2018 10:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522084391; cv=none;
        d=google.com; s=arc-20160816;
        b=m3pvlGedMVgY4KEI592tlkB1tprvAhZNR+ojgDoQwKDYJB5gugAV9TOmziBFBj4Ljm
         rqB55FJWSfqol5eFOfEa6E6MtnTO+LRQuLse4TVckPH/E2KackNM8I8HWRCQn5Ku9YzF
         xEciiZsij+HMRd2vn0+V2btz1A0j1fH9uUjTMgbAa9K38rpPl+JmXn9TR3/2p360V55H
         JnNaFUw/h+5yTaSePniKKJDc32cVeoYTdjgiXClUlEMHHg41ZC97ipEdoKIsuj049AKw
         5x2NTGrWe/z1Vlo04O7TrpeRX4I9wABoNoVvvqza50Z6YoXbPtrTMqk0Dp4Vu55iVhC3
         0opQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:arc-authentication-results;
        bh=fmmwg5E+OagzovqEIguK16JFcICuWTMjRvkvESZ37Lc=;
        b=gWCBZZVaaWZvU0vB9PRicBD9vVxl3b8n7gqz7TaZAo3xzfhaJTDn49hx2JXCNE9Sgn
         mnfkOjiH5rSrVODNaExylohSGGTDiPVQ3M22maKCN/+oRQN0NeNuQ+MBNOn2TAo5hTRE
         mDLbjB2ZXk1ATLGSTnSLG2oGsu0og9dg9KXvfiCJNvWvDpfN8O0Py5sOgT1GWsOJ0GYP
         iJ8D6IwUWg98AmzGpROzBRfzMQ59Q6CxNo0VZa0EOdwnmn8/uhsub0bVr5GnQJ8iWmqH
         76V9VclELBS6q+SUjgYyGMHkGcOepRjEd4cODfTPEXZGw+46llPOSx2F9Qjz+laewFFW
         IF3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kWwVglsv;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id r1si509497edc.5.2018.03.26.10.13.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Mar 2018 10:13:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kWwVglsv;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-wm0-x232.google.com with SMTP id v21so16866985wmc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Mar 2018 10:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fmmwg5E+OagzovqEIguK16JFcICuWTMjRvkvESZ37Lc=;
        b=kWwVglsvU9HyHjWHEFPuqeSLdzIAL41mmn9xtO9UY8+KHiDhN86SMt/5hwl0rPBmf9
         C931RZ98nm4Jg9bAn7twRc9JAqS9fxuwPaJDg+ViRcqzysKZVy4UnOdzXtDlkEZsjzWz
         nV3tUTMJFtEIrcJ8JofeFoPx/bHIhQ6DjSRE8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fmmwg5E+OagzovqEIguK16JFcICuWTMjRvkvESZ37Lc=;
        b=N6A1b5d6YpoqMZnz5Tvp7udthVpGj5fq2XoU06yPdSKNR/LqyE2Mqnn1jHZKXzKjLd
         bziurpsBGwde5OHrGh5daQCrXL0eoINHjpht9u7u3/8KT52ZqEKhdOU8EabicVW9WtTP
         VAdHnEf4YyAUuS2+DjPaWirrbHm2/NSLOOhBUTdGPVi4Zs7SU7q33WsSyI24yJj3YQin
         J9kdCQkb8RmlUr8ydN9hwxRd4cxsGn1Z6mWA99bs1IKSjDQ8onRA9dithHQVyByFk00X
         4bWzQm9qMHymq6esa/W1XWVv6xP/Jm8YLch4tTDHa5Z/AcAT4sY5pvPJ4AVjZZ4Oyizt
         MBhA==
X-Gm-Message-State: AElRT7H74lZZm8CyfJE9RHmrssj90BkbP2MZT3UsFQOSsJPbvPQL2kTM
	gFdGztX3MmiqCzFfPhItMoFeHKs9a2g=
X-Received: by 10.80.146.55 with SMTP id i52mr3500371eda.81.1522084391179;
        Mon, 26 Mar 2018 10:13:11 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com. [209.85.128.174])
        by smtp.gmail.com with ESMTPSA id c9sm10510132edl.23.2018.03.26.10.13.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Mar 2018 10:13:10 -0700 (PDT)
Received: by mail-wr0-f174.google.com with SMTP id z73so19701779wrb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Mar 2018 10:13:10 -0700 (PDT)
X-Received: by 10.223.135.115 with SMTP id 48mr24151183wrz.27.1522084389711;
 Mon, 26 Mar 2018 10:13:09 -0700 (PDT)
MIME-Version: 1.0
References: <c7a71e8e-89f1-442c-a3d8-65661c2fa9d0@googlegroups.com>
In-Reply-To: <c7a71e8e-89f1-442c-a3d8-65661c2fa9d0@googlegroups.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Mon, 26 Mar 2018 17:12:58 +0000
X-Gmail-Original-Message-ID: <CAOw6vb+d0sjVi6fE_uu5gcivaYhozBhoy7AUmUtzJVwY00Wf2g@mail.gmail.com>
Message-ID: <CAOw6vb+d0sjVi6fE_uu5gcivaYhozBhoy7AUmUtzJVwY00Wf2g@mail.gmail.com>
Subject: Re: [Outreachy kernel] dri-devel IRC channel
To: nishka.dasgupta_ug18@ashoka.edu.in
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 26, 2018 at 12:39 PM Nishka Dasgupta <
nishka.dasgupta_ug18@ashoka.edu.in> wrote:

> I joined the IRC channel for my selected project (dri-devel aka kernel
GPU subsystem) on Saturday and asked there how I should go about
formulating a timeline as required in my Outreachy application. However, I
have not yet received any replies to my question.

Hi Nishka,
Apologies for missing your message. I tend to miss weekend/evening irc
messages unless my nick is mentioned directly, I think Daniel is also
usually afk on weekends as well.

> I am also not sure how to proceed since I have never used IRC before, and
the Outreachy website specifically says not to email the mentors for
specific projects directly, and to stick to public channels instead. What
should I do, since the deadline is this Thursday?

As Julia mentioned, please email us directly, there's no problem with that.

Sean


> Thank you for your time!

> Regards,
> Nishka Dasgupta

> --
> You received this message because you are subscribed to the Google Groups
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/c7a71e8e-89f1-442c-a3d8-65661c2fa9d0%40googlegroups.com
.
> For more options, visit https://groups.google.com/d/optout.

