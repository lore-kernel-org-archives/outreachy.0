X-GM-THRID: 6474128496939499520
X-Received: by 10.80.201.74 with SMTP id p10mr1088050edh.7.1507968906940;
        Sat, 14 Oct 2017 01:15:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.189.203 with SMTP id z11ls3856288edh.1.gmail; Sat, 14 Oct
 2017 01:15:06 -0700 (PDT)
X-Received: by 10.80.201.74 with SMTP id p10mr1088042edh.7.1507968905994;
        Sat, 14 Oct 2017 01:15:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507968905; cv=none;
        d=google.com; s=arc-20160816;
        b=Y+LA5Ak/7yHiKDFOIcPqDHH52VMEimumR3mqISjkvVDJsWWjrPFv7hSi7LgltSLFh3
         gyS/eN2S+gRSuVRAT493ymXjRmTLBa4PbfLnfArJnROlSoaiMcaRmxNa3jnUmA9Ra7ja
         X44xDpIC0ZyH+u2rUkDHtJ5al/MG9ahDWGYHCVtQJdZfwEJQwqmL+s3UkkdfP62LFRI1
         UWjIwoeo3iITWghSt6Fm+mPcKeMohg+dK9kHEOF6Q/YYYRFcm6tzLYhoZ1OHxCHOFH5R
         Fj1UyaBs+Tr0RpGwUwRdtTpqtjtxP+QLyDZ6kQmlFdAhcgYb3V3FB5tmVFs5UnkKWSPK
         Zmpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=9tO7Wc5W/dW3cvKmnpxi9Llzj9ydPfSm01VBTL8y2cs=;
        b=khu9CCKB97vcAi07QGz9GzofN8UWDybQN/WNwcrHihunLLV3ZcKTWjJa2gSMLZf9iw
         Eh7O/ipkwk8FMBE2phr+uY3y10+q9VG3ZMU6/RsFx+tSCGc+EwBT6ZFiQE4wxSHKXrXF
         ynZGPJVP+oTh/2a4OlbgjIQVPuuM3YRaFRFheyA9ltEzfDnnAXwUsIfNKTWPFZZ8c2n+
         BuokNBJ+lBkpa7tB8ubrLnGyBXVW7BeBpGjSOLRzrnU86+eCSqo8MpOsXjkR6RUZ2oyS
         4Paz4+Qc9l9UH8FbfgOb7LbYcPYUJLXLPxRCmIz2YICHZTHWNd8n8DeO58l8bqVI4oL1
         ysKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ecjBNd+X;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id f21si117446edj.0.2017.10.14.01.15.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 01:15:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ecjBNd+X;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id k15so1993929wrc.4
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 01:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9tO7Wc5W/dW3cvKmnpxi9Llzj9ydPfSm01VBTL8y2cs=;
        b=ecjBNd+XwjVRMqzGj1gkoWJqoegkP/PxOJIwN3VdQhq2GN927FmkFWcP+Ib087iBKm
         rWDdsMcVhr5DNPK6j1qGEXjGmZOZ85fzDtQTg6p9mj1ahAhKReo+c3yMgpXZAaoE+ElI
         KN5OH1M8BFyWQzgKkABVEpoOHo4t0RSRIN3fh+i5hGbdd1LNgb2neJX4NSGk5LUoHJXP
         AXVdkN42ixAwNeusauthvhHLC84p9PAC+Dw8K/zp1MTPB6B89x9EAFyGX1PuYpcxKRtX
         6pzZtqkai/SQSlUwC+/b+p3u0jqL1g1CD5vshfR606hSa7N9wnwG44gb37D46yylcLRG
         9hXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9tO7Wc5W/dW3cvKmnpxi9Llzj9ydPfSm01VBTL8y2cs=;
        b=Mx6d7FeUNM7ElZ30hQWMPPvGtd/5AsqTJzUwqiAWNLwKviQIZlWjnOhPhsUr/O9ll2
         SDk/aCPYE4w+RjK7DQ3reiKV1Dh4CLm6Iftp+4QYsiEfT0/K5sMSZbuCjHvdr1kU8/IK
         nV0VgwKhRZKH3yLommwSO+C7idXoH7oLg65m5ulvuRG23jFbVPicuZaymzbLfJWJKVjE
         Te2wrcfoGn0L5dnn1T/b9a9HxGA0SpQub7mKtMGPk9LmSvZyl6tE+AyBe8DW1Pq6Ryki
         2vAoVUjobK5lnJzK7ndVWk8QfUStvv4l/OXxI/VoPbT+iejSdEvZJmi/rjVnqeuWRMJt
         a5xg==
X-Gm-Message-State: AMCzsaXb36Qq4+Ghs46ez3l0A3rgiGqME9L6CS5KWMRlxxwyYyNB0r53
	TATCHkDknhOObnIxe7HTB4w=
X-Google-Smtp-Source: AOwi7QBQBalRiwgQBKYM0tPYrhqEn2l4oL3YgcO7XgMBFMZES2WDkBRmNmXXquQ49CioEngHJlC0cw==
X-Received: by 10.223.139.145 with SMTP id o17mr3190506wra.107.1507968905681;
        Sat, 14 Oct 2017 01:15:05 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id n30sm2279592wra.39.2017.10.14.01.15.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 01:15:05 -0700 (PDT)
Date: Sat, 14 Oct 2017 11:15:04 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192e: Use __func__
 instead of function name
Message-ID: <20171014081504.GA2769@domino-MS-16Y1>
References: <20171014075657.GA2475@domino-MS-16Y1>
 <alpine.DEB.2.20.1710140958270.19037@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1710140958270.19037@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 14, 2017 at 09:59:14AM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 14 Oct 2017, Mihaela Muraru wrote:
> 
> > Use identifier __func__ instead of the name of the function.
> >
> > Issue found by checkpatch.pl.
> >
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > ---
> > Changes in v3:
> >         -breaking the modified lines and remove five point from the
> > 	string to meet the condition no more than 80 characters per
> > 	line.
> >
> > drivers/staging/rtl8192e/dot11d.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
> > index 017fe04..55c699f 100644
> > --- a/drivers/staging/rtl8192e/dot11d.c
> > +++ b/drivers/staging/rtl8192e/dot11d.c
> > @@ -128,12 +128,16 @@ void Dot11d_UpdateCountryIe(struct rtllib_device *dev, u8 *pTaddr,
> >  	pTriple = (struct chnl_txpow_triple *)(pCoutryIe + 3);
> >  	for (i = 0; i < NumTriples; i++) {
> >  		if (MaxChnlNum >= pTriple->FirstChnl) {
> > -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
> > +			netdev_info(dev->dev,
> > +					"%s: Invalid country IE, skip it...1\n"
> > +					, __func__);
> 
> You can't move these arguments back a few characters?  The comma at the
> beginning of the line with __func__ is not nice.
> 
> julia
>
I can put the comma at the end of this line "%s: Invalid country IE,
skip it...1\n" and the line will have 80 characters.

It is allowed to have exact 80 characters per line?

Should I send patch v4 or to send patch v3, because treats the same issue?

Thank you,

Mihaela

> >  			return;
> >  		}
> >  		if (MAX_CHANNEL_NUMBER < (pTriple->FirstChnl +
> >  		    pTriple->NumChnls)) {
> > -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
> > +			netdev_info(dev->dev,
> > +					"%s: Invalid country IE, skip it...2\n"
> > +					, __func__);
> >  			return;
> >  		}
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171014075657.GA2475%40domino-MS-16Y1.
> > For more options, visit https://groups.google.com/d/optout.
> >

