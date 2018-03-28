X-GM-THRID: 6536479698699943936
X-Received: by 2002:a24:2105:: with SMTP id e5-v6mr13309611ita.55.1522253667844;
        Wed, 28 Mar 2018 09:14:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.201 with SMTP id e192ls178243ioe.7.gmail; Wed, 28 Mar
 2018 09:14:26 -0700 (PDT)
X-Google-Smtp-Source: AG47ELskb3hhPBCxUT/Xo7GJq/bhJKYdX6NM8JyqtPOMLiUt/eGz7dLlcLgCzJInWOKc0S1zqYq0
X-Received: by 10.107.149.79 with SMTP id x76mr21740559iod.127.1522253666626;
        Wed, 28 Mar 2018 09:14:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522253666; cv=none;
        d=google.com; s=arc-20160816;
        b=Qh/1PYUYRLDFafWCAzcVLzKBjMXXXrsFrNxEOHQ28/YKpo16Aun+9+pTwrG0TbJM3j
         T3iLjnypj7qYJVbkEzgcRQgqx6CC0l/Acz32+Ke23BtZxwzR1tMif5LAhNNr9T5xUtlX
         Y18zXdz/uaxDCniZkO58Yzb1Z2ei/cWzZsFO9JE67q/Tw/JIJqUZM6Rllm3IA3U9n205
         WDFeA7vsPm+7GsnSr6rlm1AKeA0eDHol6iQSdH9mmFD3C2JzX0jj7eNp6fktm/ZK9Ukf
         VGXoSAt/TB+aXXOfYMgIuvUoNoTQaLwZLDv70M9ctrWLkMLkNi9mvEP+ESJblQG6gwMt
         d8Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=YbuVCVkWgi40TiFdb0h0nupBGFRhUOF0IpUTiqKU68s=;
        b=wdXBYRQe6qoXOCsK6rkjuPVKXjaEo/yhI5N9bFdODMQAUAC+ktblmGx4+peKjq58T8
         JDdxpzMQBU+Unn4XmlHDs2fStFQKfoOfQBYwvLwFxX+lqozwDKz7ENWXSv/JAneWi8oV
         U+SxwN4i3XWJhH4NR1zbQp+4CgP2aCJj0qb203OZfBHCxvKCgt/uuupYqOnDWl0G+ha+
         K7TCOWWlQoXW+zbADdLTfAbTjoDhF5eI7maMyNVjvFd8k5LJcga7XdLx0bct2hioKU6H
         d2wRd/ygV94jEOE+RPY6bxex89yvI4wVZfz9vi/gg11aXTrVweZxtJ+KyACj9na17jnk
         EhpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d85-v6si70237itb.2.2018.03.28.09.14.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 09:14:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12247-202.w90-92.abo.wanadoo.fr [90.92.61.202])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B21A7F12;
	Wed, 28 Mar 2018 16:14:25 +0000 (UTC)
Date: Wed, 28 Mar 2018 18:08:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: forest@alittletooquiet.net,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 5/5] staging: vt6655: Remove
 else after return statement
Message-ID: <20180328160835.GA9211@kroah.com>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <1521892758-27981-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <20180328115738.GA2145@kroah.com>
 <CAC4++KDDm5v+eSZynrWC2CpgWD-_CaN2xRE+-h0x3iyB99WPVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC4++KDDm5v+eSZynrWC2CpgWD-_CaN2xRE+-h0x3iyB99WPVQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 28, 2018 at 06:23:46PM +0530, Nishka Dasgupta wrote:
> On Wed, Mar 28, 2018 at 5:27 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Sat, Mar 24, 2018 at 11:59:18AM +0000, Nishka Dasgupta wrote:
> >> Remove else after return statement. Issue found with checkpatch.
> >>
> >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> >> ---
> >> Changes in v3:
> >>  - None.
> >>
> >>  drivers/staging/vt6655/rxtx.c | 37 ++++++++++++++++++-------------------
> >>  1 file changed, 18 insertions(+), 19 deletions(-)
> >>
> >> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> >> index 9c4a532..89adee4 100644
> >> --- a/drivers/staging/vt6655/rxtx.c
> >> +++ b/drivers/staging/vt6655/rxtx.c
> >> @@ -568,28 +568,27 @@ s_uFillDataHead(
> >>                                                                               wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
> >>                       buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> >>                       return buf->duration;
> >> -             } else {
> >> -                     struct vnt_tx_datahead_ab *buf = pTxDataHead;
> >> -                     /* Get SignalField, ServiceField & Length */
> >> -                     vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> >> -                                       byPktType, &buf->ab);
> >> -
> >> -                     if (is_pspoll) {
> >> -                             __le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> >> +             }
> >> +             struct vnt_tx_datahead_ab *buf = pTxDataHead;
> >
> > NEVER add a build warning with a patch.  That's a huge sign you did not
> > do it correctly :(
> >
> > Because of that, I can not take this change, sorry.  Please fix it up
> > and resend.
> >
> Which build warning is in this patch? (I apologise for adding it, and
> will fix it when I can locate the warning.)

The one you get when you build the driver with this patch applied.  It
should be very obvious as there was not a build warning without this
patch :)

> Also, should I resend the entire patch series (when I fix this) as
> suggested on the website? Considering that the rest of the patchset
> has been added to staging-testing?

If your other patches have already been accepted, no need to resend
them.

thanks,

greg k-h

