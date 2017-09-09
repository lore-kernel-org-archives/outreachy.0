X-GM-THRID: 6463658667322376192
X-Received: by 10.28.138.195 with SMTP id m186mr129827wmd.9.1504939930131;
        Fri, 08 Sep 2017 23:52:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.152.136 with SMTP id a130ls328955wme.19.gmail; Fri, 08 Sep
 2017 23:52:09 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBrUVsqwbOE4miGksxVMbi73e/4GU6P+1xSNxNDixNnQr8aDn0n86IuvXVuzEunqgzTXMxA
X-Received: by 10.28.4.84 with SMTP id 81mr338798wme.28.1504939929068;
        Fri, 08 Sep 2017 23:52:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504939929; cv=none;
        d=google.com; s=arc-20160816;
        b=PUQz0yyEwjl1oxqTr4Lgqc2CF56vaRhWkOOG7UDARE9xvQ007CkrMBRHTHFTyZ62M3
         GmJLjjBhKIadRYqTMgvghhZFCSn8V3n3c5UmZ5JrALKgDA8tHq6yX7eC09wR4VAc7D7e
         ihm0ME0GioxFZ/nj5l/OxYtKTUw5q9C1flpYvXwgD4P8egafzoCoSjJVML5E7bjCzrqQ
         sBobmA54z9FbZjAk+R5qOlBf3Mb5i+8K9B98dmf6gvC2Fm4qZgGxsz3YyhuCrM+D5yWf
         uBY6Hv4fVsfCv0KoclTFyoy4+SlhDteC8tJa/aL8YX+vkaVuBvH6STNMEJouylLzla6r
         hWgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=rEauovETkpXW6swOZHgmCvniI1rPJhoQzLYTUzCXPd8=;
        b=s0ntcg92T3LvMi0kanydEMJ0dTjLC7t4vaw35GKSZDVHpJH1MwNMWIbNRq/+xCtE6M
         yh33/USs3ceR9Sr3dO5FB6930IPSXyzW/3b2EGRtdEGSGhbj+vl7gVdq0rJ4UfyQM3UP
         jcTN/HUpeRkU/u60858KsGrCq+PTCfi6Di0isa/B/VGQ/QDBufVYV4chYr6Fvsw5zGUk
         TSmVx5+0PrHZPZRg3iE+dM/WBuJtt9JoBHTvS+/lppi8XjjbMS8aacvRKLxKU7ae5uSC
         wUJjT5w/W9lVPzJe2kUi0k3dS29tMDEx29CwEd5PpIsWitEOE0hPf4ktOncf9J9Hw/nM
         qBow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s127si198750wme.8.2017.09.08.23.52.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 23:52:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,365,1500933600"; 
   d="scan'208";a="236858350"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Sep 2017 08:52:08 +0200
Date: Sat, 9 Sep 2017 08:52:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    w.d.hubbs@gmail.com, chris@the-brannons.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Change symbolic
 permission from 'S_IRUGO' to '0444'
In-Reply-To: <20170909061641.GA19737@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709090844130.2044@hadrien>
References: <20170909061641.GA19737@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Meghana Madhyastha wrote:

> This fixes the following warning reported by checkpath.pl.
> WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.

It could be good to change the distribution of information between the
subject line and the commit log.  The subject line should be concise and
give a quick idea of what the patch is about.  It doesn't need to have all
the details.  So it could be eg "Replace symbolic permission".  Now one
has the idea, and if one is interested in more details one can look at the
commit log.

Then the commit log should say what you did and why you did it.  "Fix"
doesn't really say anything about what you did, and just following a tool
is not the best reason why (although in some simple cases it can be hard
to think of anything else).  Still it is nice to give credit to the tool
that helped you find the issue.

So you could say:

Replace S_IRUGO by 0444 in module parameter declaration.  0444 is more
readable and matches the style used in other declarations nearby.

Problem found using checkpatch.


The actual checkpatch message is not so important.  In this case it also
goes past 80 characters, so if you really want to include it, you should
add a newline somewhere.

julia


>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>  drivers/staging/speakup/speakup_acntsa.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/speakup_acntsa.c b/drivers/staging/speakup/speakup_acntsa.c
> index 0e10404..4331584 100644
> --- a/drivers/staging/speakup/speakup_acntsa.c
> +++ b/drivers/staging/speakup/speakup_acntsa.c
> @@ -136,7 +136,7 @@ static int synth_probe(struct spk_synth *synth)
>  }
>
>  module_param_named(ser, synth_acntsa.ser, int, 0444);
> -module_param_named(dev, synth_acntsa.dev_name, charp, S_IRUGO);
> +module_param_named(dev, synth_acntsa.dev_name, charp, 0444);
>  module_param_named(start, synth_acntsa.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170909061641.GA19737%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

