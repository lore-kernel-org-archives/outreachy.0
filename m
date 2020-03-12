X-GM-THRID: 6802944332146933760
X-Received: by 2002:ab0:2712:: with SMTP id s18mr3459204uao.128.1583972220844;
        Wed, 11 Mar 2020 17:17:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:1901:: with SMTP id 1ls497742vsz.9.gmail; Wed, 11 Mar
 2020 17:16:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs/q2n4maab5OrL7pjpZYBRAK0AhRJtwMkwbopvK8z9C+WYLg/5nFK7068AgM4J+3yxeUJR
X-Received: by 2002:a67:c58c:: with SMTP id h12mr3788117vsk.0.1583972219447;
        Wed, 11 Mar 2020 17:16:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583972219; cv=none;
        d=google.com; s=arc-20160816;
        b=sAi2Sqx7xobMRFaHuJLSU/5Xl1NZ3eM2Bkav+X6zwddeIQYb5lLYfCFd0e8uHlncCo
         MP4S9YsHSRPz+UCcUM7YQZcI+h7fHdZuBxcg3Wmy44Go4126sg2ONRHRtVRr+Sq+00e9
         qsWlIXsua+aH/zgDqCNKXQ8/ioejWa6IOzFGtSoBbddpBFyg0G1Tp9kr8O+JrFP/zU6t
         3kWOcZ3JW3am7mg6JQnDJhs3WLwIXOs3BVkJjASdXUOCr0A+laE1gco53PV/d6RmClsf
         7Kl7P17w9sO/XiRK+GW4TFkc5Brv1OcXNZOtbymMwZGakblJVdAxaHpDUw2M8lYWcKxZ
         r3HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id;
        bh=iESDXf+Lv95J9vH7tUkB9qjHzilCXavQe5QILOo9+qI=;
        b=ffEpBaLOzYnOSQ2GVNek/vrl9Qs+VTohBjRTSSUyegDcuIXBNY+VMk/Ot4Htviz6Bc
         QxOxB0SnqaG9eKFnJY0B4ZvOzVtRgc+RD6cDRTjQUJAdr9193Y50vSQitecqnCxOp12D
         3Ca14LT6qS1e0ciOc2TO1pbgJkL3/Ayonun3ImhVKH+Vy5Mg3MP99vkuA/nu2SjL2r2W
         XGmDvOxAVBN/teUiTub4iWstgZSilvQpdk2+GWeieKz34yK4VQgWtiIAEi7FRUF0vAw/
         cckQK5P/Irfh0T0JKVJkVCbdrnGKsNQHNgrAiFonFyX1ZHS+9G82RJv4QoioLqT6PI8E
         XAVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.138 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0138.hostedemail.com. [216.40.44.138])
        by gmr-mx.google.com with ESMTPS id c6si141301uan.0.2020.03.11.17.16.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 17:16:59 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.138 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.138;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.138 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id E1657837F27B;
	Thu, 12 Mar 2020 00:16:58 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:7807:7903:8957:10004:10400:10848:11232:11658:11914:12048:12297:12740:12760:12895:13069:13255:13311:13357:13439:14093:14096:14097:14180:14181:14659:14721:14777:21063:21080:21433:21627:21819:21939:21990:30012:30022:30054:30079:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: tree25_1f9cfc6638042
X-Filterd-Recvd-Size: 2861
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf19.hostedemail.com (Postfix) with ESMTPA;
	Thu, 12 Mar 2020 00:16:57 +0000 (UTC)
Message-ID: <2a080d9c5dc6206d9a255410a61d1d9cce26d944.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: sdio_halinit:
 Remove unnecessary conditions
From: Joe Perches <joe@perches.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>,
 gregkh@linuxfoundation.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com,  nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Date: Wed, 11 Mar 2020 17:15:14 -0700
In-Reply-To: <1CF27D55-EEB4-4A75-B767-A30845BD5E1B@gmail.com>
References: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
	 <0fed25f914c6f39b024dd3bbc4f11892c40f4a60.camel@perches.com>
	 <1CF27D55-EEB4-4A75-B767-A30845BD5E1B@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-03-12 at 03:58 +0530, Shreeya Patel wrote:
> Hey Joe,
> 
> On March 11, 2020 10:56:29 PM GMT+05:30, Joe Perches <joe@perches.com> wrote:
> > On Wed, 2020-03-11 at 19:08 +0530, Shreeya Patel wrote:
> > > Remove if and else conditions since both are leading to the
> > > initialization of "valueDMATimeout" and "valueDMAPageCount" with
> > > the same value.
> > 
> > You might consider removing the
> > 	/* Timeout value is calculated by 34 / (2^n) */
> > comment entirely as it doesn't make much sense.
> > 
> 
> You want me to remove the other comments as well?
> Since Julia suggested in another email that the comments are not useful if we are removing the condition since they were applied to only one branch ( i.e. "if" branch )

It's not an either/or/both situation.

Code like:

	if (test) {
		[block 1]
	} else {
		[block 2]
	}

where the contents of block 1 and block 2 are identical
exist for many reasons.  All of them need situational
analysis to determine what the right thing to do is.

Sometimes it's a defect from a copy/paste where some other
code was intended on one of the blocks and so that one path
has a defect somewhere and actually needs to be changed.

Sometimes the blocks were originally different, but some
code was removed from one of the blocks that lead to the
blocks being identical.  Those can be consolidated.

Sometimes test can be removed, sometimes not.

For hardware drivers like this, it's sometimes useful to
look at the latest code from the vendor and sometimes it's
better to ask the vendor what the right thing do is.

It does appear in this case that the branches should be
consolidated and comments in both branches removed.



