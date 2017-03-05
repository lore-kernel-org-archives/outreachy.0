X-GM-THRID: 6393400648864366592
X-Received: by 10.46.77.69 with SMTP id a66mr1628165ljb.11.1488693933060;
        Sat, 04 Mar 2017 22:05:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.83 with SMTP id h80ls244711lfi.13.gmail; Sat, 04 Mar
 2017 22:05:32 -0800 (PST)
X-Received: by 10.46.69.7 with SMTP id s7mr1508143lja.18.1488693932001;
        Sat, 04 Mar 2017 22:05:32 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si974564wmd.0.2017.03.04.22.05.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 22:05:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,246,1484002800"; 
   d="scan'208";a="263158828"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2017 07:05:31 +0100
Date: Sun, 5 Mar 2017 07:05:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    gregkh@linuxfoundation.org, diaconita.tamara@gmail.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging:speakup:i18n.c: Delete
 tab to indent
In-Reply-To: <e1877054-d9f5-4389-9dbb-f158d0a8b7df@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703050703530.2198@hadrien>
References: <20170303221944.10488-1-diaconita.tamara@gmail.com> <e1877054-d9f5-4389-9dbb-f158d0a8b7df@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1420358561-1488693931=:2198"

--8323329-1420358561-1488693931=:2198
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 4 Mar 2017, Tamara Diaconita wrote:

> Should I change the description and write it as I did in the previous
> patches?

Yes.

Also, it looks like your subject line is not correct.  Normally one does
not put .c at the end.  Normally there is a space after each :.  Use git
log --oneline on the affected file to see what others have done for this
driver and do the same (there is no deterministic algorithm to choose the
right thing).

julia

>
> sâmbătă, 4 martie 2017, 00:19:48 UTC+2, Tamara Diaconita a scris:
>       Fixed the issue by using tabs over spaces to indent the code.
>
>       Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
>       ---
>        drivers/staging/speakup/i18n.c | 2 +-
>        1 file changed, 1 insertion(+), 1 deletion(-)
>
>       diff --git a/drivers/staging/speakup/i18n.c
>       b/drivers/staging/speakup/i18n.c
>       index 1a3e348..3e5f012 100644
>       --- a/drivers/staging/speakup/i18n.c
>       +++ b/drivers/staging/speakup/i18n.c
>       @@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index,
>       char *text, size_t length)
>                                if (index >= MSG_FORMATTED_START &&
>                                    index <= MSG_FORMATTED_END &&
>                                  
>        !fmt_validate(speakup_default_msgs[index],
>       -                                          newstr)) {
>       +                                    newstr)) {
>                                        kfree(newstr);
>                                        return -EINVAL;
>                                }
>       --
>       2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/e1877054-d9f5-4389-9dbb-
> f158d0a8b7df%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1420358561-1488693931=:2198--

