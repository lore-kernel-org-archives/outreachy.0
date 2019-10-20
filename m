X-GM-THRID: 6749515623301120000
X-Received: by 2002:a5d:8886:: with SMTP id d6mr6930710ioo.301.1571600214792;
        Sun, 20 Oct 2019 12:36:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9145:: with SMTP id y5ls2168914ioq.11.gmail; Sun, 20 Oct
 2019 12:36:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwGceCeU3dYatCPQd47sDzJRZsqeuF+w4mHEFiONZW9PPR9EGOBkQ3DDqzi/ZilPGc4gmR
X-Received: by 2002:a05:6602:198:: with SMTP id m24mr12947994ioo.238.1571600213514;
        Sun, 20 Oct 2019 12:36:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571600213; cv=none;
        d=google.com; s=arc-20160816;
        b=UNrvMvOe7f6m0ZpDxSZroZuesk9JFfdpykQRWGGrJOrJfvuXoZAV8H1zMQer8P2B4A
         TJiyn2LKRwcKhgUUD+Fr+gSdQcCbGCSNwbunn6vVzaojYxDzCNopX+PveqtG4J8oqSNS
         UlQbU/0VbzZ+CUyeEspy72dR4x/31hxl/tX3OXt9aOURtqhU+VjAnnEKRwGRH/pStEio
         FjNRxIIWZkGoVrExCDNmLvsFC0pHnD32iGF/siOjRPsjUr4n7BwhCaImAt0YgJ/hmng+
         hlqZyclc44u/YtfmVUhyhIXlW5yjo0uqlAo5qq/AwMRYcNHP1nq9Zk/ZSFk2gr13farF
         Vnuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=DMVfEtzOcO76W+HEdaGs0s5fiYhslCtUmE2KwPMZ3Fg=;
        b=w53sIWJZprLXZL7tIUtX/Q6UsYE3aPyeoDfYtaod6WzqY5h/gpwoBxRukv6eZeauMk
         YkhtjtQVFTK3kcnYxRmkxiZ1FaC3/rGanokFGF4tFPN5MXurkAhA2lv5vM2DdxdV9sid
         oUybjNyOoDLCdq4BXcLIqKzdZST3EmbOeDO6WG4EfTZES0lvbj5Fd1BYiD/sLTAhqf6n
         6osD4vqfnmsHdXfq3fZxoPI26pol8+PAaF/rYcqc32dHp5S3yFMrVh4AbmOMh95ztA4S
         fNEPklAqaNht7C/FiRhjFlbZ8yZcljz5tfpLxslo7ja8AsClDsu0n/u/9FR0KdPlZLeZ
         gpEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0035.hostedemail.com. [216.40.44.35])
        by gmr-mx.google.com with ESMTPS id n201si863233iod.3.2019.10.20.12.36.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Oct 2019 12:36:53 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.35;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 9D95852C6;
	Sun, 20 Oct 2019 19:36:52 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:599:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1981:2194:2198:2199:2200:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3874:4321:4605:5007:6119:7556:7903:8957:10004:10400:10450:10455:10848:11026:11232:11658:11914:12043:12297:12555:12663:12679:12740:12760:12895:13095:13137:13141:13150:13153:13161:13228:13229:13230:13231:13439:14039:14093:14096:14097:14659:14721:19904:19999:21080:21433:21450:21451:21611:21627:21819:30012:30022:30054:30070:30090:30091,0,RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:24,LUA_SUMMARY:none
X-HE-Tag: place89_1ebe01dc52621
X-Filterd-Recvd-Size: 3658
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Sun, 20 Oct 2019 19:36:51 +0000 (UTC)
Message-ID: <6e6bc92cac0858fe5bd37b28f688d3da043f4bef.camel@perches.com>
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is
 necessary
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Julia Lawall
	 <julia.lawall@lip6.fr>
Cc: Jules Irenge <jbi.octave@gmail.com>, devel@driverdev.osuosl.org, 
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org, 
	gregkh@linuxfoundation.org
Date: Sun, 20 Oct 2019 12:36:50 -0700
In-Reply-To: <20191020191759.GJ24678@kadam>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
	 <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam>
	 <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
	 <20191019180514.GI24678@kadam>
	 <336960fdf88dbed69dd3ed2689a5fb1d2892ace8.camel@perches.com>
	 <20191020191759.GJ24678@kadam>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2019-10-20 at 22:17 +0300, Dan Carpenter wrote:
> On Sat, Oct 19, 2019 at 01:02:31PM -0700, Joe Perches wrote:
> > diff -u -p a/rtl8723bs/core/rtw_mlme_ext.c b/rtl8723bs/core/rtw_mlme_ext.c
[]
> > @@ -1132,7 +1132,7 @@ unsigned int OnAuthClient(struct adapter
> >  				goto authclnt_fail;
> >  			}
> >  
> > -			memcpy((void *)(pmlmeinfo->chg_txt), (void *)(p + 2), len);
> > +			memcpy((void *)(pmlmeinfo->chg_txt), (p + 2), len);
> 
> I wonder why it didn't remove the first void cast?

drivers/staging/rtl8723bs/include/sta_info.h:151:       unsigned char chg_txt[128];

I think the cocci transforms for an array do not match a pointer
and I wrote the cocci script without much care.

btw;

There's probably a generic cocci mechanism to check function
prototypes and then remove uses of unnecessary void pointer casts
in function calls.  I'm not going to try to figure out that syntax.

> [ The rest of the email is bonus comments for outreachy developers ].
> 
> And someone needs to check the final patch probably to remove the extra
> parentheses around "(p + 2)".  Those were necessary when for the cast
> but not required after the cast is gone.
> 
> >  			pmlmeinfo->auth_seq = 3;
> >  			issue_auth(padapter, NULL, 0);
> >  			set_link_timer(pmlmeext, REAUTH_TO);
> 
> It's sort of tricky to know what "one thing per patch means".

It seems somewhat arbitrary and based on Greg's understanding
of the experience of the patch submitter and also the language
of the potential commit message.

> -       memset((void *)(&(pHTInfo->SelfHTCap)), 0,
> +       memset((&(pHTInfo->SelfHTCap)), 0,
>                 sizeof(pHTInfo->SelfHTCap));
> 
> Here the parentheses were never related to the cast so we should leave
> them as is.  In other words, in the first example, if we didn't remove
> the cast that would be "half a thing per patch" and in the second
> example that would be "two things in one patch".

For style patches, it's frequently easier and better to 
do all the code transformation at once.

IMO the last should be:

	memset(&pHTInfo->SelfHTCap, 0, sizeof(pHTInfo->SelfHTCap));

like it is here:

drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c:1056:       memset(&pHTInfo->SelfHTCap, 0, sizeof(pHTInfo->SelfHTCap));

btw2:

I really dislike all the code inconsistencies and
unnecessary code duplication with miscellaneous changes
in the rtl staging drivers....

Horrid stuff.


