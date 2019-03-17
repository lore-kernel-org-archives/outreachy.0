X-GM-THRID: 6669194328626167808
X-Received: by 2002:a50:cb0d:: with SMTP id g13mr1326804edi.12.1552807025422;
        Sun, 17 Mar 2019 00:17:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8ebb:: with SMTP id w56ls592019edw.2.gmail; Sun, 17 Mar
 2019 00:17:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwp8Dz/KQze9j8nxkaSaNwnNxyCpKg16Q9j4w8MsfZCqnxagcbTqKLuC1qoJSea6cecx9p4
X-Received: by 2002:aa7:cd0f:: with SMTP id b15mr1319199edw.4.1552807024756;
        Sun, 17 Mar 2019 00:17:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552807024; cv=none;
        d=google.com; s=arc-20160816;
        b=XYeN/6jdCtTfl5ZBjy5gZjcN0lHz6RlWQi1icP5/pcr5GdQUfSvtvDnELV8PoIP1Z0
         XxNrafroNI3383nwxpMEJQAyyCO/F2pn0yMyjOQkLAeGzOSs94WVktURAmwYamXZqINZ
         CiqwPBRIz2hKNtuvnC4EAFkKmZ1SgQYUWoG5ZdDWEFPBIC8sMdU7cs8i3m+XDVDXtWLd
         cigwaoOcqa2R88pPoofd6+hGNnI/Q16P/kI1yZBzaFEU+PLzQAOl9++lYw6/+RGtKUze
         +4EhUYYIrIxVEnVuF0rQAVnWW9gYedegpU9Ojkn5p7cZaX80wKT6oB2Bsyk5IBtoUknv
         GNBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=CXcx3cU18SF1hB9M4vIYBLdsY+BWN24apPkhsOnG1EQ=;
        b=YEW82yu/D0WRT8ZpJny7LR9cDRIa83IGINpyb0yEcjZoQuN09c35e9hyrbUHL6Urcd
         qtYkNM4F0BP4w+iKJs9LTUAGPSQbRNLhFRnMNf04qRKZRWWOJ1zZ/qX3GA26VPETmM+i
         g+VPYMph0IavYS7qe8bWEiNsOrl6UzgWdsTYaUElS/Ek82LBwu2GNAikPnWHhiGuoLe+
         BOEGuGtPJ3y/HRAk8gyhHP7ADOscgbvgY74XfkxqDsf0NQsSdBWp/HHeQtynzwMmGZEm
         VpJPuVoylHqgRRZXC//IPimPmR30uFVjQdLtzCPSTpxc8+WBAsA33IZFrfN9kOB8U9xl
         TCUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r37si229034edd.2.2019.03.17.00.17.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 00:17:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,488,1544482800"; 
   d="scan'208";a="299669242"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 08:17:04 +0100
Date: Sun, 17 Mar 2019 08:17:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: fix printk KERN_LEVEL
 facility level warning
In-Reply-To: <20190317031236.9361-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170816500.2588@hadrien>
References: <20190317031236.9361-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Jules Irenge wrote:

> Replace printk with pr_debug to solve checkpatch.pl warning:
>  " WARNING: printk() should include  KERN_<LEVEL> facility level"

Why did you choose pr_debug?

julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 11c704b27c3c..2eb5af3debb3 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -99,7 +99,7 @@ static void report_char_chartab_status(int reset, int received, int used,
>  			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
>  				 " with %d reject%s\n",
>  				 rejected, rejected > 1 ? "s" : "");
> -		printk(buf);
> +		pr_debug(buf);
>  	}
>  }
>
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190317031236.9361-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

