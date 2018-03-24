X-GM-THRID: 6536419046106071040
X-Received: by 10.46.89.156 with SMTP id g28mr1280861ljf.0.1521885828001;
        Sat, 24 Mar 2018 03:03:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.133.18 with SMTP id j18ls1262469lji.2.gmail; Sat, 24 Mar
 2018 03:03:47 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuDPMns/AINSL1CcQEhdZ3OiP4/DGXE/9Do7YDBuESOU20L1oHCQ5uQVilqPrYHgY0XdtGe
X-Received: by 10.46.16.68 with SMTP id j65mr1899207lje.37.1521885827148;
        Sat, 24 Mar 2018 03:03:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521885827; cv=none;
        d=google.com; s=arc-20160816;
        b=mXwgQPMNJy/lr2tXw/gExRTu4OMFuBKlWUZsBgs/5d6RGQ6MLQLwcUohF3r3YhUzJ8
         ekQpxSFk3fIUzv3H4fVASNSkKxTpMcTgZoJZi8o3a+MUunPdShLx4J6ld9Y7JU1WR7Rm
         oG851gMsvp2HKeIWCJ7MTNUaZXdCUAdalRX/BbYrZSrdxKo4HcUabxytDa2RIq1TRU1C
         W+5LWnn54mBHeuDpvlLOrh5cJGieyDRowjvhK+fYiqUyzuEd9fD0LP2ESEzLyvyR3vc3
         6s0YlRJd33E/e62jhRvXvLifgG3GS+17nJZihgvvakXkUifFu8tCH4P3eMXhzqL+/bhQ
         QmUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=rtOXwKnH1nH2/TkxvHugqZO0U+0rgLyQQGxEtycOG+Y=;
        b=YBTimkY3T5W1yCon1O/10NruW4t0vl16p/Vh7wJeSKhIUoHzDuVhmeF6lcBl9W3zhW
         U7686u7fTsAldJS66Si8V7eaCov6dXsdIe3bmq9t9RXPodiSkhzrfaoY0VQksJt7SSAQ
         rMz9y5lR4h75kQCBatcMyVh3qqPzlVETUQMcp9RnXwJ4IrMHYW7nAv+dZ+bSNITxne4B
         1NEUvzBdByRQQOZWT1gHWUI9PLhgjAe9Sr+9ktaopArQOvLRsQviNajmM3f073I8vZEa
         DVT2knP8p1x+aXYJqR92CTz7i3lxBVoaSVf0Y8aaOg3/wNv4La5iInlA5BQFswrPi1hp
         Nltg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v6si435177ljc.0.2018.03.24.03.03.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 03:03:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,354,1517871600"; 
   d="scan'208";a="259654264"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2018 11:03:45 +0100
Date: Sat, 24 Mar 2018 06:03:43 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-dts: Replace spaces
 with tabs in indentation
In-Reply-To: <1521878637-21803-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803240603310.2577@hadrien>
References: <1521878637-21803-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> Replace spaces with tabs in indentation.
> Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/mt7621-dts/mt7621.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
> index a6b17ea..ebcaa8b 100644
> --- a/drivers/staging/mt7621-dts/mt7621.dtsi
> +++ b/drivers/staging/mt7621-dts/mt7621.dtsi
> @@ -142,7 +142,7 @@
>  		mc: mc@1fbf8000 {
>  			    compatible = "mtk,mt7621-mc";
>  			    reg = <0x1fbf8000 0x8000>;
> - 		};
> +		};
>
>  		uartlite: uartlite@c00 {
>  			compatible = "ns16550a";
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521878637-21803-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

