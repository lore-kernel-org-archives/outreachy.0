X-GM-THRID: 6527357137219223552
X-Received: by 10.200.4.14 with SMTP id v14mr2886023qtg.19.1519963953074;
        Thu, 01 Mar 2018 20:12:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.11.2 with SMTP id e2ls3629529qti.12.gmail; Thu, 01 Mar
 2018 20:12:31 -0800 (PST)
X-Received: by 10.237.40.7 with SMTP id r7mr2907233qtd.38.1519963951743;
        Thu, 01 Mar 2018 20:12:31 -0800 (PST)
Received: by 10.55.77.12 with SMTP id a12msqkb;
        Thu, 1 Mar 2018 11:46:00 -0800 (PST)
X-Google-Smtp-Source: AG47ELttNua8Y73Jkjvzxq3aq1gIn19z7NO5e14J8ZZTcTUoRM+2xqBJlWfJUSvcIE2VnQ0oiWUW
X-Received: by 10.28.218.16 with SMTP id r16mr378692wmg.11.1519933560396;
        Thu, 01 Mar 2018 11:46:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519933560; cv=none;
        d=google.com; s=arc-20160816;
        b=optkjBemoGFBQJTziDzRd2KWzSch5ku79EGvhJD3KfT1ZZVgUwdfM7vX0BcA8alIU7
         z9sMg/l6fNmRYMN2YXSUWHBBZ8dnZF4+mle/tMpo1m9Ir7hIpoDuXWifSRwaADyU4647
         Kbbez9ycBipLCxRXCU4WKvu5nxQdq6CyTixUJCotmMEh9ByWBg/0YS+ArpbjVyPWEAcb
         vcRRKy62Mj/vww3as8dFvPjmqAjNQf2IsI2BRUG7qyY5nUaMfw55dorKn9lRIequx6Es
         JyArfz5WGsInI2hlFmEdFWnQF9GLtocykvlnYxQ/8W0Gzb/os3mI09dtZwIhi/W2xFOv
         zO5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:reply-to:arc-authentication-results;
        bh=W5nQd1cIELLM+mf8yvPQo9s9DGhckW3wGvNXV8U+NOs=;
        b=K2Qv+vFJTE3i7bbKMwESeQPymQVvJlJsWdR98nZwy32MPGHWGHGggFwT2Nph8DtZ2W
         +4bsyhFWKEPHqRafIAcU0cmyB9jxYzPowwWDdKozJuVJxjmU0/dSy0ROYeVG/xf77FD6
         ScWueIBbYvB5gXLBbXfaUZ7cFpEHfWqBUaTj/PtpkMEExDhxER0RDsh7eOnrHZrWig0M
         VsDVREc1hFnVI+m1p6836UkKGJQmfDW67W3pVCquF0ZWLpA8FdX3CaDlEePU8puS0Nxo
         d661dMxLUfRhUZz5D6XD4gG7i5qDR7ThJrE+1tI3gnQabFg82/4JYeV9lROm5hRf3Og2
         7uiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 152.77.200.57 is neither permitted nor denied by domain of nicolas.palix@imag.fr) smtp.mailfrom=Nicolas.Palix@imag.fr
Return-Path: <Nicolas.Palix@imag.fr>
Received: from zm-mta-out-2.u-ga.fr (zm-mta-out-2.u-ga.fr. [152.77.200.57])
        by gmr-mx.google.com with ESMTP id 51si337123wrw.0.2018.03.01.11.46.00
        for <outreachy-kernel@googlegroups.com>;
        Thu, 01 Mar 2018 11:46:00 -0800 (PST)
Received-SPF: neutral (google.com: 152.77.200.57 is neither permitted nor denied by domain of nicolas.palix@imag.fr) client-ip=152.77.200.57;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 152.77.200.57 is neither permitted nor denied by domain of nicolas.palix@imag.fr) smtp.mailfrom=Nicolas.Palix@imag.fr
Received: from zm-mta-out.u-ga.fr (zm-mta-out.u-ga.fr [152.77.200.58])
	by zm-mta-out-2.u-ga.fr (Postfix) with ESMTP id 18C5D6019F;
	Thu,  1 Mar 2018 20:46:03 +0100 (CET)
Received: from smtps.univ-grenoble-alpes.fr (smtps2.u-ga.fr [195.83.24.202])
	by zm-mta-out.u-ga.fr (Postfix) with ESMTP id 60E20E00AD;
	Thu,  1 Mar 2018 20:46:04 +0100 (CET)
Received: from yttrium.home (LFbn-1-8098-157.w90-112.abo.wanadoo.fr [90.112.243.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: palixn@univ-grenoble-alpes.fr)
	by smtps.univ-grenoble-alpes.fr (Postfix) with ESMTPSA id A951A60496;
	Thu,  1 Mar 2018 20:46:03 +0100 (CET)
Reply-To: nicolas.palix@univ-grenoble-alpes.fr
Subject: Re: [PATCH] Coccinelle: memdup: Fix typo in warning messages
To: Dafna Hirschfeld <dafna3@gmail.com>, Julia.Lawall@lip6.fr,
 Gilles.Muller@lip6.fr, michal.lkml@markovi.net,
 linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
References: <20180301085717.GA4508@gmail.com>
From: "Nicolas Palix (LIG)" <Nicolas.Palix@imag.fr>
Organization: UJF Polytech / LIG Erods
Message-ID: <8cc75580-b29a-a599-4af1-6bb3783bc705@imag.fr>
Date: Thu, 1 Mar 2018 20:45:59 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180301085717.GA4508@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: fr
Content-Transfer-Encoding: 8bit
X-Greylist: Whitelist-UGA SMTP Authentifie (palixn@univ-grenoble-alpes.fr) via submission-587 ACL (99)

Le 01/03/2018 à 09:57, Dafna Hirschfeld a écrit :
> Replace 'kmemdep' with 'kmemdup' in warning messages.
> 
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
Acked-by: Nicolas Palix <nicolas.palix@imag.fr>
> ---
>   scripts/coccinelle/api/memdup.cocci | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/coccinelle/api/memdup.cocci b/scripts/coccinelle/api/memdup.cocci
> index 1249b72..8fd6437 100644
> --- a/scripts/coccinelle/api/memdup.cocci
> +++ b/scripts/coccinelle/api/memdup.cocci
> @@ -56,10 +56,10 @@ statement S;
>   p << r.p;
>   @@
>   
> -coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdep")
> +coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdup")
>   
>   @script:python depends on report@
>   p << r.p;
>   @@
>   
> -coccilib.report.print_report(p[0], "WARNING opportunity for kmemdep")
> +coccilib.report.print_report(p[0], "WARNING opportunity for kmemdup")
> 


-- 
Nicolas Palix
http://lig-membres.imag.fr/palix/

