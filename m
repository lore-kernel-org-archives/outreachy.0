X-GM-THRID: 6462776611954491392
X-Received: by 10.129.118.79 with SMTP id j15mr185580ywk.117.1504765016626;
        Wed, 06 Sep 2017 23:16:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.214 with SMTP id n83ls718792ioi.34.gmail; Wed, 06 Sep
 2017 23:16:55 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5XOWSidfuYw6ZpALQ6VWGUpu3kDM6CCSph0vz0hIP70fR70eu7EDfZ6Io+q9oxPrLC9Ph7
X-Received: by 10.129.152.11 with SMTP id p11mr1030632ywg.136.1504765015849;
        Wed, 06 Sep 2017 23:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504765015; cv=none;
        d=google.com; s=arc-20160816;
        b=m7uiV36xRA9FBpF0N1M9EKvUU8Ym+4RKLpp0zqIO3X43GkIPAIbsMCH6PwY59cw9Ya
         V7t7nYDjSuZWI7s4fqXRtRepagptG5sco975oQUUkdOOAURvZFhnk2BBMcIrscu0wVit
         Szkt65y4CP4T9kX/p8hy21gPD9VJ6WUNQNVFAT7OxC3jv/RFKeDaJOHwYexknrx5mFZv
         +Q/0RfuVYn5gWpxlLRlfpwVYzMTK1xjRJfGEfFrAvKluLWnUvLyzYxX3nwVFDeFOgmm4
         E+uaPL66/pkjutoUYmXBrFk9futWewXSRnnD42oFFkUkO1tRYb6hbM+bUC2eEx1mzvHR
         NoLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:arc-authentication-results;
        bh=//ojvz9sMy5awl7RtLmkkoeQ3A4YitkHETYL5KpjDK0=;
        b=0JzPSVHiFsotfdw/6Z7j4AHEv87DpxV2eOnJc49nMn5dMeyrxMU3uahzyX6PPcjQx1
         cbLFiczE6WCw7RZurbzDbmRzBvolDHuM3CQbApujh08i9eTdiHQArZxRFYNpML9IPSu3
         FiWv7o1Sejumu7mUrNh0CAba4wn8rQRYp+7NK6kAjpX9JPL4tvNdkvWLSe4gniGc+GkB
         jB7tx0bCZxOrbM8veSo5KIuyp3kOVSPPWaGTvvBovgdCf6XTstOzbMdV9FmPtvqK7C6R
         INMbPtscyTb7f/NFkr4RB+bpeMMVvOgh6vRNOb0OwiQpImNAkPKy9ByubxqchIXvR2DH
         RYOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.53 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0053.hostedemail.com. [216.40.44.53])
        by gmr-mx.google.com with ESMTPS id 143si26405itf.7.2017.09.06.23.16.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 23:16:55 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.53 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.53;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.53 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 47BCE182CED28;
	Thu,  7 Sep 2017 06:16:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::,RULES_HIT:41:152:355:379:541:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2902:2987:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3872:3873:3874:4321:4387:4605:5007:7903:10004:10400:10848:11026:11232:11658:11914:12043:12438:12740:12895:13069:13161:13229:13311:13357:13894:14659:14721:21080:21434:21451:21627:30054:30083:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: judge36_20baeedfd438
X-Filterd-Recvd-Size: 2038
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Thu,  7 Sep 2017 06:16:53 +0000 (UTC)
Message-ID: <1504765012.7546.12.camel@perches.com>
Subject: Re: [PATCH v3] Staging: ccree: ssi_cipher.c: Remove unused variable.
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Srishti Sharma
	 <srishtishar@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
	outreachy-kernel@googlegroups.com, driverdev-devel@linuxdriverproject.org, 
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org
Date: Wed, 06 Sep 2017 23:16:52 -0700
In-Reply-To: <20170906213243.gyttos3s64ckoswp@mwanda>
References: <1504732426-9765-1-git-send-email-srishtishar@gmail.com>
	 <20170906213243.gyttos3s64ckoswp@mwanda>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6-1ubuntu1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Thu, 2017-09-07 at 00:32 +0300, Dan Carpenter wrote:
> Always compile your patches.
> 
>   CC [M]  drivers/staging/ccree/ssi_cipher.o
> drivers/staging/ccree/ssi_cipher.c: In function ‘ssi_blkcipher_complete’:
> drivers/staging/ccree/ssi_cipher.c:700:6: warning: unused variable ‘inflight_counter’ [-Wunused-variable]
>   u32 inflight_counter;
>       ^~~~~~~~~~~~~~~~
> 
> You need to delete the declaration as well.
> 
> Don't be in a rush to resend patches.  I normally write them then let
> them sit in my outbox overnight and send them in the morning.  The extra
> delay helps me to calm down a bit and focus better.  Even though I've
> sent thousands of patches, it sometimes still stresses me out.  It's
> like you're disagreeing with the original author and the reviewers are
> disagreeing with you and everyone's trying to be nice about it but
> patches are fundamentally points of disagreement and that's stress.

True, and you shouldn't add a blank link either.
there's already one above the block you deleted.

