X-GM-THRID: 6528283603618496512
X-Received: by 10.25.199.80 with SMTP id x77mr387655lff.14.1519985539212;
        Fri, 02 Mar 2018 02:12:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.17.66 with SMTP id f63ls1028147lje.1.gmail; Fri, 02 Mar
 2018 02:12:18 -0800 (PST)
X-Google-Smtp-Source: AG47ELsAi7rq0xfYCPrnWKGntd9+CfjB5fyPTq4M+FEZIDU8xtLxkVk0xgJdTby18I8bOKJcnjkq
X-Received: by 10.46.67.147 with SMTP id z19mr339793lje.24.1519985538176;
        Fri, 02 Mar 2018 02:12:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519985538; cv=none;
        d=google.com; s=arc-20160816;
        b=RR6D7jEa0810d3fjQx14H0zvC5EiQnpZEotB+6ZCGSJcOSKjsdzNIlm+PrFF+OY7ba
         ctdD9EP2FDWRMXFWhDPv5rJAEfjEpxaiibCTnfcTomMzaS4GNYBoN9+isV9qYKLS7LzB
         QNT/FqrAsHuwqnmR0Zq55hLjAt1NqHcd/mV2bfj5QTvNOCguxvVl8oPpxiceapXfkiXx
         S3xc6NsGP3xZuITOLzuP9RcHhj4O8JNiTaj3PmaKL1WGit3hl/4LuVJblCx4QK6AY1/T
         1n7vuUtxVTjVZj1IQ+7OunCzMz7Y/myh/4N3UWaQOmEvTalE+g2zcLGMqImw/QazGxOl
         gYtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=fdWF8G6WYq3QTNxANIuOA1Ne1jGtSJ3waw4rfcOTLfs=;
        b=n85hl+nbHZQ+aCwEGe0olPlzvuR+7hXtJ1pcTjc7z+IV5Sc/hF40w4d/Qfnj3Jf0iR
         79wpxICN+KPMeZ+4RcKsIXZ+/5AszdAFvmtEYbiCsWe+47PZFiUuqJ6LYqK7Gl2Xl0va
         3+pdEmBOwyZWaY9+uKUBcaiINfK/oXVVGbxEnj2FQ4gJcSckDQh1Xs/iENj5hHxXU02F
         GZp5T5/twz2dqeYDl9UUSoBdySa290iBUfr+FDoqOMHyf0BpZ9CpJNSSiGUbU6vcpZUT
         5566HDwhAVns2TJZ6yIx+1V4lievXcIfXJc4X93NCVcmV9ctrZaX9zkqmuqNAmQJyVh1
         Sg3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s26si165460lfi.1.2018.03.02.02.12.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 02:12:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,411,1515452400"; 
   d="scan'208";a="256689315"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 11:12:17 +0100
Date: Fri, 2 Mar 2018 11:12:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: remove condition
 where it has no effect
In-Reply-To: <20180302100854.GA14922@ubuntu>
Message-ID: <alpine.DEB.2.20.1803021111560.2214@hadrien>
References: <1519984441-14752-1-git-send-email-santhameena13@gmail.com> <alpine.DEB.2.20.1803021100500.2214@hadrien> <20180302100854.GA14922@ubuntu>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Santha Meena Ramamoorthy wrote:

> On Fri, Mar 02, 2018 at 11:03:38AM +0100, Julia Lawall wrote:
> >
> >
> > On Fri, 2 Mar 2018, Santha Meena Ramamoorthy wrote:
> >
> > > Remove condition where if and else branch are functionally identical.
> > > Issue found using cond_no_effect.cocci Coccinelle script.
> >
> > Actually, there are just identical, period.  It would be good to remove
> > "functionally".
> >
> > Since having such code that is completely duplicated is a little bit
> > strange, it could be good to enlarge the recipient list to:
> >
> > Ping-Ke Shih <pkshih@realtek.com>
> > (commit_signer:1/1=100%,authored:1/1=100%,added_lines:5225/5225=100%)
> > Larry Finger <Larry.Finger@lwfinger.net> (commit_signer:1/1=100%)
> > devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
> >
> > Maybe someone out there would know if actually some different arguments
> > were intended.
> >
> > julia
> >
> Hi,
>
> Sure, I will do it now. I guess that should be v2 of the patch.

Yes.  Change to the commit message and adding new recipients.

julia

> > >
> > > Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> > > ---
> > >  drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c | 8 ++------
> > >  1 file changed, 2 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> > > index ffff5b0..5b82640 100644
> > > --- a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> > > +++ b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> > > @@ -2885,12 +2885,8 @@ static void halbtc8822b2ant_action_a2dp(struct btc_coexist *btcoexist)
> > >  							     NORMAL_EXEC, 5);
> > >
> > >  		} else {
> > > -			if (wifi_turbo)
> > > -				halbtc8822b2ant_coex_table_with_type(
> > > -					btcoexist, NORMAL_EXEC, 10);
> > > -			else
> > > -				halbtc8822b2ant_coex_table_with_type(
> > > -					btcoexist, NORMAL_EXEC, 10);
> > > +			halbtc8822b2ant_coex_table_with_type(btcoexist,
> > > +							     NORMAL_EXEC, 10);
> > >
> > >  			halbtc8822b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true,
> > >  						109);
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519984441-14752-1-git-send-email-santhameena13%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>

