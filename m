X-GM-THRID: 6607095314902941696
X-Received: by 2002:a1c:7704:: with SMTP id t4-v6mr1488985wmi.3.1538383664642;
        Mon, 01 Oct 2018 01:47:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:730c:: with SMTP id d12-v6ls6420647wmb.0.canary-gmail;
 Mon, 01 Oct 2018 01:47:43 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60V458ezYNGInpG8GAtGDKhh6OpYzXuy7NshuYxvP3zWgyyeTNe0eFR+79og23iB+NDZsYI
X-Received: by 2002:a1c:9906:: with SMTP id b6-v6mr490600wme.1.1538383663832;
        Mon, 01 Oct 2018 01:47:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538383663; cv=none;
        d=google.com; s=arc-20160816;
        b=MuMl9rizDNeHaaGUv/SsTTAFcEPEr7LNxucDqiDRmgd0GYf17qdmTfi84iLLXXh6MU
         u4swv93v1cO9tv8hths6Y66sM/n/ryVGdx+Q14plETmW5rM+lnLj3bRyMP+Z/yES93O0
         AzcGMVn1UlQY/GpsRgKRbEX7FIe6qnUY8hNm4RQ55LY3pyKA7yzMTIVb/vxPQzJrefvK
         dbsn1uPvWTpkW4n+P43SAt8WM4i3xUDSNzo7QrgVDx8EpaR9BWgWntyGeKYAyox4NzWH
         uaO2zS/Bid3MQBRZRYtODnZWbg/hAO0/rc7idIrkQj65QtrPgKuGU+e5EijgY6L7JQtl
         CqWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pwDuJQCM5BVyo3bVoptKSzTfTvNw1QY1RSpfsMnKIoA=;
        b=gJ4t39ws8TDc1n24abJXuQ0DQfL8R9+dIyEcMAesKSyNOTCXBnlazEjC/oHcH1DBUR
         lbhJm1YSwvJkiiRDo3reVd+9fOHHhXSzQHmTFviauTSvY0Ybp/K4rjVMECTWynNOEklz
         wtoaDASPqEY3akmLkfLoK7isE9wvBkOJfadsyoK4AGHRPau4qyUCDx6yGoxAvjab3Nsu
         9K9k/AjUHVO7+f8VqRhN6yAM2UlaBbyjjKmQgrzfX2oeYenaWU7PgRckFF/9Xp5iyvfs
         h6cUpSds0ywXAyP1dCOseU4p5WYaiOLHFg+z0jNRwIOBKObulr/MGHYE12jz1/h70oOP
         Rm5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 196-v6si473486wmx.1.2018.10.01.01.47.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Oct 2018 01:47:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,327,1534802400"; 
   d="scan'208";a="348824739"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Oct 2018 10:47:43 +0200
Date: Mon, 1 Oct 2018 10:47:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
In-Reply-To: <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1810011047210.3464@hadrien>
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com> <alpine.DEB.2.21.1809302217480.2863@hadrien> <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1935806662-1538383659=:3464"

--8323329-1935806662-1538383659=:3464
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Mon, 1 Oct 2018, Dafna Hirschfeld wrote:

>
>
> On Mon, Oct 1, 2018 at 12:55 AM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Sun, 30 Sep 2018, Dafna Hirschfeld wrote:
>
>       > Remove unnecessary braces from one line 'if' statements.
>       > Issues found with checkpatch.pl
>       >
>       > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
>       > ---
>       >� drivers/staging/mt7621-mmc/sd.c | 9 +++------
>       >� 1 file changed, 3 insertions(+), 6 deletions(-)
>       >
>       > diff --git a/drivers/staging/mt7621-mmc/sd.c
>       b/drivers/staging/mt7621-mmc/sd.c
>       > index e3c1546373ba..8c32cec5950a 100644
>       > --- a/drivers/staging/mt7621-mmc/sd.c
>       > +++ b/drivers/staging/mt7621-mmc/sd.c
>       > @@ -520,9 +520,8 @@ static void msdc_pm(pm_message_t state,
>       void *data)
>       >� � � � � � � �host->pm_state = state;� /* default PMSG_RESUME
>       */
>       >
>       >� � � �} else if (evt == PM_EVENT_RESUME || evt ==
>       PM_EVENT_USER_RESUME) {
>       > -� � � � � � �if (!host->suspend) {
>       > +� � � � � � �if (!host->suspend)
>       >� � � � � � � � � � � �return;
>       > -� � � � � � �}
>       >
>       >� � � � � � � �/* No PM resume when USR suspend */
>       >� � � � � � � �if (evt == PM_EVENT_RESUME &&
>       host->pm_state.event == PM_EVENT_USER_SUSPEND) {
>       > @@ -967,16 +966,14 @@ static int msdc_do_request(struct
>       mmc_host *mmc, struct mmc_request *mrq)
>       >� � � �//if(host->id==1) {
>       >� � � �if (send_type == SND_CMD) {
>       >� � � � � � � �if (cmd->opcode == MMC_SEND_STATUS) {
>       > -� � � � � � � � � � �if ((cmd->resp[0] & CARD_READY_FOR_DATA)
>       || (CARD_CURRENT_STATE(cmd->resp[0]) != 7)) {
>       > +� � � � � � � � � � �if ((cmd->resp[0] & CARD_READY_FOR_DATA)
>       || (CARD_CURRENT_STATE(cmd->resp[0]) != 7))
>
>       This line is really long.� Since you have sent a series on this
>       code,
>       maybe you can add in another patch to clean this up.
>
>       julia
>
>
> So add it as a 4th patch in the patchset ?

That would be fine.

julia

> Dafna
> �
>       >� � � � � � � � � � � � � � � �msdc_gate_clock(host->id);
>       > -� � � � � � � � � � �}
>       >� � � � � � � �} else {
>       >� � � � � � � � � � � �msdc_gate_clock(host->id);
>       >� � � � � � � �}
>       >� � � �} else {
>       > -� � � � � � �if (read) {
>       > +� � � � � � �if (read)
>       >� � � � � � � � � � � �msdc_gate_clock(host->id);
>       > -� � � � � � �}
>       >� � � �}
>       >� � � �//}
>       >� #else
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/bf3ba7a38f000d4359c4c56f
>       ac98f17ae3ef6a2b.1538333858.git.dafna3%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAJ1myNR7951qEF6hpN8DRJ-
> hmckXMOzZWnzBJWrYqdaRoPLb2g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1935806662-1538383659=:3464--

