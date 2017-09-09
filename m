X-GM-THRID: 6463802191249408000
X-Received: by 10.28.133.68 with SMTP id h65mr483596wmd.1.1504979562754;
        Sat, 09 Sep 2017 10:52:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.206.200 with SMTP id e191ls476086wmg.2.canary-gmail; Sat,
 09 Sep 2017 10:52:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAJzQuf4bZFRYPRDm6BuhMww/+Yt1EUe+vYfC9ipF77CV/rkhfeTggkfRSpyZF3F9JvXvgg
X-Received: by 10.28.46.67 with SMTP id u64mr441992wmu.7.1504979561733;
        Sat, 09 Sep 2017 10:52:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504979561; cv=none;
        d=google.com; s=arc-20160816;
        b=WFoUSm59qjje6lYcaqcjmmWDVukC82wricZiUGhL3eIiyYZZDvKaRsvIUJV4Z3QJN6
         CWMsIFIUE77XnNiot14V5iVDBnhSXQrp85j1ITxa7IuTVRRBXy7VwoaPA/9mL2kUzdxF
         toR79peL4Uu+T6LDQzHpxRxJs0nfQKn7jBMzA7tiDRdA0mieu3yJ6DYfMsF71kVPRlDQ
         TbCDqByLg+TZnPIB5XkaUrFd+Sqb/VgcUhuyeFzvyWGi6gx3UiYeSc2H8+YIFPHPbWpK
         tqwC9lIaU2zqxMK+Jj39Cbt0csU0WaKDTzETxESG+qFhbEAoDHI0onEPY6YmhaR2eJtU
         hVeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=T/MoOHK/fSypbZLYD8Q99vDbs+Xlr5pBBQ23GkvrWYk=;
        b=MXwpUkMOQLbQl+U/q1zrOlCjtw7dC0OqonxYvSnR7JGt5gj9Juild2ynTmQ6SyUkZz
         OjtWypu80O2hbQzOHWi7nDBSe7b50g0pqhjvh0RJFxydvatqvUmZhIVs8PVVocERfIHN
         eJXxPbJB51PDBptzL4zIa/RCrOE2R7PDbMAZcpEqUrNUmjFQN4m30NfUVwyvEcy+fLPg
         HtCBbjH3MjZ9VbZzGhDNbpjLVB84zv/7yFdc8bGuvLPFXH7p9ADNU3QY7MkYVrncPyBY
         NNiSlrCke7t47CzvLnf2ZxlkA2am1DhcZKNSSjqZPYxKT8wh/wyYIYMIR95ZH3hHZkm3
         xq2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b203si287075wmh.4.2017.09.09.10.52.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 10:52:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,368,1500933600"; 
   d="scan'208";a="236894218"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Sep 2017 19:52:41 +0200
Date: Sat, 9 Sep 2017 19:52:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    w.d.hubbs@gmail.com, chris@the-brannons.com
Subject: Re: [Outreachy kernel] [PATCH V3] Staging: speakup: Replace symbolic
 permission
In-Reply-To: <20170909174034.GA22902@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709091952160.2149@hadrien>
References: <20170909174034.GA22902@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Meghana Madhyastha wrote:

> Replace S_IRUGO by 0444 in module parameter declaration. 0444 is more
> readable and matches the style used in other declarations nearby.
>
> Problem found using checkpatch.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>
> Changes in v2:
>  - Make the commit message more clearer and the title more concise

Even though there is no conceptual change, you should say what changed in
v3 also.

julia

>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170909174034.GA22902%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

