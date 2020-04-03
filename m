X-GM-THRID: 6810932653132349440
X-Received: by 2002:a65:4cc4:: with SMTP id n4mr6697993pgt.282.1585888534533;
        Thu, 02 Apr 2020 21:35:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:98de:: with SMTP id e30ls4680341pfm.0.gmail; Thu, 02 Apr
 2020 21:35:33 -0700 (PDT)
X-Google-Smtp-Source: APiQypLQn2/S5IkPczB6XWWSuSAQ993KJcrfUWEQsEsTUbXd0eBvm14TT9NkZ7xC+TUnBh51eRgW
X-Received: by 2002:a63:1c1:: with SMTP id 184mr6754453pgb.203.1585888532944;
        Thu, 02 Apr 2020 21:35:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585888532; cv=none;
        d=google.com; s=arc-20160816;
        b=zCOrduASMsNHq2Z4olaoUOKIwrY1mvGZznnJzAVJO3tzmdpQc4KMlmefJxFF++ulMm
         iXwzi9U436ZgREXmE3wAM8o2ym17ncDOSINRBr2Pp34KOzUmgcO7poWJ5/jjGRkojdyT
         U/9JwSt4cSt2PiHsnaFLJkfsn579I+ZHDXIZU0FUcbUaH6SBUOQTOy8yNfvmjNpGd+tY
         9umb9bWXW4pVKMl1YWa0jh4SQPpRvThdpS0GFlN0ofqudgXJorXyoHR49z26mDFHinJK
         +TSjbPfnaMAiiDshUBRTh0FHUvYewPvic/wVoqlD2ik8aUReZpN6qZxue87rOEgmNtW0
         qtdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=yY9POaXNtBZcqge8Tfn7ujeLtepWpwEj4y5fraARQwE=;
        b=uTsRNrKV3M77zwroDM8TKQxUJLLHT1U2vZcSJrV0xGMaTGqNQGqXpwhsHIisNTpceF
         FohqYtLBH2D9qQnvSPyOQAHxvk9UHlpzi8zqZKXt07GUXac/PnNf4kFcObQHNo0HThvu
         lJnRX/rWs8iuf6EExDo8r8Io80mB4CqeaucLvVBOppgj3Jg3u9bDIjHhaczZ+R8bEkF1
         BZFyFfY+ijXSDcbjXEVMMOChJQytmr/vXfzX3bIQ2tdApiT9huHr9HsnnRHUV+QdK9Vk
         NVZLrHakgUiVNXOltO13Ncn6PFqroKGPFdmn1ARw9BordfWt9FNTW0M+nnRpatuRlT6P
         Ukpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.8 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0008.hostedemail.com. [216.40.44.8])
        by gmr-mx.google.com with ESMTPS id j14si515089pgg.1.2020.04.02.21.35.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 21:35:32 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.8 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.8;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.8 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id DF844182CED5B;
	Fri,  3 Apr 2020 04:35:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1561:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3867:3868:3871:4250:4321:5007:7903:10004:10400:10848:11232:11658:11914:12297:12663:12740:12760:12895:13019:13069:13311:13357:13439:14659:14721:21080:21611:21627:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: seed33_4d3b0b285b054
X-Filterd-Recvd-Size: 1327
Received: from XPS-9350.home (unknown [47.151.136.130])
	(Authenticated sender: joe@perches.com)
	by omf16.hostedemail.com (Postfix) with ESMTPA;
	Fri,  3 Apr 2020 04:35:30 +0000 (UTC)
Message-ID: <d74075e94b39b23d2e3acb24baaaedacfd0cc426.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: emxx_udc: Remove unused code
From: Joe Perches <joe@perches.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>, Stefano Brivio
 <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, Saiyam Doshi <saiyamdoshi.in@gmail.com>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Thu, 02 Apr 2020 21:33:34 -0700
In-Reply-To: <4bd376a6db77ef779972f377cc2c3789d03668e7.camel@gmail.com>
References: <20200402021706.788533-1-jbwyatt4@gmail.com>
	 <20200403015057.7a972c79@elisabeth>
	 <4bd376a6db77ef779972f377cc2c3789d03668e7.camel@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-04-02 at 18:42 -0700, John B. Wyatt IV wrote:
> DEBUG is not actually used as far as I can tell (I am still new to
> kernel debugging systems to please correct me).

DEBUG is used by the <foo>_debug and <bar>_dbg macros
(pr_debug, dev_dbg)




