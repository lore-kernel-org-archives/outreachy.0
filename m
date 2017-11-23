X-GM-THRID: 6491286193203838976
X-Received: by 10.80.203.138 with SMTP id k10mr5329476edi.5.1511479808027;
        Thu, 23 Nov 2017 15:30:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.144.196 with SMTP id d4ls3738513eda.4.gmail; Thu, 23 Nov
 2017 15:30:07 -0800 (PST)
X-Google-Smtp-Source: AGs4zMZHFlwmSjG8NI8dvhzyZZmuH7ALETDIbt0Xgvk3isiuA1dQbuy68PorNrRRRxBammGg6xTU
X-Received: by 10.80.203.138 with SMTP id k10mr5329447edi.5.1511479807096;
        Thu, 23 Nov 2017 15:30:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511479807; cv=none;
        d=google.com; s=arc-20160816;
        b=jq+t9AeApvaqFU5rvwRSC4X/cGO74T2lfLCkIGqFNo1benuusCjmUl6Fp49nHXttkN
         C8tjzFvjRC0djplBsfuTUesOAYrmu6LCOp2Ey+Pw/2bv9/AzYsobHA6/GwjWYBRNJLY7
         jfBkx0aJUPxjDYnoh9sBaTljSM2h5aYv05td4osu+geXS4CqKqRsdwUAehe3nDqmKnU5
         COXgli2UnuFDhoBsOGG49pefWv4Dp5QnuVRdLc1uUydBrz4jU2AhZCwB63pmOPaFQyLd
         aRNJZswGzAUWnLs806e6ZgV9dE97tFHOrL/IVI3QH7qIACf+LFkVkHl/tCYlbyH9QmpH
         jGOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:arc-authentication-results;
        bh=8krJlt9pE3fm+HKUyb8v7+heuc1YlzTKNdCcoovKlt4=;
        b=vbX/BXAOoYtDgcuZNWyGAdHfeciPXxZZwRkSeLAdcHzAvjTn/BcPx1nMGOmIUicgqO
         fOrIdVDady8pHG63CYIS2u24D+CcJvjk+SyEBb606zr6V5gho0WFbMX2I1xvtOlm7+cj
         zzs5K0LoXLt3o1QhqWHVi78GdYJGl2RpSbTTqYBpv7dnGWxwbkkhCuouD8cBWbnuovR1
         otr7m++stdiaOSr38r/NPAHfVlUqrmCNaGWx73t+O+u01z0qeApXMuuJ1N9SvVX8Z9pH
         xxTsEcaOaHKi5kzlNJBlhQXHPaXtwk9I9EcJ/dGi8VQKWrTXo9FXDzOzMoaMlB5GLLqI
         7xOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.92 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0092.hostedemail.com. [216.40.44.92])
        by gmr-mx.google.com with ESMTPS id w21si1545161edl.5.2017.11.23.15.30.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Nov 2017 15:30:06 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.92 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.92;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.92 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 8AEA2903AB;
	Thu, 23 Nov 2017 23:30:05 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::,RULES_HIT:41:355:379:541:599:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2197:2199:2393:2553:2559:2562:2828:2898:3138:3139:3140:3141:3142:3355:3622:3653:3865:3866:3867:3868:3870:3871:3872:3874:4250:4321:5007:6299:7903:9008:10004:10400:10848:11026:11232:11473:11658:11914:12043:12296:12555:12740:12760:12895:12986:13439:14093:14097:14659:14721:21080:21221:21433:21451:21627:30012:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: rake94_74e66e99d372e
X-Filterd-Recvd-Size: 3891
Received: from XPS-9350 (cpe-23-242-70-174.socal.res.rr.com [23.242.70.174])
	(Authenticated sender: joe@perches.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA;
	Thu, 23 Nov 2017 23:30:03 +0000 (UTC)
Message-ID: <1511479801.5308.6.camel@perches.com>
Subject: Re: [PATCH] net: usb: hso.c: remove unneeded DRIVER_LICENSE #define
From: Joe Perches <joe@perches.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: netdev@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>, cocci
 <cocci@systeme.lip6.fr>, outreachy-kernel@googlegroups.com, "David S.
 Miller" <davem@davemloft.net>, Andreas Kemnade <andreas@kemnade.info>,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org, Philippe
 Ombredanne <pombredanne@nexb.com>, linux-usb@vger.kernel.org
Date: Thu, 23 Nov 2017 15:30:01 -0800
In-Reply-To: <20171122171201.GA6528@kroah.com>
References: <20171117141939.GD17880@kroah.com>
	 <1511370336.6989.100.camel@perches.com> <20171122171201.GA6528@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.26.1-1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2017-11-22 at 18:12 +0100, Greg Kroah-Hartman wrote:
> On Wed, Nov 22, 2017 at 09:05:36AM -0800, Joe Perches wrote:
> > On Fri, 2017-11-17 at 15:19 +0100, Greg Kroah-Hartman wrote:
> > > There is no need to #define the license of the driver, just put it in
> > > the MODULE_LICENSE() line directly as a text string.
> > > 
> > > This allows tools that check that the module license matches the source
> > > code license to work properly, as there is no need to unwind the
> > > unneeded dereference.
> > 
> > []
> > > diff --git a/drivers/net/usb/hso.c b/drivers/net/usb/hso.c
> > 
> > []
> > > @@ -76,7 +76,6 @@
> > >  
> > >  #define MOD_AUTHOR			"Option Wireless"
> > >  #define MOD_DESCRIPTION			"USB High Speed Option driver"
> > > -#define MOD_LICENSE			"GPL"
> > >  
> > >  #define HSO_MAX_NET_DEVICES		10
> > >  #define HSO__MAX_MTU			2048
> > > @@ -3288,7 +3287,7 @@ module_exit(hso_exit);
> > >  
> > >  MODULE_AUTHOR(MOD_AUTHOR);
> > >  MODULE_DESCRIPTION(MOD_DESCRIPTION);
> > > -MODULE_LICENSE(MOD_LICENSE);
> > > +MODULE_LICENSE("GPL");
> > 
> > Probably all of these MODULE_<FOO>(MOD_<BAR>) uses could be
> > simplified as well.
> 
> Agreed, I did that for a bunch of USB drivers, need to do it for others
> as well.

Here's a little perl and bash script that seems to do the right thing
---
--- /dev/null	2017-11-23 06:19:12.943046739 -0800
+++ single_use_module.pl	2017-11-23 15:23:11.729812156 -0800
@@ -0,0 +1,15 @@
+$/ = undef;
+my $var = $ARGV[0];
+my $file = $ARGV[1];
+print("var: <$var> file: <$file>\n");
+open my $fh, "<", $file or die;
+my $data = <$fh>;
+close $fh;
+$data =~ s/\n#[ \t]*define\s+$var\s+(.*)\n/\n/;
+my $string = $1;
+print("string: <$string>\n");
+$string =~ s/\s+\n//;
+$data =~ s~$var~$string~;
+open my $fh, ">", $file or die;
+print $fh $data;
+close $fh;

--- /dev/null	2017-11-23 06:19:12.943046739 -0800
+++ single_use_module.bash	2017-11-23 15:23:01.964676948 -0800
@@ -0,0 +1,25 @@
+#!/bin/bash
+git grep -P '\bMODULE_[A-Z]+\s*\(\s*[A-Z_]+\s*\)' $@ |
+    while read line ; do
+	file=$(echo $line | cut -f1 -d":")
+	define=$(echo $line | cut -f2- -d":")
+	var=$(echo $define | sed -r -e 's/^MODULE_[A-Z_]+\s*\(\s*//' -r -e 's/^([A-Z_]+).*$/\1/')
+
+	# see if the define exists in the file
+	count1=$(git grep -c -P "^\s*#\s*define\s+$var\s+" $file | cut -f2- -d":")
+	if [[ $count1 != 1 ]] ; then
+	    continue
+	fi
+
+	# see if the var exists twice (once in the #define, once in the use)
+	count2=$(git grep -c -P -w $var $file | cut -f2- -d":")
+	if [[ $count2 != 2 ]] ; then
+	    continue
+	fi
+
+	if [[ "${defline: -1}" == "\\" ]] ; then
+	    continue
+	fi
+
+	perl single_use_module.pl $var $file
+    done


