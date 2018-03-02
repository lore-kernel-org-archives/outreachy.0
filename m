X-GM-THRID: 6528283603618496512
X-Received: by 10.31.155.136 with SMTP id d130mr2131148vke.107.1519985364885;
        Fri, 02 Mar 2018 02:09:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.12.12 with SMTP id a12ls1008955uak.14.gmail; Fri, 02 Mar
 2018 02:09:23 -0800 (PST)
X-Google-Smtp-Source: AG47ELt0SzEuXJe9gVjTWliNeazVc5ucNyiZ9kBjYv4Shu59JFI7YXOVyqgGkyBc6x/AzHR+vH1E
X-Received: by 10.176.65.37 with SMTP id j34mr2261997uad.8.1519985363948;
        Fri, 02 Mar 2018 02:09:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519985363; cv=none;
        d=google.com; s=arc-20160816;
        b=IT+M8tKe3HH2gvmDxdPSIXsCYZuHXMy/b+OdOMXgGb7jrElZGwGnTgcPbbkvuIHY93
         Qg6gfX0mBaBbyQabzT1FEOgb44U7KYd5t/bN5x7bYtp9dQLHEHXthVS73MQe183g86SL
         85WuRf9pAfiL5EjQj05umkOjwRJMQ5AjGLUSsEatfwRPX4aFfIV7E7KtYM3K0dopCwAJ
         ePsu41VEXE1hOAI/XL53y4RuwfBQFIK+/RqnGrYEKcB/UOoZIIcLnBPere7sY2DeNoYK
         47pGlEs3AVQsw2UiMbkir4Fn5t5w1d8mrWktHuHhGK6huODzJq5X8Vw1zw7YR4FWtFoV
         GBlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=GqWlWKBONDiDvN//FKS4EnpDE9U11rl7cpnTmHCmkrY=;
        b=kB2M2664xftLYjHcjXMRhh1wb6kQAGWbGPI0gFdneTEUdHkmZCkturVYXX8StwIu9y
         LoZ3mORyi7ppYbuFxG83pQkk26uSS28A+uKqY1RYaKFRnjkakn5F6IwUzs26rHjOAodm
         RTaQn7ZUHkwfQf00D/wgHkpq+DbIQafqS8ANTaHHqfyXh6GJNoCtdShOlpsouonVknvb
         f+W1saMHdiTQgIqdZ7nw/IPpY/s76gNfxKAzUWB3tjvxafyuzNiHYgTge9Ldt/1NRBIe
         FJ+MYUJkMJPG+3wNwIdDUYbLTTVd35F2icGR+DwEhVmtBXIkqbnayBBs28YXvovYXBoD
         Sw2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k75QnFuT;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id b32si462286uad.4.2018.03.02.02.09.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 02:09:23 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k75QnFuT;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x244.google.com with SMTP id k8-v6so5440867pli.8
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 02:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GqWlWKBONDiDvN//FKS4EnpDE9U11rl7cpnTmHCmkrY=;
        b=k75QnFuT+zdggTOSpjJJZQy2+TEWdM9tUR8YHbp9ogx2E7ii9wElr3SQRWM7i0VLnP
         rswo0T9EDPcXMunj0Ip7KxVkZ/SMxBRV17xnGNF1wG+JsLB6gYYptpuK8b+6RwDrmyTq
         CXuRWOTx7H5Vf7aoGtprT7Vs9aFYDvWVrUL5eaSPcko3hRgv4OfvWJUoLomnp9ZSmm6z
         4ldpHIzPijHqbAhsl148efDtgLZuke/ZUOf36r4fAEY/8sAoEJFOmw/rXReDhQDJEW/p
         NbAsNyv44Lqk+uw2xSmBn07ybO3WDlC/C1fRub0sEC2FAfUx8HMrpaoNQH+FKTZBNpo+
         hjqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GqWlWKBONDiDvN//FKS4EnpDE9U11rl7cpnTmHCmkrY=;
        b=gR5+x63bEnuQrunpIHVVnK2yD/UKtTmhV5ctI93u8Kmxos5A2Q1Ahpcp0EbEZTTyGy
         gQ0nINxpcFDbONXgEw+avdbBItFImsKyKKy25gbSwjXN28BRIJLwGTYcww1KNz1m8PCR
         zhLFA+yg8FPnUhnG9xH3PyB2btqWFgNbyH44A9okk7xnpVJMQtPCLfsNVNNWHZ3jmOLB
         Z327gme5fRiks/sUJ5wgxHiVp0EHrEKeUmb2uhZKfIUAC93HqI48o2VzAioS6++/JXJl
         QnGK616OhmoAyJp1puezstK/ts7o3EPiGNQToBc49AUjQCzIfqUtKPemQS0AYhZSevJD
         KlAg==
X-Gm-Message-State: APf1xPDO60b7TAAkQiCMyVQDimqG1253GdcKTeD0UZIoGjByetA1xIwf
	n2CEGyGB000zf8mGydcjDNA=
X-Received: by 2002:a17:902:4381:: with SMTP id j1-v6mr4753695pld.297.1519985362989;
        Fri, 02 Mar 2018 02:09:22 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from ubuntu (ResNet-21-83.resnet.ucsb.edu. [169.231.21.83])
        by smtp.gmail.com with ESMTPSA id 191sm11845532pfv.167.2018.03.02.02.09.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 02:09:21 -0800 (PST)
Date: Fri, 2 Mar 2018 02:08:55 -0800
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: remove condition
 where it has no effect
Message-ID: <20180302100854.GA14922@ubuntu>
References: <1519984441-14752-1-git-send-email-santhameena13@gmail.com>
 <alpine.DEB.2.20.1803021100500.2214@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1803021100500.2214@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Mar 02, 2018 at 11:03:38AM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 2 Mar 2018, Santha Meena Ramamoorthy wrote:
> 
> > Remove condition where if and else branch are functionally identical.
> > Issue found using cond_no_effect.cocci Coccinelle script.
> 
> Actually, there are just identical, period.  It would be good to remove
> "functionally".
> 
> Since having such code that is completely duplicated is a little bit
> strange, it could be good to enlarge the recipient list to:
> 
> Ping-Ke Shih <pkshih@realtek.com>
> (commit_signer:1/1=100%,authored:1/1=100%,added_lines:5225/5225=100%)
> Larry Finger <Larry.Finger@lwfinger.net> (commit_signer:1/1=100%)
> devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
> 
> Maybe someone out there would know if actually some different arguments
> were intended.
> 
> julia
> 
Hi,

Sure, I will do it now. I guess that should be v2 of the patch. 
> >
> > Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> > index ffff5b0..5b82640 100644
> > --- a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> > +++ b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> > @@ -2885,12 +2885,8 @@ static void halbtc8822b2ant_action_a2dp(struct btc_coexist *btcoexist)
> >  							     NORMAL_EXEC, 5);
> >
> >  		} else {
> > -			if (wifi_turbo)
> > -				halbtc8822b2ant_coex_table_with_type(
> > -					btcoexist, NORMAL_EXEC, 10);
> > -			else
> > -				halbtc8822b2ant_coex_table_with_type(
> > -					btcoexist, NORMAL_EXEC, 10);
> > +			halbtc8822b2ant_coex_table_with_type(btcoexist,
> > +							     NORMAL_EXEC, 10);
> >
> >  			halbtc8822b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true,
> >  						109);
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519984441-14752-1-git-send-email-santhameena13%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

