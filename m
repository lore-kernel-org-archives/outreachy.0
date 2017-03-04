X-GM-THRID: 6393400648864366592
X-Received: by 10.46.80.1 with SMTP id e1mr1252001ljb.10.1488643958830;
        Sat, 04 Mar 2017 08:12:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls1170602lja.1.gmail; Sat, 04 Mar 2017
 08:12:38 -0800 (PST)
X-Received: by 10.25.157.14 with SMTP id g14mr1043058lfe.28.1488643958170;
        Sat, 04 Mar 2017 08:12:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si534195wmh.1.2017.03.04.08.12.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:12:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,242,1484002800"; 
   d="scan'208";a="263121278"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 17:12:37 +0100
Date: Sat, 4 Mar 2017 17:12:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging:speakup:i18n.c: Delete
 tab to indent
In-Reply-To: <20170304160408.4911-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703041711570.2072@hadrien>
References: <20170304160408.4911-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, Tamara Diaconita wrote:

> Deleted spaces and added a tab to fix the following checkpath.pl issue:
> CHECK: indent should use tabs where possible.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 1a3e348..f4b3f48 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
>  			if (index >= MSG_FORMATTED_START &&
>  			    index <= MSG_FORMATTED_END &&
>  			    !fmt_validate(speakup_default_msgs[index],
> -			                  newstr)) {
> +					 newstr)) {

Still not quite right.  newstr should start after the right side of the (
on the preceeding line.  So it needs to move one more space over.

julia

>  				kfree(newstr);
>  				return -EINVAL;
>  			}
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170304160408.4911-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

