X-GM-THRID: 6662791794901647360
X-Received: by 2002:a0c:91ee:: with SMTP id r43mr691153qvr.59.1551386804780;
        Thu, 28 Feb 2019 12:46:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:92c7:: with SMTP id c7ls2472899qvc.7.gmail; Thu, 28 Feb
 2019 12:46:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqyEAX/h7DSGmGyrO0YbIQ0iXakS8MsZP2YQwUT5wK/oSvbp1etIcYcXXX0Q6OTXNXcjvDE3
X-Received: by 2002:a0c:b91c:: with SMTP id u28mr679370qvf.45.1551386804069;
        Thu, 28 Feb 2019 12:46:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551386804; cv=none;
        d=google.com; s=arc-20160816;
        b=cFPT4EPh2+c1zTj2nDrDJjCDwAiE+nBXoxudj4XEJ3yEcQQ+xTC31nDyWJ6xdhX/AI
         lFTpfci67f3Rz6ofMKbNqXrz+E2p+z9cLkhvxrZ8LBe1w/EtsizKli9qNMWUlikOF+Mn
         odcLO1Fs1AP2bYuZyW5/rn0Hwf3RkWIZ0vsxZ+D5n1lvYRgu4Xn11Ep6U9tVgiPJWfPF
         jXrldRXWdDlViNMRsLzRe4kVw1hgCHlUz2qePxe4vrfPbFFKYlLfJgAwX+X5wn09uFv1
         xuJxACZI1TojOg+RYWs4QI1SGQjuQM6D4iZXyyAJvug4lUnVVffszQbJtqo0lDaUifei
         wI0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=51DOP9VRuCI5EnyUKSkzxOxmdrA6Rz85R6SH+vHMw9M=;
        b=cp0hxHu2SKZTl+1+6rL3yQByKwsici6nianbtKpgLakFT11CVEqP5YsLG1MiTrELPl
         78cCyrYNSpgcQlDIXQs/jHTsfUMFXaFlHDso+Fql8x3E0Zqq7EeC51wc3z+hNJ0BQRRm
         ybMcGzsStcIuE+fOsRMZ8pdFTWz9SZWNb0J0bfLzi6MbLrYWBAP3iakZqNjORhNBmptE
         OuN9tri0seCQklCVoPm+2djGv1gBN9EAIzr5+JMg60iIm7V86nPTzEJkxzb/g8iQnShm
         PaMO1PqjZvOz81z/KGrEay2LDWSP8vxRnabjVXp31UzeQl8pap1S9JIPlap9cfgGMjzn
         yqsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dqqYlmqM;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id r26si803090qta.4.2019.02.28.12.46.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 12:46:44 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dqqYlmqM;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id t206so17671844oib.3
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 12:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=51DOP9VRuCI5EnyUKSkzxOxmdrA6Rz85R6SH+vHMw9M=;
        b=dqqYlmqMefjOjRYMWguE6+WAFweI5y0EytA2R74RV3F0+UZNqHdSV8Bz/N3QaRaljI
         VbNd3CkXLAltxaBqkuVNmTiciMYnut9xYbTOEGwhYQZY3j9LA2SWTmhLtqP6mM8mEC0Y
         9c9ydE0Wz9GYOg8Z++DEDZsRpc5Hg8Il3p0DU8rvdWop2DZbImdKL6ZPY8BogBHzI7du
         flevasZmG4Vo1IONNehqfWkamv/9oyGxeXbZ5BnppAhMvspPXLpAXCV2uel3KhWm0q9X
         4pYhPBYaz+fmBh2M/3OWNM7Y12XUYoVmlGaAt3g0wRf9KKp3pH7SQ0tXVUfRqhX49dbM
         eDBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=51DOP9VRuCI5EnyUKSkzxOxmdrA6Rz85R6SH+vHMw9M=;
        b=VpVl/bi8j/fLh16dALTIeVQfSDlWn2dYloaO1LGvqghnQn1ByAdmj/ZlOdq4ZnERve
         6BXYcYpZzH5ZDIiVpF48UPKucDl4fqNioyUfJMXy9Qo9v2cS9l1UMtBHIGfh+uSMVRP8
         ZN0WUiT3y8KdosJJvj0KTHN+kU4EBJ1LbYsdWR+mFOaPWR7sjHxEjIvQ6iTiNIyHLnrB
         bOARXMT8sRTFys2R6cEltK3ba0FQM3F5MJ6+CyTG8Q25xJxvIqzC590n2+Lf/iiYxhxq
         GWrc3Wmytam404TfGQw5ZZRHeggLwvrm+iufejt02rnK3MXKSfMErcA06Y2NlHrt9eJT
         srOA==
X-Gm-Message-State: AHQUAuZd88/KfbV3XsulT8ju4QLRpcEbXsiwXSP2mLxGdAnlLzqGVkxE
	Ry/DEmQ3ilSQH7NbcoqWBGY=
X-Received: by 2002:aca:b683:: with SMTP id g125mr1112014oif.17.1551386803186;
        Thu, 28 Feb 2019 12:46:43 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id j131sm8819128oia.37.2019.02.28.12.46.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 12:46:42 -0800 (PST)
Date: Thu, 28 Feb 2019 14:46:40 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5] Staging: vt6655: Align a static
 function declaration
Message-ID: <20190228204639.GA26488@madhuleo>
References: <20190228202810.26235-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1902282140240.3134@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1902282140240.3134@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Feb 28, 2019 at 09:40:58PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 28 Feb 2019, Madhumitha Prabakaran wrote:
> 
> > Align function arguments and function return type to improve readabilty.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> > Changes in v5
> > - Commit log and code diff are matching. In last commit, there was error
> > from my side while reevaluating and commiting it again.
> >
> > Changes in v4
> > - Commit log and code diff are matching
> >
> > Changes in v3
> > - Included driver name in subject line.
> >
> > Changes in v2
> > - Improved alignment of function declaration
> > - Modified subject line and commit log
> > ---
> >  drivers/staging/vt6655/card.c | 15 ++++-----------
> >  1 file changed, 4 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > index 3226dbaab3bb..f858f97cf119 100644
> > --- a/drivers/staging/vt6655/card.c
> > +++ b/drivers/staging/vt6655/card.c
> > @@ -60,14 +60,9 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
> >
> >  /*---------------------  Static Functions  --------------------------*/
> >
> > -static
> > -void
> > -s_vCalculateOFDMRParameter(
> > -	unsigned char byRate,
> > -	u8 bb_type,
> > -	unsigned char *pbyTxRate,
> > -	unsigned char *pbyRsvTime
> > -);
> > +static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
> > +				       unsigned char *pbyTxRate,
> > +				       unsigned char *pbyRsvTime);
> >
> >  /*---------------------  Export Functions  --------------------------*/
> >
> > @@ -84,9 +79,7 @@ s_vCalculateOFDMRParameter(
> >   *
> >   * Return Value: none
> >   */
> > -static
> > -void
> > -s_vCalculateOFDMRParameter(
> > +static void s_vCalculateOFDMRParameter(
> >  	unsigned char byRate,
> >  	u8 bb_type,
> >  	unsigned char *pbyTxRate,
> 
> You could realign the parameter list here as in the other case.
> 
> julia
> 
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190228202810.26235-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1902282140240.3134%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

I realigned the parameter list for function s_vCalculateOFDMRParameter. I don't know why it is showing in a mail like that after EXPORT FUNCTION
Please correct me, if I'm understanding it in a wrong way


