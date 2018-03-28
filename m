X-GM-THRID: 6536479698699943936
X-Received: by 10.159.44.131 with SMTP id w3mr1182615uaj.17.1522260253929;
        Wed, 28 Mar 2018 11:04:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.49.74 with SMTP id e10ls653793uam.10.gmail; Wed, 28 Mar
 2018 11:04:10 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsQXLm4xWAejqwkABJzSSEZwxm3jqQRVb0+LnkSCqWwzXhPVlDQ9mMBU4FelQgu1kZUIpqs
X-Received: by 10.176.92.20 with SMTP id q20mr21142844uaf.26.1522260250792;
        Wed, 28 Mar 2018 11:04:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522260250; cv=none;
        d=google.com; s=arc-20160816;
        b=krEYXUtHLg/iouG2tan9kV/4wGHhoUYQuRNZ4/64R/jU3kzvaL5O0wcho2gTmIr70B
         y765tcsUZBCMNW3uFJDIM828Fk35e2dTjFJVVJ0ZDnKlptknGAFmMjibcfRnrO7zntHv
         LiqE37/ZQYsxMzuVvV/e/sk/RxLy46ql2RYZrupzA1/0fCP+bneEotDAOLIthYQls973
         Gy/8D04oAWMhh431DHKfKKI1x5DIvHxFhQaVM4bqRYL3J5mM4n3wvFVJKYJIdnRae+i8
         F+5lpNbMIdf3MXybqJrHMG+I/OgYtl68UZj6oaH68FU3pmFHYMGGXgCD6Sm8vcf5giLI
         ZriA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=ddzddN0oT1NyvPT9GxY9Qaz+E32lH2yl6PR6bm7OfZo=;
        b=EZ12sCcI82nRD6oOrRcH5VYohJxHcBjYKw6Hux9DK/vIo/Yd0MCvoIwB5V/UvggXFT
         DKngXXZWLbtJqIgZwrfAw5+dTUCDpumQx3GUE7Te0toetSVUMDItKbgbVmf2I7T2W79f
         JN8Q5e7XzYXZbGq+7d+Gm8KsOjewGvOJVHIDDDZD7z1qH5h9avGGjol18YDVVj6BSxfX
         CChus7E1CEd1/VqvOI35p9CB3ROwD+Nyuzom0eemWboEypwDiQkbwmL5RRRypgcUIyWB
         2Jiyt/eOpE3uXQfha247Kd3JXyHJqrg5OY90tTR+BDK3ojQogzkJ9ZyqytmkZAbbBBY9
         1oeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id g138si311463vke.3.2018.03.28.11.04.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 11:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12247-202.w90-92.abo.wanadoo.fr [90.92.61.202])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 42ABE9CC;
	Wed, 28 Mar 2018 18:04:09 +0000 (UTC)
Date: Wed, 28 Mar 2018 20:04:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: forest@alittletooquiet.net,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 5/5] staging: vt6655: Remove
 else after return statement
Message-ID: <20180328180406.GA32098@kroah.com>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <1521892758-27981-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <20180328115738.GA2145@kroah.com>
 <CAC4++KDDm5v+eSZynrWC2CpgWD-_CaN2xRE+-h0x3iyB99WPVQ@mail.gmail.com>
 <20180328160835.GA9211@kroah.com>
 <CAC4++KA7Ezx9X0tGJB0f8PDXk5xmZEbUHaqOJz7U6e2SPGeQZA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC4++KA7Ezx9X0tGJB0f8PDXk5xmZEbUHaqOJz7U6e2SPGeQZA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 28, 2018 at 11:00:24PM +0530, Nishka Dasgupta wrote:
> On Wed, Mar 28, 2018 at 9:38 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Wed, Mar 28, 2018 at 06:23:46PM +0530, Nishka Dasgupta wrote:
> >> On Wed, Mar 28, 2018 at 5:27 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> >> > On Sat, Mar 24, 2018 at 11:59:18AM +0000, Nishka Dasgupta wrote:
> >> >> Remove else after return statement. Issue found with checkpatch.
> >> >>
> >> >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> >> >> ---
> >> >> Changes in v3:
> >> >>  - None.
> >> >>
> >> >>  drivers/staging/vt6655/rxtx.c | 37 ++++++++++++++++++-------------------
> >> >>  1 file changed, 18 insertions(+), 19 deletions(-)
> >> >>
> >> >> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> >> >> index 9c4a532..89adee4 100644
> >> >> --- a/drivers/staging/vt6655/rxtx.c
> >> >> +++ b/drivers/staging/vt6655/rxtx.c
> >> >> @@ -568,28 +568,27 @@ s_uFillDataHead(
> >> >>                                                                               wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
> >> >>                       buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> >> >>                       return buf->duration;
> >> >> -             } else {
> >> >> -                     struct vnt_tx_datahead_ab *buf = pTxDataHead;
> >> >> -                     /* Get SignalField, ServiceField & Length */
> >> >> -                     vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> >> >> -                                       byPktType, &buf->ab);
> >> >> -
> >> >> -                     if (is_pspoll) {
> >> >> -                             __le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> >> >> +             }
> >> >> +             struct vnt_tx_datahead_ab *buf = pTxDataHead;
> >> >
> >> > NEVER add a build warning with a patch.  That's a huge sign you did not
> >> > do it correctly :(
> >> >
> >> > Because of that, I can not take this change, sorry.  Please fix it up
> >> > and resend.
> >> >
> >> Which build warning is in this patch? (I apologise for adding it, and
> >> will fix it when I can locate the warning.)
> >
> > The one you get when you build the driver with this patch applied.  It
> > should be very obvious as there was not a build warning without this
> > patch :)
> 
> I have resent the patch as v4 (since I had 3 versions of the entire
> patchset already).
> This time, the build warnings were the usual 80-character limit ones
> (that were already there); I left those in. Is that okay?

The compiler (gcc) does not emit 80-character warnings, only checkpatch
does.  Are you _sure_ you are actually building the kernel changes you
are making?

thanks,

greg k-h

