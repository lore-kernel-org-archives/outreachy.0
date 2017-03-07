X-GM-THRID: 6394764238679703552
X-Received: by 10.157.56.66 with SMTP id r2mr936587otd.110.1488916685790;
        Tue, 07 Mar 2017 11:58:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.248 with SMTP id t53ls1529065otd.42.gmail; Tue, 07 Mar
 2017 11:58:05 -0800 (PST)
X-Received: by 10.237.52.98 with SMTP id w89mr538672qtd.86.1488916685394;
        Tue, 07 Mar 2017 11:58:05 -0800 (PST)
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id r198si139241ywe.4.2017.03.07.11.58.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 11:58:05 -0800 (PST)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id E67CF208AD;
	Tue,  7 Mar 2017 14:58:04 -0500 (EST)
Received: from frontend1 ([10.202.2.160])
  by compute6.internal (MEProxy); Tue, 07 Mar 2017 14:58:04 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	smtpout; bh=Cq7AMzlVWx9TsgBGsQXa25/LnD0=; b=A5VZJIAkTYOl03b3EGBN
	MgJ1w3C361X5J6DH4DAJ2ZqLhRFIVuvE6667ZYSnVzq7mhKkRWk3sqNwfJiyG+aI
	pAVGdFIQ9Uwo8+EctPqKeAhWWxIAsLMRJHJnAG4gvaEmBhkLUs17V5+ozw3G9zYU
	S7UKNxXpuI3yi3m7bDuogUE=
X-ME-Sender: <xms:zBC_WFVXDgywbaevODzaSxXqrN-3rrKP_i7vfVqYc-71DCfb2UyAfg>
X-Sasl-enc: 5cD23H5xfXlQ15Yytj1jPV4a1o/mOqzKjlYiF1z+/KnF 1488916684
Received: from localhost (lfbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.messagingengine.com (Postfix) with ESMTPA id 835CA7E2C2;
	Tue,  7 Mar 2017 14:58:04 -0500 (EST)
Date: Tue, 7 Mar 2017 20:57:59 +0100
From: Greg KH <greg@kroah.com>
To: Sreya Mittal <sreyamittal5@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	julia.lawall@lip6.fr, f.fainelli@gmail.com, rjui@broadcom.com,
	sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
	swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fix alignment
 with parenthesis
Message-ID: <20170307195759.GA25999@kroah.com>
References: <20170307143056.3252-1-sreyamittal5@gmail.com>
 <alpine.DEB.2.20.1703071653360.3150@hadrien>
 <20170307190609.GA6914@kroah.com>
 <43384264-5884-45c4-a386-dc9e2c7846fa@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <43384264-5884-45c4-a386-dc9e2c7846fa@googlegroups.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 07, 2017 at 11:50:26AM -0800, Sreya Mittal wrote:
> 
> 
> On Wednesday, March 8, 2017 at 12:36:16 AM UTC+5:30, gregkh wrote:
> 
>     On Tue, Mar 07, 2017 at 04:54:07PM +0100, Julia Lawall wrote:
>     >
>     >
>     > On Tue, 7 Mar 2017, Sreya Mittal wrote:
>     >
>     > > Fix the checkpatch issue:
>     > > Alignment should match open parenthesis
>     > >
>     > > Signed-off-by: Sreya Mittal <sreyam...@gmail.com>
>     > > ---
>     > > �drivers/staging/bcm2835-audio/bcm2835-ctl.c | 2 +-
>     >
>     > I don't see this file in staging-testing anymore.
> 
>     It moved. �And I think someone else already made this change :(
> 
>     Sreya, please rebase your patch and see if it still is needed. �If so,
>     please resend the updated version.
> 
> 
> The file exists in drivers/staging/vc04_services/bcm2835-audio without
> the change I had made. Should I redo the patch in this file?

Yes please.

