X-GM-THRID: 6806472827203485696
X-Received: by 2002:aa7:c41a:: with SMTP id j26mr13531215edq.33.1584806366665;
        Sat, 21 Mar 2020 08:59:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:a40f:: with SMTP id u15ls5232951edb.5.gmail; Sat, 21 Mar
 2020 08:59:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs1V1mdsOdnyIiXld1XTO6O9utQXSwqnWVK46doQxCRui2E4hosRK19Vpg6E876zp6mgLxq
X-Received: by 2002:a50:eb05:: with SMTP id y5mr13807774edp.168.1584806365409;
        Sat, 21 Mar 2020 08:59:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584806365; cv=none;
        d=google.com; s=arc-20160816;
        b=LX1mldmzFqyuzWN30TRCcwkoEfEeWZOo5ohcY244Qltct4I0hD23MYOdrCxx5bbp0j
         ZaI+0qLqCYYCwPo6IjjsAFka6bpL1az8DfluslV48tucjDOAirPCBQhX2Wppk0vYaFfk
         /miDJ8S2LdFfvqdg5dbGKl2bs1JvTOFv2SukD0kpCqFr+5JpZK3UjBd6icJyNwGg6KUo
         kJJwllI5oql7aq6BI2n132rH7+W/j+sZ9LORQ6Gje+MyJIeOQbumj7jdP5+G9e5wlS9X
         HoVLEkxbxWf0YdRMO2hRi9UzJWSeuyo9cep8/kv+fzvGLj4To/YDj0CXikjauMSGt0W0
         gwrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=QUh4pdel3PB6jc7CDCsE1UBtw/x7x6g4qifdR0Od+M8=;
        b=Eigls5CncxYVNDpPw0kTCLfBWAuaHcsfnfl4OJCFBZdBhJo8LsmYQ7vV2FzOTZJJtV
         uMaa53Z+XcBmPSVPBHjQbT1uUk1LWL/jVIa+iG+SrssQLyIm5Wa/15XH3MnTQm93utiL
         ZqMPX8NULBO+HI/SOk7glC+QOUz+UR7wNdJ8WVBFum6HO/DXDuGIGVJlgUeArVG47P6v
         qi3CGq6dTnchY3zif3cD7gswb7PpvidtAr+DR2nA0CuCj27bldMW1E8Z+pnabwE0reA6
         JDGWIs2FkdhGLj7GLnzb9sZm5hGVuRW9LXKrTkrQwCgFIGrvONrZBcpVhuGSrnZmw6Qm
         +Wjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cw13si509951edb.2.2020.03.21.08.59.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 08:59:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,289,1580770800"; 
   d="scan'208";a="441491939"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2020 16:59:13 +0100
Date: Sat, 21 Mar 2020 16:59:13 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: hp100: quoted string
 split across lines
In-Reply-To: <20200321155336.GA9439@siyah2>
Message-ID: <alpine.DEB.2.21.2003211658210.2522@hadrien>
References: <20200321155336.GA9439@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 21 Mar 2020, Gokce Kuler wrote:

> Added " sign for be the same original code
>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 6487b3a..6041043 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -2931,7 +2931,7 @@ static struct pci_driver hp100_pci_driver = {
>   */
>
>  MODULE_LICENSE("GPL");
> -MODULE_AUTHOR("Jaroslav Kysela <perex@perex.cz>,Siegfried \"Frieder\" Loeffler (dg1sek) <floeff@mathematik.uni-stuttgart.de>");
> +MODULE_AUTHOR("Jaroslav Kysela <perex@perex.cz>","Siegfried \"Frieder\" Loeffler (dg1sek) <floeff@mathematik.uni-stuttgart.de>");
>  MODULE_DESCRIPTION("HP CASCADE Architecture Driver for 100VG-AnyLan Network Adapters");

Does that compile?  It looks like you have taken something thta expevted
one argument and given it two arguments.

Did you get a .o file for this file?

julia

>
>  /*
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200321155336.GA9439%40siyah2.
>

