X-GM-THRID: 6536479698699943936
X-Received: by 10.200.9.116 with SMTP id z49mr10925702qth.51.1522261900137;
        Wed, 28 Mar 2018 11:31:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.17.10 with SMTP id c10ls1659939qtj.14.gmail; Wed, 28 Mar
 2018 11:31:39 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+ZVYl7YtGMNIvCknuI1Vaxn2jxWZJ1f2/bIEaUp81IiCw+bQKp6yDUFEnTSjMAx69+fx6n
X-Received: by 10.200.7.2 with SMTP id g2mr14051441qth.44.1522261899278;
        Wed, 28 Mar 2018 11:31:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522261899; cv=none;
        d=google.com; s=arc-20160816;
        b=K3sVLh8qMRKICALQe5ibiKiNxCZkepBHhtns4tWg8be9nNL2Qp2PMlZQ53lOQouIbU
         tq8bkQA6bHgsBkpzKtKxbe6/5tWeu2CJ+BS9w+RsaodVFlLe9YNGuC1pqwSDw/Z2JoTL
         W1/TCPrFviX9Y6FWpWaKhiHpahMjRdegopxvMiMxbUX1GSyvTf/I4r0I1qb/ssX0jxch
         3KgWZb1spZtR+SLB6C8izJpS2Yoiz61wlkGp6/Iu8xBB40MPWP22LqIP6LfhmEhaEKQW
         wJNJNvvQo+27d24Yf70kIXxTumMZF3caJd2e5Pd71sq/LiyAxXZ+Lb0nWOkF/TIs9Kzq
         FGCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=8zvb/g6a8AjuiafEfCdy6Z/E+w/45YIT3/5EMU24A20=;
        b=BsY/Yy+281eEzi2YT8+U1mKqdWVYpFPJbNnQeCfmkjvbIDz73hHsx2eJgdye5lI7hp
         HrwT47Mtxr3meQYsQRkdhPJDx2tHnQoRSm/IPKlFrrumvC1iNos8r+3NaBAAHeiWkS2F
         IWWvewGaEeYf0rGR8rNZ+VFp81LXyh18YC2iWDhZS5Abxeti8cejEVw44g1/4+QSn8pO
         y3KOcFgdwvPsICGudD/jF94vykVOOeLEzUwNv/4yHwhdfq92giNZxsOeSZ0bl23SXn+C
         91xviNeyYJghVY6Xr6m6sIJMJn6VJS8i++NyFl170VVJMAI2PNC54qqHgTZ61iuIzfaq
         2kcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=dNQfVtZw;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::230 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-io0-x230.google.com (mail-io0-x230.google.com. [2607:f8b0:4001:c06::230])
        by gmr-mx.google.com with ESMTPS id c2si296355qkf.3.2018.03.28.11.31.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 11:31:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::230 as permitted sender) client-ip=2607:f8b0:4001:c06::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=dNQfVtZw;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::230 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-io0-x230.google.com with SMTP id l3so4678472iog.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Mar 2018 11:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=8zvb/g6a8AjuiafEfCdy6Z/E+w/45YIT3/5EMU24A20=;
        b=dNQfVtZwJXkrkWj/opQrtYb2AzkQjt7Aix35KR/MabTX0oga9y8JHW3wA1dHKbPwM4
         m6owGNmrleW2N0qW7j+u67sZ7rykX1fBd0LnUwJ6QGOJRJgOrCD1v9XMGrkNWsY/7N/7
         2nY9SJIMRsUczQWkK6xJWjb2sRoC3AvD2xn/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=8zvb/g6a8AjuiafEfCdy6Z/E+w/45YIT3/5EMU24A20=;
        b=hpfBXz0F2JdfmxOp+bTF6ul/DDissIcgCn+CyTPNOhr4oBafIn1hTUUzFEj4OMcQXg
         hjN534+Hgk7yrpu8bf6V8Itwmp3ZQwJVwCVYZLgL4V0QzQs1RJawMukkSLOetPpXcn17
         S4k0Q6a8ZeItH2r7UdEMomM94nmOVo5KqNSfuLrClwEXkr4e2kKt9RJqToiCuvoib9bn
         cAv1oWvPQFQcKmOXP8cEYTcLM//aSwIoXOkgl7orbH6b4bFk7je00YyGXrMp/e7ETiRI
         PjbYNtKNL2/52RYXnArNg1cOH9uxr3fgVTFv4zyAS+HmOEcS7/VzWIXGFBNWBqtdSyQe
         rcZw==
X-Gm-Message-State: AElRT7HiJbTqjN7VdM+MUt562xrIaw+JApzZ/YYdrrEn/kxXCVTR8BT1
	VHVyyNl3HX1ga2HIz2IC0LaxJe1gZ8OEylwpsdHF+g==
X-Received: by 10.107.165.206 with SMTP id o197mr26573432ioe.27.1522261898821;
 Wed, 28 Mar 2018 11:31:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.204.130 with HTTP; Wed, 28 Mar 2018 11:31:38 -0700 (PDT)
In-Reply-To: <20180328180406.GA32098@kroah.com>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <1521892758-27981-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <20180328115738.GA2145@kroah.com> <CAC4++KDDm5v+eSZynrWC2CpgWD-_CaN2xRE+-h0x3iyB99WPVQ@mail.gmail.com>
 <20180328160835.GA9211@kroah.com> <CAC4++KA7Ezx9X0tGJB0f8PDXk5xmZEbUHaqOJz7U6e2SPGeQZA@mail.gmail.com>
 <20180328180406.GA32098@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Thu, 29 Mar 2018 00:01:38 +0530
Message-ID: <CAC4++KDLu4+dyrTapqVcC2D77P8EnmJ=dOJV_qktDJu54Fj-oA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 5/5] staging: vt6655: Remove
 else after return statement
To: Greg KH <gregkh@linuxfoundation.org>
Cc: forest@alittletooquiet.net, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 28, 2018 at 11:34 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Wed, Mar 28, 2018 at 11:00:24PM +0530, Nishka Dasgupta wrote:
>> On Wed, Mar 28, 2018 at 9:38 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> > On Wed, Mar 28, 2018 at 06:23:46PM +0530, Nishka Dasgupta wrote:
>> >> On Wed, Mar 28, 2018 at 5:27 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> >> > On Sat, Mar 24, 2018 at 11:59:18AM +0000, Nishka Dasgupta wrote:
>> >> >> Remove else after return statement. Issue found with checkpatch.
>> >> >>
>> >> >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
>> >> >> ---
>> >> >> Changes in v3:
>> >> >>  - None.
>> >> >>
>> >> >>  drivers/staging/vt6655/rxtx.c | 37 ++++++++++++++++++-------------------
>> >> >>  1 file changed, 18 insertions(+), 19 deletions(-)
>> >> >>
>> >> >> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
>> >> >> index 9c4a532..89adee4 100644
>> >> >> --- a/drivers/staging/vt6655/rxtx.c
>> >> >> +++ b/drivers/staging/vt6655/rxtx.c
>> >> >> @@ -568,28 +568,27 @@ s_uFillDataHead(
>> >> >>                                                                               wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
>> >> >>                       buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
>> >> >>                       return buf->duration;
>> >> >> -             } else {
>> >> >> -                     struct vnt_tx_datahead_ab *buf = pTxDataHead;
>> >> >> -                     /* Get SignalField, ServiceField & Length */
>> >> >> -                     vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
>> >> >> -                                       byPktType, &buf->ab);
>> >> >> -
>> >> >> -                     if (is_pspoll) {
>> >> >> -                             __le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
>> >> >> +             }
>> >> >> +             struct vnt_tx_datahead_ab *buf = pTxDataHead;
>> >> >
>> >> > NEVER add a build warning with a patch.  That's a huge sign you did not
>> >> > do it correctly :(
>> >> >
>> >> > Because of that, I can not take this change, sorry.  Please fix it up
>> >> > and resend.
>> >> >
>> >> Which build warning is in this patch? (I apologise for adding it, and
>> >> will fix it when I can locate the warning.)
>> >
>> > The one you get when you build the driver with this patch applied.  It
>> > should be very obvious as there was not a build warning without this
>> > patch :)
>>
>> I have resent the patch as v4 (since I had 3 versions of the entire
>> patchset already).
>> This time, the build warnings were the usual 80-character limit ones
>> (that were already there); I left those in. Is that okay?
>
> The compiler (gcc) does not emit 80-character warnings, only checkpatch
> does.  Are you _sure_ you are actually building the kernel changes you
> are making?

I apologise; I thought you were referring to checkpatch warnings,
because it is compiling fine at my end. I compiled the latest version
3 different times and ran checkpatch before submitting; there appear
to be no problems here anymore.

Thanking you,
Nishka Dasgupta

> thanks,
>
> greg k-h

