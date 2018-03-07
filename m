X-GM-THRID: 6528705081880084480
X-Received: by 10.157.69.155 with SMTP id x27mr9454292ote.103.1520437733442;
        Wed, 07 Mar 2018 07:48:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.185 with SMTP id b54ls1318381otb.0.gmail; Wed, 07 Mar
 2018 07:48:52 -0800 (PST)
X-Received: by 10.157.5.226 with SMTP id 89mr2805726otd.12.1520437732599;
        Wed, 07 Mar 2018 07:48:52 -0800 (PST)
Received: by 10.202.85.78 with SMTP id j75msoib;
        Wed, 7 Mar 2018 07:39:04 -0800 (PST)
X-Google-Smtp-Source: AG47ELu3iCSJPLlWrYev774ox1c5qqj+WU14xRFyPE76jEHIMexgmF7cwwZ/TCzs4SAa2mn8IJV3
X-Received: by 10.36.47.73 with SMTP id j70mr14238449itj.21.1520437143743;
        Wed, 07 Mar 2018 07:39:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520437143; cv=none;
        d=google.com; s=arc-20160816;
        b=pWk8LXzq8ML35ysXjQkMyVnmxN0BlODdR5Y+pyCE07K7TMIUNOnEwjJediMYSEETID
         97Gc+kyDzQJ5e0PeALLQrUob9Q7EHwXvHQOCxrsI0Q8ZAYnvZdfS2ftMRX1I3X8+mdOx
         EcnscwGfzoYAoerUb0EEbkLsQFAm6y0Qe8dz7TfJkHmpkqsF8jV2m78SIjIHx+ebpe+z
         1Ea4IX5Inq4B/EMPIPL2PR1ElpyFsmyHVm5TihY1IiwEqwyRwdQnqxNhTnfl7GE+Hw0u
         ZGL7smUhSDJ39I8IvrAF3s8yOmQtaLIbHWXGiuwlPz1f1rl8oRcx4mt7pF0t6aTigLUm
         BO9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date:arc-authentication-results;
        bh=W2YWrcSLtglJTrZXuQgJQbCZcOulBOq1TUFOr/doYuk=;
        b=FIq+W9ZwpAeeCOALlH1Q8kO1WkwgGTS57Q0BDMq15dPZYrHAw0Yn+vYjB/2i592fSZ
         5iud7ASjzwpyhO1vEnaiy/87lC0Tg7FT6FqiSG9DdGYp47QjaYrKG482mLWJWsnb8Udv
         weX6HsyCBpH7TwfANTqRWiwRXDYTM9EPDtZk/cJ3Pnjf8/MkeOog/uyJbeIuV9KPYqeM
         aQOWBKWrIRuC/QeKHM0sVIJYFaHBb94y0M3RDKwwq0Dqrr5tUrxwOCIKpUZUHf+RqIPx
         UJsFaJe9VgJ6PsibAP1t0tdltrdJPLxJwGt+2ScSni/Ce/9afvJUUd2/X5vP/T8x4iNO
         CpZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 184.105.139.130 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Return-Path: <davem@davemloft.net>
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [184.105.139.130])
        by gmr-mx.google.com with ESMTPS id o6si790391ith.3.2018.03.07.07.39.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 07:39:03 -0800 (PST)
Received-SPF: neutral (google.com: 184.105.139.130 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=184.105.139.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 184.105.139.130 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from localhost (67.110.78.66.ptr.us.xo.net [67.110.78.66])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 1A16B121807B4;
	Wed,  7 Mar 2018 07:39:02 -0800 (PST)
Date: Wed, 07 Mar 2018 10:39:01 -0500 (EST)
Message-Id: <20180307.103901.1771176275743006915.davem@davemloft.net>
To: arushisinghal19971997@gmail.com
Cc: jdmason@kudzu.us, jakub.kicinski@netronome.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, oss-drivers@netronome.com,
 outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] net: ethernet: Drop unnecessary continue
From: David Miller <davem@davemloft.net>
In-Reply-To: <20180303161456.GA20194@seema-Inspiron-15-3567>
References: <20180303161456.GA20194@seema-Inspiron-15-3567>
X-Mailer: Mew version 6.7 on Emacs 25.3 / Mule 6.0 (HANACHIRUSATO)
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Wed, 07 Mar 2018 07:39:02 -0800 (PST)

From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Sat, 3 Mar 2018 21:44:56 +0530

> Continue at the bottom of a loop are removed.
> Issue found using drop_continue.cocci Coccinelle script.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> Changes in v2:
> - Braces is dropped from if with single statement.

Sorry there is no way I am applying this.

Just blindly removing continue statements that some static checker
or compiler warning mentions is completely unacceptable.

Actually _LOOK_ at this code:

>  		if(cards[i].vendor_id) {
>  			for(j=0;j<3;j++)
> -				if(inb(ioaddr+cards[i].addr_offset+j) != cards[i].vendor_id[j]) {
> +				if(inb(ioaddr+cards[i].addr_offset+j) != cards[i].vendor_id[j])
>  					release_region(ioaddr, cards[i].total_size);
> -					continue;
> -			  }
>  		}

The extraneous continue statement is the _least_ of the problems here.

This code, if the if() statement triggers, will release the ioaddr
region and then _CONTINUE_ the for(j) loop, and try to access the
registers using the same 'ioaddr' again.

That's actually a _REAL_ bug, and you're making it seem like
the behavior is intentional by editing it like this.

And the bug probably exists because this entire sequence has
misaligned closing curly braces.  It makes it look like
the continue is for the outer loop, which would be fine.

But it's not.  It's for the inner loop, and this causes the "use
ioaddr after releasing it" bug.

Please do not submit patches like this one, it makes for a lot of
wasted auditing and review for people.  The onus is on you to read
and understand the code you are editing before submitting your
changes.

Thank you.


