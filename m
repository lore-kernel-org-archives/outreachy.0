X-GM-THRID: 6802515514721566720
X-Received: by 2002:adf:ea42:: with SMTP id j2mr28372190wrn.3.1584957392437;
        Mon, 23 Mar 2020 02:56:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ab09:: with SMTP id q9ls686328wrc.10.gmail; Mon, 23 Mar
 2020 02:56:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvzPUtQho2OnD+s1bxTFuyhcoonFm9X9YjLjb+QBNt6NdMbntV3MCutHPGVYwJIV/G5xuwr
X-Received: by 2002:adf:b641:: with SMTP id i1mr28971800wre.18.1584957391034;
        Mon, 23 Mar 2020 02:56:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584957391; cv=none;
        d=google.com; s=arc-20160816;
        b=uC8HtO2UUqjbYE6bui3zJLb0tyRPT2T7axbsKkUbd+mUAb76YbeaeeitOoCIU53dQU
         2E5dD9NfUOmVcRqQla/oEy/u+0QiSJboFP6vW/hjweHHTXw/qlgKWbw3rB068OJwUJg8
         4HyciJgmkWW+keTD52Y6DM/zIfrCMsHYd9etJAUYG5JX4lGcDC1PaBrPqIQqNUhaFNER
         UZyrEboOJRs/xncyeTpYX5PyrwE8lRomIPeEMtOK1i70/sYF5cl+RtM4SbKGPwETHEwB
         mRtzb/oAIaAN10skFhIPn0YM6mqj0B8X4ODlAIsN+qrtTRgGpZZ05eXyWQCpSjS0Ixo0
         Mfwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=eH+NMrFV7dEVafIm8JtwmV5WhozNmQmTMcO2R4axKsE=;
        b=cAOFU1Qj6gcwfJ5wwK1mKosPxMSLswDKfylZ8qxGSDjR+bkavDBcTo/iQg9zsLyrXu
         q335pprPYgiVyEtkB41QgwtqNl6OAcyHkWpruF5b7bf3wgYz/LKOVybLR6yRde4TXSFL
         ygSyI9Fj8aPhDLyVyT7Yp5xlIuEhCnKnHle91o3ifEF9ebj/vBx2VBNvDmuSuCXh6uKY
         bWEqpvOy+m8rztgtMHfxa29g4c7TnnvQbhXyiypCrcMNXO8sTQa/VAtSVcnuuc7SA5iN
         crGfsEJDFTcSRkAG3AlNd/Ly+CU467l3ss7ojxBu/kWnwcj4bI6eXAgIUXHV1FO5Fw1E
         UA5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iw+SX1yY;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id l8si22778wrr.1.2020.03.23.02.56.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 02:56:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iw+SX1yY;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x434.google.com with SMTP id f3so16130292wrw.7
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 02:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=eH+NMrFV7dEVafIm8JtwmV5WhozNmQmTMcO2R4axKsE=;
        b=Iw+SX1yYxeMTyLHwZlQkkfw51eeow1upIeAyWw57+qTW/+ovxI83LzfLdc3gkmhQm5
         LuBpE5EW+n9SWfZauhBWFuT65MUnCBNmHAfXWUib9MqZBc5ZFugudD6Owtw5saff5Ait
         Pey7Mfghg1jnMT8kTRiV3p66C3QCthgVYKI1KyHUIP0Kqk9dnYgITxsZK8LUR9gGUD4h
         9UmGPUiwnwc54QeAK3AQbhldZrAGpoNJNrlMYN/H3XZNWZaHb65ypbAxViXspErBtZSu
         2nd61mSTsaXOTAsa+grDL+XEyIONK16PUPRjLkfx651n64o9O4+9oPzEU3F3vFNmPPaX
         fzZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=eH+NMrFV7dEVafIm8JtwmV5WhozNmQmTMcO2R4axKsE=;
        b=elHvq1sDnoIOtdvV4jeCfKk/bFotJsY6AQ6uqu/VXgTAPWZ7iiNP9AjRG4Cx3tn3IM
         tT/YMcxFubQWoPR8+QZNvyIYBZ3LsH5/B8JCHoz6pybtq5pw+lI+UUs5Zzp0cY0QjVgm
         GKSQWxRN07nfIjgMSPWBfoywJd+MUbNFTa6th2IKWDiNWRzU15MDEMQP4sbOimvK8jGM
         Wo8mDFfqhmEut72hiE2ib3bH5bgepKGfRotu8xbuOqKkIxW2H4qfN1OQcJ6araBhjVwJ
         Mw4hKjZmAG9/fJeTfTjfPuSBCMRYeaOsS0YJFz/kyyq/ZigpawfSdGFrjYnDpXJcV5//
         9GOg==
X-Gm-Message-State: ANhLgQ1spPGspuw8pXkFGqGwtypvNIcvr0rJP16CtC0+75/fkRcUtGy6
	oytRrZlEziGt0Wex5PUYzewodwMuVgk=
X-Received: by 2002:adf:f84d:: with SMTP id d13mr27564724wrq.186.1584957390776;
        Mon, 23 Mar 2020 02:56:30 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.73.21])
        by smtp.gmail.com with ESMTPSA id m7sm380249wro.41.2020.03.23.02.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 02:56:30 -0700 (PDT)
Message-ID: <dff9ed66458ea26f0b3b6b588b8fbc0f477bb43f.camel@gmail.com>
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, John Wyatt <jbwyatt4@gmail.com>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Mon, 23 Mar 2020 05:56:28 -0400
In-Reply-To: <20200321074106.GA856920@kroah.com>
References: <20200320141418.GA707555@kroah.com>
	 <024f9fe964fce4a9ede1d58c87b7bb75c6a35ac2.camel@gmail.com>
	 <20200321065134.GA849159@kroah.com> <20200321070501.GA850438@kroah.com>
	 <a2551dac9465998ba46fbf924a6b8f02f32f3fda.camel@gmail.com>
	 <20200321074106.GA856920@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2020-03-21 at 08:41 +0100, Greg KH wrote:
> On Sat, Mar 21, 2020 at 12:26:34AM -0700, John Wyatt wrote:
> > 
> > > > > I just sent my patch in ~10 hours ago.
> > > > > 
> > > > > Do I need to rebase/resend it?
> > > > > 
> > > > > If I do, should I make it a v2?
> > > > > 
> > > > > Apologies if you already answered this earlier in the mailing
> > > > > list.
> > > > 
> > > > Julia provided comments on what you need to do to fix up your
> > > > patch,
> > > > please follow them and resend a v2.
> > > 
> > > And you did just that, nevermind :)
> > 
> > :)
> > 
> > For future reference, if I send in a patch around 10 hours before you
> > ask to rebase-should I rebase?
> 
> Once I send out this "I have caught up with all patches" email, consider
> my queue empty, so you need to fix up anything I have not applied by
> then.
> 

Newbie question, Ive sent two patches around ~12hrs ago
both are reviewed and acked, so i guess they are accepted?
when should i be concerned if they're lost ?

Sam

> > If I do rebase, should I mark it as a v2?
> 
> If you change something, yes.  If you change nothing, it is a "resend",
> but say why you are resending it.  It could be as simple as "Greg missed
> my previous patch", but the odds of that are kind of low :)
> 
> thanks,
> 
> greg k-h
> 



