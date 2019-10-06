X-GM-THRID: 6744449794270298112
X-Received: by 2002:a92:6c01:: with SMTP id h1mr25408827ilc.107.1570356570246;
        Sun, 06 Oct 2019 03:09:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:348:: with SMTP id x8ls1414541jap.9.gmail; Sun, 06
 Oct 2019 03:09:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxMOG77jXuGeb6/EQuZg0hab96knmj9Z65J9a/Puo0pgEhChn1Udr2VT0kfiM7a74k5ZTpz
X-Received: by 2002:a02:ccba:: with SMTP id t26mr22932019jap.49.1570356569014;
        Sun, 06 Oct 2019 03:09:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570356569; cv=none;
        d=google.com; s=arc-20160816;
        b=wqIbqO3+PmrOXYs8xoUiUPH7EKIeNpaHJ0Jj4LP5Ga5eQEplvaSCfSCddSmV895kQh
         PfQsFYqDHbGxNV8qGzThFqtoWa4fiLkAL68IovDv0G4BLsqCwkLFP4CiFjed8lGVcqb2
         q11+xD/QNeeeKEyK4R6h1gc48dc/fT3ASgD5qLop1X0yYeB+WZRliLP6dSFBEO22ISZi
         qX0I3UF8Rs6zMNkDF3XrY9+nE2tIie9ZiOOMhns127xwqrjB8ZrWh0DK2+oj7kd5+WC/
         jtKWChuyTxO0wB3HTSQKrR8t+15dF94LM+7QxIHSopViHanPP2lQBAYLVitv4oMxKHgl
         AJVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=h4Pz22UPa4qeikoddOJemZWGELmg//HJHavVVHASgmY=;
        b=q59StKhOkRBqBfV1TpvxzvHydC+uq/jWm5UhZACDXeVsDU7taRnA0zdCbhEljXrhgA
         yNhxuJ9KmYV76jlzPrq0uZcmtMyXdgY5dUoMDhAc6kyZivCqlLiMrT0F69RCYe0l40Re
         cn6HyGvPpszrkBwulHcf9yzmOUcAeMzDM7re7GWD02JZm8o/HblaGrfOVLn1AYJDSR70
         MBEU+WwUNXCn46XqA6N8P0EEvYdH6omtSNBP26hTCMi0YkXm2oWKW2gapsUBkH0w1FNg
         mzLG4CyBeP/5YP5ttjokpLqZ0yxkwjdbgpfD66mbf18sGzHxCCrW503/Uw5CGZ8C4g6S
         NPRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.29 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0029.hostedemail.com. [216.40.44.29])
        by gmr-mx.google.com with ESMTPS id x3si343147iom.2.2019.10.06.03.09.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 03:09:28 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.29 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.29;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.29 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 0D0B318224D86;
	Sun,  6 Oct 2019 10:09:28 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2691:2828:3138:3139:3140:3141:3142:3351:3622:3865:3871:3872:3873:4250:4321:5007:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21451:21627:30012:30054:30070:30090:30091,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:24,LUA_SUMMARY:none
X-HE-Tag: night97_5277490531e42
X-Filterd-Recvd-Size: 1619
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf12.hostedemail.com (Postfix) with ESMTPA;
	Sun,  6 Oct 2019 10:09:26 +0000 (UTC)
Message-ID: <2ed3bf96312dbd9abcd626868ce84e01a066b201.camel@perches.com>
Subject: Re: [PATCH] staging: greybus: add blank line after declarations
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Gabriela Bittencourt
	 <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, johan@kernel.org, elder@kernel.org, 
	greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org
Date: Sun, 06 Oct 2019 03:09:25 -0700
In-Reply-To: <20191006095042.GA2918514@kroah.com>
References: <20191005210046.27224-1-gabrielabittencourt00@gmail.com>
	 <20191006095042.GA2918514@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2019-10-06 at 11:50 +0200, Greg KH wrote:
> On Sat, Oct 05, 2019 at 06:00:46PM -0300, Gabriela Bittencourt wrote:
> > Fix CHECK: add blank line after declarations
[]
> > diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
[]
> > @@ -24,6 +24,7 @@ struct gb_control {
> >  	char *vendor_string;
> >  	char *product_string;
> >  };
> > +
> >  #define to_gb_control(d) container_of(d, struct gb_control, dev)
> 
> No, the original code is "better" here, it's a common pattern despite
> what checkpatch.pl tells you, sorry.

Statistics please.

I believe it's not a common pattern.



