X-GM-THRID: 6671548221790093312
X-Received: by 2002:a1c:2885:: with SMTP id o127mr2178723wmo.135.1553418400271;
        Sun, 24 Mar 2019 02:06:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c141:: with SMTP id z1ls35525wmi.0.experimental-gmail;
 Sun, 24 Mar 2019 02:06:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzSpKB48C56PR/oaozfCSZG93m1HkjOfsRp9k6cSdVCvQYGZR3sLivbZSwXUAWstdR5BTeZ
X-Received: by 2002:a1c:9d8f:: with SMTP id g137mr8309155wme.26.1553418398365;
        Sun, 24 Mar 2019 02:06:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553418398; cv=none;
        d=google.com; s=arc-20160816;
        b=AM5EKjDxXoqz19Nj/vetjL9/iNABSOkylHgjv39UgrCPQCF3GViZAwB4O9IFqmFsd/
         Prd7AZHZqhvcBlCBUQDmbufQPj9+5qiwdeoT9bc5B5U5qRP1FuRoEv8W4B1Fh7bfbxn+
         p/hBtby5KkQzTovBrFmToA2nIEzxLHcOGBwR6bZ9WJuWGuPAOsfAqrFW2uficAnd5Axg
         QtsLrXuwXyAohPjw+SUrh+xszq4IyfdYfTiRSCEXljCCUZ+CkeZ33HUzILBnD0tFyDtx
         MEmivWSfUjSGeKgU6d9s7Q9Z6hQQB1OdhecG3VapJDaA32Htjlu7LBBQXkiFloxKgAFY
         rq4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=VI9xlFhdr0FEjAPB8myDAUp/j8P/zS/M1usOd5sDLv4=;
        b=VUZnCj8g8oDhMraE6kRESzwm8QumydotbTcXnkt9hYmYIq/JPYNs1hWjQzfCRjmjHp
         YVBRhzV2LosOhSwluCKzdeCvSegjEXz8nH+uk2y8r1T1z4+OoMt9SHjPrPbrqewowC0V
         f+dIWdfa8O7jsidXXSmPEeKvVfrcUYDzitVNzN2J+72lvVIc6dqhs/5amThC2Pi7+R4E
         uKWKXZikNVNqRiEclZVzqIQ/YBEJue6qXsqy+rp1O1ggj/HuonqcJe7eIuVL3M/jkNEJ
         bqWWYLCSUQKlCfqvDg0AxbPvoL9fViyIirgRwLgOL98Fc1wVRqxB5xEGgaxogPJK+ZL2
         t5lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y196si475744wmd.0.2019.03.24.02.06.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 02:06:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300516158"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 10:06:37 +0100
Date: Sun, 24 Mar 2019 10:06:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: anushkacharu9@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: sd.c: fix line over
 80 characters
In-Reply-To: <ab824102-840f-4212-9d06-c0cb65aaf793@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903241006080.2526@hadrien>
References: <anushkacharu9@gmail.com> <20190323113413.8040-1-anushkacharu9@gmail.com> <alpine.DEB.2.21.1903231436220.2566@hadrien> <ab824102-840f-4212-9d06-c0cb65aaf793@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1226583813-1553418398=:2526"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1226583813-1553418398=:2526
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 24 Mar 2019, anushkacharu9@gmail.com wrote:

> Okay i will do it.

Don't top post.  Put your reply under the text that you are replying to.

thanks,
julia

> Thanks.
>
> On Saturday, 23 March 2019 19:07:51 UTC+5:30, Julia Lawall wrote:
>
>
>       On Sat, 23 Mar 2019, anushk...@gmail.com wrote:
>
>       > From: Anushka Shukla <anushk...@gmail.com>
>       >
>       > Rearrange code to fix line over 80 characters
>       >
>       > Signed-off-by: Anushka Shukla <anushk...@gmail.com>
>       > ---
>       >  drivers/staging/rts5208/sd.c | 3 ++-
>       >  1 file changed, 2 insertions(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/rts5208/sd.c
>       b/drivers/staging/rts5208/sd.c
>       > index c256a2398651..7853ef9ca372 100644
>       > --- a/drivers/staging/rts5208/sd.c
>       > +++ b/drivers/staging/rts5208/sd.c
>       > @@ -4513,7 +4513,8 @@ int sd_execute_write_data(struct
>       scsi_cmnd *srb, struct rtsx_chip *chip)
>       >                  if (sd_lock_state ^ (sd_card->sd_lock_status
>       & SD_LOCKED)) {
>       >                          sd_card->sd_lock_notify = 1;
>       >                          if (sd_lock_state) {
>       > -                                if (sd_card->sd_lock_status &
>       SD_LOCK_1BIT_MODE) {
>       > +                                if (sd_card->sd_lock_status &
>       > +                                    SD_LOCK_1BIT_MODE) {
>       >
>                                                sd_card->sd_lock_status
>       |= (
>       >
>                                                        SD_UNLOCK_POW_ON
>       | SD_SDR_RST);
>
>       The change is ok, but there is another improvement opportunity
>       here on the
>       next line.  The open paren should be move to the next line, or
>       the
>       parentheses around the expression should just be dropped.
>
>       julia
>
>       >                                          if (CHK_SD(sd_card))
>       {
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190323113413.8040-1-an
>       ushkacharu9%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/ab824102-840f-4212-9d06-
> c0cb65aaf793%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1226583813-1553418398=:2526--

