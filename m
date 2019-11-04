X-GM-THRID: 6755493300686290944
X-Received: by 2002:a05:6830:1611:: with SMTP id g17mr4627583otr.29.1572887277918;
        Mon, 04 Nov 2019 09:07:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:66d8:: with SMTP id t24ls2366747otm.3.gmail; Mon, 04 Nov
 2019 09:07:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqyM3Fu05/Q0Ua/gQbnx47qJIF1x6hNT5zwsyPEyN09PF44Bpl644MLvuWZVZSD8Aov3s4fs
X-Received: by 2002:a05:6830:1f51:: with SMTP id u17mr20079221oth.318.1572887276888;
        Mon, 04 Nov 2019 09:07:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572887276; cv=none;
        d=google.com; s=arc-20160816;
        b=JOzl7oqJAA3gv+qrYN0t4wI7SbMZ5EZpNUmZbFAy2M/b+yO9MC9SjraCbuC9KPD525
         D7f6qRd9VBsm0tm1uWAddIbMWcTFobxv9a7DzJ0MRXA4KaUDGvsavt/9lFxGuBXw73o7
         4obqg/ef8Ar/3qlWlRDOr7BQGcO0CmBSLNdwNBUhqM5sIrqg2LVBnjkcN7NqNKnPmBCH
         3b4diYBZQduoeHHLkd0pCq88iWz6w42Muzdq84iT0OjA9XhTPVPw7N/u/QG5RDnJoGWc
         UggMDyko4//0wfmATD/OIMhOhvMPDrmqVMShc1AU3ugHapXDGQMztwYzobiBLG2DVl6N
         Bcrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=GkRi0ACjnBrMph3GHmdQfIZ7pbc/lUuPzs62s3YdeO4=;
        b=rfeXXurWbT23GAMnkYRBq1rKr/v/vT9y8WpcTgwKLLEM2rMlIUqquAmp+1NqNjtFX+
         mJMfDgOT7EWCKKZIrY7vNSNodVgGXap4Fbha7nhYSu4BW2busyZ+VESyTtR6AwVuV3h9
         +xY5qpPjxLaZXV1LjYyhsfseLeotL6kdpWvv2LdFr7ZWjWo/3MSZAGjRo0XnOcmQ0M3I
         KymPV91HvCIUi5S7cHBr1b0bCNohDB5syfcq0uIqFuYiso6kev4EAtjHdBUwymmdyQfJ
         3FNP8+LDGdd65wtlaNsryKgyqR8vtBpAbAOYgzSixju3UoxO8Um/oJA18D7KoLzrtA1C
         sKPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.238 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0238.hostedemail.com. [216.40.44.238])
        by gmr-mx.google.com with ESMTPS id e3si771205oti.0.2019.11.04.09.07.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 09:07:56 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.238 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.238;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.238 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 0B472100E7B4B;
	Mon,  4 Nov 2019 17:07:56 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10,1,0,,d41d8cd98f00b204,joe@perches.com,:::::::::,RULES_HIT:41:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:4384:5007:6119:7875:7903:10004:10400:11026:11232:11473:11658:11914:12043:12296:12297:12740:12760:12895:13069:13311:13357:13439:13523:13524:14659:14721:21080:21451:21627:21939:30009:30012:30054:30070:30090:30091,0,RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.14.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:24,LUA_SUMMARY:none
X-HE-Tag: cry91_2806dcf70c55d
X-Filterd-Recvd-Size: 2112
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA;
	Mon,  4 Nov 2019 17:07:54 +0000 (UTC)
Message-ID: <782ef430f9c92742e92d63f87a6e7716b38ea110.camel@perches.com>
Subject: Re: [PATCH] staging: rts5208: rewrite macro with GNU extension
 __auto_type
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 04 Nov 2019 09:07:44 -0800
In-Reply-To: <20191104165148.GA2293059@kroah.com>
References: <20191104164400.9935-1-jbi.octave@gmail.com>
	 <20191104165148.GA2293059@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2019-11-04 at 17:51 +0100, Greg KH wrote:
> On Mon, Nov 04, 2019 at 04:44:00PM +0000, Jules Irenge wrote:
> > Rewrite macro function with GNU extension __auto_type
> > to remove issue detected by checkpatch tool.
> > CHECK: MACRO argument reuse - possible side-effects?
[]
> > diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
[]
> > @@ -386,23 +386,31 @@ struct zone_entry {
> >  
> >  /* SD card */
> >  #define CHK_SD(sd_card)			(((sd_card)->sd_type & 0xFF) == TYPE_SD)
> > -#define CHK_SD_HS(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_HS))
[]
> > +#define CHK_SD_HS(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_HS); })
[]
> Ick, no.  These are obviously pointers, which can not be "evaluated
> twice" so this whole thing is just fine.
> 
> checkpatch is just a "hint" that you might want to look at the code.
> This stuff is just fine, look at how it is being used for proof of that.

This would also be the first introduction and use of
__auto_type in the kernel.

That's not OK as __auto_type was first supported in
gcc 4.9 and the kernel still compiles with gcc 4.6.


