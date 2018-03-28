X-GM-THRID: 6536479698699943936
X-Received: by 10.98.29.205 with SMTP id d196mr2852318pfd.40.1522258226998;
        Wed, 28 Mar 2018 10:30:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.133.7 with SMTP id u7ls1087700pfd.10.gmail; Wed, 28 Mar
 2018 10:30:25 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsr9dgXVxLKOq82i/creQJrSr+8A5g34ckAzxwymSNB4RXGs9bbw1UtGHl7Bu295e3N+ocL
X-Received: by 10.101.68.82 with SMTP id e18mr14118643pgq.77.1522258225474;
        Wed, 28 Mar 2018 10:30:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522258225; cv=none;
        d=google.com; s=arc-20160816;
        b=TJtgnhP9cTPxftjcRYSsDfgLmuJK757D/TMkSSoGNZqwAfIiZVngsUHh/iUeTlBKxL
         EYPxFbHHShZgEUn96KhvZ8QH7sKMWRwkPYoG7xvkvFdgUZm0JCLI51Kq3WK9avQ6cUTt
         O8hU6MvLT3pf1TYVg3HuTKlrIA5OrQr/66Ve9t94PUaspAuiqRp02S6aV28tc6/bNQZX
         VHSHelOrvpw0hBbBUzn8bc4Nw0HZxHyK7lw0s/xe+XPetvm0Hd5s+ZfyVaFNtgOQlsa7
         J7iIhMHO6JTPwMV7ByvZNL/lsF4qMicOpx4F2yxOnU3RT628LYMVhwOgwV6diTfeCqJb
         iy7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=sMh3QTgwKLoFpbuCEDGgVFX9iM+tt+bCAv3MghxZ2G4=;
        b=e6PIBhY5mY6GpaS4K2TPPlIXQ9cJjk7LV4DI8Qh2kazc2CgtgCMfn+J8dYJinxFFAq
         Gk6agwEEl83iYHFVh0j4evF+FYkotVTmGO7qscoK80vz7xD87HvA6jHJcJGMNOKoIQtJ
         juReuIF1q7WoVSxcziTEOS+k2omdRNfQy/C++ZYVv/wGXY5v2nlvLqk0PMp8WefWlona
         q+PXxKnRMKTx9DUqpcmMOLhUahQk6hwKt4/L69zFxMbCT2ZuAE53NKdZm6os+ABZMHXj
         UaAPIQ5SbmgSsRv2I1dUyR+4E3A7vbx1BlyamMkqlgMOOnPTwbCD6mVykXb8OwjOL3Pk
         90FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=JV8rOkkg;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::236 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x236.google.com (mail-it0-x236.google.com. [2607:f8b0:4001:c0b::236])
        by gmr-mx.google.com with ESMTPS id k1si261009pgt.1.2018.03.28.10.30.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 10:30:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::236 as permitted sender) client-ip=2607:f8b0:4001:c0b::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=JV8rOkkg;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::236 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x236.google.com with SMTP id z143-v6so20204001itc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Mar 2018 10:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=sMh3QTgwKLoFpbuCEDGgVFX9iM+tt+bCAv3MghxZ2G4=;
        b=JV8rOkkg61wumHC/VFjISak4Re+5X+yf1Q6ndVpaIsK1N3kFcW3kXWhYjeUEn2qHBe
         DQgal+YhuxdocZNC+L+/kp1NyyjWP7HtDEmRcuc0V2JJjlN9TcfqZ8MQN6lMCcR5vMqE
         bJp+gyDb3quJNuChQivTExbLZwtpO6Xm8s2uY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=sMh3QTgwKLoFpbuCEDGgVFX9iM+tt+bCAv3MghxZ2G4=;
        b=sTEpnMTnXOyhwzcP1pAJZt6LmSyM1R8jj4vVpZsg2QtvK+9qpwdHBFkG5+hMcnGqUC
         JBi0k/O6MkNEHjRmfr176Db9FnwkxFVVLWlkRgLeL0BJgIAbufMM6BGiQN2WzZAm2E7d
         wCy/sVhJBqGzJ/G/24l4MXNYi6cXL9bea48qSXg0zaNrcTgmpt447lcC8crZE6diYrip
         vS0CVhcMheJtIIDYlI3RRJvj9+4+I470L3NDVuFf3ufizsVwlUhsM00WPFvkc9Y/uCJW
         ZFhhKJlNKYSOCcD8JziCgYWd+vlgu8uwrWczGsV3znnWWC1QU6DJHdfXLPSdTVe74bf+
         x1GQ==
X-Gm-Message-State: ALQs6tBBBf2ajOPLsZA8HgIXPq4hdoNCWsEflkE6bFgXlYmDYwk6q4ps
	JchSPxDh672yI/fxQk1u03m4x55YUCOrqnggK7kiHQ==
X-Received: by 2002:a24:1308:: with SMTP id 8-v6mr2525347itz.96.1522258225055;
 Wed, 28 Mar 2018 10:30:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.204.130 with HTTP; Wed, 28 Mar 2018 10:30:24 -0700 (PDT)
In-Reply-To: <20180328160835.GA9211@kroah.com>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <1521892758-27981-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <20180328115738.GA2145@kroah.com> <CAC4++KDDm5v+eSZynrWC2CpgWD-_CaN2xRE+-h0x3iyB99WPVQ@mail.gmail.com>
 <20180328160835.GA9211@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Wed, 28 Mar 2018 23:00:24 +0530
Message-ID: <CAC4++KA7Ezx9X0tGJB0f8PDXk5xmZEbUHaqOJz7U6e2SPGeQZA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 5/5] staging: vt6655: Remove
 else after return statement
To: Greg KH <gregkh@linuxfoundation.org>
Cc: forest@alittletooquiet.net, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 28, 2018 at 9:38 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Wed, Mar 28, 2018 at 06:23:46PM +0530, Nishka Dasgupta wrote:
>> On Wed, Mar 28, 2018 at 5:27 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> > On Sat, Mar 24, 2018 at 11:59:18AM +0000, Nishka Dasgupta wrote:
>> >> Remove else after return statement. Issue found with checkpatch.
>> >>
>> >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
>> >> ---
>> >> Changes in v3:
>> >>  - None.
>> >>
>> >>  drivers/staging/vt6655/rxtx.c | 37 ++++++++++++++++++-------------------
>> >>  1 file changed, 18 insertions(+), 19 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
>> >> index 9c4a532..89adee4 100644
>> >> --- a/drivers/staging/vt6655/rxtx.c
>> >> +++ b/drivers/staging/vt6655/rxtx.c
>> >> @@ -568,28 +568,27 @@ s_uFillDataHead(
>> >>                                                                               wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
>> >>                       buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
>> >>                       return buf->duration;
>> >> -             } else {
>> >> -                     struct vnt_tx_datahead_ab *buf = pTxDataHead;
>> >> -                     /* Get SignalField, ServiceField & Length */
>> >> -                     vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
>> >> -                                       byPktType, &buf->ab);
>> >> -
>> >> -                     if (is_pspoll) {
>> >> -                             __le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
>> >> +             }
>> >> +             struct vnt_tx_datahead_ab *buf = pTxDataHead;
>> >
>> > NEVER add a build warning with a patch.  That's a huge sign you did not
>> > do it correctly :(
>> >
>> > Because of that, I can not take this change, sorry.  Please fix it up
>> > and resend.
>> >
>> Which build warning is in this patch? (I apologise for adding it, and
>> will fix it when I can locate the warning.)
>
> The one you get when you build the driver with this patch applied.  It
> should be very obvious as there was not a build warning without this
> patch :)

I have resent the patch as v4 (since I had 3 versions of the entire
patchset already).
This time, the build warnings were the usual 80-character limit ones
(that were already there); I left those in. Is that okay?

Thanking you,
Nishka Dasgupta

>> Also, should I resend the entire patch series (when I fix this) as
>> suggested on the website? Considering that the rest of the patchset
>> has been added to staging-testing?
>
> If your other patches have already been accepted, no need to resend
> them.
>
> thanks,
>
> greg k-h

